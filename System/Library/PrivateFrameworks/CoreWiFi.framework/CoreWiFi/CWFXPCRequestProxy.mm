@interface CWFXPCRequestProxy
- (BOOL)__allowXPCRequestWithoutAvailableInterface:(id)interface;
- (BOOL)__didFindMatching80211InterfaceForXPCRequest:(id)request;
- (BOOL)isMonitoringEvents;
- (BOOL)isNon80211InterfaceName:(id)name;
- (CWFAutoJoinManager)autoJoinManager;
- (CWFAutoJoinManager)autoJoinManagerCached;
- (CWFNetworkOfInterestManager)noiManager;
- (CWFPrivateMACManager)privateMACManager;
- (CWFXPCRequestProxy)init;
- (id)EAP8021XWithInterfaceName:(id)name;
- (id)SCNetworkInterfaceWithInterfaceName:(id)name;
- (id)SCNetworkServiceWithInterfaceName:(id)name;
- (id)__EAP8021XWithInterfaceName:(id)name;
- (id)__SCNetworkInterfaceWithInterfaceName:(id)name;
- (id)__SCNetworkServiceWithInterfaceName:(id)name;
- (id)__apple80211WithInterfaceName:(id)name;
- (id)__apple80211WithVirtualInterfaceRole:(int)role parentInterfaceName:(id)name;
- (id)__autojoinStatusWithInterfaceName:(id)name;
- (id)__cachedKnownNetwork;
- (id)__currentNetworkProfileWithInterfaceName:(id)name;
- (id)__currentScanResultWithInterfaceName:(id)name forceNoCache:(BOOL)cache;
- (id)__deviceUUID;
- (id)__hashedBSSID:(id)d XPCConnection:(id)connection error:(id *)error;
- (id)__hashedSSID:(id)d XPCConnection:(id)connection error:(id *)error;
- (id)__hotspotClientManager;
- (id)__interfaceNames;
- (id)__interfaceSpecificEventIDs:(id)ds;
- (id)__joinStatusWithInterfaceName:(id)name;
- (id)__knownNetworkProfiles;
- (id)__linkDownNetworkWithInterfaceName:(id)name;
- (id)__linkDownStatusWithInterfaceName:(id)name;
- (id)__linkQualityMetricWithInterfaceName:(id)name;
- (id)__networkStackMACAddressWithInterfaceName:(id)name;
- (id)__noiManager;
- (id)__privateMACManager;
- (id)__queryMobileAssetA11:(id *)a11;
- (id)__queueForXPCRequest:(id)request;
- (id)__roamStatusWithInterfaceName:(id)name;
- (id)__userAutoJoinDisabled;
- (id)__vendorSpecificIdentifierForXPCConnection:(id)connection;
- (id)__virtualInterfaceNames;
- (id)__wifiInterfaceNames;
- (id)apple80211WithInterfaceName:(id)name;
- (id)apple80211WithVirtualInterfaceRole:(int)role parentInterfaceName:(id)name;
- (id)interfaceNames;
- (id)virtualInterfaceNames;
- (id)wifiInterfaceNames;
- (int)__defaultInterfaceRoleForRequestType:(int64_t)type;
- (unint64_t)_updateCellularRankingState;
- (void)XPCManager:(id)manager XPCConnection:(id)connection canceledXPCRequestsWithUUID:(id)d;
- (void)XPCManager:(id)manager XPCConnection:(id)connection receivedXPCRequest:(id)request;
- (void)XPCManager:(id)manager XPCConnection:(id)connection updatedRegisteredEventIDs:(id)ds;
- (void)XPCManager:(id)manager invalidatedXPCConnection:(id)connection;
- (void)XPCManager:(id)manager sendXPCEvent:(id)event reply:(id)reply;
- (void)__acknowledgeWiFiNetworkSharingNetworkListUpdate:(id)update;
- (void)__addJoinStatusWithScanResult:(id)result knownNetworkProfile:(id)profile isAutoJoin:(BOOL)join interfaceName:(id)name;
- (void)__addKnownNetwork:(id)network XPCConnection:(id)connection;
- (void)__allowBrokenBackhaulPersonalHotspotFallbackForAutoJoinWithNetwork:(id)network reply:(id)reply;
- (void)__askToShareWiFiNetworkSharingNetworkFromApp:(id)app;
- (void)__askToShareWiFiNetworkSharingNetworkFromAppex:(id)appex;
- (void)__autoJoinEndedWithResult:(BOOL)result interfaceName:(id)name;
- (void)__autoJoinStartedWithTrigger:(int64_t)trigger interfaceName:(id)name;
- (void)__cancelRequestsWithNamePrefix:(id)prefix;
- (void)__checkin:(id)__checkin XPCConnection:(id)connection;
- (void)__confirmBrokenBackhaul:(id)backhaul;
- (void)__currentScanResultWithInterfaceName:(id)name forceNoCache:(BOOL)cache reply:(id)reply;
- (void)__detectBrokenBackhaulForAutoJoinWithNetwork:(id)network reply:(id)reply;
- (void)__disassocWithReason:(int64_t)reason interfaceName:(id)name;
- (void)__dumpLogs:(id)logs;
- (void)__forwardXPCEvent:(id)event reply:(id)reply;
- (void)__getActivities:(id)activities XPCConnection:(id)connection;
- (void)__getApple80211:(id)apple80211;
- (void)__getAutoJoinMetric:(id)metric;
- (void)__getAutoJoinStatistics:(id)statistics;
- (void)__getAutoJoinStatus:(id)status;
- (void)__getBSSID:(id)d XPCConnection:(id)connection;
- (void)__getBSSIDForVendor:(id)vendor XPCConnection:(id)connection;
- (void)__getBrokenBackhaulState:(id)state;
- (void)__getBrokenBackhaulStateUpdatedAt:(id)at;
- (void)__getCaptivePortalCredentials:(id)credentials;
- (void)__getCloudNetworks:(id)networks;
- (void)__getCurrentScanResult:(id)result XPCConnection:(id)connection;
- (void)__getCurrentScanResult:(id)result XPCConnection:(id)connection reply:(id)reply;
- (void)__getDHCPLeaseExpirationTime:(id)time;
- (void)__getDHCPLeaseStartTime:(id)time;
- (void)__getDHCPServerID:(id)d;
- (void)__getDHCPv6ServerID:(id)d;
- (void)__getDNSServerAddresses:(id)addresses;
- (void)__getDeviceSupervised:(id)supervised;
- (void)__getEAP8021XClientStatus:(id)status;
- (void)__getEAP8021XControlMode:(id)mode;
- (void)__getEAP8021XControlState:(id)state;
- (void)__getEAP8021XSupplicantState:(id)state;
- (void)__getEventIDs:(id)ds XPCConnection:(id)connection;
- (void)__getGlobalDNSServerAddresses:(id)addresses;
- (void)__getGlobalIPv4Addresses:(id)addresses;
- (void)__getGlobalIPv4InterfaceName:(id)name;
- (void)__getGlobalIPv4NetServiceID:(id)d;
- (void)__getGlobalIPv4NetServiceName:(id)name;
- (void)__getGlobalIPv4Router:(id)router;
- (void)__getGlobalIPv6Addresses:(id)addresses;
- (void)__getGlobalIPv6InterfaceName:(id)name;
- (void)__getGlobalIPv6NetServiceID:(id)d;
- (void)__getGlobalIPv6NetServiceName:(id)name;
- (void)__getGlobalIPv6Router:(id)router;
- (void)__getHardwareMACAddress:(id)address;
- (void)__getIO80211ControllerInfo:(id)info;
- (void)__getIO80211InterfaceInfo:(id)info;
- (void)__getIPv4ARPResolvedHardwareAddress:(id)address;
- (void)__getIPv4ARPResolvedIPAddress:(id)address;
- (void)__getIPv4Addresses:(id)addresses;
- (void)__getIPv4NetworkSignature:(id)signature;
- (void)__getIPv4Router:(id)router;
- (void)__getIPv4SubnetMasks:(id)masks;
- (void)__getIPv6Addresses:(id)addresses;
- (void)__getIPv6NetworkSignature:(id)signature;
- (void)__getIPv6Router:(id)router;
- (void)__getJoinStatus:(id)status;
- (void)__getKnownNetworkInfoForLocalNetworkPrompt:(id)prompt XPCConnection:(id)connection;
- (void)__getKnownNetworkMatchingNetworkProfile:(id)profile;
- (void)__getKnownNetworkMatchingScanResult:(id)result;
- (void)__getLinkDownStatus:(id)status;
- (void)__getLinkQualityMetric:(id)metric;
- (void)__getMACAddress:(id)address;
- (void)__getNearbyRecommendedNetworks:(id)networks;
- (void)__getNetServiceEnabled:(id)enabled;
- (void)__getNetServiceID:(id)d;
- (void)__getNetServiceName:(id)name;
- (void)__getNetworkManagedByMDM:(id)m;
- (void)__getNetworkOfInterestHomeState:(id)state;
- (void)__getNetworkOfInterestWorkState:(id)state;
- (void)__getNetworkReachability:(id)reachability;
- (void)__getNetworkWarningFlags:(id)flags XPCConnection:(id)connection;
- (void)__getPlatformCapabilities:(id)capabilities;
- (void)__getPrivateMACAddress:(id)address;
- (void)__getPrivateMACAddressMode:(id)mode;
- (void)__getPrivateMACAddressModeSystemSetting:(id)setting;
- (void)__getQuickProbeRequired:(id)required;
- (void)__getRecommendedKnownNetworks:(id)networks;
- (void)__getRoamStatus:(id)status;
- (void)__getSSID:(id)d XPCConnection:(id)connection;
- (void)__getSSIDForVendor:(id)vendor XPCConnection:(id)connection;
- (void)__getSecurity:(id)security;
- (void)__getSystemActivities:(id)activities XPCManager:(id)manager;
- (void)__getSystemEventIDs:(id)ds XPCManager:(id)manager;
- (void)__getWAPISubtype:(id)subtype;
- (void)__getWEPSubtype:(id)subtype;
- (void)__getWiFiNetworkSharingAskToShareNetworkList:(id)list;
- (void)__getWiFiNetworkSharingAskToShareStatus:(id)status;
- (void)__getWiFiNetworkSharingAuthorizationLevel:(id)level;
- (void)__getWiFiNetworkSharingNetworkList:(id)list;
- (void)__getWiFiUIStateFlags:(id)flags;
- (void)__handleAssocDoneInternalEvent:(id)event;
- (void)__handleAutoJoinStateChangedInternalEvent:(id)event;
- (void)__handleBrokenBackhaulState:(int64_t)state timestamp:(id)timestamp;
- (void)__handleKnownNetworkProfileChangedEvent:(id)event;
- (void)__handleNearbyRecommendedNetworksChangedEvent:(id)event;
- (void)__handleWillAssocInternalEvent:(id)event;
- (void)__logLqmSummary:(id)summary;
- (void)__performAutoJoinWithParameters:(id)parameters interfaceName:(id)name;
- (void)__performScan:(id)scan XPCConnection:(id)connection;
- (void)__postWiFiUIStateFlagsWithInterfaceName:(id)name;
- (void)__privateMACEvaluationCompletedWithState:(int64_t)state knownNetwork:(id)network interfaceName:(id)name;
- (void)__privateMACSettingChangedForNetworkProfile:(id)profile interfaceName:(id)name;
- (void)__removeNetworkProfile:(id)profile reason:(int64_t)reason interfaceName:(id)name reply:(id)reply;
- (void)__removeUnusedKnownNetworks;
- (void)__reportQuickProbeResult:(id)result;
- (void)__requestWiFiNetworkSharingAuthorization:(id)authorization;
- (void)__resetAutoJoinStatistics:(id)statistics;
- (void)__scheduleNextRecommendedKnownNetworksExpirationTimer;
- (void)__sendXPCEvent:(id)event;
- (void)__setAutoJoinStatus:(id)status interfaceName:(id)name;
- (void)__setCachedKnownNetwork:(id)network;
- (void)__setCaptivePortalCredentials:(id)credentials;
- (void)__setChannel:(id)channel;
- (void)__setJoinStatus:(id)status interfaceName:(id)name;
- (void)__setLQMConfig:(id)config;
- (void)__setLinkDownStatus:(id)status interfaceName:(id)name;
- (void)__setLinkQualityMetric:(id)metric interfaceName:(id)name;
- (void)__setPrivateMACAddressMode:(id)mode;
- (void)__setPrivateMACAddressModeSystemSetting:(id)setting;
- (void)__setPrivateMACAddressUserJoinFailureUIState:(id)state;
- (void)__setRoamStatus:(id)status interfaceName:(id)name;
- (void)__setUCMExtProfile:(id)profile;
- (void)__setWiFiNetworkSharingAskToShareStatus:(id)status;
- (void)__setupEventHandlers;
- (void)__setupEventHandlersWithInterfaceName:(id)name;
- (void)__startEventMonitoring;
- (void)__startHostAPMode:(id)mode XPCConnection:(id)connection;
- (void)__startMonitoringDefaultEventIDs;
- (void)__startMonitoringDefaultEventIDsForInterfaceName:(id)name;
- (void)__startNetworkRelayBridgeWithHostAPConfiguration:(id)configuration interfaceName:(id)name reply:(id)reply;
- (void)__stopEventMonitoring;
- (void)__stopHostAPMode:(id)mode XPCConnection:(id)connection;
- (void)__stopMonitoringDefaultEventIDs;
- (void)__stopMonitoringDefaultEventIDsForInterfaceName:(id)name;
- (void)__stopNetworkRelayBridgeForInterfaceName:(id)name reply:(id)reply;
- (void)__updateApple80211InterfacesWithReason:(id)reason reply:(id)reply;
- (void)__updateAutoJoinState:(int64_t)state interfaceName:(id)name;
- (void)__updateAutoJoinStatusWithJoin:(id)join;
- (void)__updateCurrentKnownBSSWithIPConfigurationForInterfaceName:(id)name;
- (void)__updateEventMonitoring:(id)monitoring;
- (void)__updateEventRegistration:(id)registration XPCConnection:(id)connection XPCManager:(id)manager;
- (void)__updateJoinStatusWithAssoc:(id)assoc;
- (void)__updateJoinStatusWithAuth:(id)auth;
- (void)__updateJoinStatusWithError:(id)error interaceName:(id)name;
- (void)__updateJoinStatusWithKnownNetwork:(id)network;
- (void)__updateJoinStatusWithLinkUp:(id)up;
- (void)__updateMonitoring:(BOOL)monitoring eventIDs:(id)ds;
- (void)__updateMultipleKnownNetworks:(id)networks updateProperties:(id)properties interfaceName:(id)name reply:(id)reply;
- (void)__updateNetworkProfile:(id)profile updateProperties:(id)properties interfaceName:(id)name reply:(id)reply;
- (void)__updateRecommendedKnownNetworks;
- (void)__updateSystemConfigurationInterfacesWithReason:(id)reason reply:(id)reply;
- (void)__updateWiFiInterfacesWithReason:(id)reason reply:(id)reply;
- (void)__updateWiFiNetworkServices;
- (void)activate;
- (void)invalidate;
- (void)privateMACEvaluationCheckConnectivityWithInterfaceName:(id)name;
- (void)setTargetQueue:(id)queue requestType:(int64_t)type interfaceName:(id)name;
- (void)updateJoinStatusWithEAP8021X:(id)x;
- (void)updateJoinStatusWithIPv4:(id)pv4;
- (void)updateJoinStatusWithIPv6:(id)pv6;
@end

@implementation CWFXPCRequestProxy

- (CWFXPCRequestProxy)init
{
  v110 = *MEMORY[0x1E69E9840];
  v99.receiver = self;
  v99.super_class = CWFXPCRequestProxy;
  v2 = [(CWFXPCRequestProxy *)&v99 init];
  if (!v2
    || ([MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.corewifi.XPC-common-internal"], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "UTF8String"), dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v5 = objc_claimAutoreleasedReturnValue(), v6 = dispatch_queue_create(v4, v5), internalQueue = v2->_internalQueue, v2->_internalQueue = v6, internalQueue, v5, v3, !v2->_internalQueue)
    || ([MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.corewifi.XPC-common-mutex"], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "UTF8String"), dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v10 = objc_claimAutoreleasedReturnValue(), v11 = dispatch_queue_create(v9, v10), mutexQueue = v2->_mutexQueue, v2->_mutexQueue = v11, mutexQueue, v10, v8, !v2->_mutexQueue)
    || ([MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.corewifi.XPC-common-event"], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "UTF8String"), dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v15 = objc_claimAutoreleasedReturnValue(), v16 = dispatch_queue_create(v14, v15), eventQueue = v2->_eventQueue, v2->_eventQueue = v16, eventQueue, v15, v13, !v2->_eventQueue)
    || ([MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.corewifi.apple80211-common-intf"], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "UTF8String"), dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v20 = objc_claimAutoreleasedReturnValue(), v21 = dispatch_queue_create(v19, v20), apple80211InterfaceQueue = v2->_apple80211InterfaceQueue, v2->_apple80211InterfaceQueue = v21, apple80211InterfaceQueue, v20, v18, !v2->_apple80211InterfaceQueue)
    || ([MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.corewifi.sc-common-intf"], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "UTF8String"), dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v25 = objc_claimAutoreleasedReturnValue(), v26 = dispatch_queue_create(v24, v25), systemConfigInterfaceQueue = v2->_systemConfigInterfaceQueue, v2->_systemConfigInterfaceQueue = v26, systemConfigInterfaceQueue, v25, v23, !v2->_systemConfigInterfaceQueue)
    || ([MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.corewifi.cellular-outrank-recommendation"], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "UTF8String"), dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v30 = objc_claimAutoreleasedReturnValue(), v31 = dispatch_queue_create(v29, v30), cellularOutrankQueue = v2->_cellularOutrankQueue, v2->_cellularOutrankQueue = v31, cellularOutrankQueue, v30, v28, !v2->_cellularOutrankQueue)
    || (v33 = objc_alloc_init(MEMORY[0x1E695DF90]), mutableLinkDownStatusMap = v2->_mutableLinkDownStatusMap, v2->_mutableLinkDownStatusMap = v33, mutableLinkDownStatusMap, !v2->_mutableLinkDownStatusMap)
    || (v35 = objc_alloc_init(MEMORY[0x1E695DF90]), mutableLinkDownNetworkMap = v2->_mutableLinkDownNetworkMap, v2->_mutableLinkDownNetworkMap = v35, mutableLinkDownNetworkMap, !v2->_mutableLinkDownNetworkMap)
    || (v37 = objc_alloc_init(MEMORY[0x1E695DF90]), mutableRoamStatusMap = v2->_mutableRoamStatusMap, v2->_mutableRoamStatusMap = v37, mutableRoamStatusMap, !v2->_mutableRoamStatusMap)
    || (v39 = objc_alloc_init(MEMORY[0x1E695DF90]), mutableJoinStatusMap = v2->_mutableJoinStatusMap, v2->_mutableJoinStatusMap = v39, mutableJoinStatusMap, !v2->_mutableJoinStatusMap)
    || (v41 = objc_alloc_init(MEMORY[0x1E695DF90]), mutableAutoJoinTriggerMap = v2->_mutableAutoJoinTriggerMap, v2->_mutableAutoJoinTriggerMap = v41, mutableAutoJoinTriggerMap, !v2->_mutableAutoJoinTriggerMap)
    || (v43 = objc_alloc_init(MEMORY[0x1E695DF90]), mutableAutoJoinStatusMap = v2->_mutableAutoJoinStatusMap, v2->_mutableAutoJoinStatusMap = v43, mutableAutoJoinStatusMap, !v2->_mutableAutoJoinStatusMap)
    || (v45 = objc_alloc_init(MEMORY[0x1E695DF90]), mutableLinkQualityMap = v2->_mutableLinkQualityMap, v2->_mutableLinkQualityMap = v45, mutableLinkQualityMap, !v2->_mutableLinkQualityMap)
    || (v47 = objc_alloc_init(MEMORY[0x1E695DF90]), mutableQueueMap = v2->_mutableQueueMap, v2->_mutableQueueMap = v47, mutableQueueMap, !v2->_mutableQueueMap)
    || (v49 = objc_alloc_init(MEMORY[0x1E696ADC8]), defaultQueue = v2->_defaultQueue, v2->_defaultQueue = v49, defaultQueue, (v51 = v2->_defaultQueue) == 0)
    || ([(NSOperationQueue *)v51 setName:@"default-concurrent"], [(NSOperationQueue *)v2->_defaultQueue setMaxConcurrentOperationCount:-1], [(NSOperationQueue *)v2->_defaultQueue setQualityOfService:-1], v52 = objc_alloc_init(MEMORY[0x1E695DF90]), apple80211Map = v2->_apple80211Map, v2->_apple80211Map = v52, apple80211Map, !v2->_apple80211Map))
  {
    v54 = 0;
LABEL_46:

    v2 = 0;
    goto LABEL_44;
  }

  v54 = [[CWFApple80211 alloc] initWithInterfaceName:0];
  if (!v54)
  {
    goto LABEL_46;
  }

  [(NSMutableDictionary *)v2->_apple80211Map setObject:v54 forKeyedSubscript:&stru_1F5B8FC80];
  v55 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  nonApple80211InterfaceList = v2->_nonApple80211InterfaceList;
  v2->_nonApple80211InterfaceList = v55;

  if (!v2->_nonApple80211InterfaceList)
  {
    goto LABEL_46;
  }

  v57 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  apple80211EligibleRemovalList = v2->_apple80211EligibleRemovalList;
  v2->_apple80211EligibleRemovalList = v57;

  if (!v2->_apple80211EligibleRemovalList)
  {
    goto LABEL_46;
  }

  v59 = objc_alloc_init(MEMORY[0x1E695DF90]);
  EAP8021XMap = v2->_EAP8021XMap;
  v2->_EAP8021XMap = v59;

  if (!v2->_EAP8021XMap)
  {
    goto LABEL_46;
  }

  v61 = objc_alloc_init(MEMORY[0x1E695DF90]);
  SCNetworkServiceMap = v2->_SCNetworkServiceMap;
  v2->_SCNetworkServiceMap = v61;

  if (!v2->_SCNetworkServiceMap)
  {
    goto LABEL_46;
  }

  v63 = objc_alloc_init(MEMORY[0x1E695DF90]);
  SCNetworkInterfaceMap = v2->_SCNetworkInterfaceMap;
  v2->_SCNetworkInterfaceMap = v63;

  if (!v2->_SCNetworkInterfaceMap)
  {
    goto LABEL_46;
  }

  v65 = objc_alloc_init(CWFSCNetworkConfiguration);
  SCNetworkConfiguration = v2->_SCNetworkConfiguration;
  v2->_SCNetworkConfiguration = v65;

  if (!v2->_SCNetworkConfiguration)
  {
    goto LABEL_46;
  }

  v67 = objc_alloc_init(CWFSCNetworkReachability);
  SCNetworkReachability = v2->_SCNetworkReachability;
  v2->_SCNetworkReachability = v67;

  if (!v2->_SCNetworkReachability)
  {
    goto LABEL_46;
  }

  v69 = objc_alloc_init(CWFIO80211);
  IO80211 = v2->_IO80211;
  v2->_IO80211 = v69;

  if (!v2->_IO80211)
  {
    goto LABEL_46;
  }

  v71 = objc_alloc_init(CWFKernelEventMonitor);
  keventMonitor = v2->_keventMonitor;
  v2->_keventMonitor = v71;

  if (!v2->_keventMonitor)
  {
    goto LABEL_46;
  }

  v73 = objc_alloc_init(CWFConfigurationProfileManager);
  configProfileManager = v2->_configProfileManager;
  v2->_configProfileManager = v73;

  if (!v2->_configProfileManager)
  {
    v92 = CWFGetOSLog();
    if (v92)
    {
      v93 = CWFGetOSLog();
    }

    else
    {
      v93 = MEMORY[0x1E69E9C10];
      v96 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v100) = 0;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v93, 16, "[corewifi] Failed to initialize CWFConfigurationProfileManager", &v100, 2);
    }
  }

  v75 = [CWFXPCConnection alloc];
  v76 = CWFBootArgs();
  v77 = [(CWFXPCConnection *)v75 initWithServiceType:1 XPCConnection:0 bootArgs:v76];
  internalRequestXPCConnection = v2->_internalRequestXPCConnection;
  v2->_internalRequestXPCConnection = v77;

  if (!v2->_internalRequestXPCConnection)
  {
    goto LABEL_46;
  }

  if (_os_feature_enabled_impl())
  {
    v79 = objc_alloc_init(CWFAssetSetManager);
    mobileAssetManager = v2->_mobileAssetManager;
    v2->_mobileAssetManager = v79;
  }

  if (!v2->_mobileAssetManager)
  {
    v81 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v82 = CWFGetOSLog();
    if (v82)
    {
      v83 = CWFGetOSLog();
    }

    else
    {
      v83 = MEMORY[0x1E69E9C10];
      v84 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
    {
      v100 = 134219010;
      v101 = v81 / 0x3B9ACA00;
      v102 = 2048;
      v103 = v81 % 0x3B9ACA00 / 0x3E8;
      v104 = 2082;
      v105 = "[CWFXPCRequestProxy init]";
      v106 = 2082;
      v107 = "CWFXPCRequestProxy.m";
      v108 = 1024;
      v109 = 282;
      LODWORD(v98) = 48;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v83, 0, "[corewifi] @[%llu.%06llu] %{public}s (%{public}s:%u) mobileAssetManager could not be initialized", &v100, v98);
    }
  }

  v85 = objc_alloc_init(CWFBrokenBackhaulMonitor);
  bbhMonitor = v2->_bbhMonitor;
  v2->_bbhMonitor = v85;

  if (!v2->_bbhMonitor)
  {
    goto LABEL_46;
  }

  v87 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  mutableRecommendedKnownNetworks = v2->_mutableRecommendedKnownNetworks;
  v2->_mutableRecommendedKnownNetworks = v87;

  if (!v2->_mutableRecommendedKnownNetworks)
  {
    goto LABEL_46;
  }

  if (_os_feature_enabled_impl())
  {
    v89 = objc_alloc_init(CWFWiFiNetworkSharingManager);
    wifiNetworkSharingManager = v2->_wifiNetworkSharingManager;
    v2->_wifiNetworkSharingManager = v89;

    if (!v2->_wifiNetworkSharingManager)
    {
      v94 = CWFGetOSLog();
      if (v94)
      {
        v95 = CWFGetOSLog();
      }

      else
      {
        v95 = MEMORY[0x1E69E9C10];
        v97 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
      {
        v100 = 136446722;
        v101 = "[CWFXPCRequestProxy init]";
        v102 = 2082;
        v103 = "CWFXPCRequestProxy.m";
        v104 = 1024;
        LODWORD(v105) = 298;
        LODWORD(v98) = 28;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v95, 0, "[corewifi] %{public}s (%{public}s:%u) WiFi Network Sharing manager could not be instantiated", &v100, v98);
      }
    }
  }

  [(CWFXPCRequestProxy *)v2 __setupEventHandlers];
LABEL_44:

  return v2;
}

- (void)__forwardXPCEvent:(id)event reply:(id)reply
{
  v27 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  replyCopy = reply;
  type = [eventCopy type];
  if (type > 29)
  {
    if (type != 30)
    {
      if (type != 39)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

LABEL_8:
    [(CWFXPCRequestProxy *)self __handleKnownNetworkProfileChangedEvent:eventCopy];
LABEL_9:
    [(CWFXPCRequestProxy *)self __handleNearbyRecommendedNetworksChangedEvent:eventCopy];
    goto LABEL_10;
  }

  if (type)
  {
    if (type != 25)
    {
LABEL_10:
      delegate = [(CWFXPCRequestProxy *)self delegate];
      if (delegate)
      {
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = sub_1E0C98824;
        v21[3] = &unk_1E86E6AF0;
        v22 = replyCopy;
        [delegate XPCRequestProxy:self sendXPCEvent:eventCopy reply:v21];
        v11 = v22;
        goto LABEL_24;
      }

      v12 = CWFGetOSLog();
      if (v12)
      {
        v13 = CWFGetOSLog();
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
        v15 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
LABEL_22:

        if (!replyCopy)
        {
LABEL_25:

          goto LABEL_26;
        }

        v17 = *MEMORY[0x1E696A798];
        v11 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
        v18 = CWFErrorWithDescription(v17, 6, v11);
        (*(replyCopy + 2))(replyCopy, v18);

LABEL_24:
        goto LABEL_25;
      }

      v16 = sub_1E0BC9038([eventCopy type]);
      v25 = 138543362;
      v26 = v16;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v13, 16, "[corewifi] Unhandled event type (%{public}@)", &v25, 12);
LABEL_21:

      goto LABEL_22;
    }

    interfaceName = [eventCopy interfaceName];
    [(CWFXPCRequestProxy *)self __postWiFiUIStateFlagsWithInterfaceName:interfaceName];

    goto LABEL_8;
  }

  internalType = [eventCopy internalType];
  if (internalType == 1)
  {
    [(CWFXPCRequestProxy *)self __handleAutoJoinStateChangedInternalEvent:eventCopy];
    goto LABEL_26;
  }

  if (internalType == 3)
  {
    [(CWFXPCRequestProxy *)self __handleAssocDoneInternalEvent:eventCopy];
    goto LABEL_26;
  }

  if (internalType != 2)
  {
    delegate = [(CWFXPCRequestProxy *)self delegate];
    if (delegate)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = sub_1E0C98808;
      v23[3] = &unk_1E86E6AF0;
      v24 = replyCopy;
      [delegate XPCRequestProxy:self sendXPCEvent:eventCopy reply:v23];
      v11 = v24;
      goto LABEL_24;
    }

    v19 = CWFGetOSLog();
    if (v19)
    {
      v13 = CWFGetOSLog();
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v16 = sub_1E0BECB08([eventCopy internalType]);
    v25 = 138543362;
    v26 = v16;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v13, 16, "[corewifi] Unhandled event type (%{public}@)", &v25, 12);
    goto LABEL_21;
  }

  [(CWFXPCRequestProxy *)self __handleWillAssocInternalEvent:eventCopy];
LABEL_26:
}

- (void)XPCManager:(id)manager sendXPCEvent:(id)event reply:(id)reply
{
  replyCopy = reply;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E0C988E4;
  v9[3] = &unk_1E86E7BB8;
  v10 = replyCopy;
  v8 = replyCopy;
  [(CWFXPCRequestProxy *)self __forwardXPCEvent:event reply:v9];
}

- (int)__defaultInterfaceRoleForRequestType:(int64_t)type
{
  if ((type - 39) <= 0x30 && ((1 << (type - 39)) & 0x1C00018007FFFLL) != 0)
  {
    return 6;
  }

  result = 0;
  if ((type - 146) <= 0x14 && ((1 << (type + 110)) & 0x1FF801) != 0)
  {
    return 6;
  }

  return result;
}

- (id)__queueForXPCRequest:(id)request
{
  requestCopy = request;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1E0BC2D80;
  v17 = sub_1E0BC61FC;
  v18 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C98A64;
  block[3] = &unk_1E86E7BE0;
  selfCopy = self;
  v12 = &v13;
  v10 = requestCopy;
  v6 = requestCopy;
  dispatch_sync(mutexQueue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (BOOL)__didFindMatching80211InterfaceForXPCRequest:(id)request
{
  v114 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v98 = 0;
  v99 = &v98;
  v100 = 0x3032000000;
  v101 = sub_1E0BC2D80;
  v102 = sub_1E0BC61FC;
  v103 = 0;
  requestParameters = [requestCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  requestParameters2 = [requestCopy requestParameters];
  virtualInterfaceRole = [requestParameters2 virtualInterfaceRole];

  if (interfaceName)
  {
    v9 = [(CWFXPCRequestProxy *)self apple80211WithInterfaceName:interfaceName];
    v10 = v99[5];
    v99[5] = v9;
  }

  else
  {
    if (!virtualInterfaceRole)
    {
      v11 = -[CWFXPCRequestProxy __defaultInterfaceRoleForRequestType:](self, "__defaultInterfaceRoleForRequestType:", [requestCopy type]);
      requestParameters3 = [requestCopy requestParameters];
      [requestParameters3 setVirtualInterfaceRole:v11];

      v13 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
      v14 = CWFGetOSLog();
      if (v14)
      {
        v15 = CWFGetOSLog();
      }

      else
      {
        v15 = MEMORY[0x1E69E9C10];
        v16 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        requestParameters4 = [requestCopy requestParameters];
        v18 = sub_1E0BEE7B4([requestParameters4 virtualInterfaceRole]);
        v19 = sub_1E0BC2FCC([requestCopy type]);
        v104 = 134218754;
        v105 = v13 / 0x3B9ACA00;
        v106 = 2048;
        v107 = v13 % 0x3B9ACA00 / 0x3E8;
        v108 = 2114;
        v109 = v18;
        v110 = 2114;
        v111 = v19;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v15, 2, "[corewifi] @[%llu.%06llu] Using default interface role '%{public}@' based on '%{public}@' request type", &v104, 42);
      }
    }

    requestParameters5 = [requestCopy requestParameters];
    v21 = -[CWFXPCRequestProxy apple80211WithVirtualInterfaceRole:parentInterfaceName:](self, "apple80211WithVirtualInterfaceRole:parentInterfaceName:", [requestParameters5 virtualInterfaceRole], 0);
    v22 = v99[5];
    v99[5] = v21;

    interfaceName2 = [v99[5] interfaceName];
    requestParameters6 = [requestCopy requestParameters];
    [requestParameters6 setInterfaceName:interfaceName2];

    v25 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v26 = CWFGetOSLog();
    if (v26)
    {
      v10 = CWFGetOSLog();
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v27 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      requestParameters7 = [requestCopy requestParameters];
      interfaceName3 = [requestParameters7 interfaceName];
      requestParameters8 = [requestCopy requestParameters];
      v31 = sub_1E0BEE7B4([requestParameters8 virtualInterfaceRole]);
      v104 = 134218754;
      v105 = v25 / 0x3B9ACA00;
      v106 = 2048;
      v107 = v25 % 0x3B9ACA00 / 0x3E8;
      v108 = 2114;
      v109 = interfaceName3;
      v110 = 2114;
      v111 = v31;
      LODWORD(v82) = 42;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v10, 2, "[corewifi] @[%llu.%06llu] Using %{public}@ based on interface role '%{public}@'", &v104, v82);
    }
  }

  v32 = v99[5];
  if (!v32 && !virtualInterfaceRole)
  {
    requestParameters9 = [requestCopy requestParameters];
    interfaceName4 = [requestParameters9 interfaceName];
    v35 = [(CWFXPCRequestProxy *)self isNon80211InterfaceName:interfaceName4];

    if (v35)
    {
      v36 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
      v37 = CWFGetOSLog();
      if (v37)
      {
        v38 = CWFGetOSLog();
      }

      else
      {
        v38 = MEMORY[0x1E69E9C10];
        v45 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        requestParameters10 = [requestCopy requestParameters];
        interfaceName5 = [requestParameters10 interfaceName];
        requestParameters11 = [requestCopy requestParameters];
        v48 = sub_1E0BEE7B4([requestParameters11 virtualInterfaceRole]);
        uUID = [requestCopy UUID];
        uUIDString = [uUID UUIDString];
        v51 = [uUIDString substringToIndex:5];
        v104 = 134219010;
        v105 = v36 / 0x3B9ACA00;
        v106 = 2048;
        v107 = v36 % 0x3B9ACA00 / 0x3E8;
        v108 = 2114;
        v109 = interfaceName5;
        v110 = 2114;
        v111 = v48;
        v112 = 2114;
        v113 = v51;
        LODWORD(v82) = 52;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v38, 0, "[corewifi] @[%llu.%06llu] Non WiFi interface name specified (name=%{public}@, role=%{public}@, uuid=%{public}@)", &v104, v82);
      }
    }

    else
    {
      apple80211InterfaceQueue = self->_apple80211InterfaceQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0C99950;
      block[3] = &unk_1E86E7C08;
      v40 = interfaceName;
      v97 = &v98;
      v94 = v40;
      selfCopy = self;
      v41 = requestCopy;
      v96 = v41;
      dispatch_sync(apple80211InterfaceQueue, block);
      if (!v99[5])
      {
        v42 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
        v43 = CWFGetOSLog();
        if (v43)
        {
          v44 = CWFGetOSLog();
        }

        else
        {
          v44 = MEMORY[0x1E69E9C10];
          v52 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v84 = v40;
          requestParameters12 = [v41 requestParameters];
          interfaceName6 = [requestParameters12 interfaceName];
          requestParameters13 = [v41 requestParameters];
          v53 = sub_1E0BEE7B4([requestParameters13 virtualInterfaceRole]);
          uUID2 = [v41 UUID];
          uUIDString2 = [uUID2 UUIDString];
          v56 = [uUIDString2 substringToIndex:5];
          v104 = 134219010;
          v105 = v42 / 0x3B9ACA00;
          v106 = 2048;
          v107 = v42 % 0x3B9ACA00 / 0x3E8;
          v108 = 2114;
          v109 = interfaceName6;
          v110 = 2114;
          v111 = v53;
          v112 = 2114;
          v113 = v56;
          LODWORD(v82) = 52;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v44, 0, "[corewifi] @[%llu.%06llu] [iflist] No WiFi matching interface exists, refreshing interface list (name=%{public}@, role=%{public}@, uuid=%{public}@)", &v104, v82);

          v40 = v84;
        }

        v91[0] = 0;
        v91[1] = v91;
        v91[2] = 0x2020000000;
        v92 = 0;
        v57 = dispatch_block_create(0, &unk_1F5B89BB0);
        v88[0] = MEMORY[0x1E69E9820];
        v88[1] = 3221225472;
        v88[2] = sub_1E0C99A00;
        v88[3] = &unk_1E86E7CA8;
        v90 = v91;
        v58 = v57;
        v89 = v58;
        [(CWFXPCRequestProxy *)self __updateWiFiInterfacesWithReason:@"force" reply:v88];
        dispatch_block_wait(v58, 0xFFFFFFFFFFFFFFFFLL);
        if (interfaceName)
        {
          v59 = [(CWFXPCRequestProxy *)self apple80211WithInterfaceName:v40];
          requestParameters14 = v99[5];
          v99[5] = v59;
        }

        else
        {
          requestParameters14 = [v41 requestParameters];
          v61 = -[CWFXPCRequestProxy apple80211WithVirtualInterfaceRole:parentInterfaceName:](self, "apple80211WithVirtualInterfaceRole:parentInterfaceName:", [requestParameters14 virtualInterfaceRole], 0);
          v62 = v99[5];
          v99[5] = v61;
        }

        if (v99[5])
        {
          v63 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
          v64 = CWFGetOSLog();
          if (v64)
          {
            v65 = CWFGetOSLog();
          }

          else
          {
            v65 = MEMORY[0x1E69E9C10];
            v68 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            v69 = v40;
            v70 = sub_1E0BEE7B4(0);
            uUID3 = [v41 UUID];
            uUIDString3 = [uUID3 UUIDString];
            v73 = [uUIDString3 substringToIndex:5];
            v104 = 134219010;
            v105 = v63 / 0x3B9ACA00;
            v106 = 2048;
            v107 = v63 % 0x3B9ACA00 / 0x3E8;
            v108 = 2114;
            v109 = v69;
            v110 = 2114;
            v111 = v70;
            v112 = 2114;
            v113 = v73;
            LODWORD(v82) = 52;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v65, 0, "[corewifi] @[%llu.%06llu] [iflist] Found matching WiFi interface after interface list refresh (name=%{public}@, role=%{public}@, uuid=%{public}@)", &v104, v82);
          }
        }

        else
        {
          v66 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
          v67 = CWFGetOSLog();
          if (v67)
          {
            v65 = CWFGetOSLog();
          }

          else
          {
            v65 = MEMORY[0x1E69E9C10];
            v74 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            v75 = v40;
            v76 = sub_1E0BEE7B4(0);
            uUID4 = [v41 UUID];
            uUIDString4 = [uUID4 UUIDString];
            v79 = [uUIDString4 substringToIndex:5];
            v104 = 134219010;
            v105 = v66 / 0x3B9ACA00;
            v106 = 2048;
            v107 = v66 % 0x3B9ACA00 / 0x3E8;
            v108 = 2114;
            v109 = v75;
            v110 = 2114;
            v111 = v76;
            v112 = 2114;
            v113 = v79;
            LODWORD(v82) = 52;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v65, 16, "[corewifi] @[%llu.%06llu] [iflist] Did NOT find matching WiFi interface after interface list refresh (name=%{public}@, role=%{public}@, uuid=%{public}@)", &v104, v82);
          }
        }

        _Block_object_dispose(v91, 8);
      }

      v38 = v94;
    }

    v32 = v99[5];
  }

  v80 = v32 != 0;

  _Block_object_dispose(&v98, 8);
  return v80;
}

- (BOOL)__allowXPCRequestWithoutAvailableInterface:(id)interface
{
  interfaceCopy = interface;
  type = [interfaceCopy type];
  v5 = 1;
  if (type > 261)
  {
    if ((type - 262) < 4)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v6 = (type - 168) > 0x22 || ((1 << (type + 88)) & 0x60000001FLL) == 0;
  if (v6 && (type - 1) >= 2 && (type - 112) >= 2)
  {
LABEL_12:
    if ((sub_1E0BC2F68([interfaceCopy type]) & 1) == 0)
    {
      v5 = sub_1E0BC5BFC([interfaceCopy type]);
    }
  }

LABEL_11:

  return v5;
}

- (void)XPCManager:(id)manager XPCConnection:(id)connection receivedXPCRequest:(id)request
{
  v77 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  connectionCopy = connection;
  val = request;
  requestParameters = [val requestParameters];
  interfaceName = [requestParameters interfaceName];

  requestParameters2 = [val requestParameters];
  virtualInterfaceRole = [requestParameters2 virtualInterfaceRole];

  if ([(CWFXPCRequestProxy *)self __allowXPCRequestWithoutAvailableInterface:val])
  {
    v11 = CWFGetOSLog();
    if (v11)
    {
      v12 = CWFGetOSLog();
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      uUID = [val UUID];
      uUIDString = [uUID UUIDString];
      v18 = [uUIDString substringToIndex:5];
      v72 = 138543362;
      v73 = v18;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v12, 2, "[corewifi] Allowing request even without a matching available WiFi interface (uuid=%{public}@)", &v72, 12, managerCopy, interfaceName);
    }
  }

  else
  {
    if (![(CWFXPCRequestProxy *)self __didFindMatching80211InterfaceForXPCRequest:val])
    {
      v14 = 0;
      goto LABEL_15;
    }

    v13 = CWFGetOSLog();
    if (v13)
    {
      v12 = CWFGetOSLog();
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      uUID2 = [val UUID];
      uUIDString2 = [uUID2 UUIDString];
      v22 = [uUIDString2 substringToIndex:5];
      v72 = 138543362;
      v73 = v22;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v12, 2, "[corewifi] Did find matching WiFi interface for request (uuid=%{public}@)", &v72, 12, managerCopy, interfaceName);
    }
  }

  v14 = 1;
LABEL_15:
  if ([connectionCopy isWiFiNetworkSharingAppExtension])
  {
    info = [val info];
    v24 = [info objectForKeyedSubscript:@"WiFiNetworkSharingClientID"];

    wifiNetworkSharingManager = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
    [wifiNetworkSharingManager extendAppexRuntimeForClientID:v24];
  }

  if (v14)
  {
    response2 = [(CWFXPCRequestProxy *)self __queueForXPCRequest:val];
    objc_initWeak(&location, val);
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = sub_1E0C9A288;
    v65[3] = &unk_1E86E7C30;
    objc_copyWeak(&v69, &location);
    v65[4] = self;
    v66 = connectionCopy;
    v26 = managerCopy;
    v67 = v26;
    v68 = interfaceName;
    v70 = virtualInterfaceRole;
    [val addExecutionBlock:v65];
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    operations = [response2 operations];
    v28 = [operations countByEnumeratingWithState:&v61 objects:v76 count:16];
    if (v28)
    {
      v29 = *v62;
      obj = operations;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v62 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v61 + 1) + 8 * i);
          supportedRequestTypes = [v26 supportedRequestTypes];
          v33 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(val, "type")}];
          if ([supportedRequestTypes containsObject:v33])
          {
          }

          else
          {
            name = [v31 name];
            v35 = sub_1E0BC2E18(val);
            v36 = [name hasSuffix:v35];

            if (v36)
            {
              v37 = CWFGetOSLog();
              if (v37)
              {
                v38 = CWFGetOSLog();
              }

              else
              {
                v38 = MEMORY[0x1E69E9C10];
                v39 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
              {
                name2 = [v31 name];
                uUID3 = [val UUID];
                uUIDString3 = [uUID3 UUIDString];
                v43 = [uUIDString3 substringToIndex:5];
                v72 = 138543618;
                v73 = name2;
                v74 = 2114;
                v75 = v43;
                LODWORD(v54) = 22;
                _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v38, 2, "[corewifi] Found matching already-pending XPC request (name=%{public}@, uuid=%{public}@), creating dependency to force serialization", &v72, v54);
              }

              [val addDependency:v31];
            }
          }
        }

        operations = obj;
        v28 = [obj countByEnumeratingWithState:&v61 objects:v76 count:16];
      }

      while (v28);
    }

    [response2 addOperation:val];
    objc_destroyWeak(&v69);
    objc_destroyWeak(&location);
    goto LABEL_42;
  }

  v44 = CWFGetOSLog();
  if (v44)
  {
    v45 = CWFGetOSLog();
  }

  else
  {
    v45 = MEMORY[0x1E69E9C10];
    v46 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
  {
    uUID4 = [val UUID];
    uUIDString4 = [uUID4 UUIDString];
    v49 = [uUIDString4 substringToIndex:5];
    v72 = 138543362;
    v73 = v49;
    LODWORD(v54) = 12;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v45, 2, "[corewifi] Failed to find a matching available WiFi interface for request (uuid=%{public}@)", &v72, v54);
  }

  response = [val response];

  if (response)
  {
    response2 = [val response];
    v51 = *MEMORY[0x1E696A798];
    v52 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v53 = CWFErrorWithDescription(v51, 45, v52);
    (response2)[2](response2, v53, 0);

LABEL_42:
  }
}

- (void)__cancelRequestsWithNamePrefix:(id)prefix
{
  v54 = *MEMORY[0x1E69E9840];
  prefixCopy = prefix;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  selfCopy = self;
  obj = [(NSMutableDictionary *)self->_mutableQueueMap allValues];
  v30 = [obj countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (v30)
  {
    v29 = *v47;
    do
    {
      v5 = 0;
      do
      {
        if (*v47 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = v5;
        v6 = *(*(&v46 + 1) + 8 * v5);
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        allValues = [v6 allValues];
        v7 = [allValues countByEnumeratingWithState:&v42 objects:v52 count:16];
        if (v7)
        {
          v8 = v7;
          v33 = *v43;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v43 != v33)
              {
                objc_enumerationMutation(allValues);
              }

              v10 = *(*(&v42 + 1) + 8 * i);
              v38 = 0u;
              v39 = 0u;
              v40 = 0u;
              v41 = 0u;
              operations = [v10 operations];
              v12 = [operations countByEnumeratingWithState:&v38 objects:v51 count:16];
              if (v12)
              {
                v13 = v12;
                v14 = *v39;
                do
                {
                  for (j = 0; j != v13; ++j)
                  {
                    if (*v39 != v14)
                    {
                      objc_enumerationMutation(operations);
                    }

                    v16 = *(*(&v38 + 1) + 8 * j);
                    name = [v16 name];
                    v18 = [name hasPrefix:prefixCopy];

                    if (v18)
                    {
                      [v16 cancel];
                    }
                  }

                  v13 = [operations countByEnumeratingWithState:&v38 objects:v51 count:16];
                }

                while (v13);
              }
            }

            v8 = [allValues countByEnumeratingWithState:&v42 objects:v52 count:16];
          }

          while (v8);
        }

        v5 = v31 + 1;
      }

      while (v31 + 1 != v30);
      v30 = [obj countByEnumeratingWithState:&v46 objects:v53 count:16];
    }

    while (v30);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  operations2 = [(NSOperationQueue *)selfCopy->_defaultQueue operations];
  v20 = [operations2 countByEnumeratingWithState:&v34 objects:v50 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v35;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(operations2);
        }

        v24 = *(*(&v34 + 1) + 8 * k);
        name2 = [v24 name];
        v26 = [name2 hasPrefix:prefixCopy];

        if (v26)
        {
          [v24 cancel];
        }
      }

      v21 = [operations2 countByEnumeratingWithState:&v34 objects:v50 count:16];
    }

    while (v21);
  }
}

- (void)XPCManager:(id)manager XPCConnection:(id)connection canceledXPCRequestsWithUUID:(id)d
{
  connectionCopy = connection;
  dCopy = d;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C9B07C;
  block[3] = &unk_1E86E6060;
  v10 = connectionCopy;
  v15 = v10;
  v11 = dCopy;
  v16 = v11;
  selfCopy = self;
  dispatch_async(mutexQueue, block);
  delegate = [(CWFXPCRequestProxy *)self delegate];
  v13 = delegate;
  if (delegate)
  {
    [delegate XPCRequestProxy:self XPCConnection:v10 canceledXPCRequestsWithUUID:v11];
  }
}

- (void)XPCManager:(id)manager invalidatedXPCConnection:(id)connection
{
  connectionCopy = connection;
  mutexQueue = self->_mutexQueue;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = sub_1E0C9B220;
  v14 = &unk_1E86E6420;
  v7 = connectionCopy;
  v15 = v7;
  selfCopy = self;
  dispatch_async(mutexQueue, &v11);
  v8 = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager:v11];
  [v8 didInvalidateXPCConnection:v7];

  delegate = [(CWFXPCRequestProxy *)self delegate];
  v10 = delegate;
  if (delegate)
  {
    [delegate XPCRequestProxy:self invalidatedXPCConnection:v7];
  }
}

- (void)XPCManager:(id)manager XPCConnection:(id)connection updatedRegisteredEventIDs:(id)ds
{
  managerCopy = manager;
  eventQueue = self->_eventQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E0C9B32C;
  v9[3] = &unk_1E86E6420;
  v9[4] = self;
  v10 = managerCopy;
  v8 = managerCopy;
  dispatch_async(eventQueue, v9);
}

- (id)__privateMACManager
{
  location[3] = *MEMORY[0x1E69E9840];
  if (!_os_feature_enabled_impl())
  {
LABEL_32:
    v4 = 0;
    goto LABEL_33;
  }

  privateMACManager = self->_privateMACManager;
  if (privateMACManager)
  {
    v4 = privateMACManager;
    goto LABEL_33;
  }

  v5 = [(CWFXPCRequestProxy *)self __apple80211WithVirtualInterfaceRole:0 parentInterfaceName:0];
  v6 = v5;
  if (v5)
  {
    interfaceName = [v5 interfaceName];
    v8 = [(NSMutableDictionary *)self->_SCNetworkInterfaceMap objectForKeyedSubscript:interfaceName];
    hardwareAddress = [v8 hardwareAddress];
    if (!hardwareAddress)
    {
      v10 = CWFGetOSLog();
      if (v10)
      {
        v11 = CWFGetOSLog();
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
        v12 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LODWORD(location[0]) = 138543362;
        *(location + 4) = interfaceName;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 16, "[corewifi] PRIVATE MAC: Failed to get HW MAC address from SCNetworkInterface, falling back to network stack (intf=%{public}@)", location, 12);
      }

      hardwareAddress = [(CWFXPCRequestProxy *)self __networkStackMACAddressWithInterfaceName:interfaceName];
      if (!hardwareAddress)
      {
        v13 = CWFGetOSLog();
        if (v13)
        {
          v14 = CWFGetOSLog();
        }

        else
        {
          v14 = MEMORY[0x1E69E9C10];
          v15 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          LODWORD(location[0]) = 138543362;
          *(location + 4) = interfaceName;
          LODWORD(v27) = 12;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v14, 16, "[corewifi] PRIVATE MAC: Failed to get HW MAC address from the network stack, falling back to WiFi stack (intf=%{public}@)", location, v27);
        }

        hardwareAddress = [v6 hardwareMACAddress:0];
        if (!hardwareAddress)
        {
          v16 = CWFGetOSLog();
          if (v16)
          {
            v17 = CWFGetOSLog();
          }

          else
          {
            v17 = MEMORY[0x1E69E9C10];
            v18 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            LODWORD(location[0]) = 138543362;
            *(location + 4) = interfaceName;
            LODWORD(v27) = 12;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v17, 16, "[corewifi] PRIVATE MAC: Failed to get HW MAC address from the WiFi stack (intf=%{public}@)", location, v27);
          }

          hardwareAddress = 0;
        }
      }
    }

    v19 = [[CWFPrivateMACManager alloc] initWithInterfaceName:interfaceName hardwareMACAddress:hardwareAddress];
    v20 = self->_privateMACManager;
    self->_privateMACManager = v19;

    objc_initWeak(location, self);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = sub_1E0C9B84C;
    v31[3] = &unk_1E86E7C58;
    objc_copyWeak(&v33, location);
    v21 = interfaceName;
    v32 = v21;
    [(CWFPrivateMACManager *)self->_privateMACManager setEffectiveHardwareMACAddress:v31];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_1E0C9B8D4;
    v28[3] = &unk_1E86E7C80;
    objc_copyWeak(&v30, location);
    v22 = v21;
    v29 = v22;
    [(CWFPrivateMACManager *)self->_privateMACManager setUpdatedNetworkIDHandler:v28];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&v33);
    objc_destroyWeak(location);
  }

  v4 = self->_privateMACManager;
  if (!v4)
  {
    v23 = CWFGetOSLog();
    if (v23)
    {
      v24 = CWFGetOSLog();
    }

    else
    {
      v24 = MEMORY[0x1E69E9C10];
      v25 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      LODWORD(v27) = 2;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v24, 16, "[corewifi] FAILED to initialize private MAC manager", location, v27);
    }

    goto LABEL_32;
  }

LABEL_33:

  return v4;
}

- (CWFPrivateMACManager)privateMACManager
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D80;
  v10 = sub_1E0BC61FC;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0C9BEB8;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)__detectBrokenBackhaulForAutoJoinWithNetwork:(id)network reply:(id)reply
{
  networkCopy = network;
  replyCopy = reply;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v39[3] = 0;
  v8 = dispatch_group_create();
  v9 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  dispatch_group_enter(v8);
  wifiUserAgentConnection = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];

  if (wifiUserAgentConnection)
  {
    wifiUserAgentConnection2 = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = sub_1E0C9C238;
    v32[3] = &unk_1E86E7CF8;
    v33 = networkCopy;
    selfCopy = self;
    v37 = v39;
    v38 = v9;
    v36 = replyCopy;
    v35 = v8;
    (wifiUserAgentConnection2)[2](wifiUserAgentConnection2, v32);
  }

  dispatch_group_enter(v8);
  v12 = [(CWFXPCRequestProxy *)self apple80211WithVirtualInterfaceRole:0 parentInterfaceName:0];
  interfaceName = [v12 interfaceName];
  v14 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:interfaceName];

  iPv4Router = [v14 IPv4Router];
  v24 = networkCopy;
  iPv6Router = [v14 IPv6Router];
  v17 = iPv6Router;
  bbhMonitor = self->_bbhMonitor;
  if (iPv4Router)
  {
    v19 = iPv4Router;
  }

  else
  {
    v19 = iPv6Router;
  }

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = sub_1E0C9C818;
  v28[3] = &unk_1E86E7CD0;
  v28[4] = self;
  v31 = v39;
  v20 = replyCopy;
  v30 = v20;
  v21 = v8;
  v29 = v21;
  [(CWFBrokenBackhaulMonitor *)bbhMonitor confirmBrokenBackhaulUsingTimeout:2000 count:2 preflightPingAddress:v19 completion:v28];
  targetQueue = [(CWFAutoJoinManager *)self->_autoJoinManager targetQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C9CCF8;
  block[3] = &unk_1E86E7D20;
  v26 = v20;
  v27 = v39;
  block[4] = self;
  v23 = v20;
  dispatch_group_notify(v21, targetQueue, block);

  _Block_object_dispose(v39, 8);
}

- (void)__allowBrokenBackhaulPersonalHotspotFallbackForAutoJoinWithNetwork:(id)network reply:(id)reply
{
  v55[1] = *MEMORY[0x1E69E9840];
  networkCopy = network;
  replyCopy = reply;
  v7 = [(CWFXPCRequestProxy *)self apple80211WithVirtualInterfaceRole:0 parentInterfaceName:0];
  v8 = [v7 RSSI:0];
  integerValue = [v8 integerValue];

  interfaceName = [v7 interfaceName];
  v11 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:interfaceName];

  iPv4Addresses = [v11 IPv4Addresses];
  iPv4Router = [v11 IPv4Router];
  iPv4InterfaceName = [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration IPv4InterfaceName];
  iPv6Addresses = [v11 IPv6Addresses];
  iPv6Router = [v11 IPv6Router];
  iPv6InterfaceName = [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration IPv6InterfaceName];
  v16 = iPv6InterfaceName;
  if (integerValue <= -81)
  {
    if (replyCopy)
    {
      v17 = MEMORY[0x1E696ABC0];
      v18 = iPv6InterfaceName;
      v19 = iPv6Router;
      v20 = iPv6Addresses;
      v21 = *MEMORY[0x1E696A798];
      v54 = *MEMORY[0x1E696A578];
      v55[0] = @"WiFi has poor RSSI";
      v22 = MEMORY[0x1E695DF20];
      v23 = v55;
      v24 = &v54;
LABEL_39:
      v38 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:1];
      v39 = v21;
      iPv6Addresses = v20;
      iPv6Router = v19;
      v16 = v18;
      v40 = [v17 errorWithDomain:v39 code:1 userInfo:v38];
      replyCopy[2](replyCopy, v40, 0);

      goto LABEL_40;
    }

    goto LABEL_41;
  }

  if (iPv4Addresses)
  {
    v25 = iPv4Router == 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = v25 || iPv4InterfaceName == 0;
  v27 = !v26;
  v45 = iPv4InterfaceName;
  if (v26 || ([v7 interfaceName], (v28 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v29 = 0;
    v30 = 1;
    if (!iPv6Addresses || !iPv6Router || !v16)
    {
      goto LABEL_28;
    }

    v43 = iPv6Addresses;
    v44 = replyCopy;
    v42 = 0;
  }

  else
  {
    v29 = v28;
    v44 = replyCopy;
    replyCopy = [v7 interfaceName];
    if ([iPv4InterfaceName isEqual:replyCopy])
    {

      replyCopy = v44;
      goto LABEL_30;
    }

    if (!iPv6Addresses || !iPv6Router || !v16)
    {

      replyCopy = v44;
      goto LABEL_37;
    }

    v43 = iPv6Addresses;
    v42 = 1;
  }

  interfaceName2 = [v7 interfaceName];
  if (interfaceName2)
  {
    v32 = interfaceName2;
    [v7 interfaceName];
    v41 = v29;
    v33 = v27;
    v35 = v34 = iPv6Router;
    v30 = [v16 isEqual:v35] ^ 1;

    iPv6Router = v34;
    v27 = v33;
    v29 = v41;

    if (v42)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v30 = 1;
    if (v42)
    {
LABEL_23:

      iPv6Addresses = v43;
      replyCopy = v44;
      if ((v27 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_29:

      if (v30)
      {
        goto LABEL_37;
      }

LABEL_30:
      wifiUserAgentConnection = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];

      iPv4InterfaceName = v45;
      if (wifiUserAgentConnection)
      {
        wifiUserAgentConnection2 = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];
        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = sub_1E0C9D1E4;
        v49[3] = &unk_1E86E7D48;
        v50 = networkCopy;
        v51 = replyCopy;
        (wifiUserAgentConnection2)[2](wifiUserAgentConnection2, v49);

        v38 = v50;
LABEL_40:

        goto LABEL_41;
      }

      goto LABEL_41;
    }
  }

  iPv6Addresses = v43;
  replyCopy = v44;
LABEL_28:
  if (v27)
  {
    goto LABEL_29;
  }

LABEL_24:
  if (!v30)
  {
    goto LABEL_30;
  }

LABEL_37:
  iPv4InterfaceName = v45;
  if (replyCopy)
  {
    v17 = MEMORY[0x1E696ABC0];
    v18 = v16;
    v19 = iPv6Router;
    v20 = iPv6Addresses;
    v21 = *MEMORY[0x1E696A798];
    v52 = *MEMORY[0x1E696A578];
    v53 = @"WiFi is not primary IPv4/IPv6";
    v22 = MEMORY[0x1E695DF20];
    v23 = &v53;
    v24 = &v52;
    goto LABEL_39;
  }

LABEL_41:
}

- (CWFAutoJoinManager)autoJoinManager
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D80;
  v10 = sub_1E0BC61FC;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0C9D394;
  v5[3] = &unk_1E86E6A28;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (CWFAutoJoinManager)autoJoinManagerCached
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D80;
  v10 = sub_1E0BC61FC;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0C9D758;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)__noiManager
{
  noiManager = self->_noiManager;
  if (noiManager)
  {
    v3 = noiManager;
  }

  else
  {
    v5 = +[CWFNetworkOfInterestManager sharedInstance];
    v6 = self->_noiManager;
    self->_noiManager = v5;

    objc_initWeak(location, self);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1E0C9D9A8;
    v16[3] = &unk_1E86E7E38;
    objc_copyWeak(&v17, location);
    [(CWFNetworkOfInterestManager *)self->_noiManager setHomeNetworkDeterminationChangedHandler:v16];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = sub_1E0C9E44C;
    v14 = &unk_1E86E7E38;
    objc_copyWeak(&v15, location);
    [(CWFNetworkOfInterestManager *)self->_noiManager setWorkNetworkDeterminationChangedHandler:&v11];
    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(location);
    v3 = self->_noiManager;
    if (!v3)
    {
      v7 = CWFGetOSLog();
      if (v7)
      {
        v8 = CWFGetOSLog();
      }

      else
      {
        v8 = MEMORY[0x1E69E9C10];
        v9 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(location[0]) = 0;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 16, "[corewifi] FAILED to initialize NOI manager", location, 2, v11, v12, v13, v14);
      }

      v3 = 0;
    }
  }

  return v3;
}

- (CWFNetworkOfInterestManager)noiManager
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D80;
  v10 = sub_1E0BC61FC;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0C9EA50;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setTargetQueue:(id)queue requestType:(int64_t)type interfaceName:(id)name
{
  queueCopy = queue;
  nameCopy = name;
  mutexQueue = self->_mutexQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1E0C9EB80;
  v13[3] = &unk_1E86E6B18;
  v13[4] = self;
  v14 = nameCopy;
  v15 = queueCopy;
  typeCopy = type;
  v11 = queueCopy;
  v12 = nameCopy;
  dispatch_sync(mutexQueue, v13);
}

- (void)__startEventMonitoring
{
  v13 = *MEMORY[0x1E69E9840];
  if (!self->_isMonitoringEvents)
  {
    self->_isMonitoringEvents = 1;
    [(CWFXPCRequestProxy *)self __startMonitoringDefaultEventIDs];
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    __wifiInterfaceNames = [(CWFXPCRequestProxy *)self __wifiInterfaceNames];
    v4 = [__wifiInterfaceNames countByEnumeratingWithState:&v8 objects:v12 count:16];
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
            objc_enumerationMutation(__wifiInterfaceNames);
          }

          [(CWFXPCRequestProxy *)self __startMonitoringDefaultEventIDsForInterfaceName:*(*(&v8 + 1) + 8 * v7++)];
        }

        while (v5 != v7);
        v5 = [__wifiInterfaceNames countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    [(CWFXPCRequestProxy *)self __updateMonitoring:1 eventIDs:self->_mutableEventIDs];
  }
}

- (void)__stopEventMonitoring
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_isMonitoringEvents)
  {
    self->_isMonitoringEvents = 0;
    [(CWFXPCRequestProxy *)self __stopMonitoringDefaultEventIDs];
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    __wifiInterfaceNames = [(CWFXPCRequestProxy *)self __wifiInterfaceNames];
    v4 = [__wifiInterfaceNames countByEnumeratingWithState:&v8 objects:v12 count:16];
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
            objc_enumerationMutation(__wifiInterfaceNames);
          }

          [(CWFXPCRequestProxy *)self __stopMonitoringDefaultEventIDsForInterfaceName:*(*(&v8 + 1) + 8 * v7++)];
        }

        while (v5 != v7);
        v5 = [__wifiInterfaceNames countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    [(CWFXPCRequestProxy *)self __updateMonitoring:0 eventIDs:self->_mutableEventIDs];
  }
}

- (BOOL)isMonitoringEvents
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0C9EF28;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)activate
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C9EFE0;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

- (void)invalidate
{
  [(CWFXPCRequestProxy *)self setWifiUserAgentConnection:0];
  [(CWFXPCRequestProxy *)self setWifiNetworkSharingUIServiceXPCConnection:0];
  [(CWFXPCRequestProxy *)self setWifiNetworkSharingAppexXPCConnections:0];
  [(CWFXPCRequestProxy *)self setWifiNetworkSharingAppXPCConnection:0];
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C9F6D0;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

- (id)__deviceUUID
{
  v34 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1E0BC2D80;
  v24 = sub_1E0BC61FC;
  v25 = 0;
  delegate = [(CWFXPCRequestProxy *)self delegate];
  if (!delegate)
  {
    goto LABEL_6;
  }

  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v4 = dispatch_block_create(0, &unk_1F5B895D0);
  v5 = objc_alloc_init(CWFXPCRequest);
  [(CWFXPCRequest *)v5 setType:145];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1E0C9FB74;
  v14[3] = &unk_1E86E7E80;
  v16 = &v20;
  v17 = v18;
  v6 = v4;
  v15 = v6;
  [(CWFXPCRequest *)v5 setResponse:v14];
  [delegate XPCRequestProxy:self XPCConnection:self->_internalRequestXPCConnection receivedXPCRequest:v5];
  v7 = dispatch_time(0, 4000000000);
  if (!dispatch_block_wait(v6, v7))
  {

    _Block_object_dispose(v18, 8);
LABEL_6:
    v10 = v21[5];
    goto LABEL_11;
  }

  v8 = CWFGetOSLog();
  if (v8)
  {
    v9 = CWFGetOSLog();
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v26 = 136446978;
    v27 = "[CWFXPCRequestProxy __deviceUUID]";
    v28 = 2082;
    v29 = "CWFXPCRequestProxy.m";
    v30 = 1024;
    v31 = 2120;
    v32 = 2048;
    v33 = 4000000000;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 16, "[corewifi] %{public}s (%{public}s:%u) FAILED to complete within %lluns, continuing", &v26, 38);
  }

  _Block_object_dispose(v18, 8);
  v10 = 0;
LABEL_11:
  v12 = v10;

  _Block_object_dispose(&v20, 8);

  return v12;
}

- (id)__vendorSpecificIdentifierForXPCConnection:(id)connection
{
  connectionCopy = connection;
  string = [MEMORY[0x1E696AD60] string];
  __deviceUUID = [(CWFXPCRequestProxy *)self __deviceUUID];
  uUIDString = [__deviceUUID UUIDString];

  if (uUIDString)
  {
    [string appendFormat:@"%@, ", uUIDString];
    bundleID = [connectionCopy bundleID];
    if (bundleID && sub_1E0CC9500(0))
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2050000000;
      v9 = qword_1ECE86990;
      v20 = qword_1ECE86990;
      if (!qword_1ECE86990)
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = sub_1E0CC9644;
        v16[3] = &unk_1E86E5600;
        v16[4] = &v17;
        sub_1E0CC9644(v16);
        v9 = v18[3];
      }

      v10 = v9;
      _Block_object_dispose(&v17, 8);
      v11 = [v9 applicationProxyForIdentifier:bundleID];
      deviceIdentifierForVendor = [v11 deviceIdentifierForVendor];
      uUIDString2 = [deviceIdentifierForVendor UUIDString];

      if (uUIDString2)
      {
        [string appendFormat:@"%@", uUIDString2];
        v14 = [string copy];
        uUIDString = uUIDString2;
      }

      else
      {
        v14 = 0;
        uUIDString = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
    bundleID = 0;
  }

  return v14;
}

- (id)__hashedSSID:(id)d XPCConnection:(id)connection error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  connectionCopy = connection;
  if (dCopy)
  {
    v10 = [(CWFXPCRequestProxy *)self __vendorSpecificIdentifierForXPCConnection:connectionCopy];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 dataUsingEncoding:4];
      if (v12)
      {
        v13 = v12;
        memset(v22, 0, sizeof(v22));
        CCHmac(2u, [v12 bytes], objc_msgSend(v12, "length"), objc_msgSend(dCopy, "bytes"), objc_msgSend(dCopy, "length"), v22);
        v14 = [MEMORY[0x1E695DEF0] dataWithBytes:v22 length:32];
        v15 = [v14 base64EncodedStringWithOptions:0];
        v16 = 0;
        goto LABEL_5;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v19 = *MEMORY[0x1E696A798];
  v20 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
  v16 = CWFErrorWithDescription(v19, 22, v20);

  v15 = 0;
  if (error && v16)
  {
    v21 = v16;
    v15 = 0;
    v13 = 0;
    v14 = 0;
    *error = v16;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

LABEL_5:
  v17 = v15;

  return v15;
}

- (id)__hashedBSSID:(id)d XPCConnection:(id)connection error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v9 = CWFEthernetAddressDataFromString(d);
  if (v9)
  {
    v10 = [(CWFXPCRequestProxy *)self __vendorSpecificIdentifierForXPCConnection:connectionCopy];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 dataUsingEncoding:4];
      if (v12)
      {
        v13 = v12;
        memset(v22, 0, sizeof(v22));
        CCHmac(2u, [v12 bytes], objc_msgSend(v12, "length"), objc_msgSend(v9, "bytes"), objc_msgSend(v9, "length"), v22);
        v14 = [MEMORY[0x1E695DEF0] dataWithBytes:v22 length:32];
        v15 = [v14 base64EncodedStringWithOptions:0];
        v16 = 0;
        goto LABEL_5;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v19 = *MEMORY[0x1E696A798];
  v20 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
  v16 = CWFErrorWithDescription(v19, 22, v20);

  v15 = 0;
  if (error && v16)
  {
    v21 = v16;
    v15 = 0;
    v13 = 0;
    v14 = 0;
    *error = v16;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

LABEL_5:
  v17 = v15;

  return v15;
}

- (void)__startMonitoringDefaultEventIDs
{
  [(CWFIO80211 *)self->_IO80211 startEventMonitoring];
  [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration startEventMonitoring];
  SCNetworkReachability = self->_SCNetworkReachability;

  [(CWFSCNetworkReachability *)SCNetworkReachability startEventMonitoring];
}

- (void)__stopMonitoringDefaultEventIDs
{
  [(CWFIO80211 *)self->_IO80211 stopEventMonitoring];
  [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration stopEventMonitoring];
  SCNetworkReachability = self->_SCNetworkReachability;

  [(CWFSCNetworkReachability *)SCNetworkReachability stopEventMonitoring];
}

- (void)__startMonitoringDefaultEventIDsForInterfaceName:(id)name
{
  nameCopy = name;
  v4 = [(CWFXPCRequestProxy *)self __apple80211WithInterfaceName:?];
  if (_os_feature_enabled_impl())
  {
    [v4 startMonitoringEventWithType:191 interfaceName:nameCopy];
  }

  [v4 startMonitoringEventWithType:4 interfaceName:nameCopy];
  [v4 startMonitoringEventWithType:3 interfaceName:nameCopy];
  [v4 startMonitoringEventWithType:20 interfaceName:nameCopy];
  [v4 startMonitoringEventWithType:76 interfaceName:nameCopy];
  [v4 startMonitoringEventWithType:70 interfaceName:nameCopy];
  [v4 startMonitoringEventWithType:71 interfaceName:nameCopy];
  [v4 startMonitoringEventWithType:80 interfaceName:nameCopy];
  [v4 startMonitoringEventWithType:39 interfaceName:nameCopy];
  [v4 startMonitoringEventWithType:17 interfaceName:nameCopy];
  [v4 startMonitoringEventWithType:12 interfaceName:nameCopy];
  [v4 startMonitoringEventWithType:13 interfaceName:nameCopy];
  v5 = [(CWFXPCRequestProxy *)self __SCNetworkServiceWithInterfaceName:nameCopy];
  [v5 startEventMonitoring];
  v6 = [(CWFXPCRequestProxy *)self __EAP8021XWithInterfaceName:nameCopy];
  [v6 startEventMonitoring];
}

- (void)__stopMonitoringDefaultEventIDsForInterfaceName:(id)name
{
  nameCopy = name;
  v4 = [(CWFXPCRequestProxy *)self __apple80211WithInterfaceName:?];
  if (_os_feature_enabled_impl())
  {
    [v4 stopMonitoringEventWithType:191 interfaceName:nameCopy];
  }

  [v4 stopMonitoringEventWithType:4 interfaceName:nameCopy];
  [v4 stopMonitoringEventWithType:3 interfaceName:nameCopy];
  [v4 stopMonitoringEventWithType:20 interfaceName:nameCopy];
  [v4 stopMonitoringEventWithType:76 interfaceName:nameCopy];
  [v4 stopMonitoringEventWithType:70 interfaceName:nameCopy];
  [v4 stopMonitoringEventWithType:71 interfaceName:nameCopy];
  [v4 stopMonitoringEventWithType:80 interfaceName:nameCopy];
  [v4 stopMonitoringEventWithType:39 interfaceName:nameCopy];
  [v4 stopMonitoringEventWithType:17 interfaceName:nameCopy];
  [v4 stopMonitoringEventWithType:12 interfaceName:nameCopy];
  [v4 stopMonitoringEventWithType:13 interfaceName:nameCopy];
  v5 = [(CWFXPCRequestProxy *)self __SCNetworkServiceWithInterfaceName:nameCopy];
  [v5 stopEventMonitoring];
  v6 = [(CWFXPCRequestProxy *)self __EAP8021XWithInterfaceName:nameCopy];
  [v6 stopEventMonitoring];
}

- (id)__wifiInterfaceNames
{
  allKeys = [(NSMutableDictionary *)self->_apple80211Map allKeys];
  v3 = [allKeys mutableCopy];

  [v3 removeObject:&stru_1F5B8FC80];

  return v3;
}

- (id)wifiInterfaceNames
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D80;
  v10 = sub_1E0BC61FC;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0CA06A0;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)__interfaceNames
{
  v18 = *MEMORY[0x1E69E9840];
  allKeys = [(NSMutableDictionary *)self->_apple80211Map allKeys];
  v4 = [allKeys mutableCopy];

  [v4 removeObject:&stru_1F5B8FC80];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)self->_apple80211Map allValues];
  v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 virtualInterfaceRole])
        {
          interfaceName = [v10 interfaceName];
          [v4 removeObject:interfaceName];
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)interfaceNames
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D80;
  v10 = sub_1E0BC61FC;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0CA0964;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)__virtualInterfaceNames
{
  v18 = *MEMORY[0x1E69E9840];
  allKeys = [(NSMutableDictionary *)self->_apple80211Map allKeys];
  v4 = [allKeys mutableCopy];

  [v4 removeObject:&stru_1F5B8FC80];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)self->_apple80211Map allValues];
  v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (![v10 virtualInterfaceRole])
        {
          interfaceName = [v10 interfaceName];
          [v4 removeObject:interfaceName];
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)virtualInterfaceNames
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D80;
  v10 = sub_1E0BC61FC;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0CA0C28;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)__interfaceSpecificEventIDs:(id)ds
{
  v39 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = [MEMORY[0x1E695DFA8] set];
  allKeys = [(NSMutableDictionary *)self->_apple80211Map allKeys];
  v7 = [allKeys mutableCopy];

  v28 = v7;
  [v7 removeObject:&stru_1F5B8FC80];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = dsCopy;
  v9 = [v8 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v34;
    v26 = *v34;
    v27 = v8;
    do
    {
      v12 = 0;
      do
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v33 + 1) + 8 * v12);
        interfaceName = [v13 interfaceName];
        if (interfaceName)
        {

LABEL_9:
          [v5 addObject:v13];
          goto LABEL_10;
        }

        if (([v13 type] - 43) < 4)
        {
          goto LABEL_9;
        }

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v15 = v28;
        v16 = [v15 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v30;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v30 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v29 + 1) + 8 * i);
              v21 = [v13 copy];
              v22 = v21;
              if (v21)
              {
                [v21 setInterfaceName:v20];
                [v5 addObject:v22];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v17);
        }

        v11 = v26;
        v8 = v27;
LABEL_10:
        ++v12;
      }

      while (v12 != v10);
      v23 = [v8 countByEnumeratingWithState:&v33 objects:v38 count:16];
      v10 = v23;
    }

    while (v23);
  }

  v24 = [v5 copy];

  return v24;
}

- (void)__updateMonitoring:(BOOL)monitoring eventIDs:(id)ds
{
  monitoringCopy = monitoring;
  v33 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = [dsCopy countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(dsCopy);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        type = [v11 type];
        if (type <= 15)
        {
          if (type > 4)
          {
            switch(type)
            {
              case 5:
                interfaceName = [v11 interfaceName];
                v14 = [(CWFXPCRequestProxy *)self __apple80211WithInterfaceName:interfaceName];

                interfaceName2 = [v11 interfaceName];
                v16 = v14;
                v17 = 15;
                break;
              case 8:
                interfaceName3 = [v11 interfaceName];
                v14 = [(CWFXPCRequestProxy *)self __apple80211WithInterfaceName:interfaceName3];

                interfaceName2 = [v11 interfaceName];
                v16 = v14;
                v17 = 8;
                break;
              case 15:
                interfaceName4 = [v11 interfaceName];
                v14 = [(CWFXPCRequestProxy *)self __apple80211WithInterfaceName:interfaceName4];

                interfaceName2 = [v11 interfaceName];
                v16 = v14;
                v17 = 67;
                break;
              default:
                continue;
            }
          }

          else
          {
            switch(type)
            {
              case 1:
                interfaceName5 = [v11 interfaceName];
                v14 = [(CWFXPCRequestProxy *)self __apple80211WithInterfaceName:interfaceName5];

                interfaceName2 = [v11 interfaceName];
                v16 = v14;
                v17 = 1;
                break;
              case 2:
                interfaceName6 = [v11 interfaceName];
                v14 = [(CWFXPCRequestProxy *)self __apple80211WithInterfaceName:interfaceName6];

                interfaceName2 = [v11 interfaceName];
                v16 = v14;
                v17 = 2;
                break;
              case 4:
                interfaceName7 = [v11 interfaceName];
                v14 = [(CWFXPCRequestProxy *)self __apple80211WithInterfaceName:interfaceName7];

                interfaceName2 = [v11 interfaceName];
                v16 = v14;
                v17 = 11;
                break;
              default:
                continue;
            }
          }

          goto LABEL_33;
        }

        if (type > 0x25)
        {
          goto LABEL_23;
        }

        if (((1 << type) & 0x1800180000) == 0)
        {
          if (type == 31)
          {
            interfaceName8 = [v11 interfaceName];
            v14 = [(CWFXPCRequestProxy *)self __apple80211WithInterfaceName:interfaceName8];

            interfaceName2 = [v11 interfaceName];
            v16 = v14;
            v17 = 20;
          }

          else if (type == 37)
          {
            interfaceName9 = [v11 interfaceName];
            v14 = [(CWFXPCRequestProxy *)self __apple80211WithInterfaceName:interfaceName9];

            interfaceName2 = [v11 interfaceName];
            v16 = v14;
            v17 = 63;
          }

          else
          {
LABEL_23:
            if (type == 16)
            {
              interfaceName10 = [v11 interfaceName];
              v14 = [(CWFXPCRequestProxy *)self __apple80211WithInterfaceName:interfaceName10];

              interfaceName2 = [v11 interfaceName];
              v16 = v14;
              v17 = 68;
            }

            else
            {
              if (type != 17)
              {
                continue;
              }

              interfaceName11 = [v11 interfaceName];
              v14 = [(CWFXPCRequestProxy *)self __apple80211WithInterfaceName:interfaceName11];

              interfaceName2 = [v11 interfaceName];
              v16 = v14;
              v17 = 46;
            }
          }

LABEL_33:
          if (monitoringCopy)
          {
            [v16 startMonitoringEventWithType:v17 interfaceName:interfaceName2];
          }

          else
          {
            [v16 stopMonitoringEventWithType:v17 interfaceName:interfaceName2];
          }

          goto LABEL_37;
        }

        interfaceName12 = [v11 interfaceName];
        v14 = [(CWFXPCRequestProxy *)self __SCNetworkInterfaceWithInterfaceName:interfaceName12];

        if (monitoringCopy)
        {
          [v14 startEventMonitoring];
        }

        else
        {
          [v14 stopEventMonitoring];
        }

LABEL_37:
      }

      v8 = [dsCopy countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }
}

- (id)__linkDownStatusWithInterfaceName:(id)name
{
  nameCopy = name;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1E0BC2D80;
  v17 = sub_1E0BC61FC;
  v18 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CA149C;
  block[3] = &unk_1E86E7BE0;
  selfCopy = self;
  v12 = &v13;
  v10 = nameCopy;
  v6 = nameCopy;
  dispatch_sync(mutexQueue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)__autojoinStatusWithInterfaceName:(id)name
{
  nameCopy = name;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1E0BC2D80;
  v17 = sub_1E0BC61FC;
  v18 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CA1628;
  block[3] = &unk_1E86E7BE0;
  selfCopy = self;
  v12 = &v13;
  v10 = nameCopy;
  v6 = nameCopy;
  dispatch_sync(mutexQueue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)__joinStatusWithInterfaceName:(id)name
{
  nameCopy = name;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1E0BC2D80;
  v17 = sub_1E0BC61FC;
  v18 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CA17B8;
  block[3] = &unk_1E86E7BE0;
  selfCopy = self;
  v12 = &v13;
  v10 = nameCopy;
  v6 = nameCopy;
  dispatch_sync(mutexQueue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)__roamStatusWithInterfaceName:(id)name
{
  nameCopy = name;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1E0BC2D80;
  v17 = sub_1E0BC61FC;
  v18 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CA1944;
  block[3] = &unk_1E86E7BE0;
  selfCopy = self;
  v12 = &v13;
  v10 = nameCopy;
  v6 = nameCopy;
  dispatch_sync(mutexQueue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)__linkQualityMetricWithInterfaceName:(id)name
{
  nameCopy = name;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1E0BC2D80;
  v17 = sub_1E0BC61FC;
  v18 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CA1AD0;
  block[3] = &unk_1E86E7BE0;
  selfCopy = self;
  v12 = &v13;
  v10 = nameCopy;
  v6 = nameCopy;
  dispatch_sync(mutexQueue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)__linkDownNetworkWithInterfaceName:(id)name
{
  nameCopy = name;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1E0BC2D80;
  v17 = sub_1E0BC61FC;
  v18 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CA1C5C;
  block[3] = &unk_1E86E7BE0;
  selfCopy = self;
  v12 = &v13;
  v10 = nameCopy;
  v6 = nameCopy;
  dispatch_sync(mutexQueue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

- (id)__cachedKnownNetwork
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1E0BC2D80;
  v10 = sub_1E0BC61FC;
  v11 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0CA1DC8;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)__setCachedKnownNetwork:(id)network
{
  networkCopy = network;
  mutexQueue = self->_mutexQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0CA1EBC;
  v7[3] = &unk_1E86E6420;
  v7[4] = self;
  v8 = networkCopy;
  v6 = networkCopy;
  dispatch_async(mutexQueue, v7);
}

- (void)__setLinkDownStatus:(id)status interfaceName:(id)name
{
  statusCopy = status;
  nameCopy = name;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CA1FD8;
  block[3] = &unk_1E86E6060;
  v12 = nameCopy;
  selfCopy = self;
  v14 = statusCopy;
  v9 = statusCopy;
  v10 = nameCopy;
  dispatch_async(mutexQueue, block);
}

- (void)__setJoinStatus:(id)status interfaceName:(id)name
{
  statusCopy = status;
  nameCopy = name;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CA2130;
  block[3] = &unk_1E86E6060;
  v12 = nameCopy;
  selfCopy = self;
  v14 = statusCopy;
  v9 = statusCopy;
  v10 = nameCopy;
  dispatch_async(mutexQueue, block);
}

- (void)__setAutoJoinStatus:(id)status interfaceName:(id)name
{
  statusCopy = status;
  nameCopy = name;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CA2264;
  block[3] = &unk_1E86E6060;
  v12 = nameCopy;
  selfCopy = self;
  v14 = statusCopy;
  v9 = statusCopy;
  v10 = nameCopy;
  dispatch_async(mutexQueue, block);
}

- (void)__setRoamStatus:(id)status interfaceName:(id)name
{
  statusCopy = status;
  nameCopy = name;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CA239C;
  block[3] = &unk_1E86E6060;
  v12 = nameCopy;
  selfCopy = self;
  v14 = statusCopy;
  v9 = statusCopy;
  v10 = nameCopy;
  dispatch_async(mutexQueue, block);
}

- (void)__setLinkQualityMetric:(id)metric interfaceName:(id)name
{
  metricCopy = metric;
  nameCopy = name;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CA24D0;
  block[3] = &unk_1E86E6060;
  v12 = nameCopy;
  selfCopy = self;
  v14 = metricCopy;
  v9 = metricCopy;
  v10 = nameCopy;
  dispatch_async(mutexQueue, block);
}

- (void)__postWiFiUIStateFlagsWithInterfaceName:(id)name
{
  nameCopy = name;
  v8 = objc_alloc_init(CWFXPCEvent);
  [(CWFXPCEvent *)v8 setType:28];
  [(CWFXPCEvent *)v8 setInterfaceName:nameCopy];

  date = [MEMORY[0x1E695DF00] date];
  [(CWFXPCEvent *)v8 setTimestamp:date];

  delegate = [(CWFXPCRequestProxy *)self delegate];
  v7 = delegate;
  if (delegate)
  {
    [delegate XPCRequestProxy:self sendXPCEvent:v8 reply:0];
  }
}

- (void)__setupEventHandlersWithInterfaceName:(id)name
{
  nameCopy = name;
  v5 = [(NSMutableDictionary *)self->_apple80211Map objectForKeyedSubscript:nameCopy];
  v6 = v5;
  if (v5)
  {
    eventHandler = [v5 eventHandler];

    if (!eventHandler)
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = sub_1E0CA28A8;
      v24[3] = &unk_1E86E7EF8;
      v25 = nameCopy;
      selfCopy = self;
      [v6 setEventHandler:v24];
    }
  }

  v8 = [(CWFXPCRequestProxy *)self __SCNetworkServiceWithInterfaceName:nameCopy];
  v9 = v8;
  if (v8)
  {
    eventHandler2 = [v8 eventHandler];

    if (!eventHandler2)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = sub_1E0CA46B4;
      v22[3] = &unk_1E86E7F20;
      v22[4] = self;
      v23 = nameCopy;
      [v9 setEventHandler:v22];
    }
  }

  v11 = [(CWFXPCRequestProxy *)self __SCNetworkInterfaceWithInterfaceName:nameCopy];
  v12 = v11;
  if (v11)
  {
    eventHandler3 = [v11 eventHandler];

    if (!eventHandler3)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_1E0CA4D78;
      v19[3] = &unk_1E86E7F48;
      v20 = nameCopy;
      selfCopy2 = self;
      [v12 setEventHandler:v19];
    }
  }

  v14 = [(CWFXPCRequestProxy *)self __EAP8021XWithInterfaceName:nameCopy];
  v15 = v14;
  if (v14)
  {
    eventHandler4 = [v14 eventHandler];

    if (!eventHandler4)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = sub_1E0CA51DC;
      v17[3] = &unk_1E86E7F70;
      v17[4] = self;
      v18 = nameCopy;
      [v15 setEventHandler:v17];
    }
  }
}

- (void)__updateWiFiNetworkServices
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CA530C;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_async(mutexQueue, block);
}

- (void)__updateSystemConfigurationInterfacesWithReason:(id)reason reply:(id)reply
{
  reasonCopy = reason;
  replyCopy = reply;
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x2020000000;
  v57 = 0;
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x2020000000;
  v55[3] = 0;
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x2020000000;
  v54[3] = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2020000000;
  v49[3] = 0;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  v48[3] = 0;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v47[3] = 0;
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v46[3] = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v45[3] = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v44 = 0;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v42[3] = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v41[3] = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v40[3] = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v39 = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v37[3] = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v36[3] = 0;
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v35[3] = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  v57 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v51[3] = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  systemConfigInterfaceQueue = self->_systemConfigInterfaceQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CA5A54;
  block[3] = &unk_1E86E7F98;
  v16 = &v50;
  v17 = v48;
  v18 = v43;
  v19 = v47;
  v20 = v46;
  v21 = v45;
  v22 = v38;
  v23 = v42;
  v24 = v41;
  v25 = v40;
  v26 = v33;
  v27 = v37;
  v28 = v36;
  v29 = v35;
  v30 = v55;
  v31 = v56;
  v32 = v54;
  block[4] = self;
  v13 = reasonCopy;
  v14 = replyCopy;
  v15 = v49;
  v9 = replyCopy;
  v10 = reasonCopy;
  v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
  dispatch_async(systemConfigInterfaceQueue, v11);

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(v35, 8);
  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v38, 8);
  _Block_object_dispose(v40, 8);
  _Block_object_dispose(v41, 8);
  _Block_object_dispose(v42, 8);
  _Block_object_dispose(v43, 8);
  _Block_object_dispose(v45, 8);
  _Block_object_dispose(v46, 8);
  _Block_object_dispose(v47, 8);
  _Block_object_dispose(v48, 8);
  _Block_object_dispose(v49, 8);
  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(v54, 8);
  _Block_object_dispose(v55, 8);
  _Block_object_dispose(v56, 8);
}

- (void)__updateApple80211InterfacesWithReason:(id)reason reply:(id)reply
{
  reasonCopy = reason;
  replyCopy = reply;
  v56[0] = 0;
  v56[1] = v56;
  v56[2] = 0x2020000000;
  v57 = 0;
  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x2020000000;
  v55[3] = 0;
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x2020000000;
  v54[3] = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 0;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x2020000000;
  v49[3] = 0;
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  v48[3] = 0;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v47[3] = 0;
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v46[3] = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x2020000000;
  v45[3] = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v44[3] = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v43[3] = 0;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v42[3] = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v41[3] = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v40[3] = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v39[3] = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v38[3] = 0;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v37[3] = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v36[3] = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v35 = 0;
  v57 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v51[3] = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  apple80211InterfaceQueue = self->_apple80211InterfaceQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1E0CA6C8C;
  v12[3] = &unk_1E86E7FE8;
  v16 = &v50;
  v17 = v48;
  v18 = v47;
  v19 = v46;
  v20 = v45;
  v21 = v44;
  v22 = v43;
  v23 = v42;
  v24 = v41;
  v25 = v40;
  v26 = v39;
  v27 = v34;
  v28 = v38;
  v29 = v37;
  v30 = v36;
  v31 = v55;
  v32 = v56;
  v33 = v54;
  v12[4] = self;
  v13 = reasonCopy;
  v14 = replyCopy;
  v15 = v49;
  v9 = replyCopy;
  v10 = reasonCopy;
  v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, v12);
  dispatch_async(apple80211InterfaceQueue, v11);

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v38, 8);
  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v40, 8);
  _Block_object_dispose(v41, 8);
  _Block_object_dispose(v42, 8);
  _Block_object_dispose(v43, 8);
  _Block_object_dispose(v44, 8);
  _Block_object_dispose(v45, 8);
  _Block_object_dispose(v46, 8);
  _Block_object_dispose(v47, 8);
  _Block_object_dispose(v48, 8);
  _Block_object_dispose(v49, 8);
  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(v54, 8);
  _Block_object_dispose(v55, 8);
  _Block_object_dispose(v56, 8);
}

- (void)__updateWiFiInterfacesWithReason:(id)reason reply:(id)reply
{
  reasonCopy = reason;
  replyCopy = reply;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1E0CA8198;
  v10[3] = &unk_1E86E8010;
  v11 = reasonCopy;
  v12 = replyCopy;
  v10[4] = self;
  v8 = reasonCopy;
  v9 = replyCopy;
  [(CWFXPCRequestProxy *)self __updateApple80211InterfacesWithReason:v8 reply:v10];
}

- (void)__handleBrokenBackhaulState:(int64_t)state timestamp:(id)timestamp
{
  v56 = *MEMORY[0x1E69E9840];
  timestampCopy = timestamp;
  v7 = CWFGetOSLog();
  if (v7)
  {
    v8 = CWFGetOSLog();
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = sub_1E0BD3BE8(state);
    v11 = sub_1E0BCC248(timestampCopy);
    v46 = 136447234;
    v47 = "[CWFXPCRequestProxy __handleBrokenBackhaulState:timestamp:]";
    v48 = 2082;
    v49 = "CWFXPCRequestProxy.m";
    v50 = 1024;
    v51 = 3732;
    v52 = 2114;
    v53 = v10;
    v54 = 2114;
    v55 = v11;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 0, "[corewifi] %{public}s (%{public}s:%u) [bbh] Processing broken backhaul state update (state=%{public}@, timestamp=%{public}@", &v46, 48);
  }

  v12 = [(CWFXPCRequestProxy *)self apple80211WithVirtualInterfaceRole:0 parentInterfaceName:0];
  v13 = v12;
  if (v12)
  {
    interfaceName = [v12 interfaceName];
    v15 = [(CWFXPCRequestProxy *)self __currentNetworkProfileWithInterfaceName:interfaceName];

    if (v15)
    {
      if ((state - 3) >= 2)
      {
        if (state == 6)
        {
          if (!_os_feature_enabled_impl() || !_os_feature_enabled_impl())
          {
            goto LABEL_13;
          }

          v26 = CWFGetOSLog();
          if (v26)
          {
            v27 = CWFGetOSLog();
          }

          else
          {
            v27 = MEMORY[0x1E69E9C10];
            v28 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v29 = sub_1E0BD3BE8(6);
            networkName = [v15 networkName];
            redactedForWiFi = [networkName redactedForWiFi];
            v46 = 138543618;
            v47 = v29;
            v48 = 2114;
            v49 = redactedForWiFi;
            LODWORD(v36) = 22;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v27, 0, "[corewifi] [bbh] Broken backhaul indicated (state=%{public}@) for '%{public}@', triggering auto-join", &v46, v36);
          }

          v19 = objc_alloc_init(CWFAutoJoinParameters);
          [(CWFAutoJoinParameters *)v19 setTrigger:67];
          interfaceName2 = [v13 interfaceName];
          [(CWFXPCRequestProxy *)self __performAutoJoinWithParameters:v19 interfaceName:interfaceName2];

          goto LABEL_12;
        }

        if (state != 1)
        {
LABEL_13:
          v20 = objc_alloc_init(CWFXPCEvent);
          [(CWFXPCEvent *)v20 setType:41];
          interfaceName3 = [v13 interfaceName];
          [(CWFXPCEvent *)v20 setInterfaceName:interfaceName3];

          [(CWFXPCEvent *)v20 setTimestamp:timestampCopy];
          v44[0] = @"BrokenBackhaulState";
          v22 = [MEMORY[0x1E696AD98] numberWithInteger:state];
          v44[1] = @"BrokenBackhaulStateTimestamp";
          v45[0] = v22;
          v45[1] = timestampCopy;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
          [(CWFXPCEvent *)v20 setInfo:v23];

          eventQueue = self->_eventQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_1E0CA8A24;
          block[3] = &unk_1E86E6420;
          block[4] = self;
          v39 = v20;
          v25 = v20;
          dispatch_async(eventQueue, block);

          goto LABEL_14;
        }
      }

      brokenBackhaulState = [v15 brokenBackhaulState];
      [v15 setBrokenBackhaulState:state];
      [v15 setBrokenBackhaulStateUpdatedAt:timestampCopy];
      v17 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F5BBCA00, &unk_1F5BBCA18, 0}];
      interfaceName4 = [v13 interfaceName];
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = sub_1E0CA882C;
      v40[3] = &unk_1E86E8038;
      v41 = v15;
      v42 = brokenBackhaulState;
      stateCopy = state;
      [(CWFXPCRequestProxy *)self __updateNetworkProfile:v41 updateProperties:v17 interfaceName:interfaceName4 reply:v40];

      v19 = v41;
LABEL_12:

      goto LABEL_13;
    }

    v33 = CWFGetOSLog();
    if (v33)
    {
      v15 = CWFGetOSLog();
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v35 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v46) = 0;
      LODWORD(v36) = 2;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v15, 16, "[corewifi] [bbh] Failed to get current network, will not updated broken backhaul state", &v46, v36);
    }
  }

  else
  {
    v32 = CWFGetOSLog();
    if (v32)
    {
      v15 = CWFGetOSLog();
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v34 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v46 = 136446722;
      v47 = "[CWFXPCRequestProxy __handleBrokenBackhaulState:timestamp:]";
      v48 = 2082;
      v49 = "CWFXPCRequestProxy.m";
      v50 = 1024;
      v51 = 3736;
      LODWORD(v36) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v15, 16, "[corewifi] %{public}s (%{public}s:%u) [bbh] Failed to find WiFi interface, will not update broken backhaul state", &v46, v36);
    }
  }

LABEL_14:
}

- (id)__queryMobileAssetA11:(id *)a11
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = CWFGetOSLog();
  if (v5)
  {
    v6 = CWFGetOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 136446978;
    v25 = "[CWFXPCRequestProxy __queryMobileAssetA11:]";
    v26 = 2082;
    v27 = "CWFXPCRequestProxy.m";
    v28 = 1024;
    v29 = 3813;
    v30 = 2080;
    v31 = "[CWFXPCRequestProxy __queryMobileAssetA11:]";
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 0, "[corewifi] %{public}s (%{public}s:%u) [OTA] %s: Entering", &v24, 38);
  }

  v8 = [(CWFXPCRequestProxy *)self __apple80211WithVirtualInterfaceRole:0 parentInterfaceName:0];
  if (!v8)
  {
    v16 = CWFErrorDescription(@"com.apple.corewifi.error.apple80211", 0xFFFFFFFFFFFFF0C2);
    v14 = CWFErrorWithDescription(@"com.apple.corewifi.error.apple80211", -3902, v16);

    v17 = CWFGetOSLog();
    if (v17)
    {
      v13 = CWFGetOSLog();
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v24 = 136446722;
      v25 = "[CWFXPCRequestProxy __queryMobileAssetA11:]";
      v26 = 2082;
      v27 = "CWFXPCRequestProxy.m";
      v28 = 1024;
      v29 = 3815;
      LODWORD(v22) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v13, 16, "[corewifi] %{public}s (%{public}s:%u) [OTA] Failed to find WiFi interface, will not start mobile asset fetch", &v24, v22);
    }

    goto LABEL_27;
  }

  v9 = CWFGetOSLog();
  if (v9)
  {
    v10 = CWFGetOSLog();
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    interfaceName = [v8 interfaceName];
    v24 = 136447234;
    v26 = 2082;
    v25 = "[CWFXPCRequestProxy __queryMobileAssetA11:]";
    v27 = "CWFXPCRequestProxy.m";
    v28 = 1024;
    v29 = 3817;
    v30 = 2080;
    v31 = "[CWFXPCRequestProxy __queryMobileAssetA11:]";
    v32 = 2112;
    v33 = interfaceName;
    LODWORD(v22) = 48;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v10, 0, "[corewifi] %{public}s (%{public}s:%u) [OTA] %s: Found a11 interface %@", &v24, v22);
  }

  v23 = 0;
  v13 = [v8 powerTableInfo:&v23];
  v14 = v23;
  if (v14)
  {
    v18 = CWFGetOSLog();
    if (v18)
    {
      v19 = CWFGetOSLog();
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
      v21 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v24 = 136447234;
      v26 = 2082;
      v25 = "[CWFXPCRequestProxy __queryMobileAssetA11:]";
      v27 = "CWFXPCRequestProxy.m";
      v28 = 1024;
      v29 = 3819;
      v30 = 2080;
      v31 = "[CWFXPCRequestProxy __queryMobileAssetA11:]";
      v32 = 2112;
      v33 = v14;
      LODWORD(v22) = 48;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v19, 16, "[corewifi] %{public}s (%{public}s:%u) [OTA] %s: Failed to query powerTable info, error=%@", &v24, v22);
    }

LABEL_27:
    v13 = 0;
    if (a11 && v14)
    {
      v13 = 0;
      *a11 = [v14 copy];
    }
  }

  return v13;
}

- (void)__setupEventHandlers
{
  objc_initWeak(location, self);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = sub_1E0BD4EEC;
  v41[3] = &unk_1E86E8060;
  objc_copyWeak(&v42, location);
  [(CWFKernelEventMonitor *)self->_keventMonitor setEventHandler:v41];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = sub_1E0CA9894;
  v39[3] = &unk_1E86E8088;
  objc_copyWeak(&v40, location);
  [(CWFIO80211 *)self->_IO80211 setEventHandler:v39];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = sub_1E0CA9BDC;
  v37[3] = &unk_1E86E80B0;
  objc_copyWeak(&v38, location);
  [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration setEventHandler:v37];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = sub_1E0CAA5C8;
  v35[3] = &unk_1E86E80D8;
  objc_copyWeak(&v36, location);
  [(CWFSCNetworkReachability *)self->_SCNetworkReachability setEventHandler:v35];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = sub_1E0CAA678;
  v33[3] = &unk_1E86E8100;
  objc_copyWeak(&v34, location);
  [(CWFBrokenBackhaulMonitor *)self->_bbhMonitor setUpdatedBrokenBackhaulState:v33];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = sub_1E0CAA6E4;
  v31[3] = &unk_1E86E6190;
  objc_copyWeak(&v32, location);
  [(CWFAssetMgmtProtocol *)self->_mobileAssetManager setEventHandler:v31];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = sub_1E0CAA868;
  v29[3] = &unk_1E86E8150;
  objc_copyWeak(&v30, location);
  [(CWFWiFiNetworkSharingManager *)self->_wifiNetworkSharingManager setAppForegroundStateHandler:v29];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_1E0CAAC2C;
  v27[3] = &unk_1E86E8178;
  objc_copyWeak(&v28, location);
  [(CWFWiFiNetworkSharingManager *)self->_wifiNetworkSharingManager setPasswordHandler:v27];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_1E0CAAE2C;
  v25[3] = &unk_1E86E81A0;
  objc_copyWeak(&v26, location);
  [(CWFWiFiNetworkSharingManager *)self->_wifiNetworkSharingManager setCaptivePortalCredentialsHandler:v25];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_1E0CAB02C;
  v23[3] = &unk_1E86E81C8;
  objc_copyWeak(&v24, location);
  [(CWFWiFiNetworkSharingManager *)self->_wifiNetworkSharingManager setKnownNetworksHandler:v23];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1E0CAB1CC;
  v21[3] = &unk_1E86E81F0;
  objc_copyWeak(&v22, location);
  [(CWFWiFiNetworkSharingManager *)self->_wifiNetworkSharingManager setHiddenNetworkSSIDListHandler:v21];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1E0CAB268;
  v19[3] = &unk_1E86E8218;
  objc_copyWeak(&v20, location);
  [(CWFWiFiNetworkSharingManager *)self->_wifiNetworkSharingManager setPerformAskToShareScanHandler:v19];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1E0CAB510;
  v17[3] = &unk_1E86E8240;
  objc_copyWeak(&v18, location);
  [(CWFWiFiNetworkSharingManager *)self->_wifiNetworkSharingManager setPerformAskToShareAccessoryScanHandler:v17];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1E0CABB50;
  v15[3] = &unk_1E86E82B8;
  objc_copyWeak(&v16, location);
  [(CWFWiFiNetworkSharingManager *)self->_wifiNetworkSharingManager setPresentAuthorizationProxCardHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1E0CABD2C;
  v13[3] = &unk_1E86E8308;
  objc_copyWeak(&v14, location);
  [(CWFWiFiNetworkSharingManager *)self->_wifiNetworkSharingManager setPresentAskToShareProxCardHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1E0CABF08;
  v11[3] = &unk_1E86E8358;
  objc_copyWeak(&v12, location);
  [(CWFWiFiNetworkSharingManager *)self->_wifiNetworkSharingManager setPresentAskToShareUserNotificationHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E0CAC108;
  v9[3] = &unk_1E86E8380;
  objc_copyWeak(&v10, location);
  [(CWFWiFiNetworkSharingManager *)self->_wifiNetworkSharingManager setNetworkListUpdateHandler:v9];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0CAC264;
  v7[3] = &unk_1E86E83A8;
  objc_copyWeak(&v8, location);
  [(CWFWiFiNetworkSharingManager *)self->_wifiNetworkSharingManager setAskToShareNetworkListChangeHandler:v7];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0CAC3A4;
  v5[3] = &unk_1E86E83D0;
  objc_copyWeak(&v6, location);
  [(CWFWiFiNetworkSharingManager *)self->_wifiNetworkSharingManager setAskToShareStatusChangeHandler:v5];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1E0CAC4F8;
  v3[3] = &unk_1E86E83F8;
  objc_copyWeak(&v4, location);
  [(CWFWiFiNetworkSharingManager *)self->_wifiNetworkSharingManager setAuthorizationLevelChangeHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&v30);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&v34);
  objc_destroyWeak(&v36);
  objc_destroyWeak(&v38);
  objc_destroyWeak(&v40);
  objc_destroyWeak(&v42);
  objc_destroyWeak(location);
}

- (void)__addJoinStatusWithScanResult:(id)result knownNetworkProfile:(id)profile isAutoJoin:(BOOL)join interfaceName:(id)name
{
  joinCopy = join;
  v24[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  profileCopy = profile;
  resultCopy = result;
  v13 = objc_alloc_init(CWFJoinStatus);
  date = [MEMORY[0x1E695DF00] date];
  [(CWFJoinStatus *)v13 setStartedAt:date];

  [(CWFJoinStatus *)v13 setScanResult:resultCopy];
  [(CWFJoinStatus *)v13 setKnownNetworkProfile:profileCopy];

  [(CWFJoinStatus *)v13 setInterfaceName:nameCopy];
  [(CWFJoinStatus *)v13 setAutoJoin:joinCopy];
  [(NSMutableDictionary *)self->_mutableJoinStatusMap setObject:v13 forKeyedSubscript:nameCopy];
  v15 = objc_alloc_init(CWFXPCEvent);
  [(CWFXPCEvent *)v15 setType:13];
  [(CWFXPCEvent *)v15 setInterfaceName:nameCopy];
  startedAt = [(CWFJoinStatus *)v13 startedAt];
  [(CWFXPCEvent *)v15 setTimestamp:startedAt];

  v23 = @"JoinStatus";
  v17 = [(CWFJoinStatus *)v13 copy];
  v24[0] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
  [(CWFXPCEvent *)v15 setInfo:v18];

  eventQueue = self->_eventQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CAC864;
  block[3] = &unk_1E86E6420;
  block[4] = self;
  v22 = v15;
  v20 = v15;
  dispatch_async(eventQueue, block);
  [(CWFXPCRequestProxy *)self __updateAutoJoinStatusWithJoin:nameCopy];
}

- (void)__updateJoinStatusWithAssoc:(id)assoc
{
  v18[1] = *MEMORY[0x1E69E9840];
  assocCopy = assoc;
  v5 = [(NSMutableDictionary *)self->_mutableJoinStatusMap objectForKeyedSubscript:assocCopy];
  v6 = v5;
  if (v5)
  {
    associationEndedAt = [v5 associationEndedAt];

    if (!associationEndedAt)
    {
      date = [MEMORY[0x1E695DF00] date];
      [v6 setAssociationEndedAt:date];
      v9 = objc_alloc_init(CWFXPCEvent);
      [(CWFXPCEvent *)v9 setType:13];
      [(CWFXPCEvent *)v9 setInterfaceName:assocCopy];
      associationEndedAt2 = [v6 associationEndedAt];
      [(CWFXPCEvent *)v9 setTimestamp:associationEndedAt2];

      v17 = @"JoinStatus";
      v11 = [v6 copy];
      v18[0] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      [(CWFXPCEvent *)v9 setInfo:v12];

      eventQueue = self->_eventQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0CACAB0;
      block[3] = &unk_1E86E6420;
      block[4] = self;
      v16 = v9;
      v14 = v9;
      dispatch_async(eventQueue, block);
      [(CWFXPCRequestProxy *)self __updateAutoJoinStatusWithJoin:assocCopy];
    }
  }
}

- (void)__updateJoinStatusWithError:(id)error interaceName:(id)name
{
  v21[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  nameCopy = name;
  v8 = [(NSMutableDictionary *)self->_mutableJoinStatusMap objectForKeyedSubscript:nameCopy];
  v9 = v8;
  if (errorCopy && v8)
  {
    date = [MEMORY[0x1E695DF00] date];
    associationEndedAt = [v9 associationEndedAt];

    if (!associationEndedAt)
    {
      [v9 setAssociationEndedAt:date];
    }

    [v9 setError:errorCopy];
    [v9 setEndedAt:date];
    v12 = objc_alloc_init(CWFXPCEvent);
    [(CWFXPCEvent *)v12 setType:13];
    [(CWFXPCEvent *)v12 setInterfaceName:nameCopy];
    associationEndedAt2 = [v9 associationEndedAt];
    [(CWFXPCEvent *)v12 setTimestamp:associationEndedAt2];

    v20 = @"JoinStatus";
    v14 = [v9 copy];
    v21[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    [(CWFXPCEvent *)v12 setInfo:v15];

    eventQueue = self->_eventQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0CACD28;
    block[3] = &unk_1E86E6420;
    block[4] = self;
    v19 = v12;
    v17 = v12;
    dispatch_async(eventQueue, block);
    [(CWFXPCRequestProxy *)self __updateAutoJoinStatusWithJoin:nameCopy];
  }
}

- (void)updateJoinStatusWithIPv4:(id)pv4
{
  pv4Copy = pv4;
  v5 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:pv4Copy];
  iPv4Addresses = [v5 IPv4Addresses];
  iPv4Router = [v5 IPv4Router];
  iPv4InterfaceName = [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration IPv4InterfaceName];
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CACEC4;
  block[3] = &unk_1E86E8420;
  block[4] = self;
  v15 = pv4Copy;
  v16 = iPv4Addresses;
  v17 = iPv4Router;
  v18 = iPv4InterfaceName;
  v10 = iPv4InterfaceName;
  v11 = iPv4Router;
  v12 = iPv4Addresses;
  v13 = pv4Copy;
  dispatch_async(mutexQueue, block);
}

- (void)updateJoinStatusWithIPv6:(id)pv6
{
  pv6Copy = pv6;
  v5 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:pv6Copy];
  iPv6Addresses = [v5 IPv6Addresses];
  iPv6Router = [v5 IPv6Router];
  iPv6InterfaceName = [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration IPv6InterfaceName];
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CAD3D8;
  block[3] = &unk_1E86E8420;
  block[4] = self;
  v15 = pv6Copy;
  v16 = iPv6Addresses;
  v17 = iPv6Router;
  v18 = iPv6InterfaceName;
  v10 = iPv6InterfaceName;
  v11 = iPv6Router;
  v12 = iPv6Addresses;
  v13 = pv6Copy;
  dispatch_async(mutexQueue, block);
}

- (void)__updateJoinStatusWithAuth:(id)auth
{
  v18[1] = *MEMORY[0x1E69E9840];
  authCopy = auth;
  v5 = [(NSMutableDictionary *)self->_mutableJoinStatusMap objectForKeyedSubscript:authCopy];
  v6 = v5;
  if (v5)
  {
    authenticationEndedAt = [v5 authenticationEndedAt];

    if (!authenticationEndedAt)
    {
      date = [MEMORY[0x1E695DF00] date];
      [v6 setAuthenticationEndedAt:date];
      v9 = objc_alloc_init(CWFXPCEvent);
      [(CWFXPCEvent *)v9 setType:13];
      [(CWFXPCEvent *)v9 setInterfaceName:authCopy];
      authenticationEndedAt2 = [v6 authenticationEndedAt];
      [(CWFXPCEvent *)v9 setTimestamp:authenticationEndedAt2];

      v17 = @"JoinStatus";
      v11 = [v6 copy];
      v18[0] = v11;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      [(CWFXPCEvent *)v9 setInfo:v12];

      eventQueue = self->_eventQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0CAD99C;
      block[3] = &unk_1E86E6420;
      block[4] = self;
      v16 = v9;
      v14 = v9;
      dispatch_async(eventQueue, block);
      [(CWFXPCRequestProxy *)self __updateAutoJoinStatusWithJoin:authCopy];
    }
  }
}

- (void)__updateJoinStatusWithLinkUp:(id)up
{
  v17[1] = *MEMORY[0x1E69E9840];
  upCopy = up;
  v5 = [(NSMutableDictionary *)self->_mutableJoinStatusMap objectForKeyedSubscript:upCopy];
  v6 = v5;
  if (v5)
  {
    linkUpAt = [v5 linkUpAt];

    if (!linkUpAt)
    {
      date = [MEMORY[0x1E695DF00] date];
      [v6 setLinkUpAt:date];
      [v6 setEndedAt:date];
      v9 = objc_alloc_init(CWFXPCEvent);
      [(CWFXPCEvent *)v9 setType:13];
      [(CWFXPCEvent *)v9 setInterfaceName:upCopy];
      [(CWFXPCEvent *)v9 setTimestamp:date];
      v16 = @"JoinStatus";
      v10 = [v6 copy];
      v17[0] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      [(CWFXPCEvent *)v9 setInfo:v11];

      eventQueue = self->_eventQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0CADBE0;
      block[3] = &unk_1E86E6420;
      block[4] = self;
      v15 = v9;
      v13 = v9;
      dispatch_async(eventQueue, block);
      [(CWFXPCRequestProxy *)self __updateAutoJoinStatusWithJoin:upCopy];
    }
  }
}

- (void)updateJoinStatusWithEAP8021X:(id)x
{
  xCopy = x;
  v5 = [(CWFXPCRequestProxy *)self EAP8021XWithInterfaceName:xCopy];
  v6 = [v5 supplicantState:0];
  unsignedIntValue = [v6 unsignedIntValue];

  v8 = [v5 controlMode:0];
  unsignedIntValue2 = [v8 unsignedIntValue];

  v10 = [v5 controlState:0];
  unsignedIntValue3 = [v10 unsignedIntValue];

  v12 = [v5 clientStatus:0];
  intValue = [v12 intValue];

  mutexQueue = self->_mutexQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1E0CADD9C;
  v16[3] = &unk_1E86E61B8;
  v16[4] = self;
  v17 = xCopy;
  v18 = unsignedIntValue;
  v19 = unsignedIntValue2;
  v20 = unsignedIntValue3;
  v21 = intValue;
  v15 = xCopy;
  dispatch_async(mutexQueue, v16);
}

- (void)__updateJoinStatusWithKnownNetwork:(id)network
{
  v34 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  allValues = [(NSMutableDictionary *)self->_mutableJoinStatusMap allValues];
  v6 = [allValues countByEnumeratingWithState:&v26 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    v22 = v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        knownNetworkProfile = [v10 knownNetworkProfile];
        if (!knownNetworkProfile)
        {
          scanResult = [v10 scanResult];
          v32 = networkCopy;
          v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
          v14 = sub_1E0BED85C(scanResult, v13);

          if (!v14)
          {
            continue;
          }

          [v10 setKnownNetworkProfile:networkCopy];
          v15 = objc_alloc_init(CWFXPCEvent);
          [(CWFXPCEvent *)v15 setType:13];
          interfaceName = [v10 interfaceName];
          [(CWFXPCEvent *)v15 setInterfaceName:interfaceName];

          date = [MEMORY[0x1E695DF00] date];
          [(CWFXPCEvent *)v15 setTimestamp:date];

          v30 = @"JoinStatus";
          v18 = [v10 copy];
          v31 = v18;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
          [(CWFXPCEvent *)v15 setInfo:v19];

          eventQueue = self->_eventQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          v24[0] = sub_1E0CAE300;
          v24[1] = &unk_1E86E6420;
          v24[2] = self;
          v25 = v15;
          knownNetworkProfile = v15;
          dispatch_async(eventQueue, block);
          interfaceName2 = [v10 interfaceName];
          [(CWFXPCRequestProxy *)self __updateAutoJoinStatusWithJoin:interfaceName2];
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v26 objects:v33 count:16];
    }

    while (v7);
  }
}

- (void)__updateAutoJoinStatusWithJoin:(id)join
{
  v40[1] = *MEMORY[0x1E69E9840];
  joinCopy = join;
  v5 = [(NSMutableDictionary *)self->_mutableAutoJoinStatusMap objectForKeyedSubscript:joinCopy];
  v6 = [(NSMutableDictionary *)self->_mutableJoinStatusMap objectForKeyedSubscript:joinCopy];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    startedAt = [v6 startedAt];
    [startedAt timeIntervalSinceReferenceDate];
    v11 = v10;
    startedAt2 = [v5 startedAt];
    [(CWFXPCEvent *)startedAt2 timeIntervalSinceReferenceDate];
    if (v11 >= v13)
    {
      endedAt = [v5 endedAt];
      if (endedAt)
      {
        v15 = endedAt;
        startedAt3 = [v7 startedAt];
        [startedAt3 timeIntervalSinceReferenceDate];
        v18 = v17;
        endedAt2 = [v5 endedAt];
        [endedAt2 timeIntervalSinceReferenceDate];
        v21 = v20;

        if (v18 > v21)
        {
          goto LABEL_23;
        }
      }

      else
      {
      }

      joinAttempts = [v5 joinAttempts];
      startedAt = [joinAttempts mutableCopy];

      if (!startedAt)
      {
        startedAt = [MEMORY[0x1E695DF70] array];
      }

      v23 = [startedAt count];
      if ([startedAt count])
      {
        v36 = v23;
        v24 = 0;
        while (1)
        {
          v25 = [startedAt objectAtIndexedSubscript:{v24, v36}];
          uUID = [v25 UUID];
          uUID2 = [v7 UUID];
          v28 = [uUID isEqual:uUID2];

          if (v28)
          {
            break;
          }

          if (++v24 >= [startedAt count])
          {
            v23 = v36;
            goto LABEL_18;
          }
        }

        v23 = v24;
      }

LABEL_18:
      v29 = [startedAt count];
      v30 = [v7 copy];
      if (v23 >= v29)
      {
        [startedAt addObject:v30];
      }

      else
      {
        [startedAt replaceObjectAtIndex:v23 withObject:v30];
      }

      [v5 setJoinAttempts:startedAt];
      v31 = objc_alloc_init(CWFXPCEvent);
      [(CWFXPCEvent *)v31 setType:12];
      [(CWFXPCEvent *)v31 setInterfaceName:joinCopy];
      date = [MEMORY[0x1E695DF00] date];
      [(CWFXPCEvent *)v31 setTimestamp:date];

      v39 = @"AutoJoinStatus";
      deepCopy = [v5 deepCopy];
      v40[0] = deepCopy;
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
      [(CWFXPCEvent *)v31 setInfo:v34];

      eventQueue = self->_eventQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0CAE6FC;
      block[3] = &unk_1E86E6420;
      block[4] = self;
      v38 = v31;
      startedAt2 = v31;
      dispatch_async(eventQueue, block);
    }
  }

LABEL_23:
  [(CWFAutoJoinManager *)self->_autoJoinManager setJoinStatus:v7];
}

- (void)__autoJoinStartedWithTrigger:(int64_t)trigger interfaceName:(id)name
{
  nameCopy = name;
  v8 = objc_alloc_init(CWFAutoJoinStatus);
  date = [MEMORY[0x1E695DF00] date];
  [(CWFAutoJoinStatus *)v8 setStartedAt:date];

  [(CWFAutoJoinStatus *)v8 setTrigger:trigger];
  [(CWFAutoJoinStatus *)v8 setInterfaceName:nameCopy];
  [(NSMutableDictionary *)self->_mutableAutoJoinTriggerMap setObject:v8 forKeyedSubscript:nameCopy];
}

- (void)__updateAutoJoinState:(int64_t)state interfaceName:(id)name
{
  v18[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v7 = [(NSMutableDictionary *)self->_mutableAutoJoinStatusMap objectForKeyedSubscript:nameCopy];
  if (![v7 state])
  {
    v8 = [(NSMutableDictionary *)self->_mutableAutoJoinTriggerMap objectForKeyedSubscript:nameCopy];

    [(NSMutableDictionary *)self->_mutableAutoJoinStatusMap setObject:v8 forKeyedSubscript:nameCopy];
    [(NSMutableDictionary *)self->_mutableAutoJoinTriggerMap setObject:0 forKeyedSubscript:nameCopy];
    v7 = v8;
  }

  if (v7 && [v7 state] != state)
  {
    [v7 setState:state];
    v9 = objc_alloc_init(CWFXPCEvent);
    [(CWFXPCEvent *)v9 setType:12];
    [(CWFXPCEvent *)v9 setInterfaceName:nameCopy];
    date = [MEMORY[0x1E695DF00] date];
    [(CWFXPCEvent *)v9 setTimestamp:date];

    v17 = @"AutoJoinStatus";
    deepCopy = [v7 deepCopy];
    v18[0] = deepCopy;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [(CWFXPCEvent *)v9 setInfo:v12];

    eventQueue = self->_eventQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0CAEA18;
    block[3] = &unk_1E86E6420;
    block[4] = self;
    v16 = v9;
    v14 = v9;
    dispatch_async(eventQueue, block);
  }
}

- (void)__autoJoinEndedWithResult:(BOOL)result interfaceName:(id)name
{
  resultCopy = result;
  v20[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v7 = [(NSMutableDictionary *)self->_mutableAutoJoinStatusMap objectForKeyedSubscript:nameCopy];
  v8 = v7;
  if (v7)
  {
    endedAt = [v7 endedAt];

    if (!endedAt)
    {
      [v8 setState:0];
      [v8 setResult:resultCopy];
      date = [MEMORY[0x1E695DF00] date];
      [v8 setEndedAt:date];

      v11 = objc_alloc_init(CWFXPCEvent);
      [(CWFXPCEvent *)v11 setType:12];
      [(CWFXPCEvent *)v11 setInterfaceName:nameCopy];
      endedAt2 = [v8 endedAt];
      [(CWFXPCEvent *)v11 setTimestamp:endedAt2];

      v19 = @"AutoJoinStatus";
      deepCopy = [v8 deepCopy];
      v20[0] = deepCopy;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      [(CWFXPCEvent *)v11 setInfo:v14];

      eventQueue = self->_eventQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0CAEC70;
      block[3] = &unk_1E86E6420;
      block[4] = self;
      v18 = v11;
      v16 = v11;
      dispatch_async(eventQueue, block);
    }
  }
}

- (void)__handleWillAssocInternalEvent:(id)event
{
  eventCopy = event;
  defaultQueue = self->_defaultQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0CAED74;
  v7[3] = &unk_1E86E6420;
  v8 = eventCopy;
  selfCopy = self;
  v6 = eventCopy;
  [(NSOperationQueue *)defaultQueue addOperationWithBlock:v7];
}

- (void)__handleAssocDoneInternalEvent:(id)event
{
  eventCopy = event;
  mutexQueue = self->_mutexQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0CAEFDC;
  v7[3] = &unk_1E86E6420;
  v8 = eventCopy;
  selfCopy = self;
  v6 = eventCopy;
  dispatch_async(mutexQueue, v7);
}

- (void)__handleAutoJoinStateChangedInternalEvent:(id)event
{
  eventCopy = event;
  mutexQueue = self->_mutexQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0CAF358;
  v7[3] = &unk_1E86E6420;
  v8 = eventCopy;
  selfCopy = self;
  v6 = eventCopy;
  dispatch_async(mutexQueue, v7);
}

- (void)__scheduleNextRecommendedKnownNetworksExpirationTimer
{
  v27[1] = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:1 comparator:&unk_1F5B890D0];
  mutableRecommendedKnownNetworks = self->_mutableRecommendedKnownNetworks;
  v27[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v7 = [(NSMutableOrderedSet *)mutableRecommendedKnownNetworks sortedArrayUsingDescriptors:v6];

  if ([v7 count])
  {
    v8 = MEMORY[0x1E695DF00];
    lastObject = [v7 lastObject];
    v10 = [lastObject age];
    if (v10 > 0x3E7)
    {
      v11 = 0.0;
    }

    else
    {
      lastObject2 = [v7 lastObject];
      v11 = -([lastObject2 age] / 0x3E8uLL);
    }

    v12 = [v8 dateWithTimeIntervalSinceNow:v11];
    v13 = [v12 dateByAddingTimeInterval:60.0];

    if (v10 <= 0x3E7)
    {
    }

    if (v13)
    {
      if (!self->_recommendedKnownNetworksExpirationTimer)
      {
        v14 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_mutexQueue);
        recommendedKnownNetworksExpirationTimer = self->_recommendedKnownNetworksExpirationTimer;
        self->_recommendedKnownNetworksExpirationTimer = v14;

        v16 = self->_recommendedKnownNetworksExpirationTimer;
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = sub_1E0CAF844;
        handler[3] = &unk_1E86E6010;
        handler[4] = self;
        dispatch_source_set_event_handler(v16, handler);
        dispatch_source_set_timer(self->_recommendedKnownNetworksExpirationTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
        dispatch_resume(self->_recommendedKnownNetworksExpirationTimer);
      }

      [v13 timeIntervalSinceNow];
      if (v17 * 1000000000.0 < 9.22337204e18)
      {
        [v13 timeIntervalSinceNow];
        lastObject = (v18 * 1000000000.0);
      }

      v19 = CWFGetOSLog();
      if (v19)
      {
        v20 = CWFGetOSLog();
      }

      else
      {
        v20 = MEMORY[0x1E69E9C10];
        v21 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v25 = 134217984;
        v26 = lastObject / 0x3B9ACA00;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v20, 0, "[corewifi] Scheduling next recommended known networks expiration timer in %llds", &v25);
      }

      v22 = self->_recommendedKnownNetworksExpirationTimer;
      v23 = dispatch_walltime(0, lastObject);
      dispatch_source_set_timer(v22, v23, 0xFFFFFFFFFFFFFFFFLL, 0);
    }
  }
}

- (void)__updateRecommendedKnownNetworks
{
  v75[2] = *MEMORY[0x1E69E9840];
  recentlyMatchedCandidates = [(CWFAutoJoinManager *)self->_autoJoinManager recentlyMatchedCandidates];
  v47 = [recentlyMatchedCandidates objectsPassingTest:&unk_1F5B8ADE0];
  v2 = [MEMORY[0x1E695DFA0] orderedSetWithSet:?];
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"matchingKnownNetworkProfile.lastJoinedOnAnyDeviceAt" ascending:0];
  v45 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"RSSI" ascending:0];
  v46 = v3;
  v75[0] = v3;
  v75[1] = v45;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v75 count:2];
  [v2 sortUsingDescriptors:v4];

  v5 = [MEMORY[0x1E695DFA8] set];
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v2;
  v7 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v63;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v63 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v62 + 1) + 8 * i);
        matchingKnownNetworkProfile = [v11 matchingKnownNetworkProfile];
        identifier = [matchingKnownNetworkProfile identifier];
        v14 = [v5 containsObject:identifier];

        if ((v14 & 1) == 0)
        {
          identifier2 = [matchingKnownNetworkProfile identifier];
          [v5 addObject:identifier2];

          [orderedSet addObject:v11];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v62 objects:v74 count:16];
    }

    while (v8);
  }

  orderedSet2 = [MEMORY[0x1E695DFA0] orderedSet];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v17 = self->_mutableRecommendedKnownNetworks;
  v18 = [(NSMutableOrderedSet *)v17 countByEnumeratingWithState:&v58 objects:v73 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v59;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v59 != v20)
        {
          objc_enumerationMutation(v17);
        }

        matchingKnownNetworkProfile2 = [*(*(&v58 + 1) + 8 * j) matchingKnownNetworkProfile];
        identifier3 = [matchingKnownNetworkProfile2 identifier];
        [orderedSet2 addObject:identifier3];
      }

      v19 = [(NSMutableOrderedSet *)v17 countByEnumeratingWithState:&v58 objects:v73 count:16];
    }

    while (v19);
  }

  array = [MEMORY[0x1E695DF70] array];
  orderedSet3 = [MEMORY[0x1E695DFA0] orderedSet];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v51 = orderedSet;
  v26 = [v51 countByEnumeratingWithState:&v54 objects:v72 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v55;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v55 != v28)
        {
          objc_enumerationMutation(v51);
        }

        v30 = *(*(&v54 + 1) + 8 * k);
        matchingKnownNetworkProfile3 = [v30 matchingKnownNetworkProfile];
        identifier4 = [matchingKnownNetworkProfile3 identifier];
        [orderedSet3 addObject:identifier4];

        matchingKnownNetworkProfile4 = [v30 matchingKnownNetworkProfile];
        [array addObject:matchingKnownNetworkProfile4];
      }

      v27 = [v51 countByEnumeratingWithState:&v54 objects:v72 count:16];
    }

    while (v27);
  }

  if (orderedSet2 != orderedSet3 && (!orderedSet2 || !orderedSet3 || ([orderedSet2 isEqual:orderedSet3] & 1) == 0))
  {
    v34 = CWFGetOSLog();
    if (v34)
    {
      v35 = CWFGetOSLog();
    }

    else
    {
      v35 = MEMORY[0x1E69E9C10];
      v36 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      mutableRecommendedKnownNetworks = self->_mutableRecommendedKnownNetworks;
      v68 = 138543618;
      v69 = mutableRecommendedKnownNetworks;
      v70 = 2114;
      v71 = v51;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v35, 0, "[corewifi] Updated recommended known networks %{public}@ --> %{public}@", &v68, 22);
    }

    v38 = objc_alloc_init(CWFXPCEvent);
    [(CWFXPCEvent *)v38 setType:40];
    date = [MEMORY[0x1E695DF00] date];
    [(CWFXPCEvent *)v38 setTimestamp:date];

    v66 = @"RecommendedKnownNetworks";
    v67 = array;
    v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
    [(CWFXPCEvent *)v38 setInfo:v40];

    eventQueue = self->_eventQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0CAFEE8;
    block[3] = &unk_1E86E6420;
    block[4] = self;
    v53 = v38;
    v42 = v38;
    dispatch_async(eventQueue, block);
  }

  [(NSMutableOrderedSet *)self->_mutableRecommendedKnownNetworks removeAllObjects];
  v43 = self->_mutableRecommendedKnownNetworks;
  array2 = [v51 array];
  [(NSMutableOrderedSet *)v43 addObjectsFromArray:array2];

  [(CWFXPCRequestProxy *)self __scheduleNextRecommendedKnownNetworksExpirationTimer];
}

- (void)__handleKnownNetworkProfileChangedEvent:(id)event
{
  v58 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  info = [eventCopy info];
  v6 = [info objectForKeyedSubscript:@"Type"];
  integerValue = [v6 integerValue];

  v8 = [info objectForKeyedSubscript:@"Profile"];
  v9 = [v8 copy];

  v10 = [info objectForKeyedSubscript:@"PreviousProfile"];
  v11 = [v10 copy];

  switch(integerValue)
  {
    case 3:
      wifiNetworkSharingManager = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
      [wifiNetworkSharingManager didRemoveKnownNetwork:v9];

      networkName = [v9 networkName];

      if (networkName)
      {
        defaultQueue = self->_defaultQueue;
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = sub_1E0CB07CC;
        v46[3] = &unk_1E86E6420;
        v47 = v9;
        v48 = eventCopy;
        [(NSOperationQueue *)defaultQueue addOperationSerializedByName:@"updateKnownNetwork" block:v46];
      }

      sSID = [v9 SSID];
      if (sSID)
      {
        v33 = sSID;
        v34 = sub_1E0BCE1A8(0);

        if (v34)
        {
          v35 = self->_defaultQueue;
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = sub_1E0CB0900;
          v44[3] = &unk_1E86E6010;
          v45 = v9;
          [(NSOperationQueue *)v35 addOperationSerializedByName:@"updateKnownNetwork" block:v44];
        }
      }

      wifiUserAgentConnection = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];

      if (wifiUserAgentConnection)
      {
        wifiUserAgentConnection2 = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = sub_1E0CB0A18;
        v42[3] = &unk_1E86E8448;
        v43 = v9;
        (wifiUserAgentConnection2)[2](wifiUserAgentConnection2, v42);

        v17 = v43;
LABEL_30:
      }

      break;
    case 2:
      v17 = [(CWFXPCRequestProxy *)self apple80211WithVirtualInterfaceRole:0 parentInterfaceName:0];
      interfaceName = [v17 interfaceName];
      [(CWFXPCRequestProxy *)self __updateCurrentKnownBSSWithIPConfigurationForInterfaceName:interfaceName];

      wifiNetworkSharingManager2 = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
      [wifiNetworkSharingManager2 didUpdateKnownNetwork:v9 previous:v11];

      if (_os_feature_enabled_impl())
      {
        if (v11)
        {
          if (v9)
          {
            privateMACManager = [(CWFXPCRequestProxy *)self privateMACManager];
            v24 = [privateMACManager privateMACAddressModeForNetworkProfile:v11];

            privateMACManager2 = [(CWFXPCRequestProxy *)self privateMACManager];
            v26 = [privateMACManager2 privateMACAddressModeForNetworkProfile:v9];

            if (v24 != v26)
            {
              v27 = CWFGetOSLog();
              if (v27)
              {
                v28 = CWFGetOSLog();
              }

              else
              {
                v28 = MEMORY[0x1E69E9C10];
                v38 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v56 = 138543362;
                v57 = v9;
                _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v28, 0, "[corewifi] PRIVATE MAC: Private MAC setting updated for network (%{public}@)", &v56, 12);
              }

              if ((v24 == 1) == (v26 != 1) && (![v11 privateMACAddressDisabledByEvaluation] || objc_msgSend(v9, "privateMACAddressEvaluationState")))
              {
                interfaceName2 = [v17 interfaceName];
                [(CWFXPCRequestProxy *)self __privateMACSettingChangedForNetworkProfile:v9 interfaceName:interfaceName2];
              }
            }
          }
        }
      }

      wifiUserAgentConnection3 = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];

      if (!wifiUserAgentConnection3)
      {
        goto LABEL_30;
      }

      wifiUserAgentConnection4 = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = sub_1E0CB07AC;
      v49[3] = &unk_1E86E8448;
      v50 = v9;
      (wifiUserAgentConnection4)[2](wifiUserAgentConnection4, v49);

      v20 = v50;
      goto LABEL_29;
    case 1:
      v12 = [(CWFXPCRequestProxy *)self apple80211WithVirtualInterfaceRole:0 parentInterfaceName:0];
      interfaceName3 = [v12 interfaceName];
      [(CWFXPCRequestProxy *)self __updateCurrentKnownBSSWithIPConfigurationForInterfaceName:interfaceName3];

      wifiNetworkSharingManager3 = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
      [wifiNetworkSharingManager3 didUpdateKnownNetwork:v9 previous:v11];

      mutexQueue = self->_mutexQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1E0CB05F0;
      block[3] = &unk_1E86E6060;
      block[4] = self;
      v16 = v9;
      v54 = v16;
      v17 = v12;
      v55 = v17;
      dispatch_async(mutexQueue, block);
      wifiUserAgentConnection5 = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];

      if (wifiUserAgentConnection5)
      {
        wifiUserAgentConnection6 = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];
        v51[0] = MEMORY[0x1E69E9820];
        v51[1] = 3221225472;
        v51[2] = sub_1E0CB078C;
        v51[3] = &unk_1E86E8448;
        v52 = v16;
        (wifiUserAgentConnection6)[2](wifiUserAgentConnection6, v51);
      }

      v20 = v54;
LABEL_29:

      goto LABEL_30;
  }
}

- (void)__handleNearbyRecommendedNetworksChangedEvent:(id)event
{
  info = [event info];
  v4 = [info objectForKeyedSubscript:@"NearbyRecommendedNetworks"];
  autoJoinManager = [(CWFXPCRequestProxy *)self autoJoinManager];
  [autoJoinManager setNearbyRecommendedNetworks:v4];
}

- (id)__currentScanResultWithInterfaceName:(id)name forceNoCache:(BOOL)cache
{
  cacheCopy = cache;
  v36 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_1E0BC2D80;
  v26 = sub_1E0BC61FC;
  v27 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v7 = dispatch_block_create(0, &unk_1F5B89030);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1E0CB0D7C;
  v16[3] = &unk_1E86E8470;
  v18 = &v22;
  v19 = v20;
  v8 = v7;
  v17 = v8;
  [(CWFXPCRequestProxy *)self __currentScanResultWithInterfaceName:nameCopy forceNoCache:cacheCopy reply:v16];
  v9 = dispatch_time(0, 4000000000);
  if (dispatch_block_wait(v8, v9))
  {
    v10 = CWFGetOSLog();
    if (v10)
    {
      v11 = CWFGetOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v28 = 136446978;
      v29 = "[CWFXPCRequestProxy __currentScanResultWithInterfaceName:forceNoCache:]";
      v30 = 2082;
      v31 = "CWFXPCRequestProxy.m";
      v32 = 1024;
      v33 = 5099;
      v34 = 2048;
      v35 = 4000000000;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 16, "[corewifi] %{public}s (%{public}s:%u) FAILED to complete within %lluns, continuing", &v28, 38);
    }

    v12 = 0;
  }

  else
  {
    v12 = v23[5];
  }

  v14 = v12;

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(&v22, 8);

  return v14;
}

- (void)__currentScanResultWithInterfaceName:(id)name forceNoCache:(BOOL)cache reply:(id)reply
{
  cacheCopy = cache;
  nameCopy = name;
  replyCopy = reply;
  delegate = [(CWFXPCRequestProxy *)self delegate];
  if (delegate)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v12 = [MEMORY[0x1E696AD98] numberWithBool:cacheCopy];
    [dictionary setObject:v12 forKeyedSubscript:@"ForceNoCache"];

    v13 = objc_alloc_init(CWFXPCRequest);
    [(CWFXPCRequest *)v13 setType:57];
    [(CWFXPCRequest *)v13 setInfo:dictionary];
    v14 = objc_alloc_init(CWFRequestParameters);
    [(CWFRequestParameters *)v14 setInterfaceName:nameCopy];
    [(CWFXPCRequest *)v13 setRequestParameters:v14];
    date = [MEMORY[0x1E695DF00] date];
    [(CWFXPCRequest *)v13 setReceivedAt:date];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1E0CB102C;
    v18[3] = &unk_1E86E6A50;
    v19 = replyCopy;
    [(CWFXPCRequest *)v13 setResponse:v18];
    [delegate XPCRequestProxy:self XPCConnection:self->_internalRequestXPCConnection receivedXPCRequest:v13];

LABEL_5:
    goto LABEL_6;
  }

  if (replyCopy)
  {
    v16 = *MEMORY[0x1E696A798];
    dictionary = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v17 = CWFErrorWithDescription(v16, 6, dictionary);
    (*(replyCopy + 2))(replyCopy, v17, 0);

    goto LABEL_5;
  }

LABEL_6:
}

- (id)__userAutoJoinDisabled
{
  v34 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1E0BC2D80;
  v24 = sub_1E0BC61FC;
  v25 = 0;
  delegate = [(CWFXPCRequestProxy *)self delegate];
  if (!delegate)
  {
    goto LABEL_6;
  }

  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v4 = dispatch_block_create(0, &unk_1F5B89410);
  v5 = objc_alloc_init(CWFXPCRequest);
  [(CWFXPCRequest *)v5 setType:179];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1E0CB13F4;
  v14[3] = &unk_1E86E7E80;
  v16 = &v20;
  v17 = v18;
  v6 = v4;
  v15 = v6;
  [(CWFXPCRequest *)v5 setResponse:v14];
  [delegate XPCRequestProxy:self XPCConnection:self->_internalRequestXPCConnection receivedXPCRequest:v5];
  v7 = dispatch_time(0, 4000000000);
  if (!dispatch_block_wait(v6, v7))
  {

    _Block_object_dispose(v18, 8);
LABEL_6:
    v10 = v21[5];
    goto LABEL_11;
  }

  v8 = CWFGetOSLog();
  if (v8)
  {
    v9 = CWFGetOSLog();
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v26 = 136446978;
    v27 = "[CWFXPCRequestProxy __userAutoJoinDisabled]";
    v28 = 2082;
    v29 = "CWFXPCRequestProxy.m";
    v30 = 1024;
    v31 = 5159;
    v32 = 2048;
    v33 = 4000000000;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 16, "[corewifi] %{public}s (%{public}s:%u) FAILED to complete within %lluns, continuing", &v26, 38);
  }

  _Block_object_dispose(v18, 8);
  v10 = 0;
LABEL_11:
  v12 = v10;

  _Block_object_dispose(&v20, 8);

  return v12;
}

- (id)__currentNetworkProfileWithInterfaceName:(id)name
{
  v37 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1E0BC2D80;
  v27 = sub_1E0BC61FC;
  v28 = 0;
  delegate = [(CWFXPCRequestProxy *)self delegate];
  if (!delegate)
  {
    goto LABEL_6;
  }

  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  v6 = dispatch_block_create(0, &unk_1F5B88FF0);
  v7 = objc_alloc_init(CWFRequestParameters);
  [(CWFRequestParameters *)v7 setInterfaceName:nameCopy];
  v8 = objc_alloc_init(CWFXPCRequest);
  [(CWFXPCRequest *)v8 setRequestParameters:v7];
  [(CWFXPCRequest *)v8 setType:58];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1E0CB1818;
  v17[3] = &unk_1E86E7E80;
  v19 = &v23;
  v20 = v21;
  v9 = v6;
  v18 = v9;
  [(CWFXPCRequest *)v8 setResponse:v17];
  [delegate XPCRequestProxy:self XPCConnection:self->_internalRequestXPCConnection receivedXPCRequest:v8];
  v10 = dispatch_time(0, 4000000000);
  if (!dispatch_block_wait(v9, v10))
  {

    _Block_object_dispose(v21, 8);
LABEL_6:
    v13 = v24[5];
    goto LABEL_11;
  }

  v11 = CWFGetOSLog();
  if (v11)
  {
    v12 = CWFGetOSLog();
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v29 = 136446978;
    v30 = "[CWFXPCRequestProxy __currentNetworkProfileWithInterfaceName:]";
    v31 = 2082;
    v32 = "CWFXPCRequestProxy.m";
    v33 = 1024;
    v34 = 5195;
    v35 = 2048;
    v36 = 4000000000;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v12, 16, "[corewifi] %{public}s (%{public}s:%u) FAILED to complete within %lluns, continuing", &v29, 38);
  }

  _Block_object_dispose(v21, 8);
  v13 = 0;
LABEL_11:
  v15 = v13;

  _Block_object_dispose(&v23, 8);

  return v15;
}

- (id)__knownNetworkProfiles
{
  v34 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1E0BC2D80;
  v24 = sub_1E0BC61FC;
  v25 = 0;
  delegate = [(CWFXPCRequestProxy *)self delegate];
  if (!delegate)
  {
    goto LABEL_6;
  }

  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v4 = dispatch_block_create(0, &unk_1F5B893D0);
  v5 = objc_alloc_init(CWFXPCRequest);
  [(CWFXPCRequest *)v5 setType:54];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1E0CB1BF4;
  v14[3] = &unk_1E86E7E80;
  v16 = &v20;
  v17 = v18;
  v6 = v4;
  v15 = v6;
  [(CWFXPCRequest *)v5 setResponse:v14];
  [delegate XPCRequestProxy:self XPCConnection:self->_internalRequestXPCConnection receivedXPCRequest:v5];
  v7 = dispatch_time(0, 4000000000);
  if (!dispatch_block_wait(v6, v7))
  {

    _Block_object_dispose(v18, 8);
LABEL_6:
    v10 = v21[5];
    goto LABEL_11;
  }

  v8 = CWFGetOSLog();
  if (v8)
  {
    v9 = CWFGetOSLog();
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v26 = 136446978;
    v27 = "[CWFXPCRequestProxy __knownNetworkProfiles]";
    v28 = 2082;
    v29 = "CWFXPCRequestProxy.m";
    v30 = 1024;
    v31 = 5226;
    v32 = 2048;
    v33 = 4000000000;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 16, "[corewifi] %{public}s (%{public}s:%u) FAILED to complete within %lluns, continuing", &v26, 38);
  }

  _Block_object_dispose(v18, 8);
  v10 = 0;
LABEL_11:
  v12 = v10;

  _Block_object_dispose(&v20, 8);

  return v12;
}

- (BOOL)isNon80211InterfaceName:(id)name
{
  nameCopy = name;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CB1D78;
  block[3] = &unk_1E86E7BE0;
  selfCopy = self;
  v11 = &v12;
  v9 = nameCopy;
  v6 = nameCopy;
  dispatch_sync(mutexQueue, block);
  LOBYTE(mutexQueue) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return mutexQueue;
}

- (id)__apple80211WithVirtualInterfaceRole:(int)role parentInterfaceName:(id)name
{
  v4 = *&role;
  v74 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v7 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v8 = CWFGetOSLog();
  if (v8)
  {
    v9 = CWFGetOSLog();
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = v7 / 0x3B9ACA00;
    v12 = v7 % 0x3B9ACA00 / 0x3E8;
    v13 = sub_1E0BEE7B4(v4);
    apple80211Map = self->_apple80211Map;
    v58 = 134219778;
    v59 = v11;
    v60 = 2048;
    v61 = v12;
    v62 = 2082;
    v63 = "[CWFXPCRequestProxy __apple80211WithVirtualInterfaceRole:parentInterfaceName:]";
    v64 = 2082;
    v65 = "CWFXPCRequestProxy.m";
    v66 = 1024;
    v67 = 5253;
    v68 = 2114;
    v69 = v13;
    v70 = 2114;
    v71 = nameCopy;
    v72 = 2114;
    v73 = apple80211Map;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 2, "[corewifi] @[%llu.%06llu] %{public}s (%{public}s:%u) Attempting to match cached interface (role=%{public}@ parent=%{public}@ cache=%{public}@)", &v58, 78);
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = [(NSMutableDictionary *)self->_apple80211Map allValues];
  v15 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (!v15)
  {
    v34 = 0;
    v33 = 0;
    goto LABEL_40;
  }

  v16 = v15;
  v51 = 0;
  v17 = *v54;
  while (2)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v54 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v53 + 1) + 8 * i);
      interfaceName = [v19 interfaceName];

      if (interfaceName)
      {
        if ([v19 virtualInterfaceRole] == v4)
        {
          if (!nameCopy)
          {
            goto LABEL_34;
          }

          virtualInterfaceParent = [v19 virtualInterfaceParent];
          v22 = virtualInterfaceParent;
          if (virtualInterfaceParent == nameCopy)
          {

LABEL_34:
            v35 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
            v36 = CWFGetOSLog();
            if (v36)
            {
              v37 = CWFGetOSLog();
            }

            else
            {
              v37 = MEMORY[0x1E69E9C10];
              v38 = MEMORY[0x1E69E9C10];
            }

            v34 = v51;

            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              v58 = 134219266;
              v59 = v35 / 0x3B9ACA00;
              v60 = 2048;
              v61 = v35 % 0x3B9ACA00 / 0x3E8;
              v62 = 2082;
              v63 = "[CWFXPCRequestProxy __apple80211WithVirtualInterfaceRole:parentInterfaceName:]";
              v64 = 2082;
              v65 = "CWFXPCRequestProxy.m";
              v66 = 1024;
              v67 = 5264;
              v68 = 2114;
              v69 = v19;
              LODWORD(v50) = 58;
              _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v37, 2, "[corewifi] @[%llu.%06llu] %{public}s (%{public}s:%u) Matched cached interface %{public}@", &v58, v50);
            }

            v33 = v19;
            goto LABEL_40;
          }

          virtualInterfaceParent2 = [v19 virtualInterfaceParent];
          if (virtualInterfaceParent2)
          {
            v24 = virtualInterfaceParent2;
            virtualInterfaceParent3 = [v19 virtualInterfaceParent];
            v26 = [nameCopy isEqual:virtualInterfaceParent3];

            if (v26)
            {
              goto LABEL_34;
            }
          }

          else
          {
          }
        }

        if (v4 == 7 && ![v19 virtualInterfaceRole])
        {
          if (!nameCopy)
          {
            goto LABEL_27;
          }

          interfaceName2 = [v19 interfaceName];
          v28 = interfaceName2;
          if (interfaceName2 == nameCopy)
          {

LABEL_27:
            v28 = v51;
            v51 = v19;
LABEL_28:

            continue;
          }

          interfaceName3 = [v19 interfaceName];
          if (!interfaceName3)
          {
            goto LABEL_28;
          }

          v30 = interfaceName3;
          interfaceName4 = [v19 interfaceName];
          v32 = [nameCopy isEqual:interfaceName4];

          if (v32)
          {
            goto LABEL_27;
          }
        }
      }
    }

    v16 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
    if (v16)
    {
      continue;
    }

    break;
  }

  v33 = 0;
  v34 = v51;
LABEL_40:

  if (v4 == 7 && !v33 && v34)
  {
    v39 = [v34 capabilities:0];
    if (([v39 containsObject:&unk_1F5BBCA30] & 1) != 0 || objc_msgSend(v39, "containsObject:", &unk_1F5BBCA48))
    {
      v40 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
      v41 = CWFGetOSLog();
      if (v41)
      {
        v42 = CWFGetOSLog();
      }

      else
      {
        v42 = MEMORY[0x1E69E9C10];
        v43 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        v58 = 134219266;
        v59 = v40 / 0x3B9ACA00;
        v60 = 2048;
        v61 = v40 % 0x3B9ACA00 / 0x3E8;
        v62 = 2082;
        v63 = "[CWFXPCRequestProxy __apple80211WithVirtualInterfaceRole:parentInterfaceName:]";
        v64 = 2082;
        v65 = "CWFXPCRequestProxy.m";
        v66 = 1024;
        v67 = 5283;
        v68 = 2114;
        v69 = v34;
        LODWORD(v50) = 58;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v42, 2, "[corewifi] @[%llu.%06llu] %{public}s (%{public}s:%u) Matched cached interface %{public}@ for APPLE80211_VIRT_IF_ROLE_APSTA", &v58, v50);
      }

      v33 = v34;
    }

    else
    {
      v33 = 0;
    }
  }

  if (!v33)
  {
    v44 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v45 = CWFGetOSLog();
    if (v45)
    {
      v46 = CWFGetOSLog();
    }

    else
    {
      v46 = MEMORY[0x1E69E9C10];
      v47 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v48 = sub_1E0BEE7B4(v4);
      v58 = 134219522;
      v59 = v44 / 0x3B9ACA00;
      v60 = 2048;
      v61 = v44 % 0x3B9ACA00 / 0x3E8;
      v62 = 2082;
      v63 = "[CWFXPCRequestProxy __apple80211WithVirtualInterfaceRole:parentInterfaceName:]";
      v64 = 2082;
      v65 = "CWFXPCRequestProxy.m";
      v66 = 1024;
      v67 = 5291;
      v68 = 2114;
      v69 = v48;
      v70 = 2114;
      v71 = nameCopy;
      LODWORD(v50) = 68;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v46, 0, "[corewifi] @[%llu.%06llu] %{public}s (%{public}s:%u) Failed to match cached interface (role=%{public}@ parent=%{public}@)", &v58, v50);
    }
  }

  return v33;
}

- (id)__apple80211WithInterfaceName:(id)name
{
  v27 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (nameCopy)
  {
    v5 = nameCopy;
  }

  else
  {
    v5 = &stru_1F5B8FC80;
  }

  v6 = [(NSMutableDictionary *)self->_apple80211Map objectForKeyedSubscript:v5];
  if (!v6)
  {
    v7 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v8 = CWFGetOSLog();
    if (v8)
    {
      v9 = CWFGetOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      apple80211Map = self->_apple80211Map;
      v13 = 134219522;
      v14 = v7 / 0x3B9ACA00;
      v15 = 2048;
      v16 = v7 % 0x3B9ACA00 / 0x3E8;
      v17 = 2082;
      v18 = "[CWFXPCRequestProxy __apple80211WithInterfaceName:]";
      v19 = 2082;
      v20 = "CWFXPCRequestProxy.m";
      v21 = 1024;
      v22 = 5303;
      v23 = 2114;
      v24 = nameCopy;
      v25 = 2114;
      v26 = apple80211Map;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 0, "[corewifi] @[%llu.%06llu] %{public}s (%{public}s:%u) CWFApple80211 not found with interface name %{public}@, cache=%{public}@", &v13, 68);
    }
  }

  return v6;
}

- (id)apple80211WithInterfaceName:(id)name
{
  nameCopy = name;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1E0BC2D80;
  v16 = sub_1E0BC61FC;
  v17 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CB2868;
  block[3] = &unk_1E86E6960;
  v10 = nameCopy;
  v11 = &v12;
  block[4] = self;
  v6 = nameCopy;
  dispatch_sync(mutexQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)apple80211WithVirtualInterfaceRole:(int)role parentInterfaceName:(id)name
{
  nameCopy = name;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1E0BC2D80;
  v19 = sub_1E0BC61FC;
  v20 = 0;
  mutexQueue = self->_mutexQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1E0CB29E4;
  v11[3] = &unk_1E86E6730;
  v12 = nameCopy;
  v13 = &v15;
  roleCopy = role;
  v11[4] = self;
  v8 = nameCopy;
  dispatch_sync(mutexQueue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

- (id)__EAP8021XWithInterfaceName:(id)name
{
  v23 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = [(NSMutableDictionary *)self->_EAP8021XMap objectForKeyedSubscript:nameCopy];
  if (!v5)
  {
    v6 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v7 = CWFGetOSLog();
    if (v7)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134219266;
      v12 = v6 / 0x3B9ACA00;
      v13 = 2048;
      v14 = v6 % 0x3B9ACA00 / 0x3E8;
      v15 = 2082;
      v16 = "[CWFXPCRequestProxy __EAP8021XWithInterfaceName:]";
      v17 = 2082;
      v18 = "CWFXPCRequestProxy.m";
      v19 = 1024;
      v20 = 5343;
      v21 = 2114;
      v22 = nameCopy;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 0, "[corewifi] @[%llu.%06llu] %{public}s (%{public}s:%u) CWFEAP8021X not found with interface name %{public}@", &v11, 58);
    }
  }

  return v5;
}

- (id)EAP8021XWithInterfaceName:(id)name
{
  nameCopy = name;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1E0BC2D80;
  v16 = sub_1E0BC61FC;
  v17 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CB2D10;
  block[3] = &unk_1E86E6960;
  v10 = nameCopy;
  v11 = &v12;
  block[4] = self;
  v6 = nameCopy;
  dispatch_sync(mutexQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)__SCNetworkServiceWithInterfaceName:(id)name
{
  v23 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = [(NSMutableDictionary *)self->_SCNetworkServiceMap objectForKeyedSubscript:nameCopy];
  if (!v5)
  {
    v6 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v7 = CWFGetOSLog();
    if (v7)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134219266;
      v12 = v6 / 0x3B9ACA00;
      v13 = 2048;
      v14 = v6 % 0x3B9ACA00 / 0x3E8;
      v15 = 2082;
      v16 = "[CWFXPCRequestProxy __SCNetworkServiceWithInterfaceName:]";
      v17 = 2082;
      v18 = "CWFXPCRequestProxy.m";
      v19 = 1024;
      v20 = 5369;
      v21 = 2114;
      v22 = nameCopy;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 0, "[corewifi] @[%llu.%06llu] %{public}s (%{public}s:%u) CWFSCNetworkService not found with interface name %{public}@", &v11, 58);
    }
  }

  return v5;
}

- (id)SCNetworkServiceWithInterfaceName:(id)name
{
  nameCopy = name;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1E0BC2D80;
  v16 = sub_1E0BC61FC;
  v17 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CB3038;
  block[3] = &unk_1E86E6960;
  v10 = nameCopy;
  v11 = &v12;
  block[4] = self;
  v6 = nameCopy;
  dispatch_sync(mutexQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)__SCNetworkInterfaceWithInterfaceName:(id)name
{
  v23 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = [(NSMutableDictionary *)self->_SCNetworkInterfaceMap objectForKeyedSubscript:nameCopy];
  if (!v5)
  {
    v6 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v7 = CWFGetOSLog();
    if (v7)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134219266;
      v12 = v6 / 0x3B9ACA00;
      v13 = 2048;
      v14 = v6 % 0x3B9ACA00 / 0x3E8;
      v15 = 2082;
      v16 = "[CWFXPCRequestProxy __SCNetworkInterfaceWithInterfaceName:]";
      v17 = 2082;
      v18 = "CWFXPCRequestProxy.m";
      v19 = 1024;
      v20 = 5395;
      v21 = 2114;
      v22 = nameCopy;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 0, "[corewifi] @[%llu.%06llu] %{public}s (%{public}s:%u) CWFSCNetworkInterface not found with interface name %{public}@", &v11, 58);
    }
  }

  return v5;
}

- (id)SCNetworkInterfaceWithInterfaceName:(id)name
{
  nameCopy = name;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1E0BC2D80;
  v16 = sub_1E0BC61FC;
  v17 = 0;
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CB3360;
  block[3] = &unk_1E86E6960;
  v10 = nameCopy;
  v11 = &v12;
  block[4] = self;
  v6 = nameCopy;
  dispatch_sync(mutexQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)__updateEventRegistration:(id)registration XPCConnection:(id)connection XPCManager:(id)manager
{
  registrationCopy = registration;
  connectionCopy = connection;
  managerCopy = manager;
  v10 = registrationCopy;
  if (registrationCopy)
  {
    info = [registrationCopy info];
    response6 = [info objectForKeyedSubscript:@"EventID"];

    if (response6)
    {
      if ([response6 type] == 12)
      {
        supportedRequestTypes = [managerCopy supportedRequestTypes];
        v14 = MEMORY[0x1E695DFD8];
        v15 = &unk_1F5BB9CB8;
      }

      else
      {
        if ([response6 type] != 13)
        {
          if ([response6 type] == 43 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            response = [registrationCopy response];

            if (response)
            {
              response2 = [registrationCopy response];
              response2[2](response2, 0, 0);
            }

            v21 = response6;
            wifiNetworkSharingManager = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
            clientID = [v21 clientID];

            requestParameters = [registrationCopy requestParameters];
            wifiNetworkSharingNetworkListUpdateEventPredicateData = [requestParameters wifiNetworkSharingNetworkListUpdateEventPredicateData];
            [wifiNetworkSharingManager didRegisterForNetworkListUpdateEventsWithClientID:clientID predicateData:wifiNetworkSharingNetworkListUpdateEventPredicateData XPCConnection:connectionCopy];
          }

          else
          {
            if ([response6 type] != 44 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              v16 = 0;
              goto LABEL_12;
            }

            response3 = [registrationCopy response];

            if (response3)
            {
              response4 = [registrationCopy response];
              response4[2](response4, 0, 0);
            }

            v28 = response6;
            wifiNetworkSharingManager = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
            clientID = [v28 clientID];

            [wifiNetworkSharingManager didRegisterForAskToShareNetworkListUpdateEventsWithClientID:clientID XPCConnection:connectionCopy];
          }

          v16 = 0;
          goto LABEL_15;
        }

        supportedRequestTypes = [managerCopy supportedRequestTypes];
        v14 = MEMORY[0x1E695DFD8];
        v15 = &unk_1F5BB9CD0;
      }

      v17 = [v14 setWithArray:v15];
      if ([v17 isSubsetOfSet:supportedRequestTypes])
      {
        v16 = 0;
      }

      else
      {
        v30 = *MEMORY[0x1E696A798];
        v31 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
        v16 = CWFErrorWithDescription(v30, 45, v31);
      }
    }

    else
    {
      v29 = *MEMORY[0x1E696A798];
      supportedRequestTypes = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
      v16 = CWFErrorWithDescription(v29, 22, supportedRequestTypes);
    }

LABEL_12:
    v10 = registrationCopy;
    goto LABEL_13;
  }

  v16 = 0;
LABEL_13:
  response5 = [v10 response];

  if (!response5)
  {
    goto LABEL_16;
  }

  response6 = [registrationCopy response];
  (response6)[2](response6, v16, 0);
LABEL_15:

LABEL_16:
}

- (void)__updateEventMonitoring:(id)monitoring
{
  registeredEventIDs = [monitoring registeredEventIDs];
  mutexQueue = self->_mutexQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0CB37F4;
  v7[3] = &unk_1E86E6420;
  v7[4] = self;
  v8 = registeredEventIDs;
  v6 = registeredEventIDs;
  dispatch_sync(mutexQueue, v7);
}

- (void)__getSystemEventIDs:(id)ds XPCManager:(id)manager
{
  dsCopy = ds;
  v5 = MEMORY[0x1E695DF90];
  managerCopy = manager;
  dictionary = [v5 dictionary];
  registeredEventIDs = [managerCopy registeredEventIDs];

  [dictionary setObject:registeredEventIDs forKeyedSubscript:@"Result"];
  response = [dsCopy response];

  if (response)
  {
    response2 = [dsCopy response];
    (response2)[2](response2, 0, dictionary);
  }
}

- (void)__getSystemActivities:(id)activities XPCManager:(id)manager
{
  activitiesCopy = activities;
  v5 = MEMORY[0x1E695DF90];
  managerCopy = manager;
  dictionary = [v5 dictionary];
  registeredActivities = [managerCopy registeredActivities];

  [dictionary setObject:registeredActivities forKeyedSubscript:@"Result"];
  response = [activitiesCopy response];

  if (response)
  {
    response2 = [activitiesCopy response];
    (response2)[2](response2, 0, dictionary);
  }
}

- (void)__performScan:(id)scan XPCConnection:(id)connection
{
  v93 = *MEMORY[0x1E69E9840];
  scanCopy = scan;
  connectionCopy = connection;
  v8 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  requestParameters = [scanCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  v11 = [(CWFXPCRequestProxy *)self apple80211WithInterfaceName:interfaceName];
  v74 = interfaceName;
  if (v11)
  {
    info = [scanCopy info];
    v13 = [info objectForKeyedSubscript:@"ScanParams"];

    if (v13)
    {
      if (![v13 scanType])
      {
        [v13 setScanType:1];
      }

      if (![v13 BSSType])
      {
        [v13 setBSSType:3];
      }

      if (![v13 PHYMode])
      {
        [v13 setPHYMode:1];
      }

      if (![v13 numberOfScans])
      {
        [v13 setNumberOfScans:1];
      }

      selfCopy = self;
      channels = [v13 channels];

      v72 = v11;
      v73 = connectionCopy;
      if (channels)
      {
        v68 = v8;
        v70 = scanCopy;
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        array = [MEMORY[0x1E695DF70] array];
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v69 = v13;
        channels2 = [v13 channels];
        v17 = [channels2 countByEnumeratingWithState:&v81 objects:v91 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v82;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v82 != v19)
              {
                objc_enumerationMutation(channels2);
              }

              v21 = *(*(&v81 + 1) + 8 * i);
              if ([v21 width] != 20)
              {
                v22 = CWFGetOSLog();
                if (v22)
                {
                  v23 = CWFGetOSLog();
                }

                else
                {
                  v23 = MEMORY[0x1E69E9C10];
                  v24 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
                {
                  v89 = 138543362;
                  v90 = v21;
                  LODWORD(v67) = 12;
                  _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v23, 2, "[corewifi] Specified channel is not 20MHz, but will force 20MHz for scan (%{public}@)", &v89, v67);
                }

                v25 = +[CWFChannel channelWithNumber:band:width:](CWFChannel, "channelWithNumber:band:width:", [v21 channel], objc_msgSend(v21, "band"), 20);

                v21 = v25;
              }

              band = [v21 band];
              v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:band];
              v28 = [dictionary objectForKeyedSubscript:v27];

              if (!v28)
              {
                v28 = [MEMORY[0x1E695DFA8] set];
                v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:band];
                [dictionary setObject:v28 forKeyedSubscript:v29];
              }

              v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v21, "channel")}];
              v31 = [v28 containsObject:v30];

              if ((v31 & 1) == 0)
              {
                v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v21, "channel")}];
                [v28 addObject:v32];

                [array addObject:v21];
              }
            }

            v18 = [channels2 countByEnumeratingWithState:&v81 objects:v91 count:16];
          }

          while (v18);
        }

        v33 = v69;
        v34 = array;
        [v69 setChannels:array];
        scanCopy = v70;
        connectionCopy = v73;
        v8 = v68;
      }

      else
      {
        dictionary = [v11 countryCode:0];
        v35 = [v11 supportedChannelsWithCountryCode:dictionary error:0];
        array2 = [MEMORY[0x1E695DF70] array];
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        v34 = v35;
        v37 = [v34 countByEnumeratingWithState:&v85 objects:v92 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v86;
          do
          {
            for (j = 0; j != v38; ++j)
            {
              if (*v86 != v39)
              {
                objc_enumerationMutation(v34);
              }

              v41 = *(*(&v85 + 1) + 8 * j);
              if ([v41 width] == 20 && (!objc_msgSend(v41, "is6GHz") || objc_msgSend(v41, "is6GHzPSC") && (objc_msgSend(v13, "exclude6GChannels") & 1) == 0) && (!objc_msgSend(v41, "is6GHz") || objc_msgSend(v13, "scanType") != 9))
              {
                [array2 addObject:v41];
              }
            }

            v38 = [v34 countByEnumeratingWithState:&v85 objects:v92 count:16];
          }

          while (v38);
        }

        v33 = v13;
        [v13 setChannels:array2];

        connectionCopy = v73;
      }

      self = selfCopy;
      v11 = v72;
LABEL_47:
      delegate = [(CWFXPCRequestProxy *)self delegate];
      if (delegate)
      {
        response2 = objc_alloc_init(CWFXPCRequest);
        [(CWFXPCRequest *)response2 setType:64];
        requestParameters2 = [scanCopy requestParameters];
        [(CWFXPCRequest *)response2 setRequestParameters:requestParameters2];

        info2 = [scanCopy info];
        [(CWFXPCRequest *)response2 setInfo:info2];

        v76[0] = MEMORY[0x1E69E9820];
        v76[1] = 3221225472;
        v76[2] = sub_1E0CB44C4;
        v76[3] = &unk_1E86E8498;
        v46 = v33;
        v77 = v33;
        v78 = scanCopy;
        v79 = v11;
        v80 = v8;
        [(CWFXPCRequest *)response2 setResponse:v76];
        v47 = CWFGetOSLog();
        if (v47)
        {
          v48 = CWFGetOSLog();
        }

        else
        {
          v48 = MEMORY[0x1E69E9C10];
          v51 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          info3 = [(CWFXPCRequest *)response2 info];
          [info3 objectForKeyedSubscript:@"ScanParams"];
          v54 = v53 = connectionCopy;
          v89 = 138543362;
          v90 = v54;
          LODWORD(v67) = 12;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v48, 1, "[corewifi] Passing scan request to daemon (params=%{public}@)", &v89, v67);

          connectionCopy = v53;
        }

        [delegate XPCRequestProxy:self XPCConnection:connectionCopy receivedXPCRequest:response2];
        v55 = v77;
      }

      else
      {
        v49 = CWFGetOSLog();
        if (v49)
        {
          v50 = CWFGetOSLog();
        }

        else
        {
          v50 = MEMORY[0x1E69E9C10];
          v56 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          v57 = sub_1E0BC2FCC([scanCopy type]);
          v89 = 138543362;
          v90 = v57;
          LODWORD(v67) = 12;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v50, 16, "[corewifi] Unhandled request type (%{public}@)", &v89, v67);
        }

        response = [scanCopy response];

        if (!response)
        {
          goto LABEL_62;
        }

        v46 = v33;
        response2 = [scanCopy response];
        v59 = *MEMORY[0x1E696A798];
        v55 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
        v60 = CWFErrorWithDescription(v59, 45, v55);
        (response2->super.super.super._iop.__nextOp)(response2, v60, 0);
      }

      v33 = v46;
LABEL_62:

      v61 = 0;
      interfaceName = v74;
      goto LABEL_63;
    }

    v62 = 22;
  }

  else
  {
    v62 = 6;
  }

  v63 = *MEMORY[0x1E696A798];
  v64 = CWFErrorDescription(*MEMORY[0x1E696A798], v62);
  v61 = CWFErrorWithDescription(v63, v62, v64);

  if (!v61)
  {
    v33 = 0;
    goto LABEL_47;
  }

  response3 = [scanCopy response];

  if (response3)
  {
    response4 = [scanCopy response];
    (response4)[2](response4, v61, 0);
  }

LABEL_63:
}

- (void)__setChannel:(id)channel
{
  channelCopy = channel;
  requestParameters = [channelCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  info = [channelCopy info];
  v8 = [info objectForKeyedSubscript:@"Channel"];

  if (v8)
  {
    v9 = [(CWFXPCRequestProxy *)self apple80211WithInterfaceName:interfaceName];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 countryCode:0];
      v12 = [v10 supportedChannelsWithCountryCode:v11 error:0];
      v13 = [v12 containsObject:v8];

      if (v13)
      {
        v14 = [v10 powerOn:0];
        bOOLValue = [v14 BOOLValue];

        if (bOOLValue)
        {
          v16 = [v10 BSSID:0];

          if (!v16)
          {
            v31 = 0;
            [v10 setChannel:v8 error:&v31];
            v17 = v31;
LABEL_7:

            goto LABEL_8;
          }

          v30 = *MEMORY[0x1E696A798];
          v26 = CWFErrorDescription(*MEMORY[0x1E696A798], 1uLL);
          v27 = v30;
          v28 = 1;
        }

        else
        {
          v29 = *MEMORY[0x1E696A798];
          v26 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x52uLL);
          v27 = v29;
          v28 = 82;
        }
      }

      else
      {
        v25 = *MEMORY[0x1E696A798];
        v26 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
        v27 = v25;
        v28 = 45;
      }

      v17 = CWFErrorWithDescription(v27, v28, v26);

      goto LABEL_7;
    }

    v24 = *MEMORY[0x1E696A798];
    v21 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v22 = v24;
    v23 = 6;
  }

  else
  {
    v20 = *MEMORY[0x1E696A798];
    v21 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v22 = v20;
    v23 = 22;
  }

  v17 = CWFErrorWithDescription(v22, v23, v21);

LABEL_8:
  response = [channelCopy response];

  if (response)
  {
    response2 = [channelCopy response];
    (response2)[2](response2, v17, 0);
  }
}

- (void)__getWEPSubtype:(id)subtype
{
  subtypeCopy = subtype;
  requestParameters = [subtypeCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  v6 = [(CWFXPCRequestProxy *)self apple80211WithInterfaceName:interfaceName];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 SSID:0];
    if (v8)
    {
      v9 = [v7 authType:0];
      if ([v9 length] == 16 && (*(objc_msgSend(v9, "bytes") + 4) - 3) >= 0xFFFFFFFE)
      {
        v10 = [(CWFXPCRequestProxy *)self __currentNetworkProfileWithInterfaceName:interfaceName];
        if (!v10)
        {
          v13 = [(CWFXPCRequestProxy *)self __currentScanResultWithInterfaceName:interfaceName forceNoCache:0];
          v14 = [(CWFXPCRequestProxy *)self EAP8021XWithInterfaceName:interfaceName];
          v15 = [v14 supplicantState:0];
          unsignedIntValue = [v15 unsignedIntValue];

          response4 = 0;
          if (([v13 isWEP] & (unsignedIntValue == 4)) != 0)
          {
            v12 = &unk_1F5BBCAA8;
          }

          else
          {
            v12 = &unk_1F5BBC958;
          }

          goto LABEL_11;
        }

        response4 = v10;
        v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "WEPSubtype")}];
      }

      else
      {
        response4 = 0;
        v12 = 0;
      }

LABEL_7:
      v13 = 0;
LABEL_11:
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [dictionary setObject:v12 forKeyedSubscript:@"Result"];
      response = [subtypeCopy response];

      if (response)
      {
        response2 = [subtypeCopy response];
        v20 = [dictionary copy];
        (response2)[2](response2, 0, v20);
      }

      v8 = 0;
      goto LABEL_14;
    }

LABEL_22:
    response4 = 0;
    v12 = 0;
    v9 = 0;
    goto LABEL_7;
  }

  v21 = *MEMORY[0x1E696A798];
  v22 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v8 = CWFErrorWithDescription(v21, 6, v22);

  if (!v8)
  {
    goto LABEL_22;
  }

  response3 = [subtypeCopy response];

  if (response3)
  {
    response4 = [subtypeCopy response];
    (response4)[2](response4, v8, 0);
LABEL_14:
  }
}

- (void)__getWAPISubtype:(id)subtype
{
  subtypeCopy = subtype;
  requestParameters = [subtypeCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  v6 = [(CWFXPCRequestProxy *)self apple80211WithInterfaceName:interfaceName];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 SSID:0];
    if (v8)
    {
      response4 = [(CWFXPCRequestProxy *)self __currentScanResultWithInterfaceName:interfaceName forceNoCache:0];
      sSID = [response4 SSID];
      v11 = [sSID isEqualToData:v8];

      if (v11)
      {
        v12 = [v7 authType:0];
        if ([v12 length] == 16 && *(objc_msgSend(v12, "bytes") + 8) == 512)
        {
          v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(response4, "WAPISubtype")}];
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_7;
      }

LABEL_19:
      v13 = 0;
      v12 = 0;
LABEL_7:
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [dictionary setObject:v13 forKeyedSubscript:@"Result"];
      response = [subtypeCopy response];

      if (response)
      {
        response2 = [subtypeCopy response];
        v17 = [dictionary copy];
        (response2)[2](response2, 0, v17);
      }

      v8 = 0;
      goto LABEL_10;
    }

LABEL_18:
    response4 = 0;
    goto LABEL_19;
  }

  v18 = *MEMORY[0x1E696A798];
  v19 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v8 = CWFErrorWithDescription(v18, 6, v19);

  if (!v8)
  {
    goto LABEL_18;
  }

  response3 = [subtypeCopy response];

  if (response3)
  {
    response4 = [subtypeCopy response];
    (response4)[2](response4, v8, 0);
LABEL_10:
  }
}

- (void)__getSecurity:(id)security
{
  securityCopy = security;
  requestParameters = [securityCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  v6 = [(CWFXPCRequestProxy *)self apple80211WithInterfaceName:interfaceName];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 SSID:0];
    if (v8)
    {
      response4 = [v7 currentNetwork:0];
      v10 = [v7 authType:0];
      if ([v10 length] == 16)
      {
        v37 = interfaceName;
        v11 = *([v10 bytes] + 8);
        v12 = *([v10 bytes] + 4);
        v36 = *([v10 bytes] + 12);
        scanRecord = [response4 scanRecord];
        v14 = [scanRecord objectForKeyedSubscript:@"RSN_IE"];
        v15 = [v14 objectForKeyedSubscript:@"IE_KEY_RSN_MCIPHER"];
        intValue = [v15 intValue];

        scanRecord2 = [response4 scanRecord];
        v18 = [scanRecord2 objectForKeyedSubscript:@"SCAN_RESULT_OWE_MULTI_SSID"];
        bOOLValue = [v18 BOOLValue];

        if (v12 == 2)
        {
          v21 = 1;
        }

        else
        {
          if (v12 != 1)
          {
            goto LABEL_30;
          }

          v20 = __rbit32(v11 & 3) >> 28;
          if ((v11 & 0x884) != 0)
          {
            if (intValue == 2)
            {
              v20 |= 0x28uLL;
            }

            else if ([response4 isMFPCapable] && (v22 = objc_msgSend(response4, "isMFPRequired"), (v11 & 4) == 0) && v22)
            {
              v20 |= 0x80uLL;
            }

            else
            {
              v20 |= 0x20uLL;
            }
          }

          v23 = 16;
          if (intValue == 2)
          {
            v23 = 20;
          }

          if ((v11 & 0x418) == 0)
          {
            v23 = 0;
          }

          v24 = v20 | v23;
          if ((v11 & 0xC000) != 0)
          {
            v24 |= 0x80uLL;
          }

          if ((v11 & 0x33000) != 0)
          {
            v24 |= 0x40uLL;
          }

          v21 = v24 | (v11 >> 8) & 2;
          sSID = [response4 SSID];
          if ([sSID isEqualToData:v8])
          {
            isWEP = [response4 isWEP];

            v21 |= isWEP;
          }

          else
          {
          }

          v27 = 256;
          if (bOOLValue)
          {
            v27 = 768;
          }

          if (v36)
          {
            v21 = v27;
            goto LABEL_32;
          }

          if (!v21)
          {
LABEL_30:
            v21 = 512;
          }
        }

LABEL_32:
        v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v21];
        interfaceName = v37;
LABEL_33:
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        [dictionary setObject:v28 forKeyedSubscript:@"Result"];
        response = [securityCopy response];

        if (response)
        {
          response2 = [securityCopy response];
          v32 = [dictionary copy];
          (response2)[2](response2, 0, v32);
        }

        v8 = 0;
        goto LABEL_36;
      }

LABEL_44:
      v28 = 0;
      goto LABEL_33;
    }

LABEL_43:
    response4 = 0;
    v10 = 0;
    goto LABEL_44;
  }

  v33 = *MEMORY[0x1E696A798];
  v34 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v8 = CWFErrorWithDescription(v33, 6, v34);

  if (!v8)
  {
    goto LABEL_43;
  }

  response3 = [securityCopy response];

  if (response3)
  {
    response4 = [securityCopy response];
    (response4)[2](response4, v8, 0);
LABEL_36:
  }
}

- (void)__getKnownNetworkMatchingNetworkProfile:(id)profile
{
  v40 = *MEMORY[0x1E69E9840];
  profileCopy = profile;
  info = [profileCopy info];
  v6 = [info objectForKeyedSubscript:@"NetworkProfile"];

  if (!v6)
  {
    v27 = *MEMORY[0x1E696A798];
    v28 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v26 = CWFErrorWithDescription(v27, 22, v28);

    if (v26)
    {
      response = [profileCopy response];

      if (response)
      {
        response2 = [profileCopy response];
        (response2)[2](response2, v26, 0);
      }

      goto LABEL_25;
    }

LABEL_29:
    v8 = 0;
    obj = 0;
    goto LABEL_22;
  }

  __knownNetworkProfiles = [(CWFXPCRequestProxy *)self __knownNetworkProfiles];
  if (!__knownNetworkProfiles)
  {
    goto LABEL_29;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = __knownNetworkProfiles;
  v8 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (!v8)
  {
    goto LABEL_21;
  }

  v31 = profileCopy;
  v32 = v6;
  v9 = *v36;
  while (2)
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v36 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v35 + 1) + 8 * i);
      identifier = [v6 identifier];
      identifier2 = [v11 identifier];
      v14 = identifier2;
      if (identifier == identifier2)
      {

LABEL_19:
        v8 = v11;
        goto LABEL_20;
      }

      identifier3 = [v6 identifier];
      if (!identifier3)
      {
        goto LABEL_14;
      }

      v16 = identifier3;
      identifier4 = [v11 identifier];
      if (!identifier4)
      {

LABEL_14:
        continue;
      }

      v18 = identifier4;
      identifier5 = [v6 identifier];
      [v11 identifier];
      v21 = v20 = v9;
      v34 = [identifier5 isEqual:v21];

      v9 = v20;
      v6 = v32;

      if (v34)
      {
        goto LABEL_19;
      }
    }

    v8 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_20:
  profileCopy = v31;
LABEL_21:

LABEL_22:
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:v8 forKeyedSubscript:@"Result"];
  response3 = [profileCopy response];

  if (response3)
  {
    response4 = [profileCopy response];
    v25 = [dictionary copy];
    (response4)[2](response4, 0, v25);
  }

  v26 = 0;
LABEL_25:
}

- (void)__getKnownNetworkMatchingScanResult:(id)result
{
  resultCopy = result;
  info = [resultCopy info];
  v5 = [info objectForKeyedSubscript:@"ScanResult"];

  if (v5)
  {
    __knownNetworkProfiles = [(CWFXPCRequestProxy *)self __knownNetworkProfiles];
    response4 = sub_1E0BED85C(v5, __knownNetworkProfiles);

LABEL_3:
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:response4 forKeyedSubscript:@"Result"];
    response = [resultCopy response];

    if (response)
    {
      response2 = [resultCopy response];
      v11 = [dictionary copy];
      (response2)[2](response2, 0, v11);
    }

    v12 = 0;
    goto LABEL_6;
  }

  v13 = *MEMORY[0x1E696A798];
  v14 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
  v12 = CWFErrorWithDescription(v13, 22, v14);

  if (!v12)
  {
    response4 = 0;
    goto LABEL_3;
  }

  response3 = [resultCopy response];

  if (response3)
  {
    response4 = [resultCopy response];
    (response4)[2](response4, v12, 0);
LABEL_6:
  }
}

- (void)__addKnownNetwork:(id)network XPCConnection:(id)connection
{
  v30 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  connectionCopy = connection;
  info = [networkCopy info];
  v9 = [info objectForKeyedSubscript:@"NetworkProfile"];

  if (v9)
  {
    sSID = [v9 SSID];
    v11 = sSID;
    if (!sSID || [sSID length] && objc_msgSend(v11, "length") < 0x21)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v11 = 0;
  }

  v24 = *MEMORY[0x1E696A798];
  v25 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
  v23 = CWFErrorWithDescription(v24, 22, v25);

  if (!v23)
  {
LABEL_5:
    delegate = [(CWFXPCRequestProxy *)self delegate];
    v13 = delegate;
    if (delegate)
    {
      [delegate XPCRequestProxy:self XPCConnection:connectionCopy receivedXPCRequest:networkCopy];
    }

    else
    {
      v14 = CWFGetOSLog();
      if (v14)
      {
        v15 = CWFGetOSLog();
      }

      else
      {
        v15 = MEMORY[0x1E69E9C10];
        v16 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = sub_1E0BC2FCC([networkCopy type]);
        v28 = 138543362;
        v29 = v17;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v15, 16, "[corewifi] Unhandled request type (%{public}@)", &v28, 12);
      }

      response = [networkCopy response];

      if (response)
      {
        response2 = [networkCopy response];
        v20 = *MEMORY[0x1E696A798];
        v21 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
        v22 = CWFErrorWithDescription(v20, 45, v21);
        (response2)[2](response2, v22, 0);
      }
    }

    v23 = 0;
    goto LABEL_15;
  }

  response3 = [networkCopy response];

  if (response3)
  {
    response4 = [networkCopy response];
    (response4)[2](response4, v23, 0);
  }

LABEL_15:
}

- (void)__getApple80211:(id)apple80211
{
  apple80211Copy = apple80211;
  requestParameters = [apple80211Copy requestParameters];
  interfaceName = [requestParameters interfaceName];

  v7 = [(CWFXPCRequestProxy *)self apple80211WithInterfaceName:interfaceName];
  if (v7)
  {
    type = [apple80211Copy type];
    if (type <= 145)
    {
      switch(type)
      {
        case 1:
          interfaceNames = [(CWFXPCRequestProxy *)self interfaceNames];
          break;
        case 2:
          interfaceNames = [(CWFXPCRequestProxy *)self virtualInterfaceNames];
          break;
        case 4:
          v98 = 0;
          v10 = [v7 capabilities:&v98];
          v11 = v98;
          goto LABEL_87;
        case 5:
          v97 = 0;
          v10 = [v7 powerOn:&v97];
          v11 = v97;
          goto LABEL_87;
        case 7:
          v96 = 0;
          v10 = [v7 SSID:&v96];
          v11 = v96;
          goto LABEL_87;
        case 9:
          v95 = 0;
          v10 = [v7 BSSID:&v95];
          v11 = v95;
          goto LABEL_87;
        case 11:
          v94 = 0;
          v10 = [v7 authType:&v94];
          v11 = v94;
          goto LABEL_87;
        case 15:
          info = [apple80211Copy info];
          v13 = [info objectForKeyedSubscript:@"CountryCode"];
          v90 = 0;
          v10 = [v7 supportedChannelsWithCountryCode:v13 error:&v90];
          response = v90;

          goto LABEL_88;
        case 16:
          v92 = 0;
          v10 = [v7 channel:&v92];
          v11 = v92;
          goto LABEL_87;
        case 18:
          v88 = 0;
          v10 = [v7 perAntennaRSSI:&v88];
          v11 = v88;
          goto LABEL_87;
        case 19:
          v87 = 0;
          v10 = [v7 noise:&v87];
          v11 = v87;
          goto LABEL_87;
        case 20:
          v83 = 0;
          v10 = [v7 txRate:&v83];
          v11 = v83;
          goto LABEL_87;
        case 21:
          v82 = 0;
          v10 = [v7 txPower:&v82];
          v11 = v82;
          goto LABEL_87;
        case 22:
          v93 = 0;
          v10 = [v7 countryCode:&v93];
          v11 = v93;
          goto LABEL_87;
        case 24:
          v81 = 0;
          v10 = [v7 DTIMInterval:&v81];
          v11 = v81;
          goto LABEL_87;
        case 25:
          v80 = 0;
          v10 = [v7 guardInterval:&v80];
          v11 = v80;
          goto LABEL_87;
        case 26:
          v79 = 0;
          v10 = [v7 MCSIndex:&v79];
          v11 = v79;
          goto LABEL_87;
        case 27:
          v78 = 0;
          v10 = [v7 numberOfSpatialStreams:&v78];
          v11 = v78;
          goto LABEL_87;
        case 28:
          v85 = 0;
          v10 = [v7 supportedPHYModes:&v85];
          v11 = v85;
          goto LABEL_87;
        case 29:
          v86 = 0;
          v10 = [v7 activePHYMode:&v86];
          v11 = v86;
          goto LABEL_87;
        case 30:
          v84 = 0;
          v10 = [v7 opMode:&v84];
          v11 = v84;
          goto LABEL_87;
        case 31:
          v77 = 0;
          v10 = [v7 virtualInterfaceRole:&v77];
          v11 = v77;
          goto LABEL_87;
        case 32:
          v76 = 0;
          v10 = [v7 virtualInterfaceParent:&v76];
          v11 = v76;
          goto LABEL_87;
        case 38:
          v91 = 0;
          v10 = [v7 wowEnabled:&v91];
          v11 = v91;
          goto LABEL_87;
        case 39:
          v75 = 0;
          v10 = [v7 AWDLSyncEnabled:&v75];
          v11 = v75;
          goto LABEL_87;
        case 40:
          v61 = 0;
          v10 = [v7 AWDLPreferredChannels:&v61];
          v11 = v61;
          goto LABEL_87;
        case 41:
          v73 = 0;
          v10 = [v7 AWDLSyncState:&v73];
          v11 = v73;
          goto LABEL_87;
        case 42:
          v74 = 0;
          v10 = [v7 AWDLSyncChannelSequence:&v74];
          v11 = v74;
          goto LABEL_87;
        case 43:
          v72 = 0;
          v10 = [v7 AWDLSyncParameters:&v72];
          v11 = v72;
          goto LABEL_87;
        case 44:
          v65 = 0;
          v10 = [v7 AWDLStrategy:&v65];
          v11 = v65;
          goto LABEL_87;
        case 45:
          v70 = 0;
          v10 = [v7 AWDLElectionParameters:&v70];
          v11 = v70;
          goto LABEL_87;
        case 46:
          v71 = 0;
          v10 = [v7 AWDLElectionID:&v71];
          v11 = v71;
          goto LABEL_87;
        case 47:
          v69 = 0;
          v10 = [v7 AWDLElectionRSSIThresholds:&v69];
          v11 = v69;
          goto LABEL_87;
        case 48:
          v67 = 0;
          v10 = [v7 AWDLPeerDatabase:&v67];
          v11 = v67;
          goto LABEL_87;
        case 49:
          v68 = 0;
          v10 = [v7 AWDLSocialTimeSlots:&v68];
          v11 = v68;
          goto LABEL_87;
        case 50:
          v63 = 0;
          v10 = [v7 AWDLMasterChannel:&v63];
          v11 = v63;
          goto LABEL_87;
        case 51:
          v62 = 0;
          v10 = [v7 AWDLSecondaryMasterChannel:&v62];
          v11 = v62;
          goto LABEL_87;
        case 52:
          v64 = 0;
          v10 = [v7 AWDLOpMode:&v64];
          v11 = v64;
          goto LABEL_87;
        case 53:
          v66 = 0;
          v10 = [v7 AWDLStatistics:&v66];
          v11 = v66;
          goto LABEL_87;
        default:
          goto LABEL_84;
      }

      v10 = interfaceNames;
      goto LABEL_91;
    }

    switch(type)
    {
      case 146:
        v60 = 0;
        v10 = [v7 AWDLSidecarDiagnostics:&v60];
        v11 = v60;
        goto LABEL_87;
      case 147:
        v59 = 0;
        v10 = [v7 powerState:&v59];
        v11 = v59;
        goto LABEL_87;
      case 148:
        v58 = 0;
        v10 = [v7 chainAck:&v58];
        v11 = v58;
        goto LABEL_87;
      case 149:
        v57 = 0;
        v10 = [v7 txChainPower:&v57];
        v11 = v57;
        goto LABEL_87;
      case 150:
        v56 = 0;
        v10 = [v7 desense:&v56];
        v11 = v56;
        goto LABEL_87;
      case 151:
        v55 = 0;
        v10 = [v7 desenseLevel:&v55];
        v11 = v55;
        goto LABEL_87;
      case 152:
        v54 = 0;
        v10 = [v7 bluetoothCoexistenceConfig:&v54];
        v11 = v54;
        goto LABEL_87;
      case 153:
        v53 = 0;
        v10 = [v7 bluetoothCoexistenceProfiles2GHz:&v53];
        v11 = v53;
        goto LABEL_87;
      case 154:
        v52 = 0;
        v10 = [v7 bluetoothCoexistenceProfiles5GHz:&v52];
        v11 = v52;
        goto LABEL_87;
      case 155:
        v51 = 0;
        v10 = [v7 bluetoothCoexistenceMode:&v51];
        v11 = v51;
        goto LABEL_87;
      case 156:
        v50 = 0;
        v10 = [v7 leakyAPStats:&v50];
        v11 = v50;
        goto LABEL_87;
      case 157:
        v48 = 0;
        v10 = [v7 AWDLExtensionStateMachineParameters:&v48];
        v11 = v48;
        goto LABEL_87;
      case 158:
        v47 = 0;
        v10 = [v7 AWDLElectionMetric:&v47];
        v11 = v47;
        goto LABEL_87;
      case 159:
        v46 = 0;
        v10 = [v7 AWDLPresenceMode:&v46];
        v11 = v46;
        goto LABEL_87;
      case 160:
        v45 = 0;
        v10 = [v7 AWDLGuardTime:&v45];
        v11 = v45;
        goto LABEL_87;
      case 161:
        v44 = 0;
        v10 = [v7 AWDLAvailabilityWindowAPAlignment:&v44];
        v11 = v44;
        goto LABEL_87;
      case 162:
        v43 = 0;
        v10 = [v7 AWDLContinuousElectionAlgorithmEnabled:&v43];
        v11 = v43;
        goto LABEL_87;
      case 163:
        v42 = 0;
        v10 = [v7 AWDLAFTxMode:&v42];
        v11 = v42;
        goto LABEL_87;
      case 164:
        v41 = 0;
        v10 = [v7 AWDLPeerTrafficRegistration:&v41];
        v11 = v41;
        goto LABEL_87;
      case 165:
        v40 = 0;
        v10 = [v7 AWDLEncryptionType:&v40];
        v11 = v40;
        goto LABEL_87;
      case 166:
        v39 = 0;
        v10 = [v7 AWDLBTLEStateParameters:&v39];
        v11 = v39;
        goto LABEL_87;
      case 167:
      case 168:
      case 169:
      case 170:
      case 171:
      case 172:
      case 173:
      case 174:
      case 177:
      case 179:
      case 180:
      case 181:
      case 182:
      case 183:
      case 184:
      case 185:
      case 186:
      case 188:
      case 189:
      case 190:
      case 191:
      case 192:
      case 193:
      case 194:
      case 195:
      case 196:
      case 198:
      case 199:
      case 200:
      case 201:
      case 202:
      case 203:
      case 204:
      case 205:
      case 206:
      case 207:
      case 208:
      case 209:
      case 218:
      case 219:
      case 220:
      case 221:
      case 222:
      case 223:
      case 224:
      case 225:
      case 226:
      case 227:
      case 228:
      case 229:
      case 230:
      case 231:
      case 232:
        goto LABEL_84;
      case 175:
        v49 = 0;
        v10 = [v7 LQMSummary:&v49];
        v11 = v49;
        goto LABEL_87;
      case 176:
        v38 = 0;
        v10 = [v7 powerDebugInfo:&v38];
        v11 = v38;
        goto LABEL_87;
      case 178:
        v37 = 0;
        v10 = [v7 cca:&v37];
        v11 = v37;
        goto LABEL_87;
      case 187:
        v36 = 0;
        v10 = [v7 rxRate:&v36];
        v11 = v36;
        goto LABEL_87;
      case 197:
        v30 = 0;
        v10 = [v7 countryBandSupport:&v30];
        v11 = v30;
        goto LABEL_87;
      case 210:
        v89 = 0;
        v10 = [v7 hardwareSupportedChannels:&v89];
        v11 = v89;
        goto LABEL_87;
      case 211:
        v35 = 0;
        v10 = [v7 maxLinkSpeed:&v35];
        v11 = v35;
        goto LABEL_87;
      case 212:
        v34 = 0;
        v10 = [v7 state:&v34];
        v11 = v34;
        goto LABEL_87;
      case 213:
        v32 = 0;
        v10 = [v7 powersave:&v32];
        v11 = v32;
        goto LABEL_87;
      case 214:
        v33 = 0;
        v10 = [v7 maxNSSForAP:&v33];
        v11 = v33;
        goto LABEL_87;
      case 215:
        v31 = 0;
        v10 = [v7 txNSS:&v31];
        v11 = v31;
        goto LABEL_87;
      case 216:
        v29 = 0;
        v10 = [v7 beaconCache:&v29];
        v11 = v29;
        goto LABEL_87;
      case 217:
        v28 = 0;
        v10 = [v7 blockedBands:&v28];
        v11 = v28;
        goto LABEL_87;
      case 233:
        v27 = 0;
        v10 = [v7 hostAPStationList:&v27];
        v11 = v27;
        goto LABEL_87;
      case 234:
        v26 = 0;
        v10 = [v7 LQMConfig:&v26];
        v11 = v26;
        goto LABEL_87;
      default:
        if (type == 241)
        {
          v25 = 0;
          v10 = [v7 backgroundScanCache:&v25];
          v11 = v25;
        }

        else
        {
          if (type != 273)
          {
LABEL_84:
            v15 = *MEMORY[0x1E696A798];
            v16 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
            v17 = v15;
            v18 = 45;
            goto LABEL_85;
          }

          v24 = 0;
          v10 = [v7 powerTableInfo:&v24];
          v11 = v24;
        }

LABEL_87:
        response = v11;
        break;
    }
  }

  else
  {
    v23 = *MEMORY[0x1E696A798];
    v16 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v17 = v23;
    v18 = 6;
LABEL_85:
    response = CWFErrorWithDescription(v17, v18, v16);

    v10 = 0;
  }

LABEL_88:
  if (!response)
  {
LABEL_91:
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:v10 forKeyedSubscript:@"Result"];
    response = [apple80211Copy response];

    if (response)
    {
      response2 = [apple80211Copy response];
      v22 = [dictionary copy];
      (response2)[2](response2, 0, v22);

      response = 0;
    }

    goto LABEL_93;
  }

  response3 = [apple80211Copy response];

  if (response3)
  {
    dictionary = [apple80211Copy response];
    (dictionary)[2](dictionary, response, 0);
LABEL_93:
  }
}

- (void)__getWiFiUIStateFlags:(id)flags
{
  v41 = *MEMORY[0x1E69E9840];
  flagsCopy = flags;
  requestParameters = [flagsCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  v36 = interfaceName;
  v7 = [(CWFXPCRequestProxy *)self apple80211WithInterfaceName:interfaceName];
  v8 = v7;
  if (v7)
  {
    v38 = 0;
    v9 = [v7 powerOn:&v38];
    v10 = v38;
    if (!v9)
    {
      v11 = CWFGetOSLog();
      if (v11)
      {
        v12 = CWFGetOSLog();
      }

      else
      {
        v12 = MEMORY[0x1E69E9C10];
        v13 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v39 = 138543362;
        v40 = v10;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v12, 16, "[corewifi] powerOn failed (error=%{public}@)", &v39, 12);
      }
    }

    if ([v9 BOOLValue])
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    v37 = v10;
    v15 = [v8 opMode:&v37];
    v16 = v37;

    if (!v15)
    {
      v17 = CWFGetOSLog();
      if (v17)
      {
        v18 = CWFGetOSLog();
      }

      else
      {
        v18 = MEMORY[0x1E69E9C10];
        v19 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v39 = 138543362;
        v40 = v16;
        LODWORD(v35) = 12;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v18, 16, "[corewifi] opMode failed (error=%{public}@)", &v39, v35);
      }
    }

    unsignedIntegerValue = [v15 unsignedIntegerValue];
    __userAutoJoinDisabled = [(CWFXPCRequestProxy *)self __userAutoJoinDisabled];
    bOOLValue = [__userAutoJoinDisabled BOOLValue];

    v23 = [(CWFXPCRequestProxy *)self __currentScanResultWithInterfaceName:v36 forceNoCache:0];

    if ((unsignedIntegerValue & 8) != 0 || v23 == 0)
    {
      v25 = v14 | bOOLValue | (unsignedIntegerValue & 8);
    }

    else
    {
      v25 = v14 | bOOLValue | (unsignedIntegerValue & 8) | 4;
    }

    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v25];
    goto LABEL_26;
  }

  v31 = *MEMORY[0x1E696A798];
  v32 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v9 = CWFErrorWithDescription(v31, 6, v32);

  if (!v9)
  {
    v16 = 0;
    v26 = 0;
    v15 = 0;
LABEL_26:
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:v26 forKeyedSubscript:@"Result"];
    response = [flagsCopy response];

    if (response)
    {
      response2 = [flagsCopy response];
      v30 = [dictionary copy];
      (response2)[2](response2, 0, v30);
    }

    v9 = 0;
    goto LABEL_29;
  }

  response3 = [flagsCopy response];

  if (response3)
  {
    response4 = [flagsCopy response];
    (response4)[2](response4, v9, 0);
  }

LABEL_29:
}

- (id)__networkStackMACAddressWithInterfaceName:(id)name
{
  v14 = *MEMORY[0x1E69E9840];
  size = 0;
  *v11 = xmmword_1E0D81890;
  v12 = 3;
  v13 = if_nametoindex([name UTF8String]);
  sysctl(v11, 6u, 0, &size, 0, 0);
  if (size)
  {
    v3 = malloc_type_malloc(size, 0x9E18E3E5uLL);
    if (!v3)
    {
      goto LABEL_8;
    }

    if (sysctl(v11, 6u, v3, &size, 0, 0) < 0)
    {
      free(v3);
    }

    else
    {
      v4 = &v3[v3[117]];
      v5 = *(v4 + 30);
      *&v9.octet[4] = *(v4 + 62);
      *v9.octet = v5;
      v6 = ether_ntoa(&v9);
      free(v3);
      if (v6)
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithCString:v6 encoding:4];
        v3 = CWFCorrectEthernetAddressString(v7);

        goto LABEL_8;
      }
    }
  }

  v3 = 0;
LABEL_8:

  return v3;
}

- (void)__getMACAddress:(id)address
{
  addressCopy = address;
  requestParameters = [addressCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  if (interfaceName)
  {
    response4 = [(CWFXPCRequestProxy *)self __networkStackMACAddressWithInterfaceName:interfaceName];
LABEL_3:
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:response4 forKeyedSubscript:@"Result"];
    response = [addressCopy response];

    if (response)
    {
      response2 = [addressCopy response];
      v10 = [dictionary copy];
      (response2)[2](response2, 0, v10);
    }

    v11 = 0;
    goto LABEL_6;
  }

  v12 = *MEMORY[0x1E696A798];
  v13 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v11 = CWFErrorWithDescription(v12, 6, v13);

  if (!v11)
  {
    response4 = 0;
    goto LABEL_3;
  }

  response3 = [addressCopy response];

  if (response3)
  {
    response4 = [addressCopy response];
    (response4)[2](response4, v11, 0);
LABEL_6:
  }
}

- (void)__getHardwareMACAddress:(id)address
{
  v32 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  requestParameters = [addressCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  if (interfaceName)
  {
    v7 = [(CWFXPCRequestProxy *)self apple80211WithInterfaceName:interfaceName];
    if (v7)
    {
      v8 = [(CWFXPCRequestProxy *)self SCNetworkInterfaceWithInterfaceName:interfaceName];
      if (v8)
      {
        v9 = v8;
        hardwareAddress = [v8 hardwareAddress];
        if (hardwareAddress)
        {
          goto LABEL_17;
        }

        v11 = CWFGetOSLog();
        if (v11)
        {
          v12 = CWFGetOSLog();
        }

        else
        {
          v12 = MEMORY[0x1E69E9C10];
          v13 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v30 = 138543362;
          v31 = interfaceName;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v12, 16, "[corewifi] Failed to get HW MAC address from SCNetworkInterface, falling back to network stack (intf=%{public}@)", &v30, 12);
        }

        hardwareAddress = [(CWFXPCRequestProxy *)self __networkStackMACAddressWithInterfaceName:interfaceName];
        if (hardwareAddress)
        {
          goto LABEL_17;
        }

        v14 = CWFGetOSLog();
        if (v14)
        {
          v15 = CWFGetOSLog();
        }

        else
        {
          v15 = MEMORY[0x1E69E9C10];
          v16 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v30 = 138543362;
          v31 = interfaceName;
          LODWORD(v29) = 12;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v15, 16, "[corewifi] Failed to get HW MAC address from the network stack, falling back to WiFi stack (intf=%{public}@)", &v30, v29);
        }

        hardwareAddress = [v7 hardwareMACAddress:0];
        if (hardwareAddress)
        {
LABEL_17:
          v17 = hardwareAddress;
LABEL_18:
          dictionary = [MEMORY[0x1E695DF90] dictionary];
          [dictionary setObject:v17 forKeyedSubscript:@"Result"];
          response = [addressCopy response];

          if (response)
          {
            response2 = [addressCopy response];
            v21 = [dictionary copy];
            (response2)[2](response2, 0, v21);
          }

          v9 = 0;
          goto LABEL_21;
        }

        v22 = CWFGetOSLog();
        if (v22)
        {
          v23 = CWFGetOSLog();
        }

        else
        {
          v23 = MEMORY[0x1E69E9C10];
          v24 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v30 = 138543362;
          v31 = interfaceName;
          LODWORD(v29) = 12;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v23, 16, "[corewifi] Failed to get HW MAC address from the WiFi stack (intf=%{public}@)", &v30, v29);
        }

LABEL_28:
        v17 = 0;
        goto LABEL_18;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v25 = *MEMORY[0x1E696A798];
  v26 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v9 = CWFErrorWithDescription(v25, 6, v26);

  if (!v9)
  {
    goto LABEL_28;
  }

  response3 = [addressCopy response];

  if (response3)
  {
    response4 = [addressCopy response];
    (response4)[2](response4, v9, 0);
  }

LABEL_21:
}

- (void)__getEventIDs:(id)ds XPCConnection:(id)connection
{
  dsCopy = ds;
  v5 = MEMORY[0x1E695DF90];
  connectionCopy = connection;
  dictionary = [v5 dictionary];
  registeredEventIDs = [connectionCopy registeredEventIDs];

  [dictionary setObject:registeredEventIDs forKeyedSubscript:@"Result"];
  response = [dsCopy response];

  if (response)
  {
    response2 = [dsCopy response];
    (response2)[2](response2, 0, dictionary);
  }
}

- (void)__getActivities:(id)activities XPCConnection:(id)connection
{
  activitiesCopy = activities;
  v5 = MEMORY[0x1E695DF90];
  connectionCopy = connection;
  dictionary = [v5 dictionary];
  registeredActivities = [connectionCopy registeredActivities];

  [dictionary setObject:registeredActivities forKeyedSubscript:@"Result"];
  response = [activitiesCopy response];

  if (response)
  {
    response2 = [activitiesCopy response];
    (response2)[2](response2, 0, dictionary);
  }
}

- (void)__getIO80211ControllerInfo:(id)info
{
  infoCopy = info;
  requestParameters = [infoCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  if (interfaceName)
  {
    iO80211ControllerInfo = [(CWFIO80211 *)self->_IO80211 IO80211ControllerInfo];
    if (iO80211ControllerInfo)
    {
LABEL_3:
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [dictionary setObject:iO80211ControllerInfo forKeyedSubscript:@"Result"];
      response = [infoCopy response];

      if (response)
      {
        response2 = [infoCopy response];
        v10 = [dictionary copy];
        (response2)[2](response2, 0, v10);
      }

      v11 = 0;
      goto LABEL_6;
    }

    v12 = 19;
  }

  else
  {
    v12 = 6;
  }

  v13 = *MEMORY[0x1E696A798];
  v14 = CWFErrorDescription(*MEMORY[0x1E696A798], v12);
  v11 = CWFErrorWithDescription(v13, v12, v14);

  if (!v11)
  {
    iO80211ControllerInfo = 0;
    goto LABEL_3;
  }

  response3 = [infoCopy response];

  if (response3)
  {
    iO80211ControllerInfo = [infoCopy response];
    (iO80211ControllerInfo)[2](iO80211ControllerInfo, v11, 0);
LABEL_6:
  }
}

- (void)__getIO80211InterfaceInfo:(id)info
{
  infoCopy = info;
  requestParameters = [infoCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  if (interfaceName)
  {
    IO80211 = self->_IO80211;
    v17 = 0;
    v8 = [(CWFIO80211 *)IO80211 IO80211InterfaceInfo:interfaceName error:&v17];
    v9 = v17;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_6:
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:v8 forKeyedSubscript:@"Result"];
    response = [infoCopy response];

    if (response)
    {
      response2 = [infoCopy response];
      v16 = [dictionary copy];
      (response2)[2](response2, 0, v16);
    }

    goto LABEL_8;
  }

  v12 = *MEMORY[0x1E696A798];
  v13 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v9 = CWFErrorWithDescription(v12, 6, v13);

  v8 = 0;
  if (!v9)
  {
    goto LABEL_6;
  }

LABEL_3:
  response3 = [infoCopy response];

  if (response3)
  {
    dictionary = [infoCopy response];
    (dictionary)[2](dictionary, v9, 0);
LABEL_8:
  }
}

- (void)__getIPv4Addresses:(id)addresses
{
  addressesCopy = addresses;
  requestParameters = [addressesCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  v6 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:interfaceName];
  iPv4Addresses = [v6 IPv4Addresses];
  if (iPv4Addresses)
  {
    goto LABEL_10;
  }

  v8 = [(CWFXPCRequestProxy *)self SCNetworkInterfaceWithInterfaceName:interfaceName];
  iPv4Addresses2 = [v8 IPv4Addresses];
  iPv4Addresses = iPv4Addresses2;
  if (v8 || v6 || iPv4Addresses2)
  {

LABEL_10:
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:iPv4Addresses forKeyedSubscript:@"Result"];
    response = [addressesCopy response];

    if (response)
    {
      response2 = [addressesCopy response];
      v17 = [dictionary copy];
      (response2)[2](response2, 0, v17);
    }

    v12 = 0;
    goto LABEL_13;
  }

  v10 = *MEMORY[0x1E696A798];
  v11 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v12 = CWFErrorWithDescription(v10, 6, v11);

  if (!v12)
  {
    iPv4Addresses = 0;
    goto LABEL_10;
  }

  response3 = [addressesCopy response];

  if (!response3)
  {
    goto LABEL_14;
  }

  iPv4Addresses = [addressesCopy response];
  (iPv4Addresses)[2](iPv4Addresses, v12, 0);
LABEL_13:

LABEL_14:
}

- (void)__getIPv4SubnetMasks:(id)masks
{
  masksCopy = masks;
  requestParameters = [masksCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  v6 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:interfaceName];
  iPv4SubnetMasks = [v6 IPv4SubnetMasks];
  if (iPv4SubnetMasks)
  {
    goto LABEL_10;
  }

  v8 = [(CWFXPCRequestProxy *)self SCNetworkInterfaceWithInterfaceName:interfaceName];
  iPv4SubnetMasks2 = [v8 IPv4SubnetMasks];
  iPv4SubnetMasks = iPv4SubnetMasks2;
  if (v8 || v6 || iPv4SubnetMasks2)
  {

LABEL_10:
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:iPv4SubnetMasks forKeyedSubscript:@"Result"];
    response = [masksCopy response];

    if (response)
    {
      response2 = [masksCopy response];
      v17 = [dictionary copy];
      (response2)[2](response2, 0, v17);
    }

    v12 = 0;
    goto LABEL_13;
  }

  v10 = *MEMORY[0x1E696A798];
  v11 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v12 = CWFErrorWithDescription(v10, 6, v11);

  if (!v12)
  {
    iPv4SubnetMasks = 0;
    goto LABEL_10;
  }

  response3 = [masksCopy response];

  if (!response3)
  {
    goto LABEL_14;
  }

  iPv4SubnetMasks = [masksCopy response];
  (iPv4SubnetMasks)[2](iPv4SubnetMasks, v12, 0);
LABEL_13:

LABEL_14:
}

- (void)__getGlobalIPv4Addresses:(id)addresses
{
  addressesCopy = addresses;
  iPv4Addresses = [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration IPv4Addresses];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:iPv4Addresses forKeyedSubscript:@"Result"];
  response = [addressesCopy response];

  if (response)
  {
    response2 = [addressesCopy response];
    v8 = [dictionary copy];
    (response2)[2](response2, 0, v8);
  }
}

- (void)__getIPv6Addresses:(id)addresses
{
  addressesCopy = addresses;
  requestParameters = [addressesCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  v6 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:interfaceName];
  iPv6Addresses = [v6 IPv6Addresses];
  if (iPv6Addresses)
  {
    goto LABEL_10;
  }

  v8 = [(CWFXPCRequestProxy *)self SCNetworkInterfaceWithInterfaceName:interfaceName];
  iPv6Addresses2 = [v8 IPv6Addresses];
  iPv6Addresses = iPv6Addresses2;
  if (v8 || v6 || iPv6Addresses2)
  {

LABEL_10:
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:iPv6Addresses forKeyedSubscript:@"Result"];
    response = [addressesCopy response];

    if (response)
    {
      response2 = [addressesCopy response];
      v17 = [dictionary copy];
      (response2)[2](response2, 0, v17);
    }

    v12 = 0;
    goto LABEL_13;
  }

  v10 = *MEMORY[0x1E696A798];
  v11 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v12 = CWFErrorWithDescription(v10, 6, v11);

  if (!v12)
  {
    iPv6Addresses = 0;
    goto LABEL_10;
  }

  response3 = [addressesCopy response];

  if (!response3)
  {
    goto LABEL_14;
  }

  iPv6Addresses = [addressesCopy response];
  (iPv6Addresses)[2](iPv6Addresses, v12, 0);
LABEL_13:

LABEL_14:
}

- (void)__getGlobalIPv6Addresses:(id)addresses
{
  addressesCopy = addresses;
  iPv6Addresses = [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration IPv6Addresses];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:iPv6Addresses forKeyedSubscript:@"Result"];
  response = [addressesCopy response];

  if (response)
  {
    response2 = [addressesCopy response];
    v8 = [dictionary copy];
    (response2)[2](response2, 0, v8);
  }
}

- (void)__getIPv4ARPResolvedHardwareAddress:(id)address
{
  addressCopy = address;
  requestParameters = [addressCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  v6 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:interfaceName];
  iPv4ARPResolvedHardwareAddress = [v6 IPv4ARPResolvedHardwareAddress];
  if (v6 | iPv4ARPResolvedHardwareAddress || (v8 = *MEMORY[0x1E696A798], CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL), v9 = objc_claimAutoreleasedReturnValue(), CWFErrorWithDescription(v8, 6, v9), response = objc_claimAutoreleasedReturnValue(), v9, !response))
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:iPv4ARPResolvedHardwareAddress forKeyedSubscript:@"Result"];
    response = [addressCopy response];

    if (response)
    {
      response2 = [addressCopy response];
      v14 = [dictionary copy];
      (response2)[2](response2, 0, v14);

      response = 0;
    }
  }

  else
  {
    response3 = [addressCopy response];

    if (!response3)
    {
      goto LABEL_8;
    }

    dictionary = [addressCopy response];
    (dictionary)[2](dictionary, response, 0);
  }

LABEL_8:
}

- (void)__getIPv4ARPResolvedIPAddress:(id)address
{
  addressCopy = address;
  requestParameters = [addressCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  v6 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:interfaceName];
  iPv4ARPResolvedIPAddress = [v6 IPv4ARPResolvedIPAddress];
  if (v6 | iPv4ARPResolvedIPAddress || (v8 = *MEMORY[0x1E696A798], CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL), v9 = objc_claimAutoreleasedReturnValue(), CWFErrorWithDescription(v8, 6, v9), response = objc_claimAutoreleasedReturnValue(), v9, !response))
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:iPv4ARPResolvedIPAddress forKeyedSubscript:@"Result"];
    response = [addressCopy response];

    if (response)
    {
      response2 = [addressCopy response];
      v14 = [dictionary copy];
      (response2)[2](response2, 0, v14);

      response = 0;
    }
  }

  else
  {
    response3 = [addressCopy response];

    if (!response3)
    {
      goto LABEL_8;
    }

    dictionary = [addressCopy response];
    (dictionary)[2](dictionary, response, 0);
  }

LABEL_8:
}

- (void)__getIPv4Router:(id)router
{
  routerCopy = router;
  requestParameters = [routerCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  v6 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:interfaceName];
  iPv4Router = [v6 IPv4Router];
  if (v6 | iPv4Router || (v8 = *MEMORY[0x1E696A798], CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL), v9 = objc_claimAutoreleasedReturnValue(), CWFErrorWithDescription(v8, 6, v9), response = objc_claimAutoreleasedReturnValue(), v9, !response))
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:iPv4Router forKeyedSubscript:@"Result"];
    response = [routerCopy response];

    if (response)
    {
      response2 = [routerCopy response];
      v14 = [dictionary copy];
      (response2)[2](response2, 0, v14);

      response = 0;
    }
  }

  else
  {
    response3 = [routerCopy response];

    if (!response3)
    {
      goto LABEL_8;
    }

    dictionary = [routerCopy response];
    (dictionary)[2](dictionary, response, 0);
  }

LABEL_8:
}

- (void)__getGlobalIPv4Router:(id)router
{
  routerCopy = router;
  iPv4Router = [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration IPv4Router];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:iPv4Router forKeyedSubscript:@"Result"];
  response = [routerCopy response];

  if (response)
  {
    response2 = [routerCopy response];
    v8 = [dictionary copy];
    (response2)[2](response2, 0, v8);
  }
}

- (void)__getIPv6Router:(id)router
{
  routerCopy = router;
  requestParameters = [routerCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  v6 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:interfaceName];
  iPv6Router = [v6 IPv6Router];
  if (v6 | iPv6Router || (v8 = *MEMORY[0x1E696A798], CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL), v9 = objc_claimAutoreleasedReturnValue(), CWFErrorWithDescription(v8, 6, v9), response = objc_claimAutoreleasedReturnValue(), v9, !response))
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:iPv6Router forKeyedSubscript:@"Result"];
    response = [routerCopy response];

    if (response)
    {
      response2 = [routerCopy response];
      v14 = [dictionary copy];
      (response2)[2](response2, 0, v14);

      response = 0;
    }
  }

  else
  {
    response3 = [routerCopy response];

    if (!response3)
    {
      goto LABEL_8;
    }

    dictionary = [routerCopy response];
    (dictionary)[2](dictionary, response, 0);
  }

LABEL_8:
}

- (void)__getGlobalIPv6Router:(id)router
{
  routerCopy = router;
  iPv6Router = [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration IPv6Router];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:iPv6Router forKeyedSubscript:@"Result"];
  response = [routerCopy response];

  if (response)
  {
    response2 = [routerCopy response];
    v8 = [dictionary copy];
    (response2)[2](response2, 0, v8);
  }
}

- (void)__getGlobalIPv4InterfaceName:(id)name
{
  nameCopy = name;
  iPv4InterfaceName = [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration IPv4InterfaceName];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:iPv4InterfaceName forKeyedSubscript:@"Result"];
  response = [nameCopy response];

  if (response)
  {
    response2 = [nameCopy response];
    v8 = [dictionary copy];
    (response2)[2](response2, 0, v8);
  }
}

- (void)__getGlobalIPv6InterfaceName:(id)name
{
  nameCopy = name;
  iPv6InterfaceName = [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration IPv6InterfaceName];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:iPv6InterfaceName forKeyedSubscript:@"Result"];
  response = [nameCopy response];

  if (response)
  {
    response2 = [nameCopy response];
    v8 = [dictionary copy];
    (response2)[2](response2, 0, v8);
  }
}

- (void)__getNetServiceID:(id)d
{
  dCopy = d;
  requestParameters = [dCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  if (interfaceName)
  {
    v6 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:interfaceName];
    if (v6)
    {
      v7 = v6;
      serviceID = [v6 serviceID];
LABEL_4:
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [dictionary setObject:serviceID forKeyedSubscript:@"Result"];
      response = [dCopy response];

      if (response)
      {
        response2 = [dCopy response];
        v12 = [dictionary copy];
        (response2)[2](response2, 0, v12);
      }

      v7 = 0;
      goto LABEL_7;
    }
  }

  v13 = *MEMORY[0x1E696A798];
  v14 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v7 = CWFErrorWithDescription(v13, 6, v14);

  if (!v7)
  {
    serviceID = 0;
    goto LABEL_4;
  }

  response3 = [dCopy response];

  if (response3)
  {
    serviceID = [dCopy response];
    (serviceID)[2](serviceID, v7, 0);
LABEL_7:
  }
}

- (void)__getNetServiceName:(id)name
{
  nameCopy = name;
  requestParameters = [nameCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  if (interfaceName)
  {
    v6 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:interfaceName];
    if (v6)
    {
      v7 = v6;
      serviceName = [v6 serviceName];
LABEL_4:
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [dictionary setObject:serviceName forKeyedSubscript:@"Result"];
      response = [nameCopy response];

      if (response)
      {
        response2 = [nameCopy response];
        v12 = [dictionary copy];
        (response2)[2](response2, 0, v12);
      }

      v7 = 0;
      goto LABEL_7;
    }
  }

  v13 = *MEMORY[0x1E696A798];
  v14 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v7 = CWFErrorWithDescription(v13, 6, v14);

  if (!v7)
  {
    serviceName = 0;
    goto LABEL_4;
  }

  response3 = [nameCopy response];

  if (response3)
  {
    serviceName = [nameCopy response];
    (serviceName)[2](serviceName, v7, 0);
LABEL_7:
  }
}

- (void)__getNetServiceEnabled:(id)enabled
{
  enabledCopy = enabled;
  requestParameters = [enabledCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  if (interfaceName)
  {
    v6 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:interfaceName];
    if (v6)
    {
      v7 = v6;
      serviceID = [v6 serviceID];
      response = serviceID != 0;

      goto LABEL_4;
    }
  }

  v14 = *MEMORY[0x1E696A798];
  v15 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  response = CWFErrorWithDescription(v14, 6, v15);

  if (!response)
  {
LABEL_4:
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v11 = [MEMORY[0x1E696AD98] numberWithBool:response];
    [dictionary setObject:v11 forKeyedSubscript:@"Result"];

    response = [enabledCopy response];

    if (response)
    {
      response2 = [enabledCopy response];
      v13 = [dictionary copy];
      (response2)[2](response2, 0, v13);

      response = 0;
    }

    goto LABEL_6;
  }

  response3 = [enabledCopy response];

  if (response3)
  {
    dictionary = [enabledCopy response];
    dictionary[2](dictionary, response, 0);
LABEL_6:
  }
}

- (void)__getGlobalIPv4NetServiceID:(id)d
{
  dCopy = d;
  iPv4ServiceID = [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration IPv4ServiceID];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:iPv4ServiceID forKeyedSubscript:@"Result"];
  response = [dCopy response];

  if (response)
  {
    response2 = [dCopy response];
    v8 = [dictionary copy];
    (response2)[2](response2, 0, v8);
  }
}

- (void)__getGlobalIPv6NetServiceID:(id)d
{
  dCopy = d;
  iPv6ServiceID = [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration IPv6ServiceID];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:iPv6ServiceID forKeyedSubscript:@"Result"];
  response = [dCopy response];

  if (response)
  {
    response2 = [dCopy response];
    v8 = [dictionary copy];
    (response2)[2](response2, 0, v8);
  }
}

- (void)__getGlobalIPv4NetServiceName:(id)name
{
  nameCopy = name;
  iPv4ServiceName = [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration IPv4ServiceName];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:iPv4ServiceName forKeyedSubscript:@"Result"];
  response = [nameCopy response];

  if (response)
  {
    response2 = [nameCopy response];
    v8 = [dictionary copy];
    (response2)[2](response2, 0, v8);
  }
}

- (void)__getGlobalIPv6NetServiceName:(id)name
{
  nameCopy = name;
  iPv6ServiceName = [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration IPv6ServiceName];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:iPv6ServiceName forKeyedSubscript:@"Result"];
  response = [nameCopy response];

  if (response)
  {
    response2 = [nameCopy response];
    v8 = [dictionary copy];
    (response2)[2](response2, 0, v8);
  }
}

- (void)__getGlobalDNSServerAddresses:(id)addresses
{
  addressesCopy = addresses;
  dNSServerAddresses = [(CWFSCNetworkConfiguration *)self->_SCNetworkConfiguration DNSServerAddresses];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:dNSServerAddresses forKeyedSubscript:@"Result"];
  response = [addressesCopy response];

  if (response)
  {
    response2 = [addressesCopy response];
    v8 = [dictionary copy];
    (response2)[2](response2, 0, v8);
  }
}

- (void)__getDNSServerAddresses:(id)addresses
{
  addressesCopy = addresses;
  requestParameters = [addressesCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  v6 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:interfaceName];
  dNSServerAddresses = [v6 DNSServerAddresses];
  if (v6 | dNSServerAddresses || (v8 = *MEMORY[0x1E696A798], CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL), v9 = objc_claimAutoreleasedReturnValue(), CWFErrorWithDescription(v8, 6, v9), response = objc_claimAutoreleasedReturnValue(), v9, !response))
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:dNSServerAddresses forKeyedSubscript:@"Result"];
    response = [addressesCopy response];

    if (response)
    {
      response2 = [addressesCopy response];
      v14 = [dictionary copy];
      (response2)[2](response2, 0, v14);

      response = 0;
    }
  }

  else
  {
    response3 = [addressesCopy response];

    if (!response3)
    {
      goto LABEL_8;
    }

    dictionary = [addressesCopy response];
    (dictionary)[2](dictionary, response, 0);
  }

LABEL_8:
}

- (void)__getNetworkReachability:(id)reachability
{
  reachabilityCopy = reachability;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CWFSCNetworkReachability flags](self->_SCNetworkReachability, "flags")}];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:v4 forKeyedSubscript:@"Result"];
  response = [reachabilityCopy response];

  if (response)
  {
    response2 = [reachabilityCopy response];
    v8 = [dictionary copy];
    (response2)[2](response2, 0, v8);
  }
}

- (void)__getDHCPLeaseStartTime:(id)time
{
  timeCopy = time;
  requestParameters = [timeCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  if (interfaceName)
  {
    v6 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:interfaceName];
    if (v6)
    {
      v7 = v6;
      dHCPLeaseStartTimestamp = [v6 DHCPLeaseStartTimestamp];
LABEL_4:
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [dictionary setObject:dHCPLeaseStartTimestamp forKeyedSubscript:@"Result"];
      response = [timeCopy response];

      if (response)
      {
        response2 = [timeCopy response];
        v12 = [dictionary copy];
        (response2)[2](response2, 0, v12);
      }

      v7 = 0;
      goto LABEL_7;
    }
  }

  v13 = *MEMORY[0x1E696A798];
  v14 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v7 = CWFErrorWithDescription(v13, 6, v14);

  if (!v7)
  {
    dHCPLeaseStartTimestamp = 0;
    goto LABEL_4;
  }

  response3 = [timeCopy response];

  if (response3)
  {
    dHCPLeaseStartTimestamp = [timeCopy response];
    (dHCPLeaseStartTimestamp)[2](dHCPLeaseStartTimestamp, v7, 0);
LABEL_7:
  }
}

- (void)__getDHCPLeaseExpirationTime:(id)time
{
  timeCopy = time;
  requestParameters = [timeCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  if (interfaceName)
  {
    v6 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:interfaceName];
    if (v6)
    {
      v7 = v6;
      dHCPLeaseExpirationTimestamp = [v6 DHCPLeaseExpirationTimestamp];
LABEL_4:
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [dictionary setObject:dHCPLeaseExpirationTimestamp forKeyedSubscript:@"Result"];
      response = [timeCopy response];

      if (response)
      {
        response2 = [timeCopy response];
        v12 = [dictionary copy];
        (response2)[2](response2, 0, v12);
      }

      v7 = 0;
      goto LABEL_7;
    }
  }

  v13 = *MEMORY[0x1E696A798];
  v14 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v7 = CWFErrorWithDescription(v13, 6, v14);

  if (!v7)
  {
    dHCPLeaseExpirationTimestamp = 0;
    goto LABEL_4;
  }

  response3 = [timeCopy response];

  if (response3)
  {
    dHCPLeaseExpirationTimestamp = [timeCopy response];
    (dHCPLeaseExpirationTimestamp)[2](dHCPLeaseExpirationTimestamp, v7, 0);
LABEL_7:
  }
}

- (void)__getDHCPServerID:(id)d
{
  dCopy = d;
  requestParameters = [dCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  v6 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:interfaceName];
  dHCPServerID = [v6 DHCPServerID];
  if (v6 | dHCPServerID || (v8 = *MEMORY[0x1E696A798], CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL), v9 = objc_claimAutoreleasedReturnValue(), CWFErrorWithDescription(v8, 6, v9), response = objc_claimAutoreleasedReturnValue(), v9, !response))
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:dHCPServerID forKeyedSubscript:@"Result"];
    response = [dCopy response];

    if (response)
    {
      response2 = [dCopy response];
      v14 = [dictionary copy];
      (response2)[2](response2, 0, v14);

      response = 0;
    }
  }

  else
  {
    response3 = [dCopy response];

    if (!response3)
    {
      goto LABEL_8;
    }

    dictionary = [dCopy response];
    (dictionary)[2](dictionary, response, 0);
  }

LABEL_8:
}

- (void)__getDHCPv6ServerID:(id)d
{
  dCopy = d;
  requestParameters = [dCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  v6 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:interfaceName];
  dHCPv6ServerID = [v6 DHCPv6ServerID];
  if (v6 | dHCPv6ServerID || (v8 = *MEMORY[0x1E696A798], CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL), v9 = objc_claimAutoreleasedReturnValue(), CWFErrorWithDescription(v8, 6, v9), response = objc_claimAutoreleasedReturnValue(), v9, !response))
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:dHCPv6ServerID forKeyedSubscript:@"Result"];
    response = [dCopy response];

    if (response)
    {
      response2 = [dCopy response];
      v14 = [dictionary copy];
      (response2)[2](response2, 0, v14);

      response = 0;
    }
  }

  else
  {
    response3 = [dCopy response];

    if (!response3)
    {
      goto LABEL_8;
    }

    dictionary = [dCopy response];
    (dictionary)[2](dictionary, response, 0);
  }

LABEL_8:
}

- (void)__getIPv4NetworkSignature:(id)signature
{
  signatureCopy = signature;
  requestParameters = [signatureCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  v6 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:interfaceName];
  iPv4NetworkSignature = [v6 IPv4NetworkSignature];
  if (v6 | iPv4NetworkSignature || (v8 = *MEMORY[0x1E696A798], CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL), v9 = objc_claimAutoreleasedReturnValue(), CWFErrorWithDescription(v8, 6, v9), response = objc_claimAutoreleasedReturnValue(), v9, !response))
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:iPv4NetworkSignature forKeyedSubscript:@"Result"];
    response = [signatureCopy response];

    if (response)
    {
      response2 = [signatureCopy response];
      v14 = [dictionary copy];
      (response2)[2](response2, 0, v14);

      response = 0;
    }
  }

  else
  {
    response3 = [signatureCopy response];

    if (!response3)
    {
      goto LABEL_8;
    }

    dictionary = [signatureCopy response];
    (dictionary)[2](dictionary, response, 0);
  }

LABEL_8:
}

- (void)__getIPv6NetworkSignature:(id)signature
{
  signatureCopy = signature;
  requestParameters = [signatureCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  v6 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:interfaceName];
  iPv6NetworkSignature = [v6 IPv6NetworkSignature];
  if (v6 | iPv6NetworkSignature || (v8 = *MEMORY[0x1E696A798], CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL), v9 = objc_claimAutoreleasedReturnValue(), CWFErrorWithDescription(v8, 6, v9), response = objc_claimAutoreleasedReturnValue(), v9, !response))
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:iPv6NetworkSignature forKeyedSubscript:@"Result"];
    response = [signatureCopy response];

    if (response)
    {
      response2 = [signatureCopy response];
      v14 = [dictionary copy];
      (response2)[2](response2, 0, v14);

      response = 0;
    }
  }

  else
  {
    response3 = [signatureCopy response];

    if (!response3)
    {
      goto LABEL_8;
    }

    dictionary = [signatureCopy response];
    (dictionary)[2](dictionary, response, 0);
  }

LABEL_8:
}

- (void)__getEAP8021XSupplicantState:(id)state
{
  stateCopy = state;
  requestParameters = [stateCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  if (interfaceName)
  {
    v7 = [(CWFXPCRequestProxy *)self EAP8021XWithInterfaceName:interfaceName];
    if (v7)
    {
      v8 = v7;
      v18 = 0;
      v9 = [v7 supplicantState:&v18];
      v10 = v18;
      if (v10)
      {
        goto LABEL_4;
      }

LABEL_7:
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [dictionary setObject:v9 forKeyedSubscript:@"Result"];
      response = [stateCopy response];

      if (response)
      {
        response2 = [stateCopy response];
        v17 = [dictionary copy];
        (response2)[2](response2, 0, v17);
      }

      goto LABEL_9;
    }
  }

  v13 = *MEMORY[0x1E696A798];
  v14 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v10 = CWFErrorWithDescription(v13, 6, v14);

  v8 = 0;
  v9 = 0;
  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_4:
  response3 = [stateCopy response];

  if (response3)
  {
    dictionary = [stateCopy response];
    (dictionary)[2](dictionary, v10, 0);
LABEL_9:
  }
}

- (void)__getEAP8021XControlMode:(id)mode
{
  modeCopy = mode;
  requestParameters = [modeCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  if (interfaceName)
  {
    v7 = [(CWFXPCRequestProxy *)self EAP8021XWithInterfaceName:interfaceName];
    if (v7)
    {
      v8 = v7;
      v18 = 0;
      v9 = [v7 controlMode:&v18];
      v10 = v18;
      if (v10)
      {
        goto LABEL_4;
      }

LABEL_7:
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [dictionary setObject:v9 forKeyedSubscript:@"Result"];
      response = [modeCopy response];

      if (response)
      {
        response2 = [modeCopy response];
        v17 = [dictionary copy];
        (response2)[2](response2, 0, v17);
      }

      goto LABEL_9;
    }
  }

  v13 = *MEMORY[0x1E696A798];
  v14 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v10 = CWFErrorWithDescription(v13, 6, v14);

  v8 = 0;
  v9 = 0;
  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_4:
  response3 = [modeCopy response];

  if (response3)
  {
    dictionary = [modeCopy response];
    (dictionary)[2](dictionary, v10, 0);
LABEL_9:
  }
}

- (void)__getEAP8021XControlState:(id)state
{
  stateCopy = state;
  requestParameters = [stateCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  if (interfaceName)
  {
    v7 = [(CWFXPCRequestProxy *)self EAP8021XWithInterfaceName:interfaceName];
    if (v7)
    {
      v8 = v7;
      v18 = 0;
      v9 = [v7 controlState:&v18];
      v10 = v18;
      if (v10)
      {
        goto LABEL_4;
      }

LABEL_7:
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [dictionary setObject:v9 forKeyedSubscript:@"Result"];
      response = [stateCopy response];

      if (response)
      {
        response2 = [stateCopy response];
        v17 = [dictionary copy];
        (response2)[2](response2, 0, v17);
      }

      goto LABEL_9;
    }
  }

  v13 = *MEMORY[0x1E696A798];
  v14 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v10 = CWFErrorWithDescription(v13, 6, v14);

  v8 = 0;
  v9 = 0;
  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_4:
  response3 = [stateCopy response];

  if (response3)
  {
    dictionary = [stateCopy response];
    (dictionary)[2](dictionary, v10, 0);
LABEL_9:
  }
}

- (void)__getEAP8021XClientStatus:(id)status
{
  statusCopy = status;
  requestParameters = [statusCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  if (interfaceName)
  {
    v7 = [(CWFXPCRequestProxy *)self EAP8021XWithInterfaceName:interfaceName];
    if (v7)
    {
      v8 = v7;
      v18 = 0;
      v9 = [v7 clientStatus:&v18];
      v10 = v18;
      if (v10)
      {
        goto LABEL_4;
      }

LABEL_7:
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [dictionary setObject:v9 forKeyedSubscript:@"Result"];
      response = [statusCopy response];

      if (response)
      {
        response2 = [statusCopy response];
        v17 = [dictionary copy];
        (response2)[2](response2, 0, v17);
      }

      goto LABEL_9;
    }
  }

  v13 = *MEMORY[0x1E696A798];
  v14 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v10 = CWFErrorWithDescription(v13, 6, v14);

  v8 = 0;
  v9 = 0;
  if (!v10)
  {
    goto LABEL_7;
  }

LABEL_4:
  response3 = [statusCopy response];

  if (response3)
  {
    dictionary = [statusCopy response];
    (dictionary)[2](dictionary, v10, 0);
LABEL_9:
  }
}

- (void)__getRoamStatus:(id)status
{
  statusCopy = status;
  requestParameters = [statusCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  if (interfaceName)
  {
    response4 = [(CWFXPCRequestProxy *)self __roamStatusWithInterfaceName:interfaceName];
LABEL_3:
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:response4 forKeyedSubscript:@"Result"];
    response = [statusCopy response];

    if (response)
    {
      response2 = [statusCopy response];
      v10 = [dictionary copy];
      (response2)[2](response2, 0, v10);
    }

    v11 = 0;
    goto LABEL_6;
  }

  v12 = *MEMORY[0x1E696A798];
  v13 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v11 = CWFErrorWithDescription(v12, 6, v13);

  if (!v11)
  {
    response4 = 0;
    goto LABEL_3;
  }

  response3 = [statusCopy response];

  if (response3)
  {
    response4 = [statusCopy response];
    (response4)[2](response4, v11, 0);
LABEL_6:
  }
}

- (void)__getJoinStatus:(id)status
{
  statusCopy = status;
  requestParameters = [statusCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  if (interfaceName)
  {
    response4 = [(CWFXPCRequestProxy *)self __joinStatusWithInterfaceName:interfaceName];
LABEL_3:
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:response4 forKeyedSubscript:@"Result"];
    response = [statusCopy response];

    if (response)
    {
      response2 = [statusCopy response];
      v10 = [dictionary copy];
      (response2)[2](response2, 0, v10);
    }

    v11 = 0;
    goto LABEL_6;
  }

  v12 = *MEMORY[0x1E696A798];
  v13 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v11 = CWFErrorWithDescription(v12, 6, v13);

  if (!v11)
  {
    response4 = 0;
    goto LABEL_3;
  }

  response3 = [statusCopy response];

  if (response3)
  {
    response4 = [statusCopy response];
    (response4)[2](response4, v11, 0);
LABEL_6:
  }
}

- (void)__getAutoJoinStatus:(id)status
{
  statusCopy = status;
  requestParameters = [statusCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  if (interfaceName)
  {
    response4 = [(CWFXPCRequestProxy *)self __autojoinStatusWithInterfaceName:interfaceName];
LABEL_3:
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:response4 forKeyedSubscript:@"Result"];
    response = [statusCopy response];

    if (response)
    {
      response2 = [statusCopy response];
      v10 = [dictionary copy];
      (response2)[2](response2, 0, v10);
    }

    v11 = 0;
    goto LABEL_6;
  }

  v12 = *MEMORY[0x1E696A798];
  v13 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v11 = CWFErrorWithDescription(v12, 6, v13);

  if (!v11)
  {
    response4 = 0;
    goto LABEL_3;
  }

  response3 = [statusCopy response];

  if (response3)
  {
    response4 = [statusCopy response];
    (response4)[2](response4, v11, 0);
LABEL_6:
  }
}

- (void)__getLinkDownStatus:(id)status
{
  statusCopy = status;
  requestParameters = [statusCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  if (interfaceName)
  {
    response4 = [(CWFXPCRequestProxy *)self __linkDownStatusWithInterfaceName:interfaceName];
LABEL_3:
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:response4 forKeyedSubscript:@"Result"];
    response = [statusCopy response];

    if (response)
    {
      response2 = [statusCopy response];
      v10 = [dictionary copy];
      (response2)[2](response2, 0, v10);
    }

    v11 = 0;
    goto LABEL_6;
  }

  v12 = *MEMORY[0x1E696A798];
  v13 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v11 = CWFErrorWithDescription(v12, 6, v13);

  if (!v11)
  {
    response4 = 0;
    goto LABEL_3;
  }

  response3 = [statusCopy response];

  if (response3)
  {
    response4 = [statusCopy response];
    (response4)[2](response4, v11, 0);
LABEL_6:
  }
}

- (void)__getSSID:(id)d XPCConnection:(id)connection
{
  dCopy = d;
  connectionCopy = connection;
  requestParameters = [dCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  v38 = connectionCopy;
  if (interfaceName && ([(CWFXPCRequestProxy *)self apple80211WithInterfaceName:interfaceName], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    v39 = 0;
    v12 = [v10 SSID:&v39];
    v13 = v39;
    if (v12)
    {
      if ([connectionCopy serviceType] != 4)
      {
        v14 = 0;
        bundleID = 0;
LABEL_10:
        v12 = v12;
        v23 = v12;
        goto LABEL_11;
      }

      v14 = [(CWFXPCRequestProxy *)self __currentNetworkProfileWithInterfaceName:interfaceName];
      sSID = [v14 SSID];
      v16 = [sSID isEqualToData:v12];

      if (v16)
      {
        bundleID = [connectionCopy bundleID];
        if (!bundleID || ([v14 bundleID], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", bundleID), v18, (v19 & 1) == 0))
        {
          v20 = *MEMORY[0x1E696A798];
          v21 = CWFErrorDescription(*MEMORY[0x1E696A798], 1uLL);
          v22 = CWFErrorWithDescription(v20, 1, v21);

          v23 = 0;
          v13 = v22;
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      v35 = *MEMORY[0x1E696A798];
      v36 = CWFErrorDescription(*MEMORY[0x1E696A798], 1uLL);
      v37 = CWFErrorWithDescription(v35, 1, v36);

      bundleID = 0;
      v23 = 0;
      v13 = v37;
    }

    else
    {
      v14 = 0;
      bundleID = 0;
      v23 = 0;
    }
  }

  else
  {
    v33 = *MEMORY[0x1E696A798];
    v34 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v13 = CWFErrorWithDescription(v33, 6, v34);

    v14 = 0;
    bundleID = 0;
    v12 = 0;
    v23 = 0;
    v11 = 0;
  }

LABEL_11:
  if (!v13)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:v23 forKeyedSubscript:@"Result"];
    response = [dCopy response];

    if (response)
    {
      response2 = [dCopy response];
      v28 = v11;
      v29 = interfaceName;
      v30 = dCopy;
      v31 = v14;
      v32 = [dictionary copy];
      (response2)[2](response2, 0, v32);

      v14 = v31;
      dCopy = v30;
      interfaceName = v29;
      v11 = v28;
      v13 = 0;
    }

    goto LABEL_16;
  }

  response3 = [dCopy response];

  if (response3)
  {
    dictionary = [dCopy response];
    (dictionary)[2](dictionary, v13, 0);
LABEL_16:
  }
}

- (void)__getSSIDForVendor:(id)vendor XPCConnection:(id)connection
{
  vendorCopy = vendor;
  connectionCopy = connection;
  requestParameters = [vendorCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  if (interfaceName && ([(CWFXPCRequestProxy *)self apple80211WithInterfaceName:interfaceName], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v36 = 0;
    v10 = [v8 SSID:&v36];
    v11 = v36;
    if (v10)
    {
      if ([connectionCopy serviceType] != 4)
      {
        v16 = 0;
        bundleID = 0;
        goto LABEL_10;
      }

      v12 = [(CWFXPCRequestProxy *)self __currentNetworkProfileWithInterfaceName:interfaceName];
      sSID = [v12 SSID];
      v14 = [sSID isEqualToData:v10];

      if (v14)
      {
        bundleID = [connectionCopy bundleID];
        v16 = v12;
        if (!bundleID || ([v12 bundleID], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isEqualToString:", bundleID), v17, (v18 & 1) == 0))
        {
          v19 = *MEMORY[0x1E696A798];
          v20 = CWFErrorDescription(*MEMORY[0x1E696A798], 1uLL);
          v21 = CWFErrorWithDescription(v19, 1, v20);

          v22 = 0;
LABEL_11:
          v11 = v21;
          goto LABEL_12;
        }

LABEL_10:
        v35 = v11;
        v22 = [(CWFXPCRequestProxy *)self __hashedSSID:v10 XPCConnection:connectionCopy error:&v35];
        v21 = v35;

        goto LABEL_11;
      }

      v30 = *MEMORY[0x1E696A798];
      v31 = CWFErrorDescription(*MEMORY[0x1E696A798], 1uLL);
      v32 = CWFErrorWithDescription(v30, 1, v31);

      bundleID = 0;
      v22 = 0;
      v11 = v32;
      v16 = v12;
    }

    else
    {
      v16 = 0;
      bundleID = 0;
      v22 = 0;
    }
  }

  else
  {
    v28 = *MEMORY[0x1E696A798];
    v29 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v11 = CWFErrorWithDescription(v28, 6, v29);

    v16 = 0;
    bundleID = 0;
    v10 = 0;
    v22 = 0;
    v9 = 0;
  }

LABEL_12:
  if (!v11)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:v22 forKeyedSubscript:@"Result"];
    response = [vendorCopy response];

    if (response)
    {
      response2 = [vendorCopy response];
      v27 = [dictionary copy];
      (response2)[2](response2, 0, v27);
    }

    goto LABEL_17;
  }

  response3 = [vendorCopy response];

  if (response3)
  {
    dictionary = [vendorCopy response];
    (dictionary)[2](dictionary, v11, 0);
LABEL_17:
  }
}

- (void)__getBSSID:(id)d XPCConnection:(id)connection
{
  dCopy = d;
  connectionCopy = connection;
  requestParameters = [dCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  v47 = connectionCopy;
  if (interfaceName && ([(CWFXPCRequestProxy *)self apple80211WithInterfaceName:interfaceName], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v11 = v10;
    v49 = 0;
    v12 = [v10 SSID:&v49];
    v13 = v49;
    if (v12)
    {
      if ([connectionCopy serviceType] != 4)
      {
        bundleID = 0;
        v14 = 0;
        goto LABEL_12;
      }

      v14 = [(CWFXPCRequestProxy *)self __currentNetworkProfileWithInterfaceName:interfaceName];
      sSID = [v14 SSID];
      v16 = [sSID isEqualToData:v12];

      if (v16)
      {
        bundleID = [connectionCopy bundleID];
        if (!bundleID || ([v14 bundleID], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", bundleID), v18, (v19 & 1) == 0))
        {
          v29 = *MEMORY[0x1E696A798];
          v30 = CWFErrorDescription(*MEMORY[0x1E696A798], 1uLL);
          v27 = CWFErrorWithDescription(v29, 1, v30);

          goto LABEL_14;
        }

        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v21 = v20;
        addedAt = [v14 addedAt];
        [addedAt timeIntervalSinceReferenceDate];
        v24 = v21 - v23;

        if (v24 <= 0.0 || v24 > 300.0)
        {
          v25 = *MEMORY[0x1E696A798];
          v26 = CWFErrorDescription(*MEMORY[0x1E696A798], 1uLL);
          v27 = CWFErrorWithDescription(v25, 1, v26);

LABEL_14:
          v28 = 0;
          goto LABEL_15;
        }

LABEL_12:
        v48 = v13;
        v28 = [v11 BSSID:&v48];
        v27 = v48;

LABEL_15:
        v13 = v27;
        goto LABEL_16;
      }

      v43 = *MEMORY[0x1E696A798];
      v44 = CWFErrorDescription(*MEMORY[0x1E696A798], 1uLL);
      v45 = CWFErrorWithDescription(v43, 1, v44);

      bundleID = 0;
      v28 = 0;
      v13 = v45;
    }

    else
    {
      bundleID = 0;
      v28 = 0;
      v14 = 0;
    }
  }

  else
  {
    v41 = *MEMORY[0x1E696A798];
    v42 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v13 = CWFErrorWithDescription(v41, 6, v42);

    bundleID = 0;
    v12 = 0;
    v28 = 0;
    v14 = 0;
    v11 = 0;
  }

LABEL_16:
  if (!v13)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:v28 forKeyedSubscript:@"Result"];
    response = [dCopy response];

    if (response)
    {
      response2 = [dCopy response];
      v46 = v11;
      v35 = interfaceName;
      v36 = bundleID;
      v37 = dCopy;
      v38 = v12;
      v39 = v14;
      v40 = [dictionary copy];
      (response2)[2](response2, 0, v40);

      v14 = v39;
      v12 = v38;
      dCopy = v37;
      bundleID = v36;
      interfaceName = v35;
      v11 = v46;
    }

    goto LABEL_21;
  }

  response3 = [dCopy response];

  if (response3)
  {
    dictionary = [dCopy response];
    (dictionary)[2](dictionary, v13, 0);
LABEL_21:
  }
}

- (void)__getBSSIDForVendor:(id)vendor XPCConnection:(id)connection
{
  vendorCopy = vendor;
  connectionCopy = connection;
  requestParameters = [vendorCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  if (interfaceName && ([(CWFXPCRequestProxy *)self apple80211WithInterfaceName:interfaceName], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v44 = 0;
    v10 = [v8 SSID:&v44];
    v11 = v44;
    v12 = v11;
    if (v10)
    {
      v43 = v11;
      v13 = [v9 BSSID:&v43];
      v14 = v43;

      if (v13)
      {
        if ([connectionCopy serviceType] != 4)
        {
          v22 = 0;
          bundleID = 0;
          goto LABEL_11;
        }

        v15 = [(CWFXPCRequestProxy *)self __currentNetworkProfileWithInterfaceName:interfaceName];
        sSID = [v15 SSID];
        v17 = [sSID isEqualToData:v10];

        if (v17)
        {
          v18 = v10;
          bundleID = [connectionCopy bundleID];
          if (bundleID)
          {
            bundleID2 = [v15 bundleID];
            v21 = [bundleID2 isEqualToString:bundleID];

            if (v21)
            {
              v10 = v18;
              v22 = v15;
LABEL_11:
              v42 = v14;
              v23 = [(CWFXPCRequestProxy *)self __hashedBSSID:v13 XPCConnection:connectionCopy error:&v42];
              v12 = v42;

              goto LABEL_14;
            }
          }

          v24 = *MEMORY[0x1E696A798];
          v25 = CWFErrorDescription(*MEMORY[0x1E696A798], 1uLL);
          v12 = CWFErrorWithDescription(v24, 1, v25);

          v23 = 0;
          v10 = v18;
        }

        else
        {
          v37 = *MEMORY[0x1E696A798];
          v38 = CWFErrorDescription(*MEMORY[0x1E696A798], 1uLL);
          v12 = CWFErrorWithDescription(v37, 1, v38);

          bundleID = 0;
          v23 = 0;
        }

        v22 = v15;
      }

      else
      {
        v22 = 0;
        bundleID = 0;
        v23 = 0;
        v12 = v14;
      }
    }

    else
    {
      v22 = 0;
      bundleID = 0;
      v13 = 0;
      v23 = 0;
    }
  }

  else
  {
    v35 = *MEMORY[0x1E696A798];
    v36 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v12 = CWFErrorWithDescription(v35, 6, v36);

    v22 = 0;
    bundleID = 0;
    v10 = 0;
    v13 = 0;
    v23 = 0;
    v9 = 0;
  }

LABEL_14:
  if (!v12)
  {
    v39 = v10;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:v23 forKeyedSubscript:@"Result"];
    response = [vendorCopy response];

    if (response)
    {
      response2 = [vendorCopy response];
      v30 = bundleID;
      v31 = v13;
      v32 = v22;
      v33 = interfaceName;
      v34 = [dictionary copy];
      (response2)[2](response2, 0, v34);

      interfaceName = v33;
      v22 = v32;
      v13 = v31;
      bundleID = v30;
    }

    v10 = v39;
    goto LABEL_20;
  }

  response3 = [vendorCopy response];

  if (response3)
  {
    dictionary = [vendorCopy response];
    (dictionary)[2](dictionary, v12, 0);
LABEL_20:
  }
}

- (void)__getLinkQualityMetric:(id)metric
{
  metricCopy = metric;
  requestParameters = [metricCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  if (interfaceName)
  {
    response4 = [(CWFXPCRequestProxy *)self __linkQualityMetricWithInterfaceName:interfaceName];
LABEL_3:
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:response4 forKeyedSubscript:@"Result"];
    response = [metricCopy response];

    if (response)
    {
      response2 = [metricCopy response];
      v10 = [dictionary copy];
      (response2)[2](response2, 0, v10);
    }

    v11 = 0;
    goto LABEL_6;
  }

  v12 = *MEMORY[0x1E696A798];
  v13 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v11 = CWFErrorWithDescription(v12, 6, v13);

  if (!v11)
  {
    response4 = 0;
    goto LABEL_3;
  }

  response3 = [metricCopy response];

  if (response3)
  {
    response4 = [metricCopy response];
    (response4)[2](response4, v11, 0);
LABEL_6:
  }
}

- (void)__getPlatformCapabilities:(id)capabilities
{
  v51 = *MEMORY[0x1E69E9840];
  capabilitiesCopy = capabilities;
  v5 = [MEMORY[0x1E695DFA8] set];
  v6 = [(CWFXPCRequestProxy *)self apple80211WithInterfaceName:0];
  v7 = [v6 interfaceNames:0];

  v8 = [(CWFXPCRequestProxy *)self apple80211WithInterfaceName:0];
  v9 = [v8 virtualInterfaceNames:0];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v45;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v45 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(CWFXPCRequestProxy *)self apple80211WithInterfaceName:*(*(&v44 + 1) + 8 * i)];
        v16 = [v15 capabilities:0];

        if (v16)
        {
          [v5 addObjectsFromArray:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v12);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v17 = v9;
  v18 = [v17 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v41;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v41 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [(CWFXPCRequestProxy *)self apple80211WithInterfaceName:*(*(&v40 + 1) + 8 * j), v40];
        v23 = [v22 capabilities:0];

        if (v23)
        {
          [v5 addObjectsFromArray:v23];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v19);
  }

  v24 = IOServiceNameMatching("pci14e4,4464");
  if (v24)
  {
    MatchingService = IOServiceGetMatchingService(*MEMORY[0x1E696CD60], v24);
    if (MatchingService)
    {
      v26 = MatchingService;
      v27 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"WiFiCapability", *MEMORY[0x1E695E480], 3u);
      if (v27)
      {
        v28 = v27;
        v29 = [v27 objectForKey:@"awdl"];
        bOOLValue = [v29 BOOLValue];

        if (bOOLValue)
        {
          [v5 addObject:&unk_1F5BBCAC0];
        }

        v31 = [v28 objectForKey:{@"ranging", v40}];
        bOOLValue2 = [v31 BOOLValue];

        if (bOOLValue2)
        {
          [v5 addObject:&unk_1F5BBCAD8];
        }

        CFRelease(v28);
      }

      IOObjectRelease(v26);
    }
  }

  v33 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"integerValue" ascending:{1, v40}];
  v48 = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
  v35 = [v5 sortedArrayUsingDescriptors:v34];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:v35 forKeyedSubscript:@"Result"];
  response = [capabilitiesCopy response];

  if (response)
  {
    response2 = [capabilitiesCopy response];
    v39 = [dictionary copy];
    (response2)[2](response2, 0, v39);
  }
}

- (void)__updateCurrentKnownBSSWithIPConfigurationForInterfaceName:(id)name
{
  nameCopy = name;
  objc_initWeak(&location, self);
  defaultQueue = self->_defaultQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0CBC344;
  v7[3] = &unk_1E86E7058;
  objc_copyWeak(&v9, &location);
  v6 = nameCopy;
  v8 = v6;
  [(NSOperationQueue *)defaultQueue addOperationSerializedByName:@"updateKnownNetwork" block:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)__getPrivateMACAddress:(id)address
{
  addressCopy = address;
  info = [addressCopy info];
  v5 = [info objectForKeyedSubscript:@"NetworkProfile"];

  if (v5)
  {
    privateMACManager = [(CWFXPCRequestProxy *)self privateMACManager];
    if (privateMACManager)
    {
      v7 = privateMACManager;
      response4 = [privateMACManager privateMACAddressForNetworkProfile:v5];
LABEL_4:
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [dictionary setObject:response4 forKeyedSubscript:@"Result"];
      response = [addressCopy response];

      if (response)
      {
        response2 = [addressCopy response];
        v12 = [dictionary copy];
        (response2)[2](response2, 0, v12);
      }

      v7 = 0;
      goto LABEL_7;
    }

    v13 = 6;
  }

  else
  {
    v13 = 22;
  }

  v14 = *MEMORY[0x1E696A798];
  v15 = CWFErrorDescription(*MEMORY[0x1E696A798], v13);
  v7 = CWFErrorWithDescription(v14, v13, v15);

  if (!v7)
  {
    response4 = 0;
    goto LABEL_4;
  }

  response3 = [addressCopy response];

  if (response3)
  {
    response4 = [addressCopy response];
    (response4)[2](response4, v7, 0);
LABEL_7:
  }
}

- (void)__getPrivateMACAddressMode:(id)mode
{
  modeCopy = mode;
  info = [modeCopy info];
  v5 = [info objectForKeyedSubscript:@"NetworkProfile"];

  if (v5)
  {
    privateMACManager = [(CWFXPCRequestProxy *)self privateMACManager];
    if (privateMACManager)
    {
      v7 = privateMACManager;
      response = [privateMACManager privateMACAddressModeForNetworkProfile:v5];

      goto LABEL_4;
    }

    v13 = 6;
  }

  else
  {
    v13 = 22;
  }

  v14 = *MEMORY[0x1E696A798];
  v15 = CWFErrorDescription(*MEMORY[0x1E696A798], v13);
  response = CWFErrorWithDescription(v14, v13, v15);

  if (!response)
  {
LABEL_4:
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:response];
    [dictionary setObject:v10 forKeyedSubscript:@"Result"];

    response = [modeCopy response];

    if (response)
    {
      response2 = [modeCopy response];
      v12 = [dictionary copy];
      (response2)[2](response2, 0, v12);

      response = 0;
    }

    goto LABEL_6;
  }

  response3 = [modeCopy response];

  if (response3)
  {
    dictionary = [modeCopy response];
    (dictionary)[2](dictionary, response, 0);
LABEL_6:
  }
}

- (void)__getPrivateMACAddressModeSystemSetting:(id)setting
{
  settingCopy = setting;
  privateMACManager = [(CWFXPCRequestProxy *)self privateMACManager];
  v5 = privateMACManager;
  if (privateMACManager)
  {
    systemSetting = [privateMACManager systemSetting];
    goto LABEL_3;
  }

  v11 = *MEMORY[0x1E696A798];
  v12 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  systemSetting = CWFErrorWithDescription(v11, 6, v12);

  if (!systemSetting)
  {
LABEL_3:
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:systemSetting];
    [dictionary setObject:v8 forKeyedSubscript:@"Result"];

    systemSetting = [settingCopy response];

    if (systemSetting)
    {
      response = [settingCopy response];
      v10 = [dictionary copy];
      (response)[2](response, 0, v10);

      systemSetting = 0;
    }

    goto LABEL_5;
  }

  response2 = [settingCopy response];

  if (response2)
  {
    dictionary = [settingCopy response];
    (dictionary)[2](dictionary, systemSetting, 0);
LABEL_5:
  }
}

- (void)__setPrivateMACAddressModeSystemSetting:(id)setting
{
  settingCopy = setting;
  info = [settingCopy info];
  v5 = [info objectForKeyedSubscript:@"PrivateMACMode"];

  if (v5)
  {
    privateMACManager = [(CWFXPCRequestProxy *)self privateMACManager];
    if (privateMACManager)
    {
      v7 = privateMACManager;
      [privateMACManager setSystemSetting:{objc_msgSend(v5, "integerValue")}];
      v8 = 0;
      goto LABEL_4;
    }

    v14 = *MEMORY[0x1E696A798];
    v7 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v12 = v14;
    v13 = 6;
  }

  else
  {
    v11 = *MEMORY[0x1E696A798];
    v7 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v12 = v11;
    v13 = 22;
  }

  v8 = CWFErrorWithDescription(v12, v13, v7);
LABEL_4:

  response = [settingCopy response];

  if (response)
  {
    response2 = [settingCopy response];
    (response2)[2](response2, v8, 0);
  }
}

- (void)__setPrivateMACAddressUserJoinFailureUIState:(id)state
{
  stateCopy = state;
  info = [stateCopy info];
  v5 = [info objectForKeyedSubscript:@"NetworkProfile"];

  if (v5 && ([stateCopy info], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKeyedSubscript:", @"State"), v7 = objc_claimAutoreleasedReturnValue(), v6, v7))
  {
    privateMACManager = [(CWFXPCRequestProxy *)self privateMACManager];
    if (privateMACManager)
    {
      v9 = privateMACManager;
      [privateMACManager setUserJoinFailureUIState:objc_msgSend(v7 networkProfile:{"BOOLValue"), v5}];

      v10 = 0;
      v7 = v9;
    }

    else
    {
      v14 = *MEMORY[0x1E696A798];
      v15 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
      v10 = CWFErrorWithDescription(v14, 6, v15);
    }
  }

  else
  {
    v13 = *MEMORY[0x1E696A798];
    v7 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v10 = CWFErrorWithDescription(v13, 22, v7);
  }

  response = [stateCopy response];

  if (response)
  {
    response2 = [stateCopy response];
    (response2)[2](response2, v10, 0);
  }
}

- (void)__setPrivateMACAddressMode:(id)mode
{
  modeCopy = mode;
  requestParameters = [modeCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  if (!interfaceName)
  {
    v7 = 0;
    goto LABEL_13;
  }

  v7 = [(CWFXPCRequestProxy *)self apple80211WithInterfaceName:interfaceName];
  if (!v7)
  {
LABEL_13:
    v9 = 0;
    v11 = 0;
    goto LABEL_14;
  }

  info = [modeCopy info];
  v9 = [info objectForKeyedSubscript:@"NetworkProfile"];

  if (!v9)
  {
    v11 = 0;
    goto LABEL_16;
  }

  info2 = [modeCopy info];
  v11 = [info2 objectForKeyedSubscript:@"PrivateMACMode"];

  if (!v11)
  {
LABEL_16:
    v20 = 22;
LABEL_17:
    v21 = *MEMORY[0x1E696A798];
    v22 = CWFErrorDescription(*MEMORY[0x1E696A798], v20);
    response3 = CWFErrorWithDescription(v21, v20, v22);

    if (response3)
    {
      response = [modeCopy response];

      if (!response)
      {
        goto LABEL_11;
      }

      response2 = [modeCopy response];
      (response2)[2](response2, response3, 0);
    }

    response = 0;
    goto LABEL_11;
  }

  privateMACManager = [(CWFXPCRequestProxy *)self privateMACManager];
  if (!privateMACManager)
  {
LABEL_14:
    v20 = 6;
    goto LABEL_17;
  }

  response = privateMACManager;
  addedAt = [v9 addedAt];

  integerValue = [v11 integerValue];
  if (addedAt)
  {
    [v9 setPrivateMACAddressModeUserSetting:integerValue];
    date = [MEMORY[0x1E695DF00] date];
    [v9 setPrivateMACAddressModeUserSettingUpdatedAt:date];

    v17 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F5BBCB20, &unk_1F5BBCB38, 0}];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1E0CBDB14;
    v24[3] = &unk_1E86E84C0;
    v25 = modeCopy;
    [(CWFXPCRequestProxy *)self __updateNetworkProfile:v9 updateProperties:v17 interfaceName:interfaceName reply:v24];

LABEL_10:
    response3 = 0;
    goto LABEL_11;
  }

  [response setTemporaryUserSetting:integerValue networkProfile:v9];
  response3 = [modeCopy response];

  if (response3)
  {
    response4 = [modeCopy response];
    response4[2](response4, 0, 0);

    goto LABEL_10;
  }

LABEL_11:
}

- (void)__getQuickProbeRequired:(id)required
{
  requiredCopy = required;
  if (_os_feature_enabled_impl())
  {
    requestParameters = [requiredCopy requestParameters];
    interfaceName = [requestParameters interfaceName];

    if (interfaceName)
    {
      info = [requiredCopy info];
      v7 = [info objectForKeyedSubscript:@"NetworkProfile"];

      if (v7)
      {
        v8 = [(CWFXPCRequestProxy *)self __joinStatusWithInterfaceName:interfaceName];
        knownNetworkProfile = [v8 knownNetworkProfile];

        identifier = [knownNetworkProfile identifier];
        identifier2 = [v7 identifier];
        v12 = identifier2;
        if (identifier == identifier2)
        {

          goto LABEL_10;
        }

        identifier3 = [knownNetworkProfile identifier];
        if (identifier3)
        {
          v14 = identifier3;
          identifier4 = [v7 identifier];
          if (identifier4)
          {
            v16 = identifier4;
            [knownNetworkProfile identifier];
            v18 = v17 = interfaceName;
            identifier5 = [v7 identifier];
            v35 = [v18 isEqual:identifier5];

            interfaceName = v17;
            if ((v35 & 1) == 0)
            {
              goto LABEL_18;
            }

LABEL_10:
            v20 = [(CWFXPCRequestProxy *)self __joinStatusWithInterfaceName:interfaceName];
            scanResult = [v20 scanResult];

            privateMACAddress = [scanResult privateMACAddress];
            if (privateMACAddress && [knownNetworkProfile privateMACAddressEvaluationState] && objc_msgSend(knownNetworkProfile, "isCaptiveStateDetermined") && (objc_msgSend(knownNetworkProfile, "isCaptive") & 1) == 0)
            {
              captiveWebsheetLoginDate = [knownNetworkProfile captiveWebsheetLoginDate];
              v23 = captiveWebsheetLoginDate == 0;
            }

            else
            {
              v23 = 0;
            }

            goto LABEL_23;
          }
        }
      }

      else
      {
        knownNetworkProfile = 0;
      }

LABEL_18:
      v24 = 22;
      goto LABEL_19;
    }

    knownNetworkProfile = 0;
    v7 = 0;
    v24 = 6;
  }

  else
  {
    knownNetworkProfile = 0;
    v7 = 0;
    interfaceName = 0;
    v24 = 45;
  }

LABEL_19:
  v25 = *MEMORY[0x1E696A798];
  v26 = CWFErrorDescription(*MEMORY[0x1E696A798], v24);
  v27 = CWFErrorWithDescription(v25, v24, v26);

  if (!v27)
  {
    v23 = 0;
LABEL_23:
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v30 = [MEMORY[0x1E696AD98] numberWithBool:v23];
    [dictionary setObject:v30 forKeyedSubscript:@"Result"];

    response = [requiredCopy response];

    if (response)
    {
      response2 = [requiredCopy response];
      v33 = [dictionary copy];
      (response2)[2](response2, 0, v33);
    }

    v27 = 0;
    goto LABEL_26;
  }

  response3 = [requiredCopy response];

  if (!response3)
  {
    goto LABEL_27;
  }

  dictionary = [requiredCopy response];
  (dictionary)[2](dictionary, v27, 0);
LABEL_26:

LABEL_27:
}

- (void)__performAutoJoinWithParameters:(id)parameters interfaceName:(id)name
{
  v14[1] = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  nameCopy = name;
  delegate = [(CWFXPCRequestProxy *)self delegate];
  if (delegate)
  {
    v9 = objc_alloc_init(CWFXPCRequest);
    [(CWFXPCRequest *)v9 setType:177];
    v13 = @"AutoJoinParams";
    v14[0] = parametersCopy;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [(CWFXPCRequest *)v9 setInfo:v10];

    v11 = objc_alloc_init(CWFRequestParameters);
    [(CWFRequestParameters *)v11 setInterfaceName:nameCopy];
    [(CWFXPCRequest *)v9 setRequestParameters:v11];
    date = [MEMORY[0x1E695DF00] date];
    [(CWFXPCRequest *)v9 setReceivedAt:date];

    [(CWFXPCRequest *)v9 setResponse:&unk_1F5B88F50];
    [delegate XPCRequestProxy:self XPCConnection:self->_internalRequestXPCConnection receivedXPCRequest:v9];
  }
}

- (void)__disassocWithReason:(int64_t)reason interfaceName:(id)name
{
  v14[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  delegate = [(CWFXPCRequestProxy *)self delegate];
  if (delegate)
  {
    v8 = objc_alloc_init(CWFXPCRequest);
    [(CWFXPCRequest *)v8 setType:63];
    v13 = @"DisassocReason";
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
    v14[0] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [(CWFXPCRequest *)v8 setInfo:v10];

    v11 = objc_alloc_init(CWFRequestParameters);
    [(CWFRequestParameters *)v11 setInterfaceName:nameCopy];
    [(CWFXPCRequest *)v8 setRequestParameters:v11];
    date = [MEMORY[0x1E695DF00] date];
    [(CWFXPCRequest *)v8 setReceivedAt:date];

    [delegate XPCRequestProxy:self XPCConnection:self->_internalRequestXPCConnection receivedXPCRequest:v8];
  }
}

- (void)__updateNetworkProfile:(id)profile updateProperties:(id)properties interfaceName:(id)name reply:(id)reply
{
  profileCopy = profile;
  propertiesCopy = properties;
  nameCopy = name;
  replyCopy = reply;
  delegate = [(CWFXPCRequestProxy *)self delegate];
  if (delegate)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:profileCopy forKeyedSubscript:@"NetworkProfile"];
    [dictionary setObject:propertiesCopy forKeyedSubscript:@"NetworkProfileProperties"];
    v16 = objc_alloc_init(CWFXPCRequest);
    [(CWFXPCRequest *)v16 setType:61];
    [(CWFXPCRequest *)v16 setInfo:dictionary];
    v17 = objc_alloc_init(CWFRequestParameters);
    [(CWFRequestParameters *)v17 setInterfaceName:nameCopy];
    [(CWFXPCRequest *)v16 setRequestParameters:v17];
    date = [MEMORY[0x1E695DF00] date];
    [(CWFXPCRequest *)v16 setReceivedAt:date];

    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = sub_1E0CBE444;
    v24 = &unk_1E86E8508;
    v25 = profileCopy;
    v26 = replyCopy;
    [(CWFXPCRequest *)v16 setResponse:&v21];
    [delegate XPCRequestProxy:self XPCConnection:self->_internalRequestXPCConnection receivedXPCRequest:{v16, v21, v22, v23, v24}];

LABEL_5:
    goto LABEL_6;
  }

  if (replyCopy)
  {
    v19 = *MEMORY[0x1E696A798];
    dictionary = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v20 = CWFErrorWithDescription(v19, 6, dictionary);
    (*(replyCopy + 2))(replyCopy, v20);

    goto LABEL_5;
  }

LABEL_6:
}

- (void)__updateMultipleKnownNetworks:(id)networks updateProperties:(id)properties interfaceName:(id)name reply:(id)reply
{
  networksCopy = networks;
  propertiesCopy = properties;
  nameCopy = name;
  replyCopy = reply;
  delegate = [(CWFXPCRequestProxy *)self delegate];
  if (delegate)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:networksCopy forKeyedSubscript:@"NetworkProfileList"];
    [dictionary setObject:propertiesCopy forKeyedSubscript:@"NetworkProfileProperties"];
    v16 = objc_alloc_init(CWFXPCRequest);
    [(CWFXPCRequest *)v16 setType:272];
    [(CWFXPCRequest *)v16 setInfo:dictionary];
    v17 = objc_alloc_init(CWFRequestParameters);
    [(CWFRequestParameters *)v17 setInterfaceName:nameCopy];
    [(CWFXPCRequest *)v16 setRequestParameters:v17];
    date = [MEMORY[0x1E695DF00] date];
    [(CWFXPCRequest *)v16 setReceivedAt:date];

    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = sub_1E0CBE7E4;
    v24 = &unk_1E86E8508;
    v25 = networksCopy;
    v26 = replyCopy;
    [(CWFXPCRequest *)v16 setResponse:&v21];
    [delegate XPCRequestProxy:self XPCConnection:self->_internalRequestXPCConnection receivedXPCRequest:{v16, v21, v22, v23, v24}];

LABEL_5:
    goto LABEL_6;
  }

  if (replyCopy)
  {
    v19 = *MEMORY[0x1E696A798];
    dictionary = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v20 = CWFErrorWithDescription(v19, 6, dictionary);
    (*(replyCopy + 2))(replyCopy, v20);

    goto LABEL_5;
  }

LABEL_6:
}

- (void)__removeNetworkProfile:(id)profile reason:(int64_t)reason interfaceName:(id)name reply:(id)reply
{
  profileCopy = profile;
  nameCopy = name;
  replyCopy = reply;
  delegate = [(CWFXPCRequestProxy *)self delegate];
  if (delegate)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:profileCopy forKeyedSubscript:@"NetworkProfile"];
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:reason];
    [dictionary setObject:v15 forKeyedSubscript:@"RemoveReason"];

    v16 = objc_alloc_init(CWFXPCRequest);
    [(CWFXPCRequest *)v16 setType:60];
    [(CWFXPCRequest *)v16 setInfo:dictionary];
    v17 = objc_alloc_init(CWFRequestParameters);
    [(CWFRequestParameters *)v17 setInterfaceName:nameCopy];
    [(CWFXPCRequest *)v16 setRequestParameters:v17];
    date = [MEMORY[0x1E695DF00] date];
    [(CWFXPCRequest *)v16 setReceivedAt:date];

    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = sub_1E0CBEB98;
    v24 = &unk_1E86E8508;
    v25 = profileCopy;
    v26 = replyCopy;
    [(CWFXPCRequest *)v16 setResponse:&v21];
    [delegate XPCRequestProxy:self XPCConnection:self->_internalRequestXPCConnection receivedXPCRequest:{v16, v21, v22, v23, v24}];

LABEL_5:
    goto LABEL_6;
  }

  if (replyCopy)
  {
    v19 = *MEMORY[0x1E696A798];
    dictionary = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v20 = CWFErrorWithDescription(v19, 6, dictionary);
    (*(replyCopy + 2))(replyCopy, v20);

    goto LABEL_5;
  }

LABEL_6:
}

- (void)__privateMACEvaluationCompletedWithState:(int64_t)state knownNetwork:(id)network interfaceName:(id)name
{
  v24 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  nameCopy = name;
  if (_os_feature_enabled_impl() && [networkCopy privateMACAddressEvaluationState])
  {
    privateMACAddressEvaluationState = [networkCopy privateMACAddressEvaluationState];
    [networkCopy setPrivateMACAddressEvaluationState:state];
    date = [MEMORY[0x1E695DF00] date];
    [networkCopy setPrivateMACAddressEvaluatedAt:date];

    v12 = [MEMORY[0x1E695DFA8] set];
    [v12 addObject:&unk_1F5BBCB50];
    [v12 addObject:&unk_1F5BBCB68];
    v13 = CWFGetOSLog();
    if (v13)
    {
      v14 = CWFGetOSLog();
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
      v15 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = sub_1E0BEF284(privateMACAddressEvaluationState);
      v17 = sub_1E0BEF284(state);
      v18 = 138543874;
      v19 = v16;
      v20 = 2114;
      v21 = v17;
      v22 = 2114;
      v23 = networkCopy;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v14, 0, "[corewifi] PRIVATE MAC: Updating evaluation state (%{public}@ -> %{public}@) for network (%{public}@)", &v18, 32);
    }

    [(CWFXPCRequestProxy *)self __updateNetworkProfile:networkCopy updateProperties:v12 interfaceName:nameCopy reply:0];
  }
}

- (void)__reportQuickProbeResult:(id)result
{
  resultCopy = result;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v34 = *MEMORY[0x1E696A798];
    v35 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v36 = v34;
    v37 = 45;
LABEL_30:
    v27 = CWFErrorWithDescription(v36, v37, v35);

    knownNetworkProfile = 0;
    scanResult = 0;
    v10 = 0;
    interfaceName = 0;
    goto LABEL_19;
  }

  requestParameters = [resultCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  if (!interfaceName)
  {
    v38 = *MEMORY[0x1E696A798];
    v35 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v36 = v38;
    v37 = 6;
    goto LABEL_30;
  }

  info = [resultCopy info];
  v7 = [info objectForKeyedSubscript:@"Result"];
  bOOLValue = [v7 BOOLValue];

  info2 = [resultCopy info];
  v10 = [info2 objectForKeyedSubscript:@"NetworkProfile"];

  if (!v10)
  {
    v39 = *MEMORY[0x1E696A798];
    v40 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v27 = CWFErrorWithDescription(v39, 22, v40);

    knownNetworkProfile = 0;
    scanResult = 0;
    v10 = 0;
    goto LABEL_19;
  }

  v11 = [(CWFXPCRequestProxy *)self __joinStatusWithInterfaceName:interfaceName];
  knownNetworkProfile = [v11 knownNetworkProfile];

  identifier = [knownNetworkProfile identifier];
  identifier2 = [v10 identifier];
  v15 = identifier2;
  if (identifier != identifier2)
  {
    identifier3 = [knownNetworkProfile identifier];
    if (identifier3)
    {
      v17 = identifier3;
      identifier4 = [v10 identifier];
      if (identifier4)
      {
        v19 = identifier4;
        [knownNetworkProfile identifier];
        v42 = interfaceName;
        v21 = v20 = bOOLValue;
        [v10 identifier];
        v23 = v22 = self;
        v41 = [v21 isEqual:v23];

        self = v22;
        bOOLValue = v20;
        interfaceName = v42;

        if ((v41 & 1) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      }
    }

LABEL_18:
    v28 = *MEMORY[0x1E696A798];
    v29 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v27 = CWFErrorWithDescription(v28, 22, v29);

    scanResult = 0;
    goto LABEL_19;
  }

LABEL_10:
  v24 = [(CWFXPCRequestProxy *)self __joinStatusWithInterfaceName:interfaceName];
  scanResult = [v24 scanResult];

  privateMACAddress = [scanResult privateMACAddress];
  if (privateMACAddress && [knownNetworkProfile privateMACAddressEvaluationState] && objc_msgSend(knownNetworkProfile, "isCaptiveStateDetermined") && !objc_msgSend(knownNetworkProfile, "isCaptive"))
  {
    captiveWebsheetLoginDate = [knownNetworkProfile captiveWebsheetLoginDate];

    if (!captiveWebsheetLoginDate)
    {
      if (bOOLValue)
      {
        [(CWFXPCRequestProxy *)self __privateMACEvaluationCompletedWithState:0 knownNetwork:knownNetworkProfile interfaceName:interfaceName];
      }

      else
      {
        [(CWFXPCRequestProxy *)self __privateMACEvaluationCompletedWithState:4 knownNetwork:knownNetworkProfile interfaceName:interfaceName];
        privateMACManager = [(CWFXPCRequestProxy *)self privateMACManager];
        [privateMACManager submitPrivateMACStatsMetricWithEventType:@"InterfaceFailFallback" networkProfile:knownNetworkProfile];
      }
    }
  }

  else
  {
  }

  v27 = 0;
LABEL_19:
  response = [resultCopy response];

  if (response)
  {
    response2 = [resultCopy response];
    (response2)[2](response2, v27, 0);
  }
}

- (void)__setLQMConfig:(id)config
{
  configCopy = config;
  requestParameters = [configCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  info = [configCopy info];
  v8 = [info objectForKeyedSubscript:@"LQMConfiguration"];

  if (v8)
  {
    v9 = [(CWFXPCRequestProxy *)self apple80211WithInterfaceName:interfaceName];
    if (v9)
    {
      v10 = v9;
      v19 = 0;
      [v9 setLQMConfig:v8 error:&v19];
      v11 = v19;
      goto LABEL_4;
    }

    v18 = *MEMORY[0x1E696A798];
    v10 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v16 = v18;
    v17 = 6;
  }

  else
  {
    v15 = *MEMORY[0x1E696A798];
    v10 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v16 = v15;
    v17 = 22;
  }

  v11 = CWFErrorWithDescription(v16, v17, v10);
LABEL_4:
  v12 = v11;

  response = [configCopy response];

  if (response)
  {
    response2 = [configCopy response];
    (response2)[2](response2, v12, 0);
  }
}

- (void)__privateMACSettingChangedForNetworkProfile:(id)profile interfaceName:(id)name
{
  profileCopy = profile;
  nameCopy = name;
  v8 = MEMORY[0x1E696AAE0];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1E0CBF5FC;
  v16[3] = &unk_1E86E6060;
  v16[4] = self;
  v17 = nameCopy;
  v18 = profileCopy;
  v9 = profileCopy;
  v10 = nameCopy;
  v11 = [v8 blockOperationWithBlock:v16];
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0CBF834;
  block[3] = &unk_1E86E6420;
  block[4] = self;
  v15 = v11;
  v13 = v11;
  dispatch_async(mutexQueue, block);
}

- (void)privateMACEvaluationCheckConnectivityWithInterfaceName:(id)name
{
  nameCopy = name;
  if (_os_feature_enabled_impl())
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v6 = v5;
    v7 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:nameCopy];
    iPv4Addresses = [v7 IPv4Addresses];
    iPv4Router = [v7 IPv4Router];
    iPv6Addresses = [v7 IPv6Addresses];
    iPv6Router = [v7 IPv6Router];
    mutexQueue = self->_mutexQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0CBFA10;
    block[3] = &unk_1E86E8530;
    block[4] = self;
    v18 = nameCopy;
    v19 = iPv4Addresses;
    v20 = iPv6Addresses;
    v21 = iPv4Router;
    v22 = iPv6Router;
    v23 = v6;
    v13 = iPv6Router;
    v14 = iPv4Router;
    v15 = iPv6Addresses;
    v16 = iPv4Addresses;
    dispatch_async(mutexQueue, block);
  }
}

- (void)__startNetworkRelayBridgeWithHostAPConfiguration:(id)configuration interfaceName:(id)name reply:(id)reply
{
  v74 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  nameCopy = name;
  replyCopy = reply;
  v11 = replyCopy;
  if (self->_netRBClient)
  {
    v22 = CWFGetOSLog();
    if (v22)
    {
      v23 = CWFGetOSLog();
    }

    else
    {
      v23 = MEMORY[0x1E69E9C10];
      v37 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *location = 0;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v23, 16, "[corewifi] NETRB service already running", location, 2);
    }

    v38 = *MEMORY[0x1E696A798];
    v39 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x25uLL);
    v21 = CWFErrorWithDescription(v38, 37, v39);

    goto LABEL_70;
  }

  if (!configurationCopy)
  {
    v24 = CWFGetOSLog();
    if (v24)
    {
      v25 = CWFGetOSLog();
    }

    else
    {
      v25 = MEMORY[0x1E69E9C10];
      v40 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *location = 136446722;
      *&location[4] = "[CWFXPCRequestProxy __startNetworkRelayBridgeWithHostAPConfiguration:interfaceName:reply:]";
      v65 = 2082;
      v66 = "CWFXPCRequestProxy.m";
      v67 = 1024;
      v68 = 8544;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v25, 16, "[corewifi] %{public}s (%{public}s:%u) CWFHostAPConfiguration is NULL", location, 28);
    }

    goto LABEL_38;
  }

  if (!nameCopy)
  {
    v26 = CWFGetOSLog();
    if (v26)
    {
      v25 = CWFGetOSLog();
    }

    else
    {
      v25 = MEMORY[0x1E69E9C10];
      v43 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *location = 136446722;
      *&location[4] = "[CWFXPCRequestProxy __startNetworkRelayBridgeWithHostAPConfiguration:interfaceName:reply:]";
      v65 = 2082;
      v66 = "CWFXPCRequestProxy.m";
      v67 = 1024;
      v68 = 8549;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v25, 16, "[corewifi] %{public}s (%{public}s:%u) interfaceName is NULL", location, 28);
    }

LABEL_38:

    v41 = *MEMORY[0x1E696A798];
    v42 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v21 = CWFErrorWithDescription(v41, 22, v42);

LABEL_70:
    v15 = 0;
    goto LABEL_71;
  }

  v12 = [replyCopy copy];
  netRBStartServiceReply = self->_netRBStartServiceReply;
  self->_netRBStartServiceReply = v12;

  objc_initWeak(location, self);
  v63 = 0;
  v61 = MEMORY[0x1E69E9820];
  objc_copyWeak(&v62, location);
  Internal = _NETRBClientCreateInternal();
  self->_netRBClient = Internal;
  if (!Internal)
  {
    v27 = CWFGetOSLog();
    if (v27)
    {
      v28 = CWFGetOSLog();
    }

    else
    {
      v28 = MEMORY[0x1E69E9C10];
      v44 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v73[0] = 67109120;
      v73[1] = v63;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v28, 16, "[corewifi] _NETRBClientCreate() FAILED with error %d", v73);
    }

    objc_destroyWeak(&v62);
    objc_destroyWeak(location);
    goto LABEL_51;
  }

  objc_destroyWeak(&v62);
  objc_destroyWeak(location);
  if ([configurationCopy bridgeMode] == 201)
  {
    v73[0] = 0;
    v63 = 1020;
    if ((_NETRBClientGetGlobalServiceState() & 1) == 0)
    {
      v33 = CWFGetOSLog();
      if (v33)
      {
        v34 = CWFGetOSLog();
      }

      else
      {
        v34 = MEMORY[0x1E69E9C10];
        v49 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *location = 136446722;
        *&location[4] = "[CWFXPCRequestProxy __startNetworkRelayBridgeWithHostAPConfiguration:interfaceName:reply:]";
        v65 = 2082;
        v66 = "CWFXPCRequestProxy.m";
        v67 = 1024;
        v68 = 8625;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v34, 16, "[corewifi] %{public}s (%{public}s:%u) _NETRBClientGetGlobalServiceState() FAILED", location, 28, v61, 3221225472, sub_1E0CC0A80, &unk_1E86E8558);
      }

      v50 = 6;
      goto LABEL_69;
    }

    if (v63 == 1023)
    {
      if (_NETRBClientIsAllowedMoreHost())
      {
        goto LABEL_9;
      }

      v36 = CWFGetOSLog();
      if (v36)
      {
        v34 = CWFGetOSLog();
      }

      else
      {
        v34 = MEMORY[0x1E69E9C10];
        v53 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *location = 136446722;
        *&location[4] = "[CWFXPCRequestProxy __startNetworkRelayBridgeWithHostAPConfiguration:interfaceName:reply:]";
        v65 = 2082;
        v66 = "CWFXPCRequestProxy.m";
        v67 = 1024;
        v68 = 8634;
        v60 = 28;
        v52 = "[corewifi] %{public}s (%{public}s:%u) _NETRBClientIsAllowedMoreHost() returned false";
        goto LABEL_67;
      }
    }

    else
    {
      v35 = CWFGetOSLog();
      if (v35)
      {
        v34 = CWFGetOSLog();
      }

      else
      {
        v34 = MEMORY[0x1E69E9C10];
        v51 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *location = 136447234;
        *&location[4] = "[CWFXPCRequestProxy __startNetworkRelayBridgeWithHostAPConfiguration:interfaceName:reply:]";
        v65 = 2082;
        v66 = "CWFXPCRequestProxy.m";
        v67 = 1024;
        v68 = 8629;
        v69 = 1024;
        v70 = v63;
        v71 = 1024;
        v72 = v73[0];
        v60 = 40;
        v52 = "[corewifi] %{public}s (%{public}s:%u) NETRB service is disabled (state=%d, reason=%d)";
LABEL_67:
        v50 = 1;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v34, 16, v52, location, v60, v61, 3221225472, sub_1E0CC0A80, &unk_1E86E8558);
LABEL_69:

        v54 = *MEMORY[0x1E696A798];
        v55 = CWFErrorDescription(*MEMORY[0x1E696A798], v50);
        v21 = CWFErrorWithDescription(v54, v50, v55);

        goto LABEL_70;
      }
    }

    v50 = 1;
    goto LABEL_69;
  }

LABEL_9:
  v15 = xpc_dictionary_create(0, 0, 0);
  if (!v15)
  {
    v29 = CWFGetOSLog();
    if (v29)
    {
      v30 = CWFGetOSLog();
    }

    else
    {
      v30 = MEMORY[0x1E69E9C10];
      v45 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *location = 136446722;
      *&location[4] = "[CWFXPCRequestProxy __startNetworkRelayBridgeWithHostAPConfiguration:interfaceName:reply:]";
      v65 = 2082;
      v66 = "CWFXPCRequestProxy.m";
      v67 = 1024;
      v68 = 8641;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v30, 16, "[corewifi] %{public}s (%{public}s:%u) xpc_dictionary_create() FAILED)", location, 28, v61, 3221225472, sub_1E0CC0A80, &unk_1E86E8558);
    }

LABEL_51:
    v21 = 0;
    v15 = 0;
    goto LABEL_12;
  }

  v16 = *MEMORY[0x1E69B37A0];
  v17 = nameCopy;
  xpc_dictionary_set_string(v15, v16, [nameCopy UTF8String]);
  xpc_dictionary_set_uint64(v15, *MEMORY[0x1E69B3798], 3uLL);
  bridgeInterfaceName = [configurationCopy bridgeInterfaceName];
  v19 = bridgeInterfaceName;
  [bridgeInterfaceName UTF8String];
  [configurationCopy bridgeMode];
  [configurationCopy bridgeType];
  started = _NETRBClientStartService();

  if (started)
  {
    v21 = 0;
    goto LABEL_12;
  }

  v31 = CWFGetOSLog();
  if (v31)
  {
    v32 = CWFGetOSLog();
  }

  else
  {
    v32 = MEMORY[0x1E69E9C10];
    v46 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    *location = 136446722;
    *&location[4] = "[CWFXPCRequestProxy __startNetworkRelayBridgeWithHostAPConfiguration:interfaceName:reply:]";
    v65 = 2082;
    v66 = "CWFXPCRequestProxy.m";
    v67 = 1024;
    v68 = 8648;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v32, 16, "[corewifi] %{public}s (%{public}s:%u) _NETRBClientStartService() FAILED", location, 28, v61, 3221225472, sub_1E0CC0A80, &unk_1E86E8558);
  }

  v47 = *MEMORY[0x1E696A798];
  v48 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v21 = CWFErrorWithDescription(v47, 6, v48);

  if ((_NETRBClientDestroy() & 1) == 0)
  {
    v56 = CWFGetOSLog();
    if (v56)
    {
      v57 = CWFGetOSLog();
    }

    else
    {
      v57 = MEMORY[0x1E69E9C10];
      v58 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      *location = 136446722;
      *&location[4] = "[CWFXPCRequestProxy __startNetworkRelayBridgeWithHostAPConfiguration:interfaceName:reply:]";
      v65 = 2082;
      v66 = "CWFXPCRequestProxy.m";
      v67 = 1024;
      v68 = 8650;
      LODWORD(v59) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v57, 16, "[corewifi] %{public}s (%{public}s:%u) _NETRBClientDestroy() FAILED", location, v59);
    }
  }

  self->_netRBClient = 0;
LABEL_71:
  if (v11 && v21)
  {
    (v11)[2](v11, v21);
  }

LABEL_12:
}

- (void)__stopNetworkRelayBridgeForInterfaceName:(id)name reply:(id)reply
{
  v44 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  replyCopy = reply;
  v8 = replyCopy;
  if (!self->_netRBClient)
  {
    v15 = CWFGetOSLog();
    if (v15)
    {
      v16 = CWFGetOSLog();
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v21 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v38) = 0;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v16, 16, "[corewifi] NETRB service not running", &v38, 2);
    }

    v22 = *MEMORY[0x1E696A798];
    v23 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v24 = v22;
    v25 = 6;
    goto LABEL_27;
  }

  if (!nameCopy)
  {
    v17 = CWFGetOSLog();
    if (v17)
    {
      v18 = CWFGetOSLog();
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v26 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v38 = 136446722;
      v39 = "[CWFXPCRequestProxy __stopNetworkRelayBridgeForInterfaceName:reply:]";
      v40 = 2082;
      v41 = "CWFXPCRequestProxy.m";
      v42 = 1024;
      v43 = 8680;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v18, 16, "[corewifi] %{public}s (%{public}s:%u) interfaceName is NULL", &v38, 28);
    }

    v27 = *MEMORY[0x1E696A798];
    v23 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v24 = v27;
    v25 = 22;
LABEL_27:
    v14 = CWFErrorWithDescription(v24, v25, v23);

    goto LABEL_34;
  }

  v9 = [replyCopy copy];
  netRBStopServiceReply = self->_netRBStopServiceReply;
  self->_netRBStopServiceReply = v9;

  if (IOPMAssertionRelease(self->_netRBAssertionID))
  {
    v11 = CWFGetOSLog();
    if (v11)
    {
      v12 = CWFGetOSLog();
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v38 = 136446722;
      v39 = "[CWFXPCRequestProxy __stopNetworkRelayBridgeForInterfaceName:reply:]";
      v40 = 2082;
      v41 = "CWFXPCRequestProxy.m";
      v42 = 1024;
      v43 = 8686;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v12, 16, "[corewifi] %{public}s (%{public}s:%u) IOPMAssertionRelease() FAILED", &v38, 28);
    }
  }

  if (_NETRBClientStopService())
  {
    v14 = 0;
    goto LABEL_12;
  }

  v19 = CWFGetOSLog();
  if (v19)
  {
    v20 = CWFGetOSLog();
  }

  else
  {
    v20 = MEMORY[0x1E69E9C10];
    v28 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v38 = 136446722;
    v39 = "[CWFXPCRequestProxy __stopNetworkRelayBridgeForInterfaceName:reply:]";
    v40 = 2082;
    v41 = "CWFXPCRequestProxy.m";
    v42 = 1024;
    v43 = 8690;
    LODWORD(v37) = 28;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v20, 16, "[corewifi] %{public}s (%{public}s:%u) _NETRBClientStopService() FAILED", &v38, v37);
  }

  v29 = *MEMORY[0x1E696A798];
  v30 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v14 = CWFErrorWithDescription(v29, 6, v30);

  if ((_NETRBClientSetHostCount() & 1) == 0)
  {
    v31 = CWFGetOSLog();
    if (v31)
    {
      v32 = CWFGetOSLog();
    }

    else
    {
      v32 = MEMORY[0x1E69E9C10];
      v35 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v38 = 136446722;
      v39 = "[CWFXPCRequestProxy __stopNetworkRelayBridgeForInterfaceName:reply:]";
      v40 = 2082;
      v41 = "CWFXPCRequestProxy.m";
      v42 = 1024;
      v43 = 8693;
      LODWORD(v37) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v32, 16, "[corewifi] %{public}s (%{public}s:%u) _NETRBClientSetHostCount() FAILED", &v38, v37);
    }
  }

  if ((_NETRBClientDestroy() & 1) == 0)
  {
    v33 = CWFGetOSLog();
    if (v33)
    {
      v34 = CWFGetOSLog();
    }

    else
    {
      v34 = MEMORY[0x1E69E9C10];
      v36 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v38 = 136446722;
      v39 = "[CWFXPCRequestProxy __stopNetworkRelayBridgeForInterfaceName:reply:]";
      v40 = 2082;
      v41 = "CWFXPCRequestProxy.m";
      v42 = 1024;
      v43 = 8695;
      LODWORD(v37) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v34, 16, "[corewifi] %{public}s (%{public}s:%u) _NETRBClientDestroy() FAILED", &v38, v37);
    }
  }

  self->_netRBClient = 0;
LABEL_34:
  if (v8 && v14)
  {
    (v8)[2](v8, v14);
  }

LABEL_12:
}

- (void)__startHostAPMode:(id)mode XPCConnection:(id)connection
{
  v32 = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  connectionCopy = connection;
  info = [modeCopy info];
  v9 = [info objectForKeyedSubscript:@"HostAPConfiguration"];

  delegate = [(CWFXPCRequestProxy *)self delegate];
  if (delegate)
  {
    response2 = objc_alloc_init(CWFXPCRequest);
    [(CWFXPCRequest *)response2 setType:220];
    requestParameters = [modeCopy requestParameters];
    [(CWFXPCRequest *)response2 setRequestParameters:requestParameters];

    info2 = [modeCopy info];
    [(CWFXPCRequest *)response2 setInfo:info2];

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1E0CC1880;
    v24[3] = &unk_1E86E85D0;
    v25 = v9;
    selfCopy = self;
    v27 = modeCopy;
    v14 = delegate;
    v28 = v14;
    v15 = connectionCopy;
    v29 = v15;
    [(CWFXPCRequest *)response2 setResponse:v24];
    [v14 XPCRequestProxy:self XPCConnection:v15 receivedXPCRequest:response2];

    v16 = v25;
LABEL_10:

    goto LABEL_11;
  }

  v17 = CWFGetOSLog();
  if (v17)
  {
    v18 = CWFGetOSLog();
  }

  else
  {
    v18 = MEMORY[0x1E69E9C10];
    v19 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v20 = sub_1E0BC2FCC([modeCopy type]);
    v30 = 138543362;
    v31 = v20;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v18, 16, "[corewifi] Unhandled request type (%{public}@)", &v30, 12);
  }

  response = [modeCopy response];

  if (response)
  {
    response2 = [modeCopy response];
    v22 = *MEMORY[0x1E696A798];
    v16 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v23 = CWFErrorWithDescription(v22, 45, v16);
    (response2->super.super.super._iop.__nextOp)(response2, v23, 0);

    goto LABEL_10;
  }

LABEL_11:
}

- (void)__stopHostAPMode:(id)mode XPCConnection:(id)connection
{
  v23 = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  connectionCopy = connection;
  delegate = [(CWFXPCRequestProxy *)self delegate];
  if (delegate)
  {
    response2 = objc_alloc_init(CWFXPCRequest);
    [(CWFXPCRequest *)response2 setType:221];
    requestParameters = [modeCopy requestParameters];
    [(CWFXPCRequest *)response2 setRequestParameters:requestParameters];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0CC2238;
    v19[3] = &unk_1E86E6988;
    v19[4] = self;
    v20 = modeCopy;
    [(CWFXPCRequest *)response2 setResponse:v19];
    [delegate XPCRequestProxy:self XPCConnection:connectionCopy receivedXPCRequest:response2];

LABEL_10:
    goto LABEL_11;
  }

  v11 = CWFGetOSLog();
  if (v11)
  {
    v12 = CWFGetOSLog();
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v14 = sub_1E0BC2FCC([modeCopy type]);
    v21 = 138543362;
    v22 = v14;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v12, 16, "[corewifi] Unhandled request type (%{public}@)", &v21, 12);
  }

  response = [modeCopy response];

  if (response)
  {
    response2 = [modeCopy response];
    v16 = *MEMORY[0x1E696A798];
    v17 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v18 = CWFErrorWithDescription(v16, 45, v17);
    (response2->super.super.super._iop.__nextOp)(response2, v18, 0);

    goto LABEL_10;
  }

LABEL_11:
}

- (void)__logLqmSummary:(id)summary
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(CWFXPCRequestProxy *)self __apple80211WithInterfaceName:summary];
  v4 = v3;
  if (v3 && ![v3 virtualInterfaceRole])
  {
    v21 = [v4 LQMSummary:0];
    if (v21)
    {
      bytes = [v21 bytes];
      v5 = (bytes + 160);
      v6 = 16;
      v7 = MEMORY[0x1E69E9C10];
      v8 = bytes + 160;
      do
      {
        if (*v5)
        {
          v9 = CWFGetOSLog();
          if (v9)
          {
            v10 = CWFGetOSLog();
          }

          else
          {
            v11 = v7;
            v10 = v7;
          }

          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v22 = 136446210;
            v23 = v8;
            LODWORD(v19) = 12;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v10, 0, "[corewifi] LQM-WiFi: %{public}s", &v22, v19);
          }
        }

        v8 += 256;
        v5 += 256;
        --v6;
      }

      while (v6);
      v12 = (bytes + 4256);
      v13 = 5;
      v14 = MEMORY[0x1E69E9C10];
      v15 = bytes + 4256;
      do
      {
        if (*v12)
        {
          v16 = CWFGetOSLog();
          if (v16)
          {
            v17 = CWFGetOSLog();
          }

          else
          {
            v18 = v14;
            v17 = v14;
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v22 = 136446210;
            v23 = v15;
            LODWORD(v19) = 12;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v17, 0, "[corewifi] LQM-WiFi: %{public}s", &v22, v19);
          }
        }

        v15 += 256;
        v12 += 256;
        --v13;
      }

      while (v13);
    }
  }
}

- (void)__getCurrentScanResult:(id)result XPCConnection:(id)connection reply:(id)reply
{
  v25 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  connectionCopy = connection;
  replyCopy = reply;
  delegate = [(CWFXPCRequestProxy *)self delegate];
  if (delegate)
  {
    v12 = objc_alloc_init(CWFXPCRequest);
    [(CWFXPCRequest *)v12 setType:57];
    requestParameters = [resultCopy requestParameters];
    [(CWFXPCRequest *)v12 setRequestParameters:requestParameters];

    info = [resultCopy info];
    [(CWFXPCRequest *)v12 setInfo:info];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1E0CC2A70;
    v21[3] = &unk_1E86E6A50;
    v22 = replyCopy;
    [(CWFXPCRequest *)v12 setResponse:v21];
    [delegate XPCRequestProxy:self XPCConnection:connectionCopy receivedXPCRequest:v12];
    v15 = v22;
LABEL_10:

    goto LABEL_11;
  }

  v16 = CWFGetOSLog();
  if (v16)
  {
    v17 = CWFGetOSLog();
  }

  else
  {
    v17 = MEMORY[0x1E69E9C10];
    v18 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v19 = sub_1E0BC2FCC([resultCopy type]);
    v23 = 138543362;
    v24 = v19;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v17, 16, "[corewifi] Unhandled request type (%{public}@)", &v23, 12);
  }

  if (replyCopy)
  {
    v20 = *MEMORY[0x1E696A798];
    v12 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x2DuLL);
    v15 = CWFErrorWithDescription(v20, 45, v12);
    (*(replyCopy + 2))(replyCopy, v15, 0);
    goto LABEL_10;
  }

LABEL_11:
}

- (void)__getCurrentScanResult:(id)result XPCConnection:(id)connection
{
  resultCopy = result;
  connectionCopy = connection;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_1E0BC2D80;
  v27 = sub_1E0BC61FC;
  v28 = 0;
  requestParameters = [resultCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  if (interfaceName && ([(CWFXPCRequestProxy *)self apple80211WithInterfaceName:interfaceName], v10 = objc_claimAutoreleasedReturnValue(), (v11 = v10) != 0))
  {
    v22 = 0;
    v12 = [v10 currentNetwork:&v22];
    v13 = v22;
    v14 = v24[5];
    v24[5] = v12;

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0CC2D84;
    v19[3] = &unk_1E86E85F8;
    v21 = &v23;
    v20 = resultCopy;
    [(CWFXPCRequestProxy *)self __getCurrentScanResult:v20 XPCConnection:connectionCopy reply:v19];
    response2 = v20;
  }

  else
  {
    v16 = *MEMORY[0x1E696A798];
    v17 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v13 = CWFErrorWithDescription(v16, 6, v17);

    response = [resultCopy response];

    if (!response)
    {
      v11 = 0;
      goto LABEL_5;
    }

    response2 = [resultCopy response];
    (response2)[2](response2, v13, 0);
    v11 = 0;
  }

LABEL_5:
  _Block_object_dispose(&v23, 8);
}

- (void)__getNetworkWarningFlags:(id)flags XPCConnection:(id)connection
{
  flagsCopy = flags;
  connectionCopy = connection;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1E0BC2D80;
  v29 = sub_1E0BC61FC;
  v30 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = 0;
  requestParameters = [flagsCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  if (interfaceName && ([(CWFXPCRequestProxy *)self apple80211WithInterfaceName:interfaceName], v10 = objc_claimAutoreleasedReturnValue(), (v11 = v10) != 0))
  {
    v23 = 0;
    v12 = [v10 currentNetwork:&v23];
    v13 = v23;
    v14 = v26[5];
    v26[5] = v12;

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1E0CC3304;
    v19[3] = &unk_1E86E8648;
    v21 = &v25;
    v19[4] = self;
    v22 = v24;
    v20 = flagsCopy;
    [(CWFXPCRequestProxy *)self __getCurrentScanResult:v20 XPCConnection:connectionCopy reply:v19];
  }

  else
  {
    v15 = *MEMORY[0x1E696A798];
    v16 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v13 = CWFErrorWithDescription(v15, 6, v16);

    response = [flagsCopy response];

    if (response)
    {
      response2 = [flagsCopy response];
      (response2)[2](response2, v13, 0);
    }

    v11 = 0;
  }

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(&v25, 8);
}

- (unint64_t)_updateCellularRankingState
{
  cellularOutrankWiFiSymtpomsState = [(CWFXPCRequestProxy *)self cellularOutrankWiFiSymtpomsState];
  if (notify_get_state([(CWFXPCRequestProxy *)self cellularOutrankWiFiNotificationToken], &self->_cellularOutrankWiFiSymtpomsState))
  {
    return 0;
  }

  cellularOutrankWiFiSymtpomsState = self->_cellularOutrankWiFiSymtpomsState;
  if (cellularOutrankWiFiSymtpomsState == cellularOutrankWiFiSymtpomsState || (self->_cellularOutrankWiFiSymtpomsState & 1) == 0)
  {
    return 0;
  }

  v7 = 0x20000;
  if ((cellularOutrankWiFiSymtpomsState & 0x800) == 0)
  {
    v7 = 0x10000;
  }

  if ((cellularOutrankWiFiSymtpomsState & 0x40000000) != 0)
  {
    return 0x40000;
  }

  else
  {
    return v7;
  }
}

- (void)__getKnownNetworkInfoForLocalNetworkPrompt:(id)prompt XPCConnection:(id)connection
{
  promptCopy = prompt;
  connectionCopy = connection;
  info = [promptCopy info];
  v9 = [info objectForKeyedSubscript:@"KnownNetworkInfoOptions"];

  v10 = [v9 objectForKeyedSubscript:@"DeviceDiscovery"];

  if (v10)
  {
    v11 = [v9 objectForKeyedSubscript:@"DeviceDiscovery"];
    bOOLValue = [v11 BOOLValue];

    if (bOOLValue)
    {
      v13 = objc_alloc_init(CWFLocalDeviceDiscovery);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = sub_1E0CC3BB8;
      v28[3] = &unk_1E86E8670;
      v29 = promptCopy;
      [(CWFLocalDeviceDiscovery *)v13 setHandler:v28];
      [(CWFLocalDeviceDiscovery *)v13 activate];

      response = 0;
      localNetworkPromptProfiles = 0;
      v16 = 0;
      response3 = 0;
LABEL_12:

      goto LABEL_13;
    }
  }

  v18 = [CWFKnownNetworkPreparer alloc];
  __knownNetworkProfiles = [(CWFXPCRequestProxy *)self __knownNetworkProfiles];
  v16 = [(CWFKnownNetworkPreparer *)v18 initWithNetworkProfiles:__knownNetworkProfiles];

  if (v16)
  {
    localNetworkPromptProfiles = [(CWFKnownNetworkPreparer *)v16 localNetworkPromptProfiles];
    v20 = [(CWFKnownNetworkPreparer *)v16 prepareLocalNetworkProfilesForPresentation:localNetworkPromptProfiles];
    if (v20)
    {
      response3 = v20;
      goto LABEL_7;
    }

    v24 = 2;
  }

  else
  {
    localNetworkPromptProfiles = 0;
    v24 = 6;
  }

  v25 = *MEMORY[0x1E696A798];
  v26 = CWFErrorDescription(*MEMORY[0x1E696A798], v24);
  response = CWFErrorWithDescription(v25, v24, v26);

  if (!response)
  {
    response3 = 0;
LABEL_7:
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:response3 forKeyedSubscript:@"Result"];
    response = [promptCopy response];

    if (response)
    {
      response2 = [promptCopy response];
      v23 = [dictionary copy];
      (response2)[2](response2, 0, v23);

      response = 0;
    }

    goto LABEL_9;
  }

  response3 = [promptCopy response];

  if (response3)
  {
    dictionary = [promptCopy response];
    (dictionary)[2](dictionary, response, 0);
    response3 = 0;
LABEL_9:
  }

  if (objc_opt_class())
  {
    v27 = connectionCopy;
    localNetworkPromptProfiles = localNetworkPromptProfiles;
    response3 = response3;
    v16 = v16;
    AnalyticsSendEventLazy();

    v13 = v27;
    goto LABEL_12;
  }

LABEL_13:
}

- (void)__getAutoJoinMetric:(id)metric
{
  metricCopy = metric;
  autoJoinManager = [(CWFXPCRequestProxy *)self autoJoinManager];
  v5 = autoJoinManager;
  if (autoJoinManager)
  {
    metric = [autoJoinManager metric];
LABEL_3:
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:metric forKeyedSubscript:@"Result"];
    response = [metricCopy response];

    if (response)
    {
      response2 = [metricCopy response];
      v10 = [dictionary copy];
      (response2)[2](response2, 0, v10);
    }

    v11 = 0;
    goto LABEL_6;
  }

  v12 = *MEMORY[0x1E696A798];
  v13 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v11 = CWFErrorWithDescription(v12, 6, v13);

  if (!v11)
  {
    metric = 0;
    goto LABEL_3;
  }

  response3 = [metricCopy response];

  if (response3)
  {
    metric = [metricCopy response];
    (metric)[2](metric, v11, 0);
LABEL_6:
  }
}

- (void)__getAutoJoinStatistics:(id)statistics
{
  statisticsCopy = statistics;
  autoJoinManager = [(CWFXPCRequestProxy *)self autoJoinManager];
  v5 = autoJoinManager;
  if (autoJoinManager)
  {
    statistics = [autoJoinManager statistics];
LABEL_3:
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:statistics forKeyedSubscript:@"Result"];
    response = [statisticsCopy response];

    if (response)
    {
      response2 = [statisticsCopy response];
      v10 = [dictionary copy];
      (response2)[2](response2, 0, v10);
    }

    v11 = 0;
    goto LABEL_6;
  }

  v12 = *MEMORY[0x1E696A798];
  v13 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  v11 = CWFErrorWithDescription(v12, 6, v13);

  if (!v11)
  {
    statistics = 0;
    goto LABEL_3;
  }

  response3 = [statisticsCopy response];

  if (response3)
  {
    statistics = [statisticsCopy response];
    (statistics)[2](statistics, v11, 0);
LABEL_6:
  }
}

- (id)__hotspotClientManager
{
  hotspotClientManager = self->_hotspotClientManager;
  if (!hotspotClientManager)
  {
    v4 = +[CWFHotspotClientManager sharedInstance];
    v5 = self->_hotspotClientManager;
    self->_hotspotClientManager = v4;

    hotspotClientManager = self->_hotspotClientManager;
  }

  return hotspotClientManager;
}

- (void)__resetAutoJoinStatistics:(id)statistics
{
  statisticsCopy = statistics;
  autoJoinManager = [(CWFXPCRequestProxy *)self autoJoinManager];
  v5 = autoJoinManager;
  if (autoJoinManager)
  {
    [autoJoinManager resetStatistics];
    v6 = 0;
  }

  else
  {
    v9 = *MEMORY[0x1E696A798];
    v10 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v6 = CWFErrorWithDescription(v9, 6, v10);
  }

  response = [statisticsCopy response];

  if (response)
  {
    response2 = [statisticsCopy response];
    (response2)[2](response2, v6, 0);
  }
}

- (void)__sendXPCEvent:(id)event
{
  eventCopy = event;
  info = [eventCopy info];
  v6 = [info objectForKeyedSubscript:@"XPCEvent"];

  if (v6)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1E0CC4824;
    v12[3] = &unk_1E86E84C0;
    v13 = eventCopy;
    [(CWFXPCRequestProxy *)self __forwardXPCEvent:v6 reply:v12];

    v7 = 0;
  }

  else
  {
    v8 = *MEMORY[0x1E696A798];
    v9 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v7 = CWFErrorWithDescription(v8, 22, v9);

    if (v7)
    {
      response = [eventCopy response];

      if (response)
      {
        response2 = [eventCopy response];
        (response2)[2](response2, v7, 0);
      }
    }
  }
}

- (void)__checkin:(id)__checkin XPCConnection:(id)connection
{
  __checkinCopy = __checkin;
  connectionCopy = connection;
  if ([connectionCopy serviceType] == 9 || objc_msgSend(connectionCopy, "serviceType") == 10)
  {
    if (_os_feature_enabled_impl())
    {
      info = [__checkinCopy info];
      v8 = [info objectForKeyedSubscript:@"WiFiNetworkSharingClientID"];

      if (v8)
      {
        wifiNetworkSharingManager = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
        v10 = [wifiNetworkSharingManager isClientIDAuthorizedForDeviceAccess:v8];

        if (v10)
        {
          wifiNetworkSharingManager2 = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
          v12 = [wifiNetworkSharingManager2 isClientIDUsingSecureTransportForDeviceAccess:v8];

          if (v12)
          {
            v13 = 0;
LABEL_8:

            goto LABEL_10;
          }

          v16 = CWFWiFiNetworkSharingErrorDomain;
          v17 = 6;
        }

        else
        {
          v16 = CWFWiFiNetworkSharingErrorDomain;
          v17 = 8;
        }
      }

      else
      {
        v16 = MEMORY[0x1E696A798];
        v17 = 22;
      }

      v18 = *v16;
      v19 = CWFErrorDescription(*v16, v17);
      v13 = CWFErrorWithDescription(v18, v17, v19);

      goto LABEL_8;
    }

    v8 = CWFErrorDescription(@"WiFiNetworkSharingError", 3uLL);
    v13 = CWFErrorWithDescription(@"WiFiNetworkSharingError", 3, v8);
    goto LABEL_8;
  }

  v13 = 0;
LABEL_10:
  response = [__checkinCopy response];

  if (response)
  {
    response2 = [__checkinCopy response];
    (response2)[2](response2, v13, 0);
  }
}

- (void)__getNetworkManagedByMDM:(id)m
{
  mCopy = m;
  v16 = mCopy;
  if (self->_configProfileManager)
  {
    info = [mCopy info];
    v6 = [info objectForKeyedSubscript:@"NetworkProfile"];

    if (v6)
    {
      response = [(CWFConfigurationProfileManager *)self->_configProfileManager isNetworkManagedByMDM:v6];

      goto LABEL_4;
    }

    v12 = 22;
  }

  else
  {
    v12 = 6;
  }

  v13 = *MEMORY[0x1E696A798];
  v14 = CWFErrorDescription(*MEMORY[0x1E696A798], v12);
  response = CWFErrorWithDescription(v13, v12, v14);

  if (!response)
  {
LABEL_4:
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v9 = [MEMORY[0x1E696AD98] numberWithBool:response];
    [dictionary setObject:v9 forKeyedSubscript:@"Result"];

    response = [v16 response];

    if (response)
    {
      response2 = [v16 response];
      v11 = [dictionary copy];
      (response2)[2](response2, 0, v11);

      response = 0;
    }

    goto LABEL_6;
  }

  response3 = [v16 response];

  if (response3)
  {
    dictionary = [v16 response];
    dictionary[2](dictionary, response, 0);
LABEL_6:
  }
}

- (void)__getDeviceSupervised:(id)supervised
{
  supervisedCopy = supervised;
  configProfileManager = self->_configProfileManager;
  if (configProfileManager)
  {
    isDeviceSupervised = [(CWFConfigurationProfileManager *)configProfileManager isDeviceSupervised];
    goto LABEL_3;
  }

  v10 = *MEMORY[0x1E696A798];
  v11 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
  isDeviceSupervised = CWFErrorWithDescription(v10, 6, v11);

  if (!isDeviceSupervised)
  {
LABEL_3:
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v7 = [MEMORY[0x1E696AD98] numberWithBool:isDeviceSupervised];
    [dictionary setObject:v7 forKeyedSubscript:@"Result"];

    isDeviceSupervised = [supervisedCopy response];

    if (isDeviceSupervised)
    {
      response = [supervisedCopy response];
      v9 = [dictionary copy];
      (response)[2](response, 0, v9);

      isDeviceSupervised = 0;
    }

    goto LABEL_5;
  }

  response2 = [supervisedCopy response];

  if (response2)
  {
    dictionary = [supervisedCopy response];
    dictionary[2](dictionary, isDeviceSupervised, 0);
LABEL_5:
  }
}

- (void)__getNearbyRecommendedNetworks:(id)networks
{
  networksCopy = networks;
  wifiUserAgentConnection = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];

  if (wifiUserAgentConnection)
  {
    wifiUserAgentConnection2 = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CC4EC8;
    v7[3] = &unk_1E86E8448;
    v8 = networksCopy;
    (wifiUserAgentConnection2)[2](wifiUserAgentConnection2, v7);
  }
}

- (void)__getRecommendedKnownNetworks:(id)networks
{
  networksCopy = networks;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1E0BC2D80;
  v15 = sub_1E0BC61FC;
  v16 = 0;
  mutexQueue = self->_mutexQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1E0CC5290;
  v10[3] = &unk_1E86E6A28;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(mutexQueue, v10);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:v12[5] forKeyedSubscript:@"Result"];
  response = [networksCopy response];

  if (response)
  {
    response2 = [networksCopy response];
    v9 = [dictionary copy];
    (response2)[2](response2, 0, v9);
  }

  _Block_object_dispose(&v11, 8);
}

- (void)__dumpLogs:(id)logs
{
  logsCopy = logs;
  info = [logsCopy info];
  v6 = [info objectForKeyedSubscript:@"DumpLogsURL"];

  if (v6)
  {
    wifiUserAgentConnection = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];

    if (wifiUserAgentConnection)
    {
      wifiUserAgentConnection2 = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1E0CC5594;
      v14[3] = &unk_1E86E86E8;
      v15 = v6;
      v16 = logsCopy;
      (wifiUserAgentConnection2)[2](wifiUserAgentConnection2, v14);
    }

    v9 = 0;
  }

  else
  {
    v10 = *MEMORY[0x1E696A798];
    v11 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v9 = CWFErrorWithDescription(v10, 22, v11);

    if (v9)
    {
      response = [logsCopy response];

      if (response)
      {
        response2 = [logsCopy response];
        (response2)[2](response2, v9, 0);
      }
    }
  }
}

- (void)__getCloudNetworks:(id)networks
{
  networksCopy = networks;
  wifiUserAgentConnection = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];

  if (wifiUserAgentConnection)
  {
    wifiUserAgentConnection2 = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1E0CC5830;
    v7[3] = &unk_1E86E8448;
    v8 = networksCopy;
    (wifiUserAgentConnection2)[2](wifiUserAgentConnection2, v7);
  }
}

- (void)__getCaptivePortalCredentials:(id)credentials
{
  credentialsCopy = credentials;
  info = [credentialsCopy info];
  v6 = [info objectForKeyedSubscript:@"NetworkProfile"];

  if (v6)
  {
    wifiUserAgentConnection = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];

    if (wifiUserAgentConnection)
    {
      wifiUserAgentConnection2 = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1E0CC5C18;
      v14[3] = &unk_1E86E86E8;
      v15 = v6;
      v16 = credentialsCopy;
      (wifiUserAgentConnection2)[2](wifiUserAgentConnection2, v14);
    }

    v9 = 0;
  }

  else
  {
    v10 = *MEMORY[0x1E696A798];
    v11 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v9 = CWFErrorWithDescription(v10, 22, v11);

    if (v9)
    {
      response = [credentialsCopy response];

      if (response)
      {
        response2 = [credentialsCopy response];
        (response2)[2](response2, v9, 0);
      }
    }
  }
}

- (void)__setCaptivePortalCredentials:(id)credentials
{
  credentialsCopy = credentials;
  info = [credentialsCopy info];
  v6 = [info objectForKeyedSubscript:@"CaptivePortalCredentials"];

  info2 = [credentialsCopy info];
  v8 = [info2 objectForKeyedSubscript:@"NetworkProfile"];

  if (v8)
  {
    wifiUserAgentConnection = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];

    if (wifiUserAgentConnection)
    {
      wifiUserAgentConnection2 = [(CWFXPCRequestProxy *)self wifiUserAgentConnection];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = sub_1E0CC6058;
      v16[3] = &unk_1E86E8710;
      v17 = v6;
      v18 = v8;
      v19 = credentialsCopy;
      (wifiUserAgentConnection2)[2](wifiUserAgentConnection2, v16);
    }

    v11 = 0;
  }

  else
  {
    v12 = *MEMORY[0x1E696A798];
    v13 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v11 = CWFErrorWithDescription(v12, 22, v13);

    if (v11)
    {
      response = [credentialsCopy response];

      if (response)
      {
        response2 = [credentialsCopy response];
        (response2)[2](response2, v11, 0);
      }
    }
  }
}

- (void)__getNetworkOfInterestHomeState:(id)state
{
  stateCopy = state;
  info = [stateCopy info];
  v5 = [info objectForKeyedSubscript:@"NetworkProfile"];

  if (v5)
  {
    noiManager = [(CWFXPCRequestProxy *)self noiManager];
    networkName = [v5 networkName];
    response = [noiManager homeTypeForNetworkName:networkName];

    networkOfInterestHomeState = [v5 networkOfInterestHomeState];
    if (response)
    {
      if (response != networkOfInterestHomeState)
      {
        [v5 setNetworkOfInterestHomeState:response];
        date = [MEMORY[0x1E695DF00] date];
        [v5 setNetworkOfInterestHomeStateUpdatedAt:date];
      }
    }

    else
    {
      response = networkOfInterestHomeState;
    }

    goto LABEL_6;
  }

  v15 = *MEMORY[0x1E696A798];
  v16 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
  response = CWFErrorWithDescription(v15, 22, v16);

  if (!response)
  {
LABEL_6:
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:response];
    [dictionary setObject:v12 forKeyedSubscript:@"Result"];

    response = [stateCopy response];

    if (response)
    {
      response2 = [stateCopy response];
      v14 = [dictionary copy];
      (response2)[2](response2, 0, v14);

      response = 0;
    }

    goto LABEL_8;
  }

  response3 = [stateCopy response];

  if (response3)
  {
    dictionary = [stateCopy response];
    (dictionary)[2](dictionary, response, 0);
LABEL_8:
  }
}

- (void)__getNetworkOfInterestWorkState:(id)state
{
  stateCopy = state;
  info = [stateCopy info];
  v5 = [info objectForKeyedSubscript:@"NetworkProfile"];

  if (v5)
  {
    noiManager = [(CWFXPCRequestProxy *)self noiManager];
    networkName = [v5 networkName];
    response = [noiManager workTypeForNetworkName:networkName];

    networkOfInterestWorkState = [v5 networkOfInterestWorkState];
    if (response)
    {
      if (response != networkOfInterestWorkState)
      {
        [v5 setNetworkOfInterestWorkState:response];
        date = [MEMORY[0x1E695DF00] date];
        [v5 setNetworkOfInterestWorkStateUpdatedAt:date];
      }
    }

    else
    {
      response = networkOfInterestWorkState;
    }

    goto LABEL_6;
  }

  v15 = *MEMORY[0x1E696A798];
  v16 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
  response = CWFErrorWithDescription(v15, 22, v16);

  if (!response)
  {
LABEL_6:
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:response];
    [dictionary setObject:v12 forKeyedSubscript:@"Result"];

    response = [stateCopy response];

    if (response)
    {
      response2 = [stateCopy response];
      v14 = [dictionary copy];
      (response2)[2](response2, 0, v14);

      response = 0;
    }

    goto LABEL_8;
  }

  response3 = [stateCopy response];

  if (response3)
  {
    dictionary = [stateCopy response];
    (dictionary)[2](dictionary, response, 0);
LABEL_8:
  }
}

- (void)__getBrokenBackhaulState:(id)state
{
  v10[1] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  response = [stateCopy response];

  if (response)
  {
    response2 = [stateCopy response];
    v9 = @"Result";
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[CWFBrokenBackhaulMonitor brokenBackhaulState](self->_bbhMonitor, "brokenBackhaulState")}];
    v10[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    (response2)[2](response2, 0, v8);
  }
}

- (void)__getBrokenBackhaulStateUpdatedAt:(id)at
{
  v11[1] = *MEMORY[0x1E69E9840];
  atCopy = at;
  brokenBackhaulStateUpdatedAt = [(CWFBrokenBackhaulMonitor *)self->_bbhMonitor brokenBackhaulStateUpdatedAt];
  response = [atCopy response];

  if (response)
  {
    response2 = [atCopy response];
    v8 = response2;
    if (brokenBackhaulStateUpdatedAt)
    {
      v10 = @"Result";
      v11[0] = brokenBackhaulStateUpdatedAt;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      (v8)[2](v8, 0, v9);
    }

    else
    {
      (*(response2 + 16))(response2, 0, 0);
    }
  }
}

- (void)__confirmBrokenBackhaul:(id)backhaul
{
  v40[1] = *MEMORY[0x1E69E9840];
  backhaulCopy = backhaul;
  info = [backhaulCopy info];
  v6 = [info objectForKeyedSubscript:@"ProbeTimeout"];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  if (unsignedIntegerValue)
  {
    v8 = unsignedIntegerValue;
  }

  else
  {
    v8 = 2000;
  }

  info2 = [backhaulCopy info];
  v10 = [info2 objectForKeyedSubscript:@"ProbeCount"];
  unsignedIntegerValue2 = [v10 unsignedIntegerValue];

  if (unsignedIntegerValue2 <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = unsignedIntegerValue2;
  }

  requestParameters = [backhaulCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  v15 = [(CWFXPCRequestProxy *)self SCNetworkServiceWithInterfaceName:interfaceName];
  iPv4Addresses = [v15 IPv4Addresses];
  iPv4Router = [v15 IPv4Router];
  iPv6Addresses = [v15 IPv6Addresses];
  iPv6Router = [v15 IPv6Router];
  v34 = iPv6Router;
  if (iPv4Addresses && iPv4Router || iPv6Addresses && iPv6Router)
  {
    bbhMonitor = self->_bbhMonitor;
    v21 = iPv4Addresses;
    v22 = iPv6Addresses;
    v23 = interfaceName;
    v24 = v8;
    if (iPv4Router)
    {
      v25 = iPv4Router;
    }

    else
    {
      v25 = iPv6Router;
    }

    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = sub_1E0CC6BBC;
    v35[3] = &unk_1E86E8738;
    v36 = backhaulCopy;
    v26 = v24;
    interfaceName = v23;
    iPv6Addresses = v22;
    iPv4Addresses = v21;
    [(CWFBrokenBackhaulMonitor *)bbhMonitor confirmBrokenBackhaulUsingTimeout:v26 count:v12 preflightPingAddress:v25 completion:v35];
    response2 = v36;
  }

  else
  {
    response = [backhaulCopy response];

    if (!response)
    {
      goto LABEL_16;
    }

    response2 = [backhaulCopy response];
    v33 = MEMORY[0x1E696ABC0];
    v29 = *MEMORY[0x1E696A798];
    v39 = *MEMORY[0x1E696A578];
    v40[0] = @"WiFi has no IPv4/IPv6";
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v31 = [v33 errorWithDomain:v29 code:1 userInfo:v30];
    v37 = @"Result";
    v38 = &unk_1F5BBC958;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    (response2)[2](response2, v31, v32);
  }

LABEL_16:
}

- (void)__removeUnusedKnownNetworks
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(v53) = 0;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v4, 1, "[corewifi] Checking for obsolete/unused known networks eligible for removal", &v53, 2);
  }

  v6 = [(CWFXPCRequestProxy *)self __apple80211WithVirtualInterfaceRole:0 parentInterfaceName:0];
  if (v6)
  {
    __knownNetworkProfiles = [(CWFXPCRequestProxy *)self __knownNetworkProfiles];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v8 = [__knownNetworkProfiles countByEnumeratingWithState:&v49 objects:v55 count:16];
    if (!v8)
    {
      goto LABEL_62;
    }

    v9 = v8;
    v10 = MEMORY[0x1E69E9C10];
    v11 = *v50;
    while (1)
    {
      v12 = 0;
      do
      {
        if (*v50 != v11)
        {
          objc_enumerationMutation(__knownNetworkProfiles);
        }

        v13 = *(*(&v49 + 1) + 8 * v12);
        if ([v13 isProfileBased])
        {
          v38 = CWFGetOSLog();
          if (v38)
          {
            interfaceName = CWFGetOSLog();
          }

          else
          {
            v41 = v10;
            interfaceName = v10;
          }

          if (os_log_type_enabled(interfaceName, OS_LOG_TYPE_DEBUG))
          {
            v53 = 138412290;
            *v54 = v13;
            LODWORD(v46) = 12;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, interfaceName, 2, "[corewifi] Known network is profile-based, will not remove (%@)", &v53, v46);
          }

          goto LABEL_47;
        }

        if ([v13 isOpen] & 1) != 0 || (objc_msgSend(v13, "isOWE"))
        {
          if (([v13 isCaptive] & 1) != 0 || objc_msgSend(v13, "wasCaptive"))
          {
            lastJoinedOnAnyDeviceAt = [v13 lastJoinedOnAnyDeviceAt];
            [lastJoinedOnAnyDeviceAt timeIntervalSinceNow];
            v16 = v15;
            lastJoinedOnAnyDeviceAt2 = [v13 lastJoinedOnAnyDeviceAt];
            [lastJoinedOnAnyDeviceAt2 timeIntervalSinceNow];
            v19 = v18;

            if (v16 < 0.0)
            {
              if (v19 < -63072000.0)
              {
                goto LABEL_22;
              }

LABEL_19:
              v20 = CWFGetOSLog();
              if (v20)
              {
                interfaceName = CWFGetOSLog();
              }

              else
              {
                v31 = v10;
                interfaceName = v10;
              }

              if (os_log_type_enabled(interfaceName, OS_LOG_TYPE_DEBUG))
              {
                v53 = 67109378;
                *v54 = 730;
                *&v54[4] = 2112;
                *&v54[6] = v13;
                LODWORD(v46) = 18;
                _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, interfaceName, 2, "[corewifi] Open (captive) known network was not joined more than %d days ago, will not remove (%@)", &v53, v46);
              }
            }

            else
            {
              if (v19 <= 63072000.0)
              {
                goto LABEL_19;
              }

LABEL_22:
              v22 = CWFGetOSLog();
              if (v22)
              {
                v23 = CWFGetOSLog();
              }

              else
              {
                v32 = v10;
                v23 = v10;
              }

              if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
                v53 = 67109378;
                *v54 = 730;
                *&v54[4] = 2112;
                *&v54[6] = v13;
                LODWORD(v46) = 18;
                _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v23, 1, "[corewifi] Open (captive) known network was joined more than %d days ago, removing network (%@)", &v53, v46);
              }

              interfaceName = [v6 interfaceName];
              v48[0] = MEMORY[0x1E69E9820];
              v48[1] = 3221225472;
              v48[2] = sub_1E0CC74C0;
              v48[3] = &unk_1E86E84C0;
              v48[4] = v13;
              v33 = v48;
LABEL_46:
              [(CWFXPCRequestProxy *)self __removeNetworkProfile:v13 reason:9 interfaceName:interfaceName reply:v33];
            }

LABEL_47:

            goto LABEL_48;
          }

          lastJoinedOnAnyDeviceAt3 = [v13 lastJoinedOnAnyDeviceAt];
          [lastJoinedOnAnyDeviceAt3 timeIntervalSinceNow];
          v26 = v25;
          lastJoinedOnAnyDeviceAt4 = [v13 lastJoinedOnAnyDeviceAt];
          [lastJoinedOnAnyDeviceAt4 timeIntervalSinceNow];
          v29 = v28;

          if (v26 < 0.0)
          {
            if (v29 >= -3628800.0)
            {
LABEL_26:
              v30 = CWFGetOSLog();
              if (v30)
              {
                interfaceName = CWFGetOSLog();
              }

              else
              {
                v36 = v10;
                interfaceName = v10;
              }

              if (os_log_type_enabled(interfaceName, OS_LOG_TYPE_DEBUG))
              {
                v53 = 67109378;
                *v54 = 42;
                *&v54[4] = 2112;
                *&v54[6] = v13;
                LODWORD(v46) = 18;
                _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, interfaceName, 2, "[corewifi] Open (non-captive) known network was not joined more than %d days ago, will not remove (%@)", &v53, v46);
              }

              goto LABEL_47;
            }
          }

          else if (v29 <= 3628800.0)
          {
            goto LABEL_26;
          }

          v34 = CWFGetOSLog();
          if (v34)
          {
            v35 = CWFGetOSLog();
          }

          else
          {
            v37 = v10;
            v35 = v10;
          }

          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v53 = 67109378;
            *v54 = 42;
            *&v54[4] = 2112;
            *&v54[6] = v13;
            LODWORD(v46) = 18;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v35, 1, "[corewifi] Open (non-captive) known network was joined more than %d days ago, removing network (%@)", &v53, v46);
          }

          interfaceName = [v6 interfaceName];
          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = sub_1E0CC75CC;
          v47[3] = &unk_1E86E84C0;
          v47[4] = v13;
          v33 = v47;
          goto LABEL_46;
        }

        v39 = CWFGetOSLog();
        if (v39)
        {
          v40 = CWFGetOSLog();
        }

        else
        {
          v42 = v10;
          v40 = v10;
        }

        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          v53 = 138412290;
          *v54 = v13;
          LODWORD(v46) = 12;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v40, 2, "[corewifi] Known network is not open/OWE, will not remove (%@)", &v53, v46);
        }

LABEL_48:
        ++v12;
      }

      while (v9 != v12);
      v43 = [__knownNetworkProfiles countByEnumeratingWithState:&v49 objects:v55 count:16];
      v9 = v43;
      if (!v43)
      {
        goto LABEL_62;
      }
    }
  }

  v44 = CWFGetOSLog();
  if (v44)
  {
    __knownNetworkProfiles = CWFGetOSLog();
  }

  else
  {
    __knownNetworkProfiles = MEMORY[0x1E69E9C10];
    v45 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(__knownNetworkProfiles, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v53) = 0;
    LODWORD(v46) = 2;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, __knownNetworkProfiles, 16, "[corewifi] Failed to find WiFi interface, will not remove obsolete/unused known networks", &v53, v46);
  }

LABEL_62:
}

- (void)__setUCMExtProfile:(id)profile
{
  profileCopy = profile;
  requestParameters = [profileCopy requestParameters];
  interfaceName = [requestParameters interfaceName];

  v7 = [(CWFXPCRequestProxy *)self apple80211WithInterfaceName:interfaceName];
  if (!v7)
  {
    v16 = *MEMORY[0x1E696A798];
    v9 = CWFErrorDescription(*MEMORY[0x1E696A798], 6uLL);
    v17 = v16;
    v18 = 6;
LABEL_11:
    v12 = CWFErrorWithDescription(v17, v18, v9);
    goto LABEL_5;
  }

  info = [profileCopy info];
  v9 = [info objectForKeyedSubscript:@"UCMExtProfile"];

  if (!v9)
  {
    v19 = *MEMORY[0x1E696A798];
    v9 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v17 = v19;
    v18 = 22;
    goto LABEL_11;
  }

  v10 = [v7 powerOn:0];
  bOOLValue = [v10 BOOLValue];

  if (bOOLValue)
  {
    v22 = 0;
    [v7 setUCMExtProfile:v9 error:&v22];
    v12 = v22;
LABEL_5:
    v13 = v12;
    goto LABEL_6;
  }

  v20 = *MEMORY[0x1E696A798];
  v21 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x52uLL);
  v13 = CWFErrorWithDescription(v20, 82, v21);

LABEL_6:
  response = [profileCopy response];

  if (response)
  {
    response2 = [profileCopy response];
    (response2)[2](response2, v13, 0);
  }
}

- (void)__getWiFiNetworkSharingNetworkList:(id)list
{
  listCopy = list;
  if (_os_feature_enabled_impl())
  {
    info = [listCopy info];
    v5 = [info objectForKeyedSubscript:@"WiFiNetworkSharingClientID"];

    if (v5)
    {
      wifiNetworkSharingManager = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
      v7 = [wifiNetworkSharingManager isClientIDAuthorizedForWiFiNetworkSharing:v5];

      if (v7)
      {
        wifiNetworkSharingManager2 = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
        requestParameters = [listCopy requestParameters];
        wifiNetworkSharingNetworkListUpdateEventPredicateData = [requestParameters wifiNetworkSharingNetworkListUpdateEventPredicateData];
        response4 = [wifiNetworkSharingManager2 networkListForClientID:v5 predicateData:wifiNetworkSharingNetworkListUpdateEventPredicateData];

LABEL_5:
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        [dictionary setObject:response4 forKeyedSubscript:@"Result"];
        response = [listCopy response];

        if (response)
        {
          response2 = [listCopy response];
          (response2)[2](response2, 0, dictionary);
        }

        v15 = 0;
        goto LABEL_8;
      }

      v16 = CWFWiFiNetworkSharingErrorDomain;
      v17 = 8;
    }

    else
    {
      v16 = MEMORY[0x1E696A798];
      v17 = 22;
    }
  }

  else
  {
    v5 = 0;
    v16 = CWFWiFiNetworkSharingErrorDomain;
    v17 = 3;
  }

  v18 = *v16;
  v19 = CWFErrorDescription(*v16, v17);
  v15 = CWFErrorWithDescription(v18, v17, v19);

  if (!v15)
  {
    response4 = 0;
    goto LABEL_5;
  }

  response3 = [listCopy response];

  if (response3)
  {
    response4 = [listCopy response];
    (response4)[2](response4, v15, 0);
LABEL_8:
  }
}

- (void)__getWiFiNetworkSharingAskToShareNetworkList:(id)list
{
  listCopy = list;
  if (_os_feature_enabled_impl())
  {
    info = [listCopy info];
    v5 = [info objectForKeyedSubscript:@"WiFiNetworkSharingClientID"];

    if (v5)
    {
      wifiNetworkSharingManager = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
      response4 = [wifiNetworkSharingManager askToShareNetworkListForClientID:v5];

LABEL_4:
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [dictionary setObject:response4 forKeyedSubscript:@"Result"];
      response = [listCopy response];

      if (response)
      {
        response2 = [listCopy response];
        (response2)[2](response2, 0, dictionary);
      }

      v5 = 0;
      goto LABEL_7;
    }

    v11 = MEMORY[0x1E696A798];
    v12 = 22;
  }

  else
  {
    v11 = CWFWiFiNetworkSharingErrorDomain;
    v12 = 3;
  }

  v13 = *v11;
  v14 = CWFErrorDescription(*v11, v12);
  v5 = CWFErrorWithDescription(v13, v12, v14);

  if (!v5)
  {
    response4 = 0;
    goto LABEL_4;
  }

  response3 = [listCopy response];

  if (response3)
  {
    response4 = [listCopy response];
    (response4)[2](response4, v5, 0);
LABEL_7:
  }
}

- (void)__getWiFiNetworkSharingAskToShareStatus:(id)status
{
  statusCopy = status;
  if (_os_feature_enabled_impl())
  {
    info = [statusCopy info];
    v6 = [info objectForKeyedSubscript:@"WiFiNetworkSharingClientID"];

    if (v6)
    {
      info2 = [statusCopy info];
      v8 = [info2 objectForKeyedSubscript:@"WiFiNetworkSharingNetworkID"];

      if (v8)
      {
        wifiNetworkSharingManager = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
        v22 = 0;
        v10 = [wifiNetworkSharingManager askToShareStatusForClientID:v6 networkID:v8 timestamp:&v22];
        v11 = v22;

LABEL_5:
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v13 = [MEMORY[0x1E696AD98] numberWithInteger:v10];
        [dictionary setObject:v13 forKeyedSubscript:@"WiFiNetworkSharingAskToShareStatus"];

        [dictionary setObject:v11 forKeyedSubscript:@"Timestamp"];
        response = [statusCopy response];

        if (response)
        {
          response2 = [statusCopy response];
          (response2)[2](response2, 0, dictionary);
        }

        v8 = 0;
        goto LABEL_8;
      }
    }

    v16 = MEMORY[0x1E696A798];
    v17 = 22;
  }

  else
  {
    v6 = 0;
    v16 = CWFWiFiNetworkSharingErrorDomain;
    v17 = 3;
  }

  v18 = *v16;
  v19 = CWFErrorDescription(*v16, v17);
  v8 = CWFErrorWithDescription(v18, v17, v19);

  if (!v8)
  {
    v11 = 0;
    v10 = 0;
    goto LABEL_5;
  }

  response3 = [statusCopy response];

  if (response3)
  {
    response4 = [statusCopy response];
    (response4)[2](response4, v8, 0);
  }

LABEL_8:
}

- (void)__setWiFiNetworkSharingAskToShareStatus:(id)status
{
  statusCopy = status;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v5 = CWFErrorDescription(@"WiFiNetworkSharingError", 3uLL);
    v14 = @"WiFiNetworkSharingError";
    v15 = 3;
LABEL_13:
    v11 = CWFErrorWithDescription(v14, v15, v5);
    goto LABEL_6;
  }

  info = [statusCopy info];
  v5 = [info objectForKeyedSubscript:@"WiFiNetworkSharingClientID"];

  if (!v5)
  {
    v16 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v14 = v16;
    v15 = 22;
    goto LABEL_13;
  }

  info2 = [statusCopy info];
  v7 = [info2 objectForKeyedSubscript:@"WiFiNetworkSharingNetworkID"];

  if (v7)
  {
    info3 = [statusCopy info];
    v9 = [info3 objectForKeyedSubscript:@"WiFiNetworkSharingAskToShareStatus"];

    if (v9)
    {
      wifiNetworkSharingManager = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
      [wifiNetworkSharingManager setAskToShareStatus:objc_msgSend(v9 clientID:"integerValue") networkID:{v5, v7}];

      v11 = 0;
    }

    else
    {
      v19 = *MEMORY[0x1E696A798];
      v20 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
      v11 = CWFErrorWithDescription(v19, 22, v20);
    }
  }

  else
  {
    v17 = *MEMORY[0x1E696A798];
    v18 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v11 = CWFErrorWithDescription(v17, 22, v18);
  }

LABEL_6:

  response = [statusCopy response];

  if (response)
  {
    response2 = [statusCopy response];
    (response2)[2](response2, v11, 0);
  }
}

- (void)__askToShareWiFiNetworkSharingNetworkFromAppex:(id)appex
{
  appexCopy = appex;
  if (_os_feature_enabled_impl())
  {
    info = [appexCopy info];
    v6 = [info objectForKeyedSubscript:@"WiFiNetworkSharingClientID"];

    if (v6)
    {
      wifiNetworkSharingManager = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
      v8 = [wifiNetworkSharingManager isClientIDAuthorizedForWiFiNetworkSharing:v6];

      if (v8)
      {
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = sub_1E0CC83D4;
        v19[3] = &unk_1E86E6420;
        v19[4] = self;
        v6 = v6;
        v20 = v6;
        [appexCopy setCancelationHandler:v19];
        wifiNetworkSharingManager2 = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = sub_1E0CC8428;
        v17[3] = &unk_1E86E8738;
        v18 = appexCopy;
        [wifiNetworkSharingManager2 askToShareFromAppexForClientID:v6 completion:v17];

        v10 = 0;
        goto LABEL_5;
      }

      v11 = CWFWiFiNetworkSharingErrorDomain;
      v12 = 8;
    }

    else
    {
      v11 = MEMORY[0x1E696A798];
      v12 = 22;
    }
  }

  else
  {
    v6 = 0;
    v11 = CWFWiFiNetworkSharingErrorDomain;
    v12 = 3;
  }

  v13 = *v11;
  v14 = CWFErrorDescription(*v11, v12);
  v10 = CWFErrorWithDescription(v13, v12, v14);

  if (v10)
  {
    response = [appexCopy response];

    if (response)
    {
      response2 = [appexCopy response];
      (response2)[2](response2, v10, 0);
    }
  }

LABEL_5:
}

- (void)__askToShareWiFiNetworkSharingNetworkFromApp:(id)app
{
  appCopy = app;
  if (_os_feature_enabled_impl())
  {
    info = [appCopy info];
    v6 = [info objectForKeyedSubscript:@"WiFiNetworkSharingClientID"];

    if (v6)
    {
      wifiNetworkSharingManager = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
      v8 = [wifiNetworkSharingManager isClientIDAuthorizedForWiFiNetworkSharing:v6];

      if (v8)
      {
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = sub_1E0CC8790;
        v19[3] = &unk_1E86E6420;
        v19[4] = self;
        v6 = v6;
        v20 = v6;
        [appCopy setCancelationHandler:v19];
        wifiNetworkSharingManager2 = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = sub_1E0CC87E4;
        v17[3] = &unk_1E86E8738;
        v18 = appCopy;
        [wifiNetworkSharingManager2 askToShareFromAppForClientID:v6 completion:v17];

        v10 = 0;
        goto LABEL_5;
      }

      v11 = CWFWiFiNetworkSharingErrorDomain;
      v12 = 8;
    }

    else
    {
      v11 = MEMORY[0x1E696A798];
      v12 = 22;
    }
  }

  else
  {
    v6 = 0;
    v11 = CWFWiFiNetworkSharingErrorDomain;
    v12 = 3;
  }

  v13 = *v11;
  v14 = CWFErrorDescription(*v11, v12);
  v10 = CWFErrorWithDescription(v13, v12, v14);

  if (v10)
  {
    response = [appCopy response];

    if (response)
    {
      response2 = [appCopy response];
      (response2)[2](response2, v10, 0);
    }
  }

LABEL_5:
}

- (void)__acknowledgeWiFiNetworkSharingNetworkListUpdate:(id)update
{
  updateCopy = update;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v5 = CWFErrorDescription(@"WiFiNetworkSharingError", 3uLL);
    v12 = @"WiFiNetworkSharingError";
    v13 = 3;
LABEL_12:
    v9 = CWFErrorWithDescription(v12, v13, v5);
    goto LABEL_5;
  }

  info = [updateCopy info];
  v5 = [info objectForKeyedSubscript:@"WiFiNetworkSharingClientID"];

  if (!v5)
  {
    v14 = *MEMORY[0x1E696A798];
    v5 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v12 = v14;
    v13 = 22;
    goto LABEL_12;
  }

  info2 = [updateCopy info];
  v7 = [info2 objectForKeyedSubscript:@"WiFiNetworkSharingNetworkListUpdate"];

  if (v7)
  {
    wifiNetworkSharingManager = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
    [wifiNetworkSharingManager acknowledgeNetworkListUpdate:v7 clientID:v5];

    v9 = 0;
  }

  else
  {
    v15 = *MEMORY[0x1E696A798];
    v16 = CWFErrorDescription(*MEMORY[0x1E696A798], 0x16uLL);
    v9 = CWFErrorWithDescription(v15, 22, v16);
  }

LABEL_5:

  response = [updateCopy response];

  if (response)
  {
    response2 = [updateCopy response];
    (response2)[2](response2, v9, 0);
  }
}

- (void)__getWiFiNetworkSharingAuthorizationLevel:(id)level
{
  levelCopy = level;
  if (_os_feature_enabled_impl())
  {
    info = [levelCopy info];
    v5 = [info objectForKeyedSubscript:@"WiFiNetworkSharingClientID"];

    if (v5)
    {
      wifiNetworkSharingManager = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
      response4 = [wifiNetworkSharingManager authorizationLevelForClientID:v5];

LABEL_4:
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [dictionary setObject:response4 forKeyedSubscript:@"WiFiNetworkSharingAuthorizationLevel"];
      response = [levelCopy response];

      if (response)
      {
        response2 = [levelCopy response];
        (response2)[2](response2, 0, dictionary);
      }

      v5 = 0;
      goto LABEL_7;
    }

    v11 = MEMORY[0x1E696A798];
    v12 = 22;
  }

  else
  {
    v11 = CWFWiFiNetworkSharingErrorDomain;
    v12 = 3;
  }

  v13 = *v11;
  v14 = CWFErrorDescription(*v11, v12);
  v5 = CWFErrorWithDescription(v13, v12, v14);

  if (!v5)
  {
    response4 = 0;
    goto LABEL_4;
  }

  response3 = [levelCopy response];

  if (response3)
  {
    response4 = [levelCopy response];
    (response4)[2](response4, v5, 0);
LABEL_7:
  }
}

- (void)__requestWiFiNetworkSharingAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  if (_os_feature_enabled_impl())
  {
    info = [authorizationCopy info];
    v6 = [info objectForKeyedSubscript:@"WiFiNetworkSharingClientID"];

    if (v6)
    {
      wifiNetworkSharingManager = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
      v8 = [wifiNetworkSharingManager isClientIDAuthorizedForDeviceAccess:v6];

      if (v8)
      {
        wifiNetworkSharingManager2 = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
        v10 = [wifiNetworkSharingManager2 isClientIDUsingSecureTransportForDeviceAccess:v6];

        if (v10)
        {
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = sub_1E0CC8F30;
          v21[3] = &unk_1E86E6420;
          v21[4] = self;
          v6 = v6;
          v22 = v6;
          [authorizationCopy setCancelationHandler:v21];
          wifiNetworkSharingManager3 = [(CWFXPCRequestProxy *)self wifiNetworkSharingManager];
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = sub_1E0CC8F84;
          v19[3] = &unk_1E86E8760;
          v20 = authorizationCopy;
          [wifiNetworkSharingManager3 requestAuthorizationForClientID:v6 completion:v19];

          v12 = 0;
          goto LABEL_6;
        }

        v13 = CWFWiFiNetworkSharingErrorDomain;
        v14 = 6;
      }

      else
      {
        v13 = CWFWiFiNetworkSharingErrorDomain;
        v14 = 8;
      }
    }

    else
    {
      v13 = MEMORY[0x1E696A798];
      v14 = 22;
    }
  }

  else
  {
    v6 = 0;
    v13 = CWFWiFiNetworkSharingErrorDomain;
    v14 = 3;
  }

  v15 = *v13;
  v16 = CWFErrorDescription(*v13, v14);
  v12 = CWFErrorWithDescription(v15, v14, v16);

  if (v12)
  {
    response = [authorizationCopy response];

    if (response)
    {
      response2 = [authorizationCopy response];
      (response2)[2](response2, v12, 0);
    }
  }

LABEL_6:
}

@end