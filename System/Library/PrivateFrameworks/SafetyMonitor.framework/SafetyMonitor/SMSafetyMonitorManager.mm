@interface SMSafetyMonitorManager
+ (id)defaultManager;
- (BOOL)shouldDropMessage:(id)message from:(id)from fromMe:(BOOL)me;
- (SMSafetyMonitorManager)initWithRestorationIdentifier:(id)identifier;
- (double)requestTimeFromTimed;
- (id)_getConnection;
- (id)_proxyForServicingSelector:(SEL)selector asynchronous:(BOOL)asynchronous withErrorHandler:(id)handler;
- (id)createSMProxyErrorWithSelector:(SEL)selector error:(id)error;
- (int64_t)prepareUserInfoForNotificationContent:(id)content initiatorHandle:(id)handle messageUrl:(id)url;
- (void)_createConnection;
- (void)_setUpMonitoring;
- (void)_startHeartbeatForSessionID:(id)d;
- (void)_stopHeartbeat;
- (void)calculateDistanceToDestination:(id)destination completionHandler:(id)handler;
- (void)cancelInitializationForSessionID:(id)d handler:(id)handler;
- (void)cancelInitializationWithCompletion:(id)completion;
- (void)cancelMadridMessageSendForMessageGUID:(id)d toConversation:(id)conversation completion:(id)completion;
- (void)checkConversationEligibility:(id)eligibility handler:(id)handler;
- (void)checkEligibilityOfDestination:(id)destination completionHandler:(id)handler;
- (void)checkHasSimWithHandler:(id)handler;
- (void)checkIMessageAccountEnabledWithHandler:(id)handler;
- (void)checkInitiatorEligibilityWithHandler:(id)handler;
- (void)clearSessionMonitorStatesWithHandler:(id)handler;
- (void)clearSessionsWithHandler:(id)handler;
- (void)clearSuggestionsWithHandler:(id)handler;
- (void)clearTriggerDestinationStatesWithHandler:(id)handler;
- (void)createConnection;
- (void)dealloc;
- (void)detailsViewOpenedForSessionID:(id)d;
- (void)endSessionForSessionID:(id)d reason:(unint64_t)reason completion:(id)completion;
- (void)estimateEtaToDestination:(id)destination transportType:(unint64_t)type completionHandler:(id)handler;
- (void)fetchAllReceiverSessionStatusWithCompletion:(id)completion;
- (void)fetchCurrentLocalSessionStateWithHandler:(id)handler;
- (void)fetchCurrentSessionStateWithCompletion:(id)completion;
- (void)fetchCurrentWorkoutSnapshotWithCompletion:(id)completion;
- (void)fetchDeviceConfigurationLowPowerModeWarningStateWithHandler:(id)handler;
- (void)fetchInitiatorSafetyCacheForSessionID:(id)d completion:(id)completion;
- (void)fetchMostLikelyReceiverHandlesWithHandler:(id)handler;
- (void)fetchMostLikelyReceiverHandlesWithOptions:(id)options handler:(id)handler;
- (void)fetchMostLikelySessionDestinationsWithHandler:(id)handler;
- (void)fetchMostRecentSessionMonitorStateWithSessionID:(id)d handler:(id)handler;
- (void)fetchNumEmergencyRecipientsWithReceiverHandles:(id)handles handler:(id)handler;
- (void)fetchNumFavoriteRecipientsWithReceiverHandles:(id)handles handler:(id)handler;
- (void)fetchNumiCloudFamilyRecipientsWithReceiverHandles:(id)handles handler:(id)handler;
- (void)fetchQuickReplySuggestionURLWithCompletion:(id)completion;
- (void)fetchReceiverSafetyCacheForSessionID:(id)d completion:(id)completion;
- (void)fetchReceiverSessionStatusForSessionID:(id)d completion:(id)completion;
- (void)fetchSOSReceiversWithCompletion:(id)completion;
- (void)fetchSessionConfigurationsWithOptions:(id)options handler:(id)handler;
- (void)fetchSessionManagerStatesWithOptions:(id)options handler:(id)handler;
- (void)fetchShouldShowProactiveSuggestionsWithHandler:(id)handler;
- (void)fetchSuggestedCheckInURLForWorkoutSuggestionWithHandler:(id)handler;
- (void)fetchSuggestedSessionConfigurationWithHandler:(id)handler;
- (void)fetchSuggestionsCountWithOptions:(id)options handler:(id)handler;
- (void)fetchSuggestionsWithOptions:(id)options handler:(id)handler;
- (void)fetchTriggerDestinationStateWithSessionID:(id)d handler:(id)handler;
- (void)handleDaemonStart;
- (void)handoffSessionForSessionID:(id)d handler:(id)handler;
- (void)iMessageConversationDeletedFor:(id)for;
- (void)iMessageDeletedFor:(id)for;
- (void)iMessageGroupDisplayNameChangedFor:(id)for;
- (void)iMessageGroupMembershipChangedFor:(id)for;
- (void)iMessageGroupPhotoChangedFor:(id)for;
- (void)iMessageReceived:(id)received fromHandle:(id)handle fromMe:(BOOL)me;
- (void)iMessageScheduledSendCancelFor:(id)for successful:(BOOL)successful withError:(id)error;
- (void)iMessageScheduledSendScheduledFor:(id)for guid:(id)guid successful:(BOOL)successful withError:(id)error;
- (void)iMessageScheduledSendTriggeredFor:(id)for;
- (void)iMessageSendFor:(id)for guid:(id)guid successful:(BOOL)successful withError:(id)error;
- (void)initializeSessionWithConversation:(id)conversation completion:(id)completion;
- (void)kickedFromIMessageGroupWith:(id)with;
- (void)launchSessionInitiationUIWithConfiguration:(id)configuration handler:(id)handler;
- (void)launchTaskWithSelector:(SEL)selector remainingAttempts:(unint64_t)attempts proxyErrorHandler:(id)handler taskBlock:(id)block;
- (void)modifySessionWithConfiguration:(id)configuration handler:(id)handler;
- (void)onInitiatorSafetyCacheChangeForSessionID:(id)d phoneCache:(id)cache watchCache:(id)watchCache cacheExpiryDate:(id)date cacheReleaseDate:(id)releaseDate;
- (void)onLocalSessionStateChanged:(id)changed withError:(id)error;
- (void)onReceiverSafetyCacheChangeForSessionID:(id)d phoneCache:(id)cache watchCache:(id)watchCache;
- (void)onReceiverSessionStatusChangeForSessionID:(id)d sessionStatus:(id)status;
- (void)onSessionStateChanged:(id)changed forActiveDevice:(BOOL)device withError:(id)error;
- (void)processStateForHeartbeat:(id)heartbeat forActiveDevice:(BOOL)device withError:(id)error;
- (void)promptDestinationAnomalyVerificationWithContext:(id)context handler:(id)handler;
- (void)promptRoundTripAnomalyVerificationWithContext:(id)context handler:(id)handler;
- (void)promptSafeArrivalWithContext:(id)context handler:(id)handler;
- (void)promptTimerEndedVerificationWithContext:(id)context handler:(id)handler;
- (void)promptWorkoutAnomalyVerificationWithContext:(id)context handler:(id)handler;
- (void)respondToNotificationWithIdentifier:(id)identifier sessionIdentifier:(id)sessionIdentifier actionIdentifier:(id)actionIdentifier handler:(id)handler;
- (void)respondToTriggerPromptForSessionID:(id)d response:(int64_t)response handler:(id)handler;
- (void)respondedToCheckInRemindersTipWithResponse:(int64_t)response;
- (void)runProactiveSuggestionsEngineWithContext:(id)context shouldStoreSuggestions:(BOOL)suggestions handler:(id)handler;
- (void)scheduleMadridMessageSendForMessage:(id)message messageGUID:(id)d associatedGUID:(id)iD sendDate:(id)date toConversation:(id)conversation summaryText:(id)text completion:(id)completion;
- (void)sendHeartbeatForSessionID:(id)d handler:(id)handler;
- (void)sendIDSMessage:(id)message toConversation:(id)conversation completion:(id)completion;
- (void)sendIDSMessageToMyDevices:(id)devices completion:(id)completion;
- (void)sendIDSMessageToMyNearbyDevices:(id)devices completion:(id)completion;
- (void)sendIDSMessageToPairedDevice:(id)device completion:(id)completion;
- (void)sendMadridMessage:(id)message associatedGUID:(id)d toConversation:(id)conversation summaryText:(id)text completion:(id)completion;
- (void)sendSafetyCacheForSessionID:(id)d handler:(id)handler;
- (void)shouldShowKeyboardSuggestionsForInitiator:(id)initiator receiver:(id)receiver handler:(id)handler;
- (void)shouldShowTipKitSuggestionsForInitiator:(id)initiator receiver:(id)receiver handler:(id)handler;
- (void)showAlwaysOnPromptWithConfiguration:(id)configuration handler:(id)handler;
- (void)showSuggestionsDetectionUIWithSuggestion:(id)suggestion handler:(id)handler;
- (void)startCheckInRemindersTipMetricsCollection;
- (void)startMonitoringInitiatorSafetyCacheWithHandler:(id)handler;
- (void)startMonitoringLocalSessionStateWithHandler:(id)handler;
- (void)startMonitoringReceiverSafetyCacheWithHandler:(id)handler;
- (void)startMonitoringReceiverSessionStatusWithHandler:(id)handler;
- (void)startMonitoringSessionStateWithHandler:(id)handler;
- (void)startSessionWithConfiguration:(id)configuration completion:(id)completion;
- (void)stopMonitoringInitiatorSafetyCacheWithCompletion:(id)completion;
- (void)stopMonitoringLocalSessionStateWithHandler:(id)handler;
- (void)stopMonitoringReceiverSafetyCacheWithCompletion:(id)completion;
- (void)stopMonitoringReceiverSessionStatusWithCompletion:(id)completion;
- (void)stopMonitoringSessionStateWithHandler:(id)handler;
- (void)storeSessionConfigurations:(id)configurations handler:(id)handler;
- (void)storeSessionManagerStates:(id)states handler:(id)handler;
- (void)storeSessionMonitorStates:(id)states handler:(id)handler;
- (void)storeSuggestions:(id)suggestions handler:(id)handler;
- (void)storeTriggerDestinationStates:(id)states handler:(id)handler;
- (void)submitInitializationAnalyticsEventWithError:(id)error conversation:(id)conversation duration:(double)duration;
- (void)userRequestedCacheDownloadForSessionID:(id)d completion:(id)completion;
@end

@implementation SMSafetyMonitorManager

+ (id)defaultManager
{
  if (qword_280BCBAB8 != -1)
  {
    dispatch_once(&qword_280BCBAB8, &__block_literal_global_3);
  }

  v3 = _MergedGlobals_14;

  return v3;
}

- (id)_getConnection
{
  v11 = *MEMORY[0x277D85DE8];
  xpcConnection = [(SMSafetyMonitorManager *)self xpcConnection];

  if (!xpcConnection)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = 138412290;
      v10 = v8;
      _os_log_fault_impl(&dword_26455D000, v4, OS_LOG_TYPE_FAULT, "%@, xpcConnection is nil, create new connection", &v9, 0xCu);
    }

    [(SMSafetyMonitorManager *)self _createConnection];
  }

  xpcConnection2 = [(SMSafetyMonitorManager *)self xpcConnection];

  return xpcConnection2;
}

uint64_t __40__SMSafetyMonitorManager_defaultManager__block_invoke()
{
  _MergedGlobals_14 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (SMSafetyMonitorManager)initWithRestorationIdentifier:(id)identifier
{
  v33 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v29.receiver = self;
  v29.super_class = SMSafetyMonitorManager;
  v5 = [(SMSafetyMonitorManager *)&v29 init];
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v24 = v5;
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v7 = [callStackSymbols countByEnumeratingWithState:&v25 objects:v32 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v26;
        v10 = MEMORY[0x277D86220];
        do
        {
          v11 = 0;
          do
          {
            if (*v26 != v9)
            {
              objc_enumerationMutation(callStackSymbols);
            }

            v12 = *(*(&v25 + 1) + 8 * v11);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
            {
              v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v31 = v12;
                _os_log_debug_impl(&dword_26455D000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }
            }

            ++v11;
          }

          while (v8 != v11);
          v8 = [callStackSymbols countByEnumeratingWithState:&v25 objects:v32 count:16];
        }

        while (v8);
      }

      v5 = v24;
    }

    v14 = v5;
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uTF8String = [(SMSafetyMonitorManager *)v14 UTF8String];
    }

    else
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v14];
      uTF8String = [v17 UTF8String];
    }

    v18 = dispatch_queue_create(uTF8String, v15);

    queue = v14->_queue;
    v14->_queue = v18;

    v20 = [identifierCopy copy];
    restorationIdentifier = v14->_restorationIdentifier;
    v14->_restorationIdentifier = v20;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v14, onDaemonStartNotification, @"com.apple.routined.safetyMonitor", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    [(SMSafetyMonitorManager *)v14 createConnection];
  }

  return v5;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  xpcConnection = [(SMSafetyMonitorManager *)self xpcConnection];
  [xpcConnection invalidate];

  v5.receiver = self;
  v5.super_class = SMSafetyMonitorManager;
  [(SMSafetyMonitorManager *)&v5 dealloc];
}

- (void)_createConnection
{
  v187 = *MEMORY[0x277D85DE8];
  xpcConnection = [(SMSafetyMonitorManager *)self xpcConnection];
  [xpcConnection invalidate];

  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.routined.safetyMonitor" options:4096];
  [(SMSafetyMonitorManager *)self setXpcConnection:v4];

  xpcConnection2 = [(SMSafetyMonitorManager *)self xpcConnection];

  if (xpcConnection2)
  {
    xpcConnection3 = [(SMSafetyMonitorManager *)self xpcConnection];
    queue = [(SMSafetyMonitorManager *)self queue];
    [xpcConnection3 _setQueue:queue];

    xpcConnection4 = [(SMSafetyMonitorManager *)self xpcConnection];
    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28761B120];
    [xpcConnection4 setExportedInterface:v9];

    xpcConnection5 = [(SMSafetyMonitorManager *)self xpcConnection];
    v11 = [[SMSafetyMonitorManagerExportedObject alloc] initWithSafetyMonitorManager:self];
    [xpcConnection5 setExportedObject:v11];

    xpcConnection6 = [(SMSafetyMonitorManager *)self xpcConnection];
    v13 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2876201E8];
    [xpcConnection6 setRemoteObjectInterface:v13];

    xpcConnection7 = [(SMSafetyMonitorManager *)self xpcConnection];
    remoteObjectInterface = [xpcConnection7 remoteObjectInterface];
    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = [v16 setWithObjects:{v17, v18, v19, v20, v21, objc_opt_class(), 0}];
    [remoteObjectInterface setClasses:v22 forSelector:sel_startSessionWithConfiguration_completion_ argumentIndex:0 ofReply:0];

    xpcConnection8 = [(SMSafetyMonitorManager *)self xpcConnection];
    remoteObjectInterface2 = [xpcConnection8 remoteObjectInterface];
    v25 = MEMORY[0x277CBEB98];
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = objc_opt_class();
    v29 = objc_opt_class();
    v30 = objc_opt_class();
    v31 = [v25 setWithObjects:{v26, v27, v28, v29, v30, objc_opt_class(), 0}];
    [remoteObjectInterface2 setClasses:v31 forSelector:sel_modifySessionWithConfiguration_handler_ argumentIndex:0 ofReply:0];

    xpcConnection9 = [(SMSafetyMonitorManager *)self xpcConnection];
    remoteObjectInterface3 = [xpcConnection9 remoteObjectInterface];
    v34 = MEMORY[0x277CBEB98];
    v35 = objc_opt_class();
    v36 = objc_opt_class();
    v37 = objc_opt_class();
    v38 = objc_opt_class();
    v39 = objc_opt_class();
    v40 = [v34 setWithObjects:{v35, v36, v37, v38, v39, objc_opt_class(), 0}];
    [remoteObjectInterface3 setClasses:v40 forSelector:sel_checkInitiatorEligibilityWithHandler_ argumentIndex:0 ofReply:0];

    xpcConnection10 = [(SMSafetyMonitorManager *)self xpcConnection];
    remoteObjectInterface4 = [xpcConnection10 remoteObjectInterface];
    v43 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [remoteObjectInterface4 setClasses:v43 forSelector:sel_checkIMessageAccountEnabledWithHandler_ argumentIndex:0 ofReply:0];

    xpcConnection11 = [(SMSafetyMonitorManager *)self xpcConnection];
    remoteObjectInterface5 = [xpcConnection11 remoteObjectInterface];
    v46 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [remoteObjectInterface5 setClasses:v46 forSelector:sel_checkHasSimWithHandler_ argumentIndex:0 ofReply:0];

    xpcConnection12 = [(SMSafetyMonitorManager *)self xpcConnection];
    remoteObjectInterface6 = [xpcConnection12 remoteObjectInterface];
    v49 = MEMORY[0x277CBEB98];
    v50 = objc_opt_class();
    v51 = [v49 setWithObjects:{v50, objc_opt_class(), 0}];
    [remoteObjectInterface6 setClasses:v51 forSelector:sel_checkConversationEligibility_handler_ argumentIndex:0 ofReply:0];

    xpcConnection13 = [(SMSafetyMonitorManager *)self xpcConnection];
    remoteObjectInterface7 = [xpcConnection13 remoteObjectInterface];
    v54 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [remoteObjectInterface7 setClasses:v54 forSelector:sel_fetchDeviceConfigurationLowPowerModeWarningStateWithHandler_ argumentIndex:0 ofReply:0];

    xpcConnection14 = [(SMSafetyMonitorManager *)self xpcConnection];
    remoteObjectInterface8 = [xpcConnection14 remoteObjectInterface];
    v57 = MEMORY[0x277CBEB98];
    v58 = objc_opt_class();
    v59 = objc_opt_class();
    v60 = [v57 setWithObjects:{v58, v59, objc_opt_class(), 0}];
    [remoteObjectInterface8 setClasses:v60 forSelector:sel_fetchSuggestionsWithOptions_handler_ argumentIndex:0 ofReply:1];

    xpcConnection15 = [(SMSafetyMonitorManager *)self xpcConnection];
    remoteObjectInterface9 = [xpcConnection15 remoteObjectInterface];
    v63 = MEMORY[0x277CBEB98];
    v64 = objc_opt_class();
    v65 = objc_opt_class();
    v66 = objc_opt_class();
    v67 = [v63 setWithObjects:{v64, v65, v66, objc_opt_class(), 0}];
    [remoteObjectInterface9 setClasses:v67 forSelector:sel_fetchSessionManagerStatesWithOptions_handler_ argumentIndex:0 ofReply:1];

    xpcConnection16 = [(SMSafetyMonitorManager *)self xpcConnection];
    remoteObjectInterface10 = [xpcConnection16 remoteObjectInterface];
    v70 = MEMORY[0x277CBEB98];
    v71 = objc_opt_class();
    v72 = objc_opt_class();
    v73 = objc_opt_class();
    v74 = objc_opt_class();
    v75 = objc_opt_class();
    v76 = [v70 setWithObjects:{v71, v72, v73, v74, v75, objc_opt_class(), 0}];
    [remoteObjectInterface10 setClasses:v76 forSelector:sel_fetchSessionConfigurationsWithOptions_handler_ argumentIndex:0 ofReply:1];

    xpcConnection17 = [(SMSafetyMonitorManager *)self xpcConnection];
    remoteObjectInterface11 = [xpcConnection17 remoteObjectInterface];
    v79 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [remoteObjectInterface11 setClasses:v79 forSelector:sel_fetchSuggestedSessionConfigurationWithHandler_ argumentIndex:0 ofReply:1];

    xpcConnection18 = [(SMSafetyMonitorManager *)self xpcConnection];
    remoteObjectInterface12 = [xpcConnection18 remoteObjectInterface];
    v82 = MEMORY[0x277CBEB98];
    v83 = objc_opt_class();
    v84 = objc_opt_class();
    v85 = objc_opt_class();
    v86 = objc_opt_class();
    v87 = objc_opt_class();
    v88 = objc_opt_class();
    v89 = [v82 setWithObjects:{v83, v84, v85, v86, v87, v88, objc_opt_class(), 0}];
    [remoteObjectInterface12 setClasses:v89 forSelector:sel_launchSessionInitiationUIWithConfiguration_handler_ argumentIndex:0 ofReply:0];

    xpcConnection19 = [(SMSafetyMonitorManager *)self xpcConnection];
    remoteObjectInterface13 = [xpcConnection19 remoteObjectInterface];
    v92 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [remoteObjectInterface13 setClasses:v92 forSelector:sel_fetchSuggestedCheckInURLForWorkoutSuggestionWithHandler_ argumentIndex:0 ofReply:1];

    xpcConnection20 = [(SMSafetyMonitorManager *)self xpcConnection];
    remoteObjectInterface14 = [xpcConnection20 remoteObjectInterface];
    v95 = MEMORY[0x277CBEB98];
    v96 = objc_opt_class();
    v97 = [v95 setWithObjects:{v96, objc_opt_class(), 0}];
    [remoteObjectInterface14 setClasses:v97 forSelector:sel_runProactiveSuggestionsEngineWithContext_shouldStoreSuggestions_handler_ argumentIndex:0 ofReply:1];

    xpcConnection21 = [(SMSafetyMonitorManager *)self xpcConnection];
    remoteObjectInterface15 = [xpcConnection21 remoteObjectInterface];
    v100 = MEMORY[0x277CBEB98];
    v101 = objc_opt_class();
    v102 = [v100 setWithObjects:{v101, objc_opt_class(), 0}];
    [remoteObjectInterface15 setClasses:v102 forSelector:sel_fetchMostLikelyReceiverHandlesWithHandler_ argumentIndex:0 ofReply:1];

    xpcConnection22 = [(SMSafetyMonitorManager *)self xpcConnection];
    remoteObjectInterface16 = [xpcConnection22 remoteObjectInterface];
    v105 = MEMORY[0x277CBEB98];
    v106 = objc_opt_class();
    v107 = objc_opt_class();
    v108 = [v105 setWithObjects:{v106, v107, objc_opt_class(), 0}];
    [remoteObjectInterface16 setClasses:v108 forSelector:sel_fetchMostLikelyReceiverHandlesWithOptions_handler_ argumentIndex:0 ofReply:1];

    xpcConnection23 = [(SMSafetyMonitorManager *)self xpcConnection];
    remoteObjectInterface17 = [xpcConnection23 remoteObjectInterface];
    v111 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [remoteObjectInterface17 setClasses:v111 forSelector:sel_fetchMostLikelySessionDestinationsWithHandler_ argumentIndex:0 ofReply:1];

    xpcConnection24 = [(SMSafetyMonitorManager *)self xpcConnection];
    remoteObjectInterface18 = [xpcConnection24 remoteObjectInterface];
    v114 = MEMORY[0x277CBEB98];
    v115 = objc_opt_class();
    v116 = [v114 setWithObjects:{v115, objc_opt_class(), 0}];
    [remoteObjectInterface18 setClasses:v116 forSelector:sel_fetchMostLikelySessionDestinationsWithHandler_ argumentIndex:2 ofReply:1];

    xpcConnection25 = [(SMSafetyMonitorManager *)self xpcConnection];
    remoteObjectInterface19 = [xpcConnection25 remoteObjectInterface];
    v119 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [remoteObjectInterface19 setClasses:v119 forSelector:sel_shouldShowKeyboardSuggestionsForInitiator_receiver_handler_ argumentIndex:0 ofReply:0];

    xpcConnection26 = [(SMSafetyMonitorManager *)self xpcConnection];
    remoteObjectInterface20 = [xpcConnection26 remoteObjectInterface];
    v122 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [remoteObjectInterface20 setClasses:v122 forSelector:sel_shouldShowTipKitSuggestionsForInitiator_receiver_handler_ argumentIndex:0 ofReply:0];

    xpcConnection27 = [(SMSafetyMonitorManager *)self xpcConnection];
    remoteObjectInterface21 = [xpcConnection27 remoteObjectInterface];
    v125 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [remoteObjectInterface21 setClasses:v125 forSelector:sel_shouldShowTipKitSuggestionsForInitiator_receiver_handler_ argumentIndex:0 ofReply:0];

    xpcConnection28 = [(SMSafetyMonitorManager *)self xpcConnection];
    remoteObjectInterface22 = [xpcConnection28 remoteObjectInterface];
    v128 = MEMORY[0x277CBEB98];
    v129 = objc_opt_class();
    v130 = [v128 setWithObjects:{v129, objc_opt_class(), 0}];
    [remoteObjectInterface22 setClasses:v130 forSelector:sel_initializeSessionWithConversation_completion_ argumentIndex:0 ofReply:0];

    xpcConnection29 = [(SMSafetyMonitorManager *)self xpcConnection];
    remoteObjectInterface23 = [xpcConnection29 remoteObjectInterface];
    v133 = MEMORY[0x277CBEB98];
    v134 = objc_opt_class();
    v135 = objc_opt_class();
    v136 = [v133 setWithObjects:{v134, v135, objc_opt_class(), 0}];
    [remoteObjectInterface23 setClasses:v136 forSelector:sel_initializeSessionWithConversation_completion_ argumentIndex:0 ofReply:1];

    xpcConnection30 = [(SMSafetyMonitorManager *)self xpcConnection];
    remoteObjectInterface24 = [xpcConnection30 remoteObjectInterface];
    v139 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [remoteObjectInterface24 setClasses:v139 forSelector:sel_showSuggestionsDetectionUIWithSuggestion_handler_ argumentIndex:0 ofReply:0];

    xpcConnection31 = [(SMSafetyMonitorManager *)self xpcConnection];
    remoteObjectInterface25 = [xpcConnection31 remoteObjectInterface];
    v142 = MEMORY[0x277CBEB98];
    v143 = objc_opt_class();
    v144 = objc_opt_class();
    v145 = objc_opt_class();
    v146 = objc_opt_class();
    v147 = objc_opt_class();
    v148 = [v142 setWithObjects:{v143, v144, v145, v146, v147, objc_opt_class(), 0}];
    [remoteObjectInterface25 setClasses:v148 forSelector:sel_fetchAllReceiverSessionStatusWithCompletion_ argumentIndex:0 ofReply:1];

    xpcConnection32 = [(SMSafetyMonitorManager *)self xpcConnection];
    remoteObjectInterface26 = [xpcConnection32 remoteObjectInterface];
    v151 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [remoteObjectInterface26 setClasses:v151 forSelector:sel_respondToNotificationWithIdentifier_sessionIdentifier_actionIdentifier_handler_ argumentIndex:0 ofReply:0];

    xpcConnection33 = [(SMSafetyMonitorManager *)self xpcConnection];
    remoteObjectInterface27 = [xpcConnection33 remoteObjectInterface];
    v154 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [remoteObjectInterface27 setClasses:v154 forSelector:sel_sendHeartbeatForSessionID_handler_ argumentIndex:0 ofReply:0];

    xpcConnection34 = [(SMSafetyMonitorManager *)self xpcConnection];
    remoteObjectInterface28 = [xpcConnection34 remoteObjectInterface];
    v157 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [remoteObjectInterface28 setClasses:v157 forSelector:sel_fetchCurrentLocalSessionStateWithHandler_ argumentIndex:0 ofReply:1];

    xpcConnection35 = [(SMSafetyMonitorManager *)self xpcConnection];
    remoteObjectInterface29 = [xpcConnection35 remoteObjectInterface];
    v160 = MEMORY[0x277CBEB98];
    v161 = objc_opt_class();
    v162 = objc_opt_class();
    v163 = [v160 setWithObjects:{v161, v162, objc_opt_class(), 0}];
    [remoteObjectInterface29 setClasses:v163 forSelector:sel_fetchSOSReceiversWithCompletion_ argumentIndex:0 ofReply:1];

    xpcConnection36 = [(SMSafetyMonitorManager *)self xpcConnection];
    remoteObjectInterface30 = [xpcConnection36 remoteObjectInterface];
    v166 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    [remoteObjectInterface30 setClasses:v166 forSelector:sel_fetchQuickReplySuggestionURLWithCompletion_ argumentIndex:0 ofReply:1];

    objc_initWeak(location, self);
    xpcConnection37 = [(SMSafetyMonitorManager *)self xpcConnection];
    v182[0] = MEMORY[0x277D85DD0];
    v182[1] = 3221225472;
    v182[2] = __43__SMSafetyMonitorManager__createConnection__block_invoke;
    v182[3] = &unk_279B65648;
    objc_copyWeak(&v183, location);
    [xpcConnection37 setInvalidationHandler:v182];

    xpcConnection38 = [(SMSafetyMonitorManager *)self xpcConnection];
    v180[0] = MEMORY[0x277D85DD0];
    v180[1] = 3221225472;
    v180[2] = __43__SMSafetyMonitorManager__createConnection__block_invoke_331;
    v180[3] = &unk_279B65648;
    objc_copyWeak(&v181, location);
    [xpcConnection38 setInterruptionHandler:v180];

    xpcConnection39 = [(SMSafetyMonitorManager *)self xpcConnection];
    [xpcConnection39 resume];

    restorationIdentifier = [(SMSafetyMonitorManager *)self restorationIdentifier];

    if (restorationIdentifier)
    {
      xpcConnection40 = [(SMSafetyMonitorManager *)self xpcConnection];
      v179[0] = MEMORY[0x277D85DD0];
      v179[1] = 3221225472;
      v179[2] = __43__SMSafetyMonitorManager__createConnection__block_invoke_333;
      v179[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
      v179[4] = a2;
      v172 = [xpcConnection40 remoteObjectProxyWithErrorHandler:v179];
      restorationIdentifier2 = [(SMSafetyMonitorManager *)self restorationIdentifier];
      [v172 setRestorationIdentifier:restorationIdentifier2];
    }

    objc_destroyWeak(&v181);
    objc_destroyWeak(&v183);
    objc_destroyWeak(location);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v174 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v174, OS_LOG_TYPE_DEBUG))
    {
      v175 = objc_opt_class();
      v176 = NSStringFromClass(v175);
      xpcConnection41 = [(SMSafetyMonitorManager *)self xpcConnection];
      *location = 138412546;
      *&location[4] = v176;
      v185 = 2112;
      v186 = xpcConnection41;
      _os_log_debug_impl(&dword_26455D000, v174, OS_LOG_TYPE_DEBUG, "%@, XPC Connection Created, %@", location, 0x16u);
    }
  }
}

void __43__SMSafetyMonitorManager__createConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__SMSafetyMonitorManager__createConnection__block_invoke_2;
    block[3] = &unk_279B655F8;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

uint64_t __43__SMSafetyMonitorManager__createConnection__block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_26455D000, v2, OS_LOG_TYPE_INFO, "%@, xpc connection invalidated", &v6, 0xCu);
    }
  }

  return [*(a1 + 32) setXpcConnection:0];
}

void __43__SMSafetyMonitorManager__createConnection__block_invoke_331(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__SMSafetyMonitorManager__createConnection__block_invoke_2_332;
    block[3] = &unk_279B655F8;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

void __43__SMSafetyMonitorManager__createConnection__block_invoke_2_332(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v1 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      v2 = objc_opt_class();
      v3 = NSStringFromClass(v2);
      v4 = 138412290;
      v5 = v3;
      _os_log_impl(&dword_26455D000, v1, OS_LOG_TYPE_INFO, "%@, xpc connection interrupted", &v4, 0xCu);
    }
  }
}

void __43__SMSafetyMonitorManager__createConnection__block_invoke_333(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = SMErrorConnectionCreate(*(a1 + 32), @"%@", a3, a4, a5, a6, a7, a8, a2);
  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v11 = v8;
    _os_log_error_impl(&dword_26455D000, v9, OS_LOG_TYPE_ERROR, "Error: %@", buf, 0xCu);
  }
}

- (void)_setUpMonitoring
{
  sessionStateHandler = [(SMSafetyMonitorManager *)self sessionStateHandler];

  if (sessionStateHandler)
  {
    sessionStateHandler2 = [(SMSafetyMonitorManager *)self sessionStateHandler];
    [(SMSafetyMonitorManager *)self startMonitoringSessionStateWithHandler:sessionStateHandler2];
  }

  initiatorSafetyCacheHandler = [(SMSafetyMonitorManager *)self initiatorSafetyCacheHandler];

  if (initiatorSafetyCacheHandler)
  {
    initiatorSafetyCacheHandler2 = [(SMSafetyMonitorManager *)self initiatorSafetyCacheHandler];
    [(SMSafetyMonitorManager *)self startMonitoringInitiatorSafetyCacheWithHandler:initiatorSafetyCacheHandler2];
  }

  receiverSessionStatusHandler = [(SMSafetyMonitorManager *)self receiverSessionStatusHandler];

  if (receiverSessionStatusHandler)
  {
    receiverSessionStatusHandler2 = [(SMSafetyMonitorManager *)self receiverSessionStatusHandler];
    [(SMSafetyMonitorManager *)self startMonitoringReceiverSessionStatusWithHandler:receiverSessionStatusHandler2];
  }

  receiverSafetyCacheHandler = [(SMSafetyMonitorManager *)self receiverSafetyCacheHandler];

  if (receiverSafetyCacheHandler)
  {
    receiverSafetyCacheHandler2 = [(SMSafetyMonitorManager *)self receiverSafetyCacheHandler];
    [(SMSafetyMonitorManager *)self startMonitoringReceiverSafetyCacheWithHandler:receiverSafetyCacheHandler2];
  }
}

- (void)createConnection
{
  queue = [(SMSafetyMonitorManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SMSafetyMonitorManager_createConnection__block_invoke;
  block[3] = &unk_279B655F8;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)handleDaemonStart
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v7 = "[SMSafetyMonitorManager handleDaemonStart]";
      _os_log_impl(&dword_26455D000, v3, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  queue = [(SMSafetyMonitorManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__SMSafetyMonitorManager_handleDaemonStart__block_invoke;
  block[3] = &unk_279B655F8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __43__SMSafetyMonitorManager_handleDaemonStart__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) xpcConnection];

  if (v2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = [*(a1 + 32) xpcConnection];
        v5 = @"YES";
        if (!v4)
        {
          v5 = @"NO";
        }

        v7 = 136315394;
        v8 = "[SMSafetyMonitorManager handleDaemonStart]_block_invoke";
        v9 = 2112;
        v10 = v5;
        _os_log_impl(&dword_26455D000, v3, OS_LOG_TYPE_INFO, "%s, xpc connection, %@", &v7, 0x16u);
      }
    }
  }

  else
  {
    [*(a1 + 32) _createConnection];
  }

  return [*(a1 + 32) _setUpMonitoring];
}

- (id)_proxyForServicingSelector:(SEL)selector asynchronous:(BOOL)asynchronous withErrorHandler:(id)handler
{
  asynchronousCopy = asynchronous;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__SMSafetyMonitorManager__proxyForServicingSelector_asynchronous_withErrorHandler___block_invoke;
  aBlock[3] = &unk_279B65AC0;
  v27 = handlerCopy;
  selectorCopy = selector;
  aBlock[4] = self;
  v9 = handlerCopy;
  v10 = _Block_copy(aBlock);
  _getConnection = [(SMSafetyMonitorManager *)self _getConnection];
  v18 = _getConnection;
  if (!_getConnection)
  {
    v20 = @"no xpc connection";
LABEL_12:
    v23 = SMErrorConnectionCreate(selector, v20, v12, v13, v14, v15, v16, v17, v25);
    v10[2](v10, v23);

    v22 = 0;
    goto LABEL_13;
  }

  if (asynchronousCopy)
  {
    v19 = [_getConnection remoteObjectProxyWithErrorHandler:v10];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v21 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&dword_26455D000, v21, OS_LOG_TYPE_INFO, "vending synchronous remote object proxy.", &v25, 2u);
      }
    }

    v19 = [v18 synchronousRemoteObjectProxyWithErrorHandler:v10];
  }

  v22 = v19;
  if (!v19)
  {
    v20 = @"no remote object proxy";
    goto LABEL_12;
  }

LABEL_13:

  return v22;
}

void __83__SMSafetyMonitorManager__proxyForServicingSelector_asynchronous_withErrorHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) createSMProxyErrorWithSelector:*(a1 + 48) error:a2];
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(*(a1 + 48));
    v9 = 138412802;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "%@, %@, Wrapped Proxy Error, %@", &v9, 0x20u);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (id)createSMProxyErrorWithSelector:(SEL)selector error:(id)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  domain = [errorCopy domain];
  v7 = *MEMORY[0x277CCA050];

  if (domain == v7)
  {
    if ([errorCopy code] == 4097)
    {
      v8 = 20;
    }

    else if ([errorCopy code] == 4099)
    {
      v8 = 21;
    }

    else
    {
      v8 = 8;
    }
  }

  else
  {
    v8 = 8;
  }

  v9 = MEMORY[0x277CCA9B8];
  v16 = *MEMORY[0x277CCA450];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(selector);
  errorCopy = [v10 stringWithFormat:@"connection failure while servicing %@, %@", v11, errorCopy];
  v17[0] = errorCopy;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v14 = [v9 errorWithDomain:@"SMErrorDomain" code:v8 userInfo:v13];

  return v14;
}

- (void)launchTaskWithSelector:(SEL)selector remainingAttempts:(unint64_t)attempts proxyErrorHandler:(id)handler taskBlock:(id)block
{
  handlerCopy = handler;
  blockCopy = block;
  queue = [(SMSafetyMonitorManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__SMSafetyMonitorManager_launchTaskWithSelector_remainingAttempts_proxyErrorHandler_taskBlock___block_invoke;
  block[3] = &unk_279B65690;
  selectorCopy = selector;
  attemptsCopy = attempts;
  block[4] = self;
  v16 = handlerCopy;
  v17 = blockCopy;
  v13 = blockCopy;
  v14 = handlerCopy;
  dispatch_async(queue, block);
}

void __95__SMSafetyMonitorManager_launchTaskWithSelector_remainingAttempts_proxyErrorHandler_taskBlock___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __95__SMSafetyMonitorManager_launchTaskWithSelector_remainingAttempts_proxyErrorHandler_taskBlock___block_invoke_2;
  v7[3] = &unk_279B656B8;
  v3 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = v3;
  v7[4] = v2;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v7];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_26455D000, v5, OS_LOG_TYPE_INFO, "SMSafetyMonitorManager, %@, running task block", buf, 0xCu);
    }
  }

  (*(*(a1 + 48) + 16))();
}

void __95__SMSafetyMonitorManager_launchTaskWithSelector_remainingAttempts_proxyErrorHandler_taskBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 domain];
  v5 = v4;
  if (v4 == @"SMErrorDomain")
  {
    if ([v3 code] == 20)
    {
    }

    else
    {
      v7 = [v3 code];

      if (v7 != 21)
      {
        goto LABEL_3;
      }
    }

    if (*(a1 + 56))
    {
      v8 = [*(a1 + 32) queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __95__SMSafetyMonitorManager_launchTaskWithSelector_remainingAttempts_proxyErrorHandler_taskBlock___block_invoke_3;
      block[3] = &unk_279B65690;
      v9 = *(a1 + 56);
      v17 = *(a1 + 64);
      v18 = v9;
      v10 = *(a1 + 40);
      block[4] = *(a1 + 32);
      v15 = v10;
      v16 = *(a1 + 48);
      dispatch_async(v8, block);

      goto LABEL_6;
    }
  }

  else
  {
  }

LABEL_3:
  v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(*(a1 + 64));
    *buf = 138412802;
    v20 = v12;
    v21 = 2112;
    v22 = v13;
    v23 = 2112;
    v24 = v3;
    _os_log_error_impl(&dword_26455D000, v6, OS_LOG_TYPE_ERROR, "%@, %@, running proxy handler, %@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
LABEL_6:
}

uint64_t __95__SMSafetyMonitorManager_launchTaskWithSelector_remainingAttempts_proxyErrorHandler_taskBlock___block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = NSStringFromSelector(*(a1 + 56));
      v4 = *(a1 + 64) - 1;
      v6 = 138412546;
      v7 = v3;
      v8 = 2048;
      v9 = v4;
      _os_log_impl(&dword_26455D000, v2, OS_LOG_TYPE_INFO, "SMSafetyMonitorManager retrying, %@, count, %lu", &v6, 0x16u);
    }
  }

  return [*(a1 + 32) launchTaskWithSelector:*(a1 + 56) remainingAttempts:*(a1 + 64) - 1 proxyErrorHandler:*(a1 + 40) taskBlock:*(a1 + 48)];
}

- (void)initializeSessionWithConversation:(id)conversation completion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  conversationCopy = conversation;
  completionCopy = completion;
  if (conversationCopy)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
    v10 = os_signpost_id_generate(v9);

    v32 = v10;
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
    v12 = v11;
    v13 = v30[3];
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      identifier = [conversationCopy identifier];
      v15 = [identifier description];
      v16 = v15;
      uTF8String = [v15 UTF8String];
      LODWORD(buf) = 136446210;
      *(&buf + 4) = uTF8String;
      _os_signpost_emit_with_name_impl(&dword_26455D000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v13, "SMInitializationSessionLatency", " enableTelemetry=YES {handle:%{public,signpost.telemetry:string1}s}", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__1;
    v36 = __Block_byref_object_dispose__1;
    v37 = [MEMORY[0x277CBEAA8] now];
    v18 = objc_alloc_init(SMHeartbeatTimer);
    [(SMSafetyMonitorManager *)self setHeartbeatTimer:v18];

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __71__SMSafetyMonitorManager_initializeSessionWithConversation_completion___block_invoke;
    v26[3] = &unk_279B656E0;
    v28 = &v29;
    v27 = completionCopy;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __71__SMSafetyMonitorManager_initializeSessionWithConversation_completion___block_invoke_355;
    v20[3] = &unk_279B65730;
    v24 = &v29;
    p_buf = &buf;
    v21 = conversationCopy;
    selfCopy = self;
    v23 = v27;
    [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v26 taskBlock:v20];

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(&v29, 8);
  }

  else
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_26455D000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: conversation", &buf, 2u);
    }
  }
}

void __71__SMSafetyMonitorManager_initializeSessionWithConversation_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMInitializationSessionLatency", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __71__SMSafetyMonitorManager_initializeSessionWithConversation_completion___block_invoke_355(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__SMSafetyMonitorManager_initializeSessionWithConversation_completion___block_invoke_2;
  v6[3] = &unk_279B65708;
  v9 = *(a1 + 56);
  v5 = *(a1 + 32);
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  v8 = *(a1 + 48);
  [a2 initializeSessionWithConversation:v4 completion:v6];
}

void __71__SMSafetyMonitorManager_initializeSessionWithConversation_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = a2;
  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v10 = v9;
  v11 = *(*(*(a1 + 56) + 8) + 24);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v13 = 134349056;
    v14 = [v7 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v10, OS_SIGNPOST_INTERVAL_END, v11, "SMInitializationSessionLatency", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v13, 0xCu);
  }

  [*(*(*(a1 + 64) + 8) + 40) timeIntervalSinceNow];
  [*(a1 + 32) submitInitializationAnalyticsEventWithError:v7 conversation:*(a1 + 40) duration:-v12];
  (*(*(a1 + 48) + 16))();
}

- (void)cancelInitializationWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    *v19 = 0;
    v20 = v19;
    v21 = 0x2020000000;
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
    v7 = os_signpost_id_generate(v6);

    v22 = v7;
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
    v9 = v8;
    v10 = *(v20 + 3);
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_26455D000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v10, "SMCancelInitializationSessionLatency", " enableTelemetry=YES ", buf, 2u);
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __61__SMSafetyMonitorManager_cancelInitializationWithCompletion___block_invoke;
    v15[3] = &unk_279B656E0;
    v17 = v19;
    v16 = completionCopy;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__SMSafetyMonitorManager_cancelInitializationWithCompletion___block_invoke_358;
    v12[3] = &unk_279B65758;
    v14 = v19;
    v13 = v16;
    [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v15 taskBlock:v12];

    _Block_object_dispose(v19, 8);
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v19 = 0;
      _os_log_error_impl(&dword_26455D000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", v19, 2u);
    }
  }
}

void __61__SMSafetyMonitorManager_cancelInitializationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMCancelInitializationSessionLatency", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __61__SMSafetyMonitorManager_cancelInitializationWithCompletion___block_invoke_358(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__SMSafetyMonitorManager_cancelInitializationWithCompletion___block_invoke_2;
  v5[3] = &unk_279B656E0;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  [a2 cancelInitializationWithCompletion:v5];
}

void __61__SMSafetyMonitorManager_cancelInitializationWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMCancelInitializationSessionLatency", " enableTelemetry=YES {{error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)cancelInitializationForSessionID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (handlerCopy)
  {
    *v23 = 0;
    v24 = v23;
    v25 = 0x2020000000;
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
    v10 = os_signpost_id_generate(v9);

    v26 = v10;
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
    v12 = v11;
    v13 = *(v24 + 3);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_26455D000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v13, "SMCancelInitializationSessionLatency", " enableTelemetry=YES ", buf, 2u);
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __67__SMSafetyMonitorManager_cancelInitializationForSessionID_handler___block_invoke;
    v19[3] = &unk_279B656E0;
    v21 = v23;
    v20 = handlerCopy;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __67__SMSafetyMonitorManager_cancelInitializationForSessionID_handler___block_invoke_359;
    v15[3] = &unk_279B65908;
    v16 = dCopy;
    v18 = v23;
    v17 = v20;
    [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v19 taskBlock:v15];

    _Block_object_dispose(v23, 8);
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v23 = 0;
      _os_log_error_impl(&dword_26455D000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", v23, 2u);
    }
  }
}

void __67__SMSafetyMonitorManager_cancelInitializationForSessionID_handler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMCancelInitializationSessionLatency", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __67__SMSafetyMonitorManager_cancelInitializationForSessionID_handler___block_invoke_359(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__SMSafetyMonitorManager_cancelInitializationForSessionID_handler___block_invoke_2;
  v6[3] = &unk_279B656E0;
  v5 = *(a1 + 40);
  v4 = v5;
  v7 = v5;
  [a2 cancelInitializationForSessionID:v3 handler:v6];
}

void __67__SMSafetyMonitorManager_cancelInitializationForSessionID_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMCancelInitializationSessionLatency", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)endSessionForSessionID:(id)d reason:(unint64_t)reason completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    *v26 = 0;
    v27 = v26;
    v28 = 0x2020000000;
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
    v12 = os_signpost_id_generate(v11);

    v29 = v12;
    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
    v14 = v13;
    v15 = *(v27 + 3);
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_26455D000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v15, "SMEndSessionLatency", " enableTelemetry=YES ", buf, 2u);
    }

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __67__SMSafetyMonitorManager_endSessionForSessionID_reason_completion___block_invoke;
    v22[3] = &unk_279B656E0;
    v24 = v26;
    v23 = completionCopy;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __67__SMSafetyMonitorManager_endSessionForSessionID_reason_completion___block_invoke_360;
    v17[3] = &unk_279B65780;
    v20 = v26;
    reasonCopy = reason;
    v18 = dCopy;
    v19 = v23;
    [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v22 taskBlock:v17];

    _Block_object_dispose(v26, 8);
  }

  else
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v26 = 0;
      _os_log_error_impl(&dword_26455D000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", v26, 2u);
    }
  }
}

void __67__SMSafetyMonitorManager_endSessionForSessionID_reason_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMEndSessionLatency", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __67__SMSafetyMonitorManager_endSessionForSessionID_reason_completion___block_invoke_360(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__SMSafetyMonitorManager_endSessionForSessionID_reason_completion___block_invoke_2;
  v7[3] = &unk_279B656E0;
  v6 = *(a1 + 40);
  v5 = v6;
  v8 = v6;
  [a2 endSessionForSessionID:v3 reason:v4 completion:v7];
}

void __67__SMSafetyMonitorManager_endSessionForSessionID_reason_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMEndSessionLatency", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)handoffSessionForSessionID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (handlerCopy)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __61__SMSafetyMonitorManager_handoffSessionForSessionID_handler___block_invoke;
    v14[3] = &unk_279B657A8;
    v15 = handlerCopy;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __61__SMSafetyMonitorManager_handoffSessionForSessionID_handler___block_invoke_2;
    v11[3] = &unk_279B65C00;
    v12 = dCopy;
    v13 = v15;
    [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v14 taskBlock:v11];

    v10 = v15;
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26455D000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __61__SMSafetyMonitorManager_handoffSessionForSessionID_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__SMSafetyMonitorManager_handoffSessionForSessionID_handler___block_invoke_3;
  v4[3] = &unk_279B657A8;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 handoffSessionForSessionID:v3 handler:v4];
}

- (void)modifySessionWithConfiguration:(id)configuration handler:(id)handler
{
  v31 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      _os_log_error_impl(&dword_26455D000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", v25, 2u);
    }

    goto LABEL_12;
  }

  if (!configurationCopy)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v25 = 0;
      _os_log_error_impl(&dword_26455D000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: configuration", v25, 2u);
    }

LABEL_12:

    goto LABEL_13;
  }

  *v25 = 0;
  v26 = v25;
  v27 = 0x2020000000;
  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v10 = os_signpost_id_generate(v9);

  v28 = v10;
  v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v12 = v11;
  v13 = *(v26 + 3);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v14 = [configurationCopy description];
    v15 = v14;
    uTF8String = [v14 UTF8String];
    *buf = 136446210;
    v30 = uTF8String;
    _os_signpost_emit_with_name_impl(&dword_26455D000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v13, "SMModifySessionLatency", " enableTelemetry=YES {newConfiguration:%{public,signpost.telemetry:string1}s}", buf, 0xCu);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __65__SMSafetyMonitorManager_modifySessionWithConfiguration_handler___block_invoke;
  v22[3] = &unk_279B656E0;
  v24 = v25;
  v23 = handlerCopy;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __65__SMSafetyMonitorManager_modifySessionWithConfiguration_handler___block_invoke_361;
  v18[3] = &unk_279B65908;
  v19 = configurationCopy;
  v21 = v25;
  v20 = v23;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v22 taskBlock:v18];

  _Block_object_dispose(v25, 8);
LABEL_13:
}

void __65__SMSafetyMonitorManager_modifySessionWithConfiguration_handler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMModifySessionLatency", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __65__SMSafetyMonitorManager_modifySessionWithConfiguration_handler___block_invoke_361(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__SMSafetyMonitorManager_modifySessionWithConfiguration_handler___block_invoke_2;
  v6[3] = &unk_279B656E0;
  v5 = *(a1 + 40);
  v4 = v5;
  v7 = v5;
  [a2 modifySessionWithConfiguration:v3 handler:v6];
}

void __65__SMSafetyMonitorManager_modifySessionWithConfiguration_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMModifySessionLatency", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)sendSafetyCacheForSessionID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v10 = os_signpost_id_generate(v9);

  v27 = v10;
  v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v12 = v11;
  v13 = v25[3];
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26455D000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v13, "SMSendSafetyCache", " enableTelemetry=YES ", buf, 2u);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __62__SMSafetyMonitorManager_sendSafetyCacheForSessionID_handler___block_invoke;
  v20[3] = &unk_279B656E0;
  v22 = &v24;
  v21 = handlerCopy;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__SMSafetyMonitorManager_sendSafetyCacheForSessionID_handler___block_invoke_362;
  v16[3] = &unk_279B65908;
  v14 = dCopy;
  v17 = v14;
  v19 = &v24;
  v15 = v21;
  v18 = v15;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v20 taskBlock:v16];

  _Block_object_dispose(&v24, 8);
}

void __62__SMSafetyMonitorManager_sendSafetyCacheForSessionID_handler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMSendSafetyCache", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __62__SMSafetyMonitorManager_sendSafetyCacheForSessionID_handler___block_invoke_362(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__SMSafetyMonitorManager_sendSafetyCacheForSessionID_handler___block_invoke_2;
  v6[3] = &unk_279B656E0;
  v5 = *(a1 + 40);
  v4 = v5;
  v7 = v5;
  [a2 sendSafetyCacheForSessionID:v3 handler:v6];
}

void __62__SMSafetyMonitorManager_sendSafetyCacheForSessionID_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMSendSafetyCache", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)startSessionWithConfiguration:(id)configuration completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  completionCopy = completion;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v10 = os_signpost_id_generate(v9);

  v29 = v10;
  v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v12 = v11;
  v13 = v27[3];
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v14 = [configurationCopy description];
    v15 = v14;
    uTF8String = [v14 UTF8String];
    *buf = 136446210;
    v31 = uTF8String;
    _os_signpost_emit_with_name_impl(&dword_26455D000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v13, "SMStartSession", " enableTelemetry=YES {configuration:%{public,signpost.telemetry:string1}s}", buf, 0xCu);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __67__SMSafetyMonitorManager_startSessionWithConfiguration_completion___block_invoke;
  v23[3] = &unk_279B656E0;
  v25 = &v26;
  v24 = completionCopy;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __67__SMSafetyMonitorManager_startSessionWithConfiguration_completion___block_invoke_363;
  v19[3] = &unk_279B65908;
  v17 = configurationCopy;
  v20 = v17;
  v22 = &v26;
  v18 = v24;
  v21 = v18;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v23 taskBlock:v19];

  _Block_object_dispose(&v26, 8);
}

void __67__SMSafetyMonitorManager_startSessionWithConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMStartSession", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __67__SMSafetyMonitorManager_startSessionWithConfiguration_completion___block_invoke_363(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__SMSafetyMonitorManager_startSessionWithConfiguration_completion___block_invoke_2;
  v6[3] = &unk_279B656E0;
  v5 = *(a1 + 40);
  v4 = v5;
  v7 = v5;
  [a2 startSessionWithConfiguration:v3 completion:v6];
}

void __67__SMSafetyMonitorManager_startSessionWithConfiguration_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMStartSession", " enableTelemetry=YES error:%{public,signpost.telemetry:number1}ld", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)respondToTriggerPromptForSessionID:(id)d response:(int64_t)response handler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlerCopy = handler;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v12 = os_signpost_id_generate(v11);

  v29 = v12;
  v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v14 = v13;
  v15 = v27[3];
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 134349056;
    responseCopy = response;
    _os_signpost_emit_with_name_impl(&dword_26455D000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v15, "SMRespondToTriggerPrompt", " enableTelemetry=YES {response:%{public,signpost.telemetry:number1}ld}", buf, 0xCu);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __78__SMSafetyMonitorManager_respondToTriggerPromptForSessionID_response_handler___block_invoke;
  v23[3] = &unk_279B656E0;
  v25 = &v26;
  v24 = handlerCopy;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __78__SMSafetyMonitorManager_respondToTriggerPromptForSessionID_response_handler___block_invoke_364;
  v18[3] = &unk_279B65780;
  v16 = dCopy;
  v21 = &v26;
  responseCopy2 = response;
  v19 = v16;
  v17 = v24;
  v20 = v17;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v23 taskBlock:v18];

  _Block_object_dispose(&v26, 8);
}

void __78__SMSafetyMonitorManager_respondToTriggerPromptForSessionID_response_handler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMRespondToTriggerPrompt", " enableTelemetry=YES {error:%{public,signpost.telemetry:number2}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __78__SMSafetyMonitorManager_respondToTriggerPromptForSessionID_response_handler___block_invoke_364(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__SMSafetyMonitorManager_respondToTriggerPromptForSessionID_response_handler___block_invoke_2;
  v7[3] = &unk_279B656E0;
  v6 = *(a1 + 40);
  v5 = v6;
  v8 = v6;
  [a2 respondToTriggerPromptForSessionID:v3 response:v4 handler:v7];
}

void __78__SMSafetyMonitorManager_respondToTriggerPromptForSessionID_response_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMRespondToTriggerPrompt", " enableTelemetry=YES {error:%{public,signpost.telemetry:number2}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)promptDestinationAnomalyVerificationWithContext:(id)context handler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  handlerCopy = handler;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v10 = os_signpost_id_generate(v9);

  v29 = v10;
  v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v12 = v11;
  v13 = v27[3];
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v14 = [contextCopy description];
    v15 = v14;
    uTF8String = [v14 UTF8String];
    *buf = 136446210;
    v31 = uTF8String;
    _os_signpost_emit_with_name_impl(&dword_26455D000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v13, "SMPromptDestinationAnomalyVerification", " enableTelemetry=YES {context:%{public,signpost.telemetry:string1}s}", buf, 0xCu);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __82__SMSafetyMonitorManager_promptDestinationAnomalyVerificationWithContext_handler___block_invoke;
  v23[3] = &unk_279B656E0;
  v25 = &v26;
  v24 = handlerCopy;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __82__SMSafetyMonitorManager_promptDestinationAnomalyVerificationWithContext_handler___block_invoke_365;
  v19[3] = &unk_279B65908;
  v17 = contextCopy;
  v20 = v17;
  v22 = &v26;
  v18 = v24;
  v21 = v18;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v23 taskBlock:v19];

  _Block_object_dispose(&v26, 8);
}

void __82__SMSafetyMonitorManager_promptDestinationAnomalyVerificationWithContext_handler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMPromptDestinationAnomalyVerification", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __82__SMSafetyMonitorManager_promptDestinationAnomalyVerificationWithContext_handler___block_invoke_365(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__SMSafetyMonitorManager_promptDestinationAnomalyVerificationWithContext_handler___block_invoke_2;
  v6[3] = &unk_279B656E0;
  v5 = *(a1 + 40);
  v4 = v5;
  v7 = v5;
  [a2 promptDestinationAnomalyVerificationWithContext:v3 handler:v6];
}

void __82__SMSafetyMonitorManager_promptDestinationAnomalyVerificationWithContext_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMPromptDestinationAnomalyVerification", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)promptRoundTripAnomalyVerificationWithContext:(id)context handler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__SMSafetyMonitorManager_promptRoundTripAnomalyVerificationWithContext_handler___block_invoke;
  v14[3] = &unk_279B657A8;
  v15 = handlerCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__SMSafetyMonitorManager_promptRoundTripAnomalyVerificationWithContext_handler___block_invoke_2;
  v11[3] = &unk_279B65C00;
  v12 = contextCopy;
  v13 = v15;
  v9 = v15;
  v10 = contextCopy;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v14 taskBlock:v11];
}

void __80__SMSafetyMonitorManager_promptRoundTripAnomalyVerificationWithContext_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __80__SMSafetyMonitorManager_promptRoundTripAnomalyVerificationWithContext_handler___block_invoke_3;
  v4[3] = &unk_279B657A8;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 promptRoundTripAnomalyVerificationWithContext:v3 handler:v4];
}

- (void)promptTimerEndedVerificationWithContext:(id)context handler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  handlerCopy = handler;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v10 = os_signpost_id_generate(v9);

  v29 = v10;
  v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v12 = v11;
  v13 = v27[3];
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v14 = [contextCopy description];
    v15 = v14;
    uTF8String = [v14 UTF8String];
    *buf = 136446210;
    v31 = uTF8String;
    _os_signpost_emit_with_name_impl(&dword_26455D000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v13, "SMPromptTimerEndedVerification", " enableTelemetry=YES {context:%{public,signpost.telemetry:string1}s}", buf, 0xCu);
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __74__SMSafetyMonitorManager_promptTimerEndedVerificationWithContext_handler___block_invoke;
  v23[3] = &unk_279B656E0;
  v25 = &v26;
  v24 = handlerCopy;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __74__SMSafetyMonitorManager_promptTimerEndedVerificationWithContext_handler___block_invoke_366;
  v19[3] = &unk_279B65908;
  v17 = contextCopy;
  v20 = v17;
  v22 = &v26;
  v18 = v24;
  v21 = v18;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v23 taskBlock:v19];

  _Block_object_dispose(&v26, 8);
}

void __74__SMSafetyMonitorManager_promptTimerEndedVerificationWithContext_handler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMPromptTimerEndedVerification", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __74__SMSafetyMonitorManager_promptTimerEndedVerificationWithContext_handler___block_invoke_366(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__SMSafetyMonitorManager_promptTimerEndedVerificationWithContext_handler___block_invoke_2;
  v6[3] = &unk_279B656E0;
  v5 = *(a1 + 40);
  v4 = v5;
  v7 = v5;
  [a2 promptTimerEndedVerificationWithContext:v3 handler:v6];
}

void __74__SMSafetyMonitorManager_promptTimerEndedVerificationWithContext_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMPromptTimerEndedVerification", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)promptSafeArrivalWithContext:(id)context handler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__SMSafetyMonitorManager_promptSafeArrivalWithContext_handler___block_invoke;
  v14[3] = &unk_279B657A8;
  v15 = handlerCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__SMSafetyMonitorManager_promptSafeArrivalWithContext_handler___block_invoke_2;
  v11[3] = &unk_279B65C00;
  v12 = contextCopy;
  v13 = v15;
  v9 = v15;
  v10 = contextCopy;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v14 taskBlock:v11];
}

- (void)promptWorkoutAnomalyVerificationWithContext:(id)context handler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[SMSafetyMonitorManager promptWorkoutAnomalyVerificationWithContext:handler:]";
      v19 = 1024;
      v20 = 757;
      _os_log_error_impl(&dword_26455D000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__SMSafetyMonitorManager_promptWorkoutAnomalyVerificationWithContext_handler___block_invoke;
  v15[3] = &unk_279B657A8;
  v16 = handlerCopy;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__SMSafetyMonitorManager_promptWorkoutAnomalyVerificationWithContext_handler___block_invoke_2;
  v12[3] = &unk_279B65C00;
  v13 = contextCopy;
  v14 = v16;
  v10 = v16;
  v11 = contextCopy;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v15 taskBlock:v12];
}

void __78__SMSafetyMonitorManager_promptWorkoutAnomalyVerificationWithContext_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __78__SMSafetyMonitorManager_promptWorkoutAnomalyVerificationWithContext_handler___block_invoke_3;
  v4[3] = &unk_279B657A8;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 promptWorkoutAnomalyVerificationWithContext:v3 handler:v4];
}

- (void)sendHeartbeatForSessionID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__SMSafetyMonitorManager_sendHeartbeatForSessionID_handler___block_invoke;
  v14[3] = &unk_279B657A8;
  v15 = handlerCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__SMSafetyMonitorManager_sendHeartbeatForSessionID_handler___block_invoke_2;
  v11[3] = &unk_279B65C00;
  v12 = dCopy;
  v13 = v15;
  v9 = v15;
  v10 = dCopy;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v14 taskBlock:v11];
}

- (void)_startHeartbeatForSessionID:(id)d
{
  dCopy = d;
  heartbeatTimer = [(SMSafetyMonitorManager *)self heartbeatTimer];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__SMSafetyMonitorManager__startHeartbeatForSessionID___block_invoke;
  v7[3] = &unk_279B657D0;
  v8 = dCopy;
  v6 = dCopy;
  [heartbeatTimer startHeartbeatForSessionID:v6 handler:v7];
}

void __54__SMSafetyMonitorManager__startHeartbeatForSessionID___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = 136315650;
      v7 = "[SMSafetyMonitorManager _startHeartbeatForSessionID:]_block_invoke";
      v8 = 2112;
      v9 = v5;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_26455D000, v4, OS_LOG_TYPE_INFO, "%s, %@, error, %@", &v6, 0x20u);
    }
  }
}

- (void)_stopHeartbeat
{
  heartbeatTimer = [(SMSafetyMonitorManager *)self heartbeatTimer];
  [heartbeatTimer stopHeartbeatWithHandler:&__block_literal_global_368];
}

void __40__SMSafetyMonitorManager__stopHeartbeat__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 136315394;
      v5 = "[SMSafetyMonitorManager _stopHeartbeat]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_impl(&dword_26455D000, v3, OS_LOG_TYPE_INFO, "%s, error, %@", &v4, 0x16u);
    }
  }
}

- (void)processStateForHeartbeat:(id)heartbeat forActiveDevice:(BOOL)device withError:(id)error
{
  heartbeatCopy = heartbeat;
  errorCopy = error;
  queue = [(SMSafetyMonitorManager *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__SMSafetyMonitorManager_processStateForHeartbeat_forActiveDevice_withError___block_invoke;
  v13[3] = &unk_279B65818;
  v14 = errorCopy;
  v15 = heartbeatCopy;
  deviceCopy = device;
  selfCopy = self;
  v11 = heartbeatCopy;
  v12 = errorCopy;
  dispatch_async(queue, v13);
}

void __77__SMSafetyMonitorManager_processStateForHeartbeat_forActiveDevice_withError___block_invoke(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      if (*(a1 + 56) == 1)
      {
        v3 = [v2 sessionState];
        if (v3 <= 0xE)
        {
          if (((1 << v3) & 0x5397) != 0)
          {
            v4 = *(a1 + 48);

            [v4 _stopHeartbeat];
          }

          else if (((1 << v3) & 0xC00) != 0)
          {
            v5 = *(a1 + 48);
            v7 = [*(a1 + 40) configuration];
            v6 = [v7 sessionID];
            [v5 _startHeartbeatForSessionID:v6];
          }
        }
      }
    }
  }
}

- (void)fetchCurrentWorkoutSnapshotWithCompletion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!completionCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v22 = 136315394;
      *&v22[4] = "[SMSafetyMonitorManager fetchCurrentWorkoutSnapshotWithCompletion:]";
      *&v22[12] = 1024;
      *&v22[14] = 819;
      _os_log_error_impl(&dword_26455D000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", v22, 0x12u);
    }
  }

  *v22 = 0;
  *&v22[8] = v22;
  *&v22[16] = 0x2020000000;
  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v8 = os_signpost_id_generate(v7);

  v23 = v8;
  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v10 = v9;
  v11 = *(*&v22[8] + 24);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26455D000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "SMFetchCurrentWorkoutSnapshot", " enableTelemetry=YES ", buf, 2u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "[SMSafetyMonitorManager fetchCurrentWorkoutSnapshotWithCompletion:]";
      _os_log_impl(&dword_26455D000, v12, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__SMSafetyMonitorManager_fetchCurrentWorkoutSnapshotWithCompletion___block_invoke;
  v17[3] = &unk_279B656E0;
  v19 = v22;
  v18 = completionCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__SMSafetyMonitorManager_fetchCurrentWorkoutSnapshotWithCompletion___block_invoke_369;
  v14[3] = &unk_279B65758;
  v16 = v22;
  v13 = v18;
  v15 = v13;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v17 taskBlock:v14];

  _Block_object_dispose(v22, 8);
}

void __68__SMSafetyMonitorManager_fetchCurrentWorkoutSnapshotWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[SMSafetyMonitorManager fetchCurrentWorkoutSnapshotWithCompletion:]_block_invoke";
      _os_log_impl(&dword_26455D000, v4, OS_LOG_TYPE_INFO, "%s, erroring immediately", &v9, 0xCu);
    }
  }

  v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v6 = v5;
  v7 = *(*(*(a1 + 40) + 8) + 24);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v8 = [v3 code];
    v9 = 134349056;
    v10 = v8;
    _os_signpost_emit_with_name_impl(&dword_26455D000, v6, OS_SIGNPOST_INTERVAL_END, v7, "SMFetchCurrentWorkoutSnapshot", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v9, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __68__SMSafetyMonitorManager_fetchCurrentWorkoutSnapshotWithCompletion___block_invoke_369(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__SMSafetyMonitorManager_fetchCurrentWorkoutSnapshotWithCompletion___block_invoke_2;
  v5[3] = &unk_279B65840;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  [a2 fetchCurrentWorkoutSnapshotWithCompletion:v5];
}

void __68__SMSafetyMonitorManager_fetchCurrentWorkoutSnapshotWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v8 = v7;
  v9 = *(*(*(a1 + 40) + 8) + 24);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = 134349056;
    v11 = [v5 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v8, OS_SIGNPOST_INTERVAL_END, v9, "SMFetchCurrentWorkoutSnapshot", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v10, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchSOSReceiversWithCompletion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      *buf = 138412546;
      v17 = v8;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_26455D000, v6, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,%@,%@,fetching active session share recipients", buf, 0x16u);
    }
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__SMSafetyMonitorManager_fetchSOSReceiversWithCompletion___block_invoke;
  v13[3] = &unk_279B65AC0;
  v13[4] = self;
  v15 = a2;
  v14 = completionCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__SMSafetyMonitorManager_fetchSOSReceiversWithCompletion___block_invoke_371;
  v11[3] = &unk_279B65868;
  v12 = v14;
  v10 = v14;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v13 taskBlock:v11];
}

void __58__SMSafetyMonitorManager_fetchSOSReceiversWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 48));
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "%@,%@,failed to find proxy,error,%@", &v8, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchInitiatorSafetyCacheForSessionID:(id)d completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  completionCopy = completion;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      *buf = 138412802;
      v23 = dCopy;
      v24 = 2112;
      v25 = v11;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&dword_26455D000, v9, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,sessionID:%@,%@,%@,fetching initiator safety cache", buf, 0x20u);
    }
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __75__SMSafetyMonitorManager_fetchInitiatorSafetyCacheForSessionID_completion___block_invoke;
  v18[3] = &unk_279B65890;
  v18[4] = self;
  v21 = a2;
  v20 = completionCopy;
  v19 = dCopy;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__SMSafetyMonitorManager_fetchInitiatorSafetyCacheForSessionID_completion___block_invoke_372;
  v15[3] = &unk_279B65C00;
  v16 = v19;
  v17 = v20;
  v13 = v20;
  v14 = v19;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v18 taskBlock:v15];
}

void __75__SMSafetyMonitorManager_fetchInitiatorSafetyCacheForSessionID_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 56));
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "%@,%@,failed to find proxy,error,%@", &v8, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)startMonitoringSessionStateWithHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v22 = 136315394;
      *&v22[4] = "[SMSafetyMonitorManager startMonitoringSessionStateWithHandler:]";
      *&v22[12] = 1024;
      *&v22[14] = 871;
      _os_log_error_impl(&dword_26455D000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", v22, 0x12u);
    }
  }

  *v22 = 0;
  *&v22[8] = v22;
  *&v22[16] = 0x2020000000;
  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v8 = os_signpost_id_generate(v7);

  v23 = v8;
  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v10 = v9;
  v11 = *(*&v22[8] + 24);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26455D000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "SMStartMonitoringSession", " enableTelemetry=YES ", buf, 2u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "[SMSafetyMonitorManager startMonitoringSessionStateWithHandler:]";
      _os_log_impl(&dword_26455D000, v12, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  [(SMSafetyMonitorManager *)self setSessionStateHandler:handlerCopy];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __65__SMSafetyMonitorManager_startMonitoringSessionStateWithHandler___block_invoke;
  v17[3] = &unk_279B658B8;
  v19 = v22;
  v17[4] = self;
  v18 = handlerCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__SMSafetyMonitorManager_startMonitoringSessionStateWithHandler___block_invoke_373;
  v14[3] = &unk_279B65908;
  v16 = v22;
  v13 = v18;
  v14[4] = self;
  v15 = v13;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v17 taskBlock:v14];

  _Block_object_dispose(v22, 8);
}

void __65__SMSafetyMonitorManager_startMonitoringSessionStateWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
    v5 = v4;
    v6 = *(*(*(a1 + 48) + 8) + 24);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      v7 = 134349056;
      v8 = [v3 code];
      _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMStartMonitoringSession", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) setSessionStateHandler:0];
  }
}

void __65__SMSafetyMonitorManager_startMonitoringSessionStateWithHandler___block_invoke_373(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__SMSafetyMonitorManager_startMonitoringSessionStateWithHandler___block_invoke_2;
  v6[3] = &unk_279B658E0;
  v5 = *(a1 + 40);
  v4 = v5;
  v7 = v5;
  v6[4] = *(a1 + 32);
  [a2 startMonitoringSessionStateWithHandler:v6];
}

void __65__SMSafetyMonitorManager_startMonitoringSessionStateWithHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v9 = v8;
  v10 = *(*(*(a1 + 48) + 8) + 24);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v11 = +[SMSessionManagerState convertSessionStateToString:](SMSessionManagerState, "convertSessionStateToString:", [v6 sessionState]);
    v12 = 136446466;
    v13 = [v11 UTF8String];
    v14 = 2050;
    v15 = [v7 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v9, OS_SIGNPOST_INTERVAL_END, v10, "SMStartMonitoringSession", " enableTelemetry=YES {state:%{public,signpost.telemetry:string1}s, error:%{public,signpost.telemetry:number1}ld}", &v12, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  if (v7)
  {
    [*(a1 + 32) setSessionStateHandler:0];
  }
}

- (void)stopMonitoringSessionStateWithHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v22 = 136315394;
      *&v22[4] = "[SMSafetyMonitorManager stopMonitoringSessionStateWithHandler:]";
      *&v22[12] = 1024;
      *&v22[14] = 896;
      _os_log_error_impl(&dword_26455D000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", v22, 0x12u);
    }
  }

  *v22 = 0;
  *&v22[8] = v22;
  *&v22[16] = 0x2020000000;
  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v8 = os_signpost_id_generate(v7);

  v23 = v8;
  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v10 = v9;
  v11 = *(*&v22[8] + 24);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26455D000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "SMStopMonitoringSession", " enableTelemetry=YES ", buf, 2u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "[SMSafetyMonitorManager stopMonitoringSessionStateWithHandler:]";
      _os_log_impl(&dword_26455D000, v12, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  [(SMSafetyMonitorManager *)self setSessionStateHandler:0];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __64__SMSafetyMonitorManager_stopMonitoringSessionStateWithHandler___block_invoke;
  v17[3] = &unk_279B656E0;
  v19 = v22;
  v18 = handlerCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__SMSafetyMonitorManager_stopMonitoringSessionStateWithHandler___block_invoke_375;
  v14[3] = &unk_279B65758;
  v16 = v22;
  v13 = v18;
  v15 = v13;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v17 taskBlock:v14];

  _Block_object_dispose(v22, 8);
}

void __64__SMSafetyMonitorManager_stopMonitoringSessionStateWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMStopMonitoringSession", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __64__SMSafetyMonitorManager_stopMonitoringSessionStateWithHandler___block_invoke_375(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__SMSafetyMonitorManager_stopMonitoringSessionStateWithHandler___block_invoke_2;
  v5[3] = &unk_279B656E0;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  [a2 stopMonitoringSessionStateWithHandler:v5];
}

void __64__SMSafetyMonitorManager_stopMonitoringSessionStateWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMStopMonitoringSession", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchCurrentSessionStateWithCompletion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!completionCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v20 = 136315394;
      *&v20[4] = "[SMSafetyMonitorManager fetchCurrentSessionStateWithCompletion:]";
      *&v20[12] = 1024;
      *&v20[14] = 920;
      _os_log_error_impl(&dword_26455D000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", v20, 0x12u);
    }
  }

  *v20 = 0;
  *&v20[8] = v20;
  *&v20[16] = 0x2020000000;
  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v8 = os_signpost_id_generate(v7);

  v21 = v8;
  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v10 = v9;
  v11 = *(*&v20[8] + 24);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26455D000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "SMFetchCurrentSessionState", " enableTelemetry=YES ", buf, 2u);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__SMSafetyMonitorManager_fetchCurrentSessionStateWithCompletion___block_invoke;
  v16[3] = &unk_279B656E0;
  v18 = v20;
  v17 = completionCopy;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__SMSafetyMonitorManager_fetchCurrentSessionStateWithCompletion___block_invoke_376;
  v13[3] = &unk_279B65758;
  v15 = v20;
  v12 = v17;
  v14 = v12;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v16 taskBlock:v13];

  _Block_object_dispose(v20, 8);
}

void __65__SMSafetyMonitorManager_fetchCurrentSessionStateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMFetchCurrentSessionState", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __65__SMSafetyMonitorManager_fetchCurrentSessionStateWithCompletion___block_invoke_376(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__SMSafetyMonitorManager_fetchCurrentSessionStateWithCompletion___block_invoke_2;
  v5[3] = &unk_279B65930;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  [a2 fetchCurrentSessionStateWithCompletion:v5];
}

void __65__SMSafetyMonitorManager_fetchCurrentSessionStateWithCompletion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v9 = v8;
  v10 = *(*(*(a1 + 40) + 8) + 24);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v11 = +[SMSessionManagerState convertSessionStateToString:](SMSessionManagerState, "convertSessionStateToString:", [v6 sessionState]);
    v12 = 136446466;
    v13 = [v11 UTF8String];
    v14 = 2050;
    v15 = [v7 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v9, OS_SIGNPOST_INTERVAL_END, v10, "SMFetchCurrentSessionState", " enableTelemetry=YES {state:%{public,signpost.telemetry:string1}s, error:%{public,signpost.telemetry:number1}ld}", &v12, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)onSessionStateChanged:(id)changed forActiveDevice:(BOOL)device withError:(id)error
{
  deviceCopy = device;
  changedCopy = changed;
  errorCopy = error;
  sessionStateHandler = [(SMSafetyMonitorManager *)self sessionStateHandler];

  if (sessionStateHandler)
  {
    sessionStateHandler2 = [(SMSafetyMonitorManager *)self sessionStateHandler];
    (sessionStateHandler2)[2](sessionStateHandler2, changedCopy, deviceCopy, errorCopy);
  }

  heartbeatTimer = [(SMSafetyMonitorManager *)self heartbeatTimer];

  if (heartbeatTimer)
  {
    [(SMSafetyMonitorManager *)self processStateForHeartbeat:changedCopy forActiveDevice:deviceCopy withError:errorCopy];
  }
}

- (void)fetchCurrentLocalSessionStateWithHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v20 = 136315394;
      *&v20[4] = "[SMSafetyMonitorManager fetchCurrentLocalSessionStateWithHandler:]";
      *&v20[12] = 1024;
      *&v20[14] = 947;
      _os_log_error_impl(&dword_26455D000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", v20, 0x12u);
    }
  }

  *v20 = 0;
  *&v20[8] = v20;
  *&v20[16] = 0x2020000000;
  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v8 = os_signpost_id_generate(v7);

  v21 = v8;
  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v10 = v9;
  v11 = *(*&v20[8] + 24);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26455D000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "SMFetchCurrentLocalSessionState", " enableTelemetry=YES ", buf, 2u);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__SMSafetyMonitorManager_fetchCurrentLocalSessionStateWithHandler___block_invoke;
  v16[3] = &unk_279B656E0;
  v18 = v20;
  v17 = handlerCopy;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__SMSafetyMonitorManager_fetchCurrentLocalSessionStateWithHandler___block_invoke_377;
  v13[3] = &unk_279B65758;
  v15 = v20;
  v12 = v17;
  v14 = v12;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v16 taskBlock:v13];

  _Block_object_dispose(v20, 8);
}

void __67__SMSafetyMonitorManager_fetchCurrentLocalSessionStateWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMFetchCurrentLocalSessionState", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __67__SMSafetyMonitorManager_fetchCurrentLocalSessionStateWithHandler___block_invoke_377(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__SMSafetyMonitorManager_fetchCurrentLocalSessionStateWithHandler___block_invoke_2;
  v5[3] = &unk_279B65958;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  [a2 fetchCurrentLocalSessionStateWithHandler:v5];
}

void __67__SMSafetyMonitorManager_fetchCurrentLocalSessionStateWithHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v8 = v7;
  v9 = *(*(*(a1 + 40) + 8) + 24);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = [v5 description];
    v11 = 136446466;
    v12 = [v10 UTF8String];
    v13 = 2050;
    v14 = [v6 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v8, OS_SIGNPOST_INTERVAL_END, v9, "SMFetchCurrentLocalSessionState", " enableTelemetry=YES {state:%{public,signpost.telemetry:string1}s, error:%{public,signpost.telemetry:number1}ld}", &v11, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)startMonitoringLocalSessionStateWithHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v22 = 136315394;
      *&v22[4] = "[SMSafetyMonitorManager startMonitoringLocalSessionStateWithHandler:]";
      *&v22[12] = 1024;
      *&v22[14] = 963;
      _os_log_error_impl(&dword_26455D000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", v22, 0x12u);
    }
  }

  *v22 = 0;
  *&v22[8] = v22;
  *&v22[16] = 0x2020000000;
  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v8 = os_signpost_id_generate(v7);

  v23 = v8;
  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v10 = v9;
  v11 = *(*&v22[8] + 24);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26455D000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "SMStartLocalSessionStateMonitoring", " enableTelemetry=YES ", buf, 2u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "[SMSafetyMonitorManager startMonitoringLocalSessionStateWithHandler:]";
      _os_log_impl(&dword_26455D000, v12, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  [(SMSafetyMonitorManager *)self setLocalSessionStateHandler:handlerCopy];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __70__SMSafetyMonitorManager_startMonitoringLocalSessionStateWithHandler___block_invoke;
  v17[3] = &unk_279B658B8;
  v19 = v22;
  v17[4] = self;
  v18 = handlerCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__SMSafetyMonitorManager_startMonitoringLocalSessionStateWithHandler___block_invoke_379;
  v14[3] = &unk_279B65908;
  v16 = v22;
  v13 = v18;
  v14[4] = self;
  v15 = v13;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v17 taskBlock:v14];

  _Block_object_dispose(v22, 8);
}

void __70__SMSafetyMonitorManager_startMonitoringLocalSessionStateWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
    v5 = v4;
    v6 = *(*(*(a1 + 48) + 8) + 24);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      v7 = 134349056;
      v8 = [v3 code];
      _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMStartLocalSessionStateMonitoring", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) setLocalSessionStateHandler:0];
  }
}

void __70__SMSafetyMonitorManager_startMonitoringLocalSessionStateWithHandler___block_invoke_379(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__SMSafetyMonitorManager_startMonitoringLocalSessionStateWithHandler___block_invoke_2;
  v6[3] = &unk_279B65980;
  v5 = *(a1 + 40);
  v4 = v5;
  v7 = v5;
  v6[4] = *(a1 + 32);
  [a2 startMonitoringLocalSessionStateWithHandler:v6];
}

void __70__SMSafetyMonitorManager_startMonitoringLocalSessionStateWithHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v8 = v7;
  v9 = *(*(*(a1 + 48) + 8) + 24);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = [v5 description];
    v11 = 136446466;
    v12 = [v10 UTF8String];
    v13 = 2050;
    v14 = [v6 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v8, OS_SIGNPOST_INTERVAL_END, v9, "SMStartLocalSessionStateMonitoring", " enableTelemetry=YES {state:%{public,signpost.telemetry:string1}s, error:%{public,signpost.telemetry:number1}ld}", &v11, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  if (v6)
  {
    [*(a1 + 32) setLocalSessionStateHandler:0];
  }
}

- (void)stopMonitoringLocalSessionStateWithHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v22 = 136315394;
      *&v22[4] = "[SMSafetyMonitorManager stopMonitoringLocalSessionStateWithHandler:]";
      *&v22[12] = 1024;
      *&v22[14] = 987;
      _os_log_error_impl(&dword_26455D000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", v22, 0x12u);
    }
  }

  *v22 = 0;
  *&v22[8] = v22;
  *&v22[16] = 0x2020000000;
  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v8 = os_signpost_id_generate(v7);

  v23 = v8;
  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v10 = v9;
  v11 = *(*&v22[8] + 24);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26455D000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "SMStopLocalSessionStateMonitoring", " enableTelemetry=YES ", buf, 2u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "[SMSafetyMonitorManager stopMonitoringLocalSessionStateWithHandler:]";
      _os_log_impl(&dword_26455D000, v12, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  [(SMSafetyMonitorManager *)self setLocalSessionStateHandler:0];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __69__SMSafetyMonitorManager_stopMonitoringLocalSessionStateWithHandler___block_invoke;
  v17[3] = &unk_279B656E0;
  v19 = v22;
  v18 = handlerCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__SMSafetyMonitorManager_stopMonitoringLocalSessionStateWithHandler___block_invoke_380;
  v14[3] = &unk_279B65758;
  v16 = v22;
  v13 = v18;
  v15 = v13;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v17 taskBlock:v14];

  _Block_object_dispose(v22, 8);
}

void __69__SMSafetyMonitorManager_stopMonitoringLocalSessionStateWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMStopLocalSessionStateMonitoring", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __69__SMSafetyMonitorManager_stopMonitoringLocalSessionStateWithHandler___block_invoke_380(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__SMSafetyMonitorManager_stopMonitoringLocalSessionStateWithHandler___block_invoke_2;
  v5[3] = &unk_279B656E0;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  [a2 stopMonitoringSessionStateWithHandler:v5];
}

void __69__SMSafetyMonitorManager_stopMonitoringLocalSessionStateWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMStopLocalSessionStateMonitoring", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)onLocalSessionStateChanged:(id)changed withError:(id)error
{
  changedCopy = changed;
  errorCopy = error;
  localSessionStateHandler = [(SMSafetyMonitorManager *)self localSessionStateHandler];

  if (localSessionStateHandler)
  {
    localSessionStateHandler2 = [(SMSafetyMonitorManager *)self localSessionStateHandler];
    (localSessionStateHandler2)[2](localSessionStateHandler2, changedCopy, errorCopy);
  }
}

- (void)fetchSuggestionsWithOptions:(id)options handler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(SMSafetyMonitorManager *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__SMSafetyMonitorManager_fetchSuggestionsWithOptions_handler___block_invoke;
  v12[3] = &unk_279B659A8;
  v14 = handlerCopy;
  v15 = a2;
  v12[4] = self;
  v13 = optionsCopy;
  v10 = optionsCopy;
  v11 = handlerCopy;
  dispatch_async(queue, v12);
}

void __62__SMSafetyMonitorManager_fetchSuggestionsWithOptions_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__SMSafetyMonitorManager_fetchSuggestionsWithOptions_handler___block_invoke_2;
  v5[3] = &unk_279B657A8;
  v3 = *(a1 + 56);
  v6 = *(a1 + 48);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 fetchSuggestionsWithOptions:*(a1 + 40) handler:*(a1 + 48)];
}

- (void)fetchSuggestionsCountWithOptions:(id)options handler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(SMSafetyMonitorManager *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__SMSafetyMonitorManager_fetchSuggestionsCountWithOptions_handler___block_invoke;
  v12[3] = &unk_279B659A8;
  v14 = handlerCopy;
  v15 = a2;
  v12[4] = self;
  v13 = optionsCopy;
  v10 = optionsCopy;
  v11 = handlerCopy;
  dispatch_async(queue, v12);
}

void __67__SMSafetyMonitorManager_fetchSuggestionsCountWithOptions_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__SMSafetyMonitorManager_fetchSuggestionsCountWithOptions_handler___block_invoke_2;
  v5[3] = &unk_279B657A8;
  v3 = *(a1 + 56);
  v6 = *(a1 + 48);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 fetchSuggestionsCountWithOptions:*(a1 + 40) handler:*(a1 + 48)];
}

- (void)clearSuggestionsWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(SMSafetyMonitorManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SMSafetyMonitorManager_clearSuggestionsWithHandler___block_invoke;
  block[3] = &unk_279B659D0;
  v9 = handlerCopy;
  v10 = a2;
  block[4] = self;
  v7 = handlerCopy;
  dispatch_async(queue, block);
}

void __54__SMSafetyMonitorManager_clearSuggestionsWithHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _proxyForServicingSelector:*(a1 + 48) withErrorHandler:*(a1 + 40)];
  [v2 clearSuggestionsWithHandler:*(a1 + 40)];
}

- (void)storeSuggestions:(id)suggestions handler:(id)handler
{
  suggestionsCopy = suggestions;
  handlerCopy = handler;
  queue = [(SMSafetyMonitorManager *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__SMSafetyMonitorManager_storeSuggestions_handler___block_invoke;
  v12[3] = &unk_279B659A8;
  v14 = handlerCopy;
  v15 = a2;
  v12[4] = self;
  v13 = suggestionsCopy;
  v10 = suggestionsCopy;
  v11 = handlerCopy;
  dispatch_async(queue, v12);
}

void __51__SMSafetyMonitorManager_storeSuggestions_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__SMSafetyMonitorManager_storeSuggestions_handler___block_invoke_2;
  v5[3] = &unk_279B657A8;
  v3 = *(a1 + 56);
  v6 = *(a1 + 48);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 storeSuggestions:*(a1 + 40) handler:*(a1 + 48)];
}

- (void)storeSessionManagerStates:(id)states handler:(id)handler
{
  statesCopy = states;
  handlerCopy = handler;
  queue = [(SMSafetyMonitorManager *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__SMSafetyMonitorManager_storeSessionManagerStates_handler___block_invoke;
  v12[3] = &unk_279B659A8;
  v14 = handlerCopy;
  v15 = a2;
  v12[4] = self;
  v13 = statesCopy;
  v10 = statesCopy;
  v11 = handlerCopy;
  dispatch_async(queue, v12);
}

void __60__SMSafetyMonitorManager_storeSessionManagerStates_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__SMSafetyMonitorManager_storeSessionManagerStates_handler___block_invoke_2;
  v5[3] = &unk_279B657A8;
  v3 = *(a1 + 56);
  v6 = *(a1 + 48);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 storeSessionManagerStates:*(a1 + 40) handler:*(a1 + 48)];
}

- (void)storeSessionMonitorStates:(id)states handler:(id)handler
{
  statesCopy = states;
  handlerCopy = handler;
  queue = [(SMSafetyMonitorManager *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__SMSafetyMonitorManager_storeSessionMonitorStates_handler___block_invoke;
  v12[3] = &unk_279B659A8;
  v14 = handlerCopy;
  v15 = a2;
  v12[4] = self;
  v13 = statesCopy;
  v10 = statesCopy;
  v11 = handlerCopy;
  dispatch_async(queue, v12);
}

void __60__SMSafetyMonitorManager_storeSessionMonitorStates_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__SMSafetyMonitorManager_storeSessionMonitorStates_handler___block_invoke_2;
  v5[3] = &unk_279B657A8;
  v3 = *(a1 + 56);
  v6 = *(a1 + 48);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 storeSessionMonitorStates:*(a1 + 40) handler:*(a1 + 48)];
}

- (void)storeSessionConfigurations:(id)configurations handler:(id)handler
{
  configurationsCopy = configurations;
  handlerCopy = handler;
  queue = [(SMSafetyMonitorManager *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__SMSafetyMonitorManager_storeSessionConfigurations_handler___block_invoke;
  v12[3] = &unk_279B659A8;
  v14 = handlerCopy;
  v15 = a2;
  v12[4] = self;
  v13 = configurationsCopy;
  v10 = configurationsCopy;
  v11 = handlerCopy;
  dispatch_async(queue, v12);
}

void __61__SMSafetyMonitorManager_storeSessionConfigurations_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__SMSafetyMonitorManager_storeSessionConfigurations_handler___block_invoke_2;
  v5[3] = &unk_279B657A8;
  v3 = *(a1 + 56);
  v6 = *(a1 + 48);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 storeSessionConfigurations:*(a1 + 40) handler:*(a1 + 48)];
}

- (void)storeTriggerDestinationStates:(id)states handler:(id)handler
{
  statesCopy = states;
  handlerCopy = handler;
  queue = [(SMSafetyMonitorManager *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__SMSafetyMonitorManager_storeTriggerDestinationStates_handler___block_invoke;
  v12[3] = &unk_279B659A8;
  v14 = handlerCopy;
  v15 = a2;
  v12[4] = self;
  v13 = statesCopy;
  v10 = statesCopy;
  v11 = handlerCopy;
  dispatch_async(queue, v12);
}

void __64__SMSafetyMonitorManager_storeTriggerDestinationStates_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__SMSafetyMonitorManager_storeTriggerDestinationStates_handler___block_invoke_2;
  v5[3] = &unk_279B657A8;
  v3 = *(a1 + 56);
  v6 = *(a1 + 48);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 storeTriggerDestinationStates:*(a1 + 40) handler:*(a1 + 48)];
}

- (void)fetchSessionManagerStatesWithOptions:(id)options handler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(SMSafetyMonitorManager *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__SMSafetyMonitorManager_fetchSessionManagerStatesWithOptions_handler___block_invoke;
  v12[3] = &unk_279B659A8;
  v14 = handlerCopy;
  v15 = a2;
  v12[4] = self;
  v13 = optionsCopy;
  v10 = optionsCopy;
  v11 = handlerCopy;
  dispatch_async(queue, v12);
}

void __71__SMSafetyMonitorManager_fetchSessionManagerStatesWithOptions_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__SMSafetyMonitorManager_fetchSessionManagerStatesWithOptions_handler___block_invoke_2;
  v5[3] = &unk_279B657A8;
  v3 = *(a1 + 56);
  v6 = *(a1 + 48);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 fetchSessionManagerStatesWithOptions:*(a1 + 40) handler:*(a1 + 48)];
}

- (void)fetchMostRecentSessionMonitorStateWithSessionID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  queue = [(SMSafetyMonitorManager *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __82__SMSafetyMonitorManager_fetchMostRecentSessionMonitorStateWithSessionID_handler___block_invoke;
  v12[3] = &unk_279B659A8;
  v14 = handlerCopy;
  v15 = a2;
  v12[4] = self;
  v13 = dCopy;
  v10 = dCopy;
  v11 = handlerCopy;
  dispatch_async(queue, v12);
}

void __82__SMSafetyMonitorManager_fetchMostRecentSessionMonitorStateWithSessionID_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __82__SMSafetyMonitorManager_fetchMostRecentSessionMonitorStateWithSessionID_handler___block_invoke_2;
  v5[3] = &unk_279B657A8;
  v3 = *(a1 + 56);
  v6 = *(a1 + 48);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 fetchMostRecentSessionMonitorStateWithSessionID:*(a1 + 40) handler:*(a1 + 48)];
}

- (void)fetchSessionConfigurationsWithOptions:(id)options handler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  queue = [(SMSafetyMonitorManager *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__SMSafetyMonitorManager_fetchSessionConfigurationsWithOptions_handler___block_invoke;
  v12[3] = &unk_279B659A8;
  v14 = handlerCopy;
  v15 = a2;
  v12[4] = self;
  v13 = optionsCopy;
  v10 = optionsCopy;
  v11 = handlerCopy;
  dispatch_async(queue, v12);
}

void __72__SMSafetyMonitorManager_fetchSessionConfigurationsWithOptions_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__SMSafetyMonitorManager_fetchSessionConfigurationsWithOptions_handler___block_invoke_2;
  v5[3] = &unk_279B657A8;
  v3 = *(a1 + 56);
  v6 = *(a1 + 48);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 fetchSessionConfigurationsWithOptions:*(a1 + 40) handler:*(a1 + 48)];
}

- (void)clearSessionsWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(SMSafetyMonitorManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SMSafetyMonitorManager_clearSessionsWithHandler___block_invoke;
  block[3] = &unk_279B659D0;
  v9 = handlerCopy;
  v10 = a2;
  block[4] = self;
  v7 = handlerCopy;
  dispatch_async(queue, block);
}

void __51__SMSafetyMonitorManager_clearSessionsWithHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__SMSafetyMonitorManager_clearSessionsWithHandler___block_invoke_2;
  v5[3] = &unk_279B657A8;
  v3 = *(a1 + 32);
  v6 = *(a1 + 40);
  v4 = [v3 _proxyForServicingSelector:v2 withErrorHandler:v5];
  [v4 clearSessionsWithHandler:*(a1 + 40)];
}

- (void)clearSessionMonitorStatesWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(SMSafetyMonitorManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SMSafetyMonitorManager_clearSessionMonitorStatesWithHandler___block_invoke;
  block[3] = &unk_279B659D0;
  v9 = handlerCopy;
  v10 = a2;
  block[4] = self;
  v7 = handlerCopy;
  dispatch_async(queue, block);
}

void __63__SMSafetyMonitorManager_clearSessionMonitorStatesWithHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__SMSafetyMonitorManager_clearSessionMonitorStatesWithHandler___block_invoke_2;
  v5[3] = &unk_279B657A8;
  v3 = *(a1 + 32);
  v6 = *(a1 + 40);
  v4 = [v3 _proxyForServicingSelector:v2 withErrorHandler:v5];
  [v4 clearSessionMonitorStatesWithHandler:*(a1 + 40)];
}

- (void)clearTriggerDestinationStatesWithHandler:(id)handler
{
  handlerCopy = handler;
  queue = [(SMSafetyMonitorManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__SMSafetyMonitorManager_clearTriggerDestinationStatesWithHandler___block_invoke;
  block[3] = &unk_279B659D0;
  v9 = handlerCopy;
  v10 = a2;
  block[4] = self;
  v7 = handlerCopy;
  dispatch_async(queue, block);
}

void __67__SMSafetyMonitorManager_clearTriggerDestinationStatesWithHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__SMSafetyMonitorManager_clearTriggerDestinationStatesWithHandler___block_invoke_2;
  v5[3] = &unk_279B657A8;
  v3 = *(a1 + 32);
  v6 = *(a1 + 40);
  v4 = [v3 _proxyForServicingSelector:v2 withErrorHandler:v5];
  [v4 clearTriggerDestinationStatesWithHandler:*(a1 + 40)];
}

- (void)fetchTriggerDestinationStateWithSessionID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  queue = [(SMSafetyMonitorManager *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__SMSafetyMonitorManager_fetchTriggerDestinationStateWithSessionID_handler___block_invoke;
  v12[3] = &unk_279B659A8;
  v14 = handlerCopy;
  v15 = a2;
  v12[4] = self;
  v13 = dCopy;
  v10 = dCopy;
  v11 = handlerCopy;
  dispatch_async(queue, v12);
}

void __76__SMSafetyMonitorManager_fetchTriggerDestinationStateWithSessionID_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76__SMSafetyMonitorManager_fetchTriggerDestinationStateWithSessionID_handler___block_invoke_2;
  v5[3] = &unk_279B657A8;
  v3 = *(a1 + 56);
  v6 = *(a1 + 48);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 fetchTriggerDestinationStateWithSessionID:*(a1 + 40) handler:*(a1 + 48)];
}

- (void)runProactiveSuggestionsEngineWithContext:(id)context shouldStoreSuggestions:(BOOL)suggestions handler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __98__SMSafetyMonitorManager_runProactiveSuggestionsEngineWithContext_shouldStoreSuggestions_handler___block_invoke;
  v17[3] = &unk_279B657A8;
  v18 = handlerCopy;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __98__SMSafetyMonitorManager_runProactiveSuggestionsEngineWithContext_shouldStoreSuggestions_handler___block_invoke_2;
  v13[3] = &unk_279B659F8;
  suggestionsCopy = suggestions;
  v14 = contextCopy;
  v15 = v18;
  v11 = v18;
  v12 = contextCopy;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v17 taskBlock:v13];
}

- (void)fetchSuggestedSessionConfigurationWithHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__SMSafetyMonitorManager_fetchSuggestedSessionConfigurationWithHandler___block_invoke;
  v9[3] = &unk_279B657A8;
  v10 = handlerCopy;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__SMSafetyMonitorManager_fetchSuggestedSessionConfigurationWithHandler___block_invoke_2;
  v7[3] = &unk_279B65868;
  v8 = v10;
  v6 = v10;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v9 taskBlock:v7];
}

- (void)fetchSuggestedCheckInURLForWorkoutSuggestionWithHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__SMSafetyMonitorManager_fetchSuggestedCheckInURLForWorkoutSuggestionWithHandler___block_invoke;
  v9[3] = &unk_279B657A8;
  v10 = handlerCopy;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__SMSafetyMonitorManager_fetchSuggestedCheckInURLForWorkoutSuggestionWithHandler___block_invoke_2;
  v7[3] = &unk_279B65868;
  v8 = v10;
  v6 = v10;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v9 taskBlock:v7];
}

- (void)launchSessionInitiationUIWithConfiguration:(id)configuration handler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__SMSafetyMonitorManager_launchSessionInitiationUIWithConfiguration_handler___block_invoke;
  v11[3] = &unk_279B65C00;
  v12 = configurationCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = configurationCopy;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v9 taskBlock:v11];
}

- (void)fetchMostLikelyReceiverHandlesWithHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v22 = 136315394;
      *&v22[4] = "[SMSafetyMonitorManager fetchMostLikelyReceiverHandlesWithHandler:]";
      *&v22[12] = 1024;
      *&v22[14] = 1196;
      _os_log_error_impl(&dword_26455D000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", v22, 0x12u);
    }
  }

  *v22 = 0;
  *&v22[8] = v22;
  *&v22[16] = 0x2020000000;
  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v8 = os_signpost_id_generate(v7);

  v23 = v8;
  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v10 = v9;
  v11 = *(*&v22[8] + 24);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26455D000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "SMFetchMostLikelyReceiverHandles", " enableTelemetry=YES ", buf, 2u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "[SMSafetyMonitorManager fetchMostLikelyReceiverHandlesWithHandler:]";
      _os_log_impl(&dword_26455D000, v12, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__SMSafetyMonitorManager_fetchMostLikelyReceiverHandlesWithHandler___block_invoke;
  v17[3] = &unk_279B656E0;
  v19 = v22;
  v18 = handlerCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__SMSafetyMonitorManager_fetchMostLikelyReceiverHandlesWithHandler___block_invoke_381;
  v14[3] = &unk_279B65758;
  v16 = v22;
  v13 = v18;
  v15 = v13;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v17 taskBlock:v14];

  _Block_object_dispose(v22, 8);
}

void __68__SMSafetyMonitorManager_fetchMostLikelyReceiverHandlesWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMFetchMostLikelyReceiverHandles", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __68__SMSafetyMonitorManager_fetchMostLikelyReceiverHandlesWithHandler___block_invoke_381(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __68__SMSafetyMonitorManager_fetchMostLikelyReceiverHandlesWithHandler___block_invoke_2;
  v5[3] = &unk_279B65A20;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  [a2 fetchMostLikelyReceiverHandlesWithHandler:v5];
}

void __68__SMSafetyMonitorManager_fetchMostLikelyReceiverHandlesWithHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v8 = v7;
  v9 = *(*(*(a1 + 40) + 8) + 24);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = 134349056;
    v11 = [v5 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v8, OS_SIGNPOST_INTERVAL_END, v9, "SMFetchMostLikelyReceiverHandles", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v10, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchMostLikelyReceiverHandlesWithOptions:(id)options handler:(id)handler
{
  v29 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v27 = 136315394;
      *&v27[4] = "[SMSafetyMonitorManager fetchMostLikelyReceiverHandlesWithOptions:handler:]";
      *&v27[12] = 1024;
      *&v27[14] = 1213;
      _os_log_error_impl(&dword_26455D000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", v27, 0x12u);
    }
  }

  *v27 = 0;
  *&v27[8] = v27;
  *&v27[16] = 0x2020000000;
  v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v11 = os_signpost_id_generate(v10);

  v28 = v11;
  v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v13 = v12;
  v14 = *(*&v27[8] + 24);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26455D000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v14, "SMFetchMostLikelyReceiverHandles", " enableTelemetry=YES ", buf, 2u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v26 = "[SMSafetyMonitorManager fetchMostLikelyReceiverHandlesWithOptions:handler:]";
      _os_log_impl(&dword_26455D000, v15, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __76__SMSafetyMonitorManager_fetchMostLikelyReceiverHandlesWithOptions_handler___block_invoke;
  v22[3] = &unk_279B656E0;
  v24 = v27;
  v23 = handlerCopy;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __76__SMSafetyMonitorManager_fetchMostLikelyReceiverHandlesWithOptions_handler___block_invoke_383;
  v18[3] = &unk_279B65908;
  v16 = optionsCopy;
  v19 = v16;
  v21 = v27;
  v17 = v23;
  v20 = v17;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v22 taskBlock:v18];

  _Block_object_dispose(v27, 8);
}

void __76__SMSafetyMonitorManager_fetchMostLikelyReceiverHandlesWithOptions_handler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMFetchMostLikelyReceiverHandles", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __76__SMSafetyMonitorManager_fetchMostLikelyReceiverHandlesWithOptions_handler___block_invoke_383(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__SMSafetyMonitorManager_fetchMostLikelyReceiverHandlesWithOptions_handler___block_invoke_2;
  v6[3] = &unk_279B65A20;
  v5 = *(a1 + 40);
  v4 = v5;
  v7 = v5;
  [a2 fetchMostLikelyReceiverHandlesWithOptions:v3 handler:v6];
}

void __76__SMSafetyMonitorManager_fetchMostLikelyReceiverHandlesWithOptions_handler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v8 = v7;
  v9 = *(*(*(a1 + 40) + 8) + 24);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = 134349056;
    v11 = [v5 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v8, OS_SIGNPOST_INTERVAL_END, v9, "SMFetchMostLikelyReceiverHandles", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v10, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchNumFavoriteRecipientsWithReceiverHandles:(id)handles handler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (handlesCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v20 = "[SMSafetyMonitorManager fetchNumFavoriteRecipientsWithReceiverHandles:handler:]";
    v21 = 1024;
    v22 = 1232;
    _os_log_error_impl(&dword_26455D000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: receiverHandles (in %s:%d)", buf, 0x12u);
  }

  if (!v9)
  {
LABEL_7:
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[SMSafetyMonitorManager fetchNumFavoriteRecipientsWithReceiverHandles:handler:]";
      v21 = 1024;
      v22 = 1233;
      _os_log_error_impl(&dword_26455D000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __80__SMSafetyMonitorManager_fetchNumFavoriteRecipientsWithReceiverHandles_handler___block_invoke;
  v17[3] = &unk_279B657A8;
  v18 = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__SMSafetyMonitorManager_fetchNumFavoriteRecipientsWithReceiverHandles_handler___block_invoke_2;
  v14[3] = &unk_279B65C00;
  v15 = handlesCopy;
  v16 = v18;
  v12 = v18;
  v13 = handlesCopy;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v17 taskBlock:v14];
}

- (void)fetchNumEmergencyRecipientsWithReceiverHandles:(id)handles handler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (handlesCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v20 = "[SMSafetyMonitorManager fetchNumEmergencyRecipientsWithReceiverHandles:handler:]";
    v21 = 1024;
    v22 = 1245;
    _os_log_error_impl(&dword_26455D000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: receiverHandles (in %s:%d)", buf, 0x12u);
  }

  if (!v9)
  {
LABEL_7:
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[SMSafetyMonitorManager fetchNumEmergencyRecipientsWithReceiverHandles:handler:]";
      v21 = 1024;
      v22 = 1246;
      _os_log_error_impl(&dword_26455D000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __81__SMSafetyMonitorManager_fetchNumEmergencyRecipientsWithReceiverHandles_handler___block_invoke;
  v17[3] = &unk_279B657A8;
  v18 = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__SMSafetyMonitorManager_fetchNumEmergencyRecipientsWithReceiverHandles_handler___block_invoke_2;
  v14[3] = &unk_279B65C00;
  v15 = handlesCopy;
  v16 = v18;
  v12 = v18;
  v13 = handlesCopy;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v17 taskBlock:v14];
}

- (void)fetchNumiCloudFamilyRecipientsWithReceiverHandles:(id)handles handler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (handlesCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v20 = "[SMSafetyMonitorManager fetchNumiCloudFamilyRecipientsWithReceiverHandles:handler:]";
    v21 = 1024;
    v22 = 1258;
    _os_log_error_impl(&dword_26455D000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: receiverHandles (in %s:%d)", buf, 0x12u);
  }

  if (!v9)
  {
LABEL_7:
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[SMSafetyMonitorManager fetchNumiCloudFamilyRecipientsWithReceiverHandles:handler:]";
      v21 = 1024;
      v22 = 1259;
      _os_log_error_impl(&dword_26455D000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __84__SMSafetyMonitorManager_fetchNumiCloudFamilyRecipientsWithReceiverHandles_handler___block_invoke;
  v17[3] = &unk_279B657A8;
  v18 = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__SMSafetyMonitorManager_fetchNumiCloudFamilyRecipientsWithReceiverHandles_handler___block_invoke_2;
  v14[3] = &unk_279B65C00;
  v15 = handlesCopy;
  v16 = v18;
  v12 = v18;
  v13 = handlesCopy;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v17 taskBlock:v14];
}

- (void)fetchMostLikelySessionDestinationsWithHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v22 = 136315394;
      *&v22[4] = "[SMSafetyMonitorManager fetchMostLikelySessionDestinationsWithHandler:]";
      *&v22[12] = 1024;
      *&v22[14] = 1270;
      _os_log_error_impl(&dword_26455D000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", v22, 0x12u);
    }
  }

  *v22 = 0;
  *&v22[8] = v22;
  *&v22[16] = 0x2020000000;
  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v8 = os_signpost_id_generate(v7);

  v23 = v8;
  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v10 = v9;
  v11 = *(*&v22[8] + 24);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26455D000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "SMFetchMostLikelySessionDestinations", " enableTelemetry=YES ", buf, 2u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "[SMSafetyMonitorManager fetchMostLikelySessionDestinationsWithHandler:]";
      _os_log_impl(&dword_26455D000, v12, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __72__SMSafetyMonitorManager_fetchMostLikelySessionDestinationsWithHandler___block_invoke;
  v17[3] = &unk_279B656E0;
  v19 = v22;
  v18 = handlerCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__SMSafetyMonitorManager_fetchMostLikelySessionDestinationsWithHandler___block_invoke_384;
  v14[3] = &unk_279B65758;
  v16 = v22;
  v13 = v18;
  v15 = v13;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v17 taskBlock:v14];

  _Block_object_dispose(v22, 8);
}

void __72__SMSafetyMonitorManager_fetchMostLikelySessionDestinationsWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMFetchMostLikelySessionDestinations", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __72__SMSafetyMonitorManager_fetchMostLikelySessionDestinationsWithHandler___block_invoke_384(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __72__SMSafetyMonitorManager_fetchMostLikelySessionDestinationsWithHandler___block_invoke_2;
  v5[3] = &unk_279B65A48;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  [a2 fetchMostLikelySessionDestinationsWithHandler:v5];
}

void __72__SMSafetyMonitorManager_fetchMostLikelySessionDestinationsWithHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a2;
  v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v12 = v11;
  v13 = *(*(*(a1 + 40) + 8) + 24);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    v14 = 134349056;
    v15 = [v8 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v12, OS_SIGNPOST_INTERVAL_END, v13, "SMFetchMostLikelySessionDestinations", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v14, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)showSuggestionsDetectionUIWithSuggestion:(id)suggestion handler:(id)handler
{
  suggestionCopy = suggestion;
  handlerCopy = handler;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__SMSafetyMonitorManager_showSuggestionsDetectionUIWithSuggestion_handler___block_invoke;
  v14[3] = &unk_279B657A8;
  v15 = handlerCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__SMSafetyMonitorManager_showSuggestionsDetectionUIWithSuggestion_handler___block_invoke_2;
  v11[3] = &unk_279B65C00;
  v12 = suggestionCopy;
  v13 = v15;
  v9 = v15;
  v10 = suggestionCopy;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v14 taskBlock:v11];
}

- (void)shouldShowKeyboardSuggestionsForInitiator:(id)initiator receiver:(id)receiver handler:(id)handler
{
  initiatorCopy = initiator;
  receiverCopy = receiver;
  handlerCopy = handler;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __85__SMSafetyMonitorManager_shouldShowKeyboardSuggestionsForInitiator_receiver_handler___block_invoke;
  v19[3] = &unk_279B657A8;
  v20 = handlerCopy;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__SMSafetyMonitorManager_shouldShowKeyboardSuggestionsForInitiator_receiver_handler___block_invoke_2;
  v15[3] = &unk_279B65A70;
  v16 = initiatorCopy;
  v17 = receiverCopy;
  v18 = v20;
  v12 = v20;
  v13 = receiverCopy;
  v14 = initiatorCopy;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v19 taskBlock:v15];
}

- (void)shouldShowTipKitSuggestionsForInitiator:(id)initiator receiver:(id)receiver handler:(id)handler
{
  initiatorCopy = initiator;
  receiverCopy = receiver;
  handlerCopy = handler;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __83__SMSafetyMonitorManager_shouldShowTipKitSuggestionsForInitiator_receiver_handler___block_invoke;
  v19[3] = &unk_279B657A8;
  v20 = handlerCopy;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83__SMSafetyMonitorManager_shouldShowTipKitSuggestionsForInitiator_receiver_handler___block_invoke_2;
  v15[3] = &unk_279B65A70;
  v16 = initiatorCopy;
  v17 = receiverCopy;
  v18 = v20;
  v12 = v20;
  v13 = receiverCopy;
  v14 = initiatorCopy;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v19 taskBlock:v15];
}

- (void)fetchShouldShowProactiveSuggestionsWithHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__SMSafetyMonitorManager_fetchShouldShowProactiveSuggestionsWithHandler___block_invoke;
  v9[3] = &unk_279B657A8;
  v10 = handlerCopy;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__SMSafetyMonitorManager_fetchShouldShowProactiveSuggestionsWithHandler___block_invoke_2;
  v7[3] = &unk_279B65868;
  v8 = v10;
  v6 = v10;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v9 taskBlock:v7];
}

- (void)showAlwaysOnPromptWithConfiguration:(id)configuration handler:(id)handler
{
  configurationCopy = configuration;
  handlerCopy = handler;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__SMSafetyMonitorManager_showAlwaysOnPromptWithConfiguration_handler___block_invoke;
  v11[3] = &unk_279B65C00;
  v12 = configurationCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = configurationCopy;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v9 taskBlock:v11];
}

- (void)fetchQuickReplySuggestionURLWithCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__SMSafetyMonitorManager_fetchQuickReplySuggestionURLWithCompletion___block_invoke;
  v9[3] = &unk_279B657A8;
  v10 = completionCopy;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__SMSafetyMonitorManager_fetchQuickReplySuggestionURLWithCompletion___block_invoke_2;
  v7[3] = &unk_279B65868;
  v8 = v10;
  v6 = v10;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v9 taskBlock:v7];
}

- (void)sendIDSMessage:(id)message toConversation:(id)conversation completion:(id)completion
{
  messageCopy = message;
  conversationCopy = conversation;
  completionCopy = completion;
  queue = [(SMSafetyMonitorManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__SMSafetyMonitorManager_sendIDSMessage_toConversation_completion___block_invoke;
  block[3] = &unk_279B65A98;
  v19 = completionCopy;
  v20 = a2;
  block[4] = self;
  v17 = messageCopy;
  v18 = conversationCopy;
  v13 = conversationCopy;
  v14 = messageCopy;
  v15 = completionCopy;
  dispatch_async(queue, block);
}

void __67__SMSafetyMonitorManager_sendIDSMessage_toConversation_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__SMSafetyMonitorManager_sendIDSMessage_toConversation_completion___block_invoke_2;
  v5[3] = &unk_279B65AC0;
  v5[4] = v2;
  v7 = v3;
  v6 = *(a1 + 56);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 sendIDSMessage:*(a1 + 40) toConversation:*(a1 + 48) completion:*(a1 + 56)];
}

void __67__SMSafetyMonitorManager_sendIDSMessage_toConversation_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 48));
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "%@,%@,failed to find proxy,error,%@", &v8, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)sendIDSMessageToMyDevices:(id)devices completion:(id)completion
{
  devicesCopy = devices;
  completionCopy = completion;
  queue = [(SMSafetyMonitorManager *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__SMSafetyMonitorManager_sendIDSMessageToMyDevices_completion___block_invoke;
  v12[3] = &unk_279B659A8;
  v14 = completionCopy;
  v15 = a2;
  v12[4] = self;
  v13 = devicesCopy;
  v10 = devicesCopy;
  v11 = completionCopy;
  dispatch_async(queue, v12);
}

void __63__SMSafetyMonitorManager_sendIDSMessageToMyDevices_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__SMSafetyMonitorManager_sendIDSMessageToMyDevices_completion___block_invoke_2;
  v5[3] = &unk_279B65AC0;
  v5[4] = v2;
  v7 = v3;
  v6 = *(a1 + 48);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 sendIDSMessageToMyDevices:*(a1 + 40) completion:*(a1 + 48)];
}

void __63__SMSafetyMonitorManager_sendIDSMessageToMyDevices_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 48));
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "%@,%@,failed to find proxy,error,%@", &v8, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)sendIDSMessageToPairedDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  queue = [(SMSafetyMonitorManager *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__SMSafetyMonitorManager_sendIDSMessageToPairedDevice_completion___block_invoke;
  v12[3] = &unk_279B659A8;
  v14 = completionCopy;
  v15 = a2;
  v12[4] = self;
  v13 = deviceCopy;
  v10 = deviceCopy;
  v11 = completionCopy;
  dispatch_async(queue, v12);
}

void __66__SMSafetyMonitorManager_sendIDSMessageToPairedDevice_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__SMSafetyMonitorManager_sendIDSMessageToPairedDevice_completion___block_invoke_2;
  v6[3] = &unk_279B65AC0;
  v3 = *(a1 + 56);
  v4 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v7 = v4;
  v8 = *(a1 + 56);
  v5 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v6];
  [v5 sendIDSMessageToPairedDevice:*(a1 + 40) completion:*(a1 + 48)];
}

void __66__SMSafetyMonitorManager_sendIDSMessageToPairedDevice_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 48));
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "%@,%@,failed to find proxy,error,%@", &v8, 0x20u);
  }
}

- (void)sendIDSMessageToMyNearbyDevices:(id)devices completion:(id)completion
{
  devicesCopy = devices;
  completionCopy = completion;
  queue = [(SMSafetyMonitorManager *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__SMSafetyMonitorManager_sendIDSMessageToMyNearbyDevices_completion___block_invoke;
  v12[3] = &unk_279B659A8;
  v14 = completionCopy;
  v15 = a2;
  v12[4] = self;
  v13 = devicesCopy;
  v10 = devicesCopy;
  v11 = completionCopy;
  dispatch_async(queue, v12);
}

void __69__SMSafetyMonitorManager_sendIDSMessageToMyNearbyDevices_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__SMSafetyMonitorManager_sendIDSMessageToMyNearbyDevices_completion___block_invoke_2;
  v6[3] = &unk_279B65AC0;
  v3 = *(a1 + 56);
  v4 = *(a1 + 48);
  v6[4] = *(a1 + 32);
  v7 = v4;
  v8 = *(a1 + 56);
  v5 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v6];
  [v5 sendIDSMessageToMyNearbyDevices:*(a1 + 40) completion:*(a1 + 48)];
}

void __69__SMSafetyMonitorManager_sendIDSMessageToMyNearbyDevices_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  (*(*(a1 + 40) + 16))();
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 48));
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "%@,%@,failed to find proxy,error,%@", &v8, 0x20u);
  }
}

- (void)sendMadridMessage:(id)message associatedGUID:(id)d toConversation:(id)conversation summaryText:(id)text completion:(id)completion
{
  messageCopy = message;
  dCopy = d;
  conversationCopy = conversation;
  textCopy = text;
  completionCopy = completion;
  queue = [(SMSafetyMonitorManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__SMSafetyMonitorManager_sendMadridMessage_associatedGUID_toConversation_summaryText_completion___block_invoke;
  block[3] = &unk_279B65AE8;
  v29 = completionCopy;
  v30 = a2;
  block[4] = self;
  v25 = messageCopy;
  v26 = dCopy;
  v27 = conversationCopy;
  v28 = textCopy;
  v19 = textCopy;
  v20 = conversationCopy;
  v21 = dCopy;
  v22 = messageCopy;
  v23 = completionCopy;
  dispatch_async(queue, block);
}

void __97__SMSafetyMonitorManager_sendMadridMessage_associatedGUID_toConversation_summaryText_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 80);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __97__SMSafetyMonitorManager_sendMadridMessage_associatedGUID_toConversation_summaryText_completion___block_invoke_2;
  v5[3] = &unk_279B65AC0;
  v5[4] = v2;
  v7 = v3;
  v6 = *(a1 + 72);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 sendMadridMessage:*(a1 + 40) associatedGUID:*(a1 + 48) toConversation:*(a1 + 56) summaryText:*(a1 + 64) completion:*(a1 + 72)];
}

void __97__SMSafetyMonitorManager_sendMadridMessage_associatedGUID_toConversation_summaryText_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 48));
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "%@,%@,failed to find proxy,error,%@", &v8, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)scheduleMadridMessageSendForMessage:(id)message messageGUID:(id)d associatedGUID:(id)iD sendDate:(id)date toConversation:(id)conversation summaryText:(id)text completion:(id)completion
{
  messageCopy = message;
  dCopy = d;
  iDCopy = iD;
  dateCopy = date;
  conversationCopy = conversation;
  textCopy = text;
  completionCopy = completion;
  queue = [(SMSafetyMonitorManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __136__SMSafetyMonitorManager_scheduleMadridMessageSendForMessage_messageGUID_associatedGUID_sendDate_toConversation_summaryText_completion___block_invoke;
  block[3] = &unk_279B65B10;
  v38 = completionCopy;
  v39 = a2;
  block[4] = self;
  v32 = messageCopy;
  v33 = dCopy;
  v34 = iDCopy;
  v35 = dateCopy;
  v36 = conversationCopy;
  v37 = textCopy;
  v23 = textCopy;
  v24 = conversationCopy;
  v25 = dateCopy;
  v26 = iDCopy;
  v27 = dCopy;
  v28 = messageCopy;
  v29 = completionCopy;
  dispatch_async(queue, block);
}

void __136__SMSafetyMonitorManager_scheduleMadridMessageSendForMessage_messageGUID_associatedGUID_sendDate_toConversation_summaryText_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 96);
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __136__SMSafetyMonitorManager_scheduleMadridMessageSendForMessage_messageGUID_associatedGUID_sendDate_toConversation_summaryText_completion___block_invoke_2;
  v8 = &unk_279B65AC0;
  v9 = v2;
  v11 = v3;
  v10 = *(a1 + 88);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:&v5];
  [v4 scheduleMadridMessageSendForMessage:*(a1 + 40) messageGUID:*(a1 + 48) associatedGUID:*(a1 + 56) sendDate:*(a1 + 64) toConversation:*(a1 + 72) summaryText:*(a1 + 80) completion:{*(a1 + 88), v5, v6, v7, v8, v9}];
}

void __136__SMSafetyMonitorManager_scheduleMadridMessageSendForMessage_messageGUID_associatedGUID_sendDate_toConversation_summaryText_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 48));
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "%@,%@,failed to find proxy,error,%@", &v8, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)cancelMadridMessageSendForMessageGUID:(id)d toConversation:(id)conversation completion:(id)completion
{
  dCopy = d;
  conversationCopy = conversation;
  completionCopy = completion;
  queue = [(SMSafetyMonitorManager *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__SMSafetyMonitorManager_cancelMadridMessageSendForMessageGUID_toConversation_completion___block_invoke;
  block[3] = &unk_279B65A98;
  v19 = completionCopy;
  v20 = a2;
  block[4] = self;
  v17 = dCopy;
  v18 = conversationCopy;
  v13 = conversationCopy;
  v14 = dCopy;
  v15 = completionCopy;
  dispatch_async(queue, block);
}

void __90__SMSafetyMonitorManager_cancelMadridMessageSendForMessageGUID_toConversation_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __90__SMSafetyMonitorManager_cancelMadridMessageSendForMessageGUID_toConversation_completion___block_invoke_2;
  v5[3] = &unk_279B65AC0;
  v5[4] = v2;
  v7 = v3;
  v6 = *(a1 + 56);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 cancelMadridMessageSendForMessageGUID:*(a1 + 40) toConversation:*(a1 + 48) completion:*(a1 + 56)];
}

void __90__SMSafetyMonitorManager_cancelMadridMessageSendForMessageGUID_toConversation_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 48));
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "%@,%@,failed to find proxy,error,%@", &v8, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)iMessageSendFor:(id)for guid:(id)guid successful:(BOOL)successful withError:(id)error
{
  forCopy = for;
  guidCopy = guid;
  errorCopy = error;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __68__SMSafetyMonitorManager_iMessageSendFor_guid_successful_withError___block_invoke;
  v22[3] = &unk_279B65B38;
  v22[4] = self;
  v22[5] = a2;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__SMSafetyMonitorManager_iMessageSendFor_guid_successful_withError___block_invoke_386;
  v17[3] = &unk_279B65B60;
  v18 = forCopy;
  v19 = guidCopy;
  successfulCopy = successful;
  v20 = errorCopy;
  v14 = errorCopy;
  v15 = guidCopy;
  v16 = forCopy;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v22 taskBlock:v17];
}

void __68__SMSafetyMonitorManager_iMessageSendFor_guid_successful_withError___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 40));
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "%@,%@,failed to find proxy,error,%@", &v8, 0x20u);
  }
}

- (void)iMessageScheduledSendScheduledFor:(id)for guid:(id)guid successful:(BOOL)successful withError:(id)error
{
  forCopy = for;
  guidCopy = guid;
  errorCopy = error;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __86__SMSafetyMonitorManager_iMessageScheduledSendScheduledFor_guid_successful_withError___block_invoke;
  v22[3] = &unk_279B65B38;
  v22[4] = self;
  v22[5] = a2;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __86__SMSafetyMonitorManager_iMessageScheduledSendScheduledFor_guid_successful_withError___block_invoke_387;
  v17[3] = &unk_279B65B60;
  v18 = forCopy;
  v19 = guidCopy;
  successfulCopy = successful;
  v20 = errorCopy;
  v14 = errorCopy;
  v15 = guidCopy;
  v16 = forCopy;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v22 taskBlock:v17];
}

void __86__SMSafetyMonitorManager_iMessageScheduledSendScheduledFor_guid_successful_withError___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 40));
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "%@,%@,failed to find proxy,error,%@", &v8, 0x20u);
  }
}

- (void)iMessageScheduledSendCancelFor:(id)for successful:(BOOL)successful withError:(id)error
{
  forCopy = for;
  errorCopy = error;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __78__SMSafetyMonitorManager_iMessageScheduledSendCancelFor_successful_withError___block_invoke;
  v17[3] = &unk_279B65B38;
  v17[4] = self;
  v17[5] = a2;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__SMSafetyMonitorManager_iMessageScheduledSendCancelFor_successful_withError___block_invoke_388;
  v13[3] = &unk_279B65B88;
  successfulCopy = successful;
  v14 = forCopy;
  v15 = errorCopy;
  v11 = errorCopy;
  v12 = forCopy;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v17 taskBlock:v13];
}

void __78__SMSafetyMonitorManager_iMessageScheduledSendCancelFor_successful_withError___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 40));
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "%@,%@,failed to find proxy,error,%@", &v8, 0x20u);
  }
}

- (void)iMessageScheduledSendTriggeredFor:(id)for
{
  forCopy = for;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__SMSafetyMonitorManager_iMessageScheduledSendTriggeredFor___block_invoke;
  v8[3] = &unk_279B65B38;
  v8[4] = self;
  v8[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__SMSafetyMonitorManager_iMessageScheduledSendTriggeredFor___block_invoke_389;
  v6[3] = &unk_279B65BB0;
  v5 = forCopy;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v8 taskBlock:v6];
}

void __60__SMSafetyMonitorManager_iMessageScheduledSendTriggeredFor___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 40));
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "%@,%@,failed to find proxy,error,%@", &v8, 0x20u);
  }
}

- (void)iMessageReceived:(id)received fromHandle:(id)handle fromMe:(BOOL)me
{
  receivedCopy = received;
  handleCopy = handle;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__SMSafetyMonitorManager_iMessageReceived_fromHandle_fromMe___block_invoke;
  v17[3] = &unk_279B65B38;
  v17[4] = self;
  v17[5] = a2;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__SMSafetyMonitorManager_iMessageReceived_fromHandle_fromMe___block_invoke_390;
  v13[3] = &unk_279B65B88;
  v14 = receivedCopy;
  v15 = handleCopy;
  meCopy = me;
  v11 = handleCopy;
  v12 = receivedCopy;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v17 taskBlock:v13];
}

void __61__SMSafetyMonitorManager_iMessageReceived_fromHandle_fromMe___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 40));
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "%@,%@,failed to find proxy,error,%@", &v8, 0x20u);
  }
}

- (void)iMessageDeletedFor:(id)for
{
  forCopy = for;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__SMSafetyMonitorManager_iMessageDeletedFor___block_invoke;
  v8[3] = &unk_279B65B38;
  v8[4] = self;
  v8[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__SMSafetyMonitorManager_iMessageDeletedFor___block_invoke_391;
  v6[3] = &unk_279B65BB0;
  v5 = forCopy;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v8 taskBlock:v6];
}

void __45__SMSafetyMonitorManager_iMessageDeletedFor___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 40));
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "%@,%@,failed to find proxy,error,%@", &v8, 0x20u);
  }
}

- (void)iMessageConversationDeletedFor:(id)for
{
  forCopy = for;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__SMSafetyMonitorManager_iMessageConversationDeletedFor___block_invoke;
  v8[3] = &unk_279B65B38;
  v8[4] = self;
  v8[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__SMSafetyMonitorManager_iMessageConversationDeletedFor___block_invoke_392;
  v6[3] = &unk_279B65BB0;
  v5 = forCopy;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v8 taskBlock:v6];
}

void __57__SMSafetyMonitorManager_iMessageConversationDeletedFor___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 40));
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "%@,%@,failed to find proxy,error,%@", &v8, 0x20u);
  }
}

- (void)iMessageGroupMembershipChangedFor:(id)for
{
  v20 = *MEMORY[0x277D85DE8];
  forCopy = for;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      *buf = 138412802;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = forCopy;
      _os_log_impl(&dword_26455D000, v6, OS_LOG_TYPE_INFO, "%@,%@,groupID,%@", buf, 0x20u);
    }
  }

  v12 = forCopy;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__SMSafetyMonitorManager_iMessageGroupMembershipChangedFor___block_invoke;
  v13[3] = &unk_279B65B38;
  v13[4] = self;
  v13[5] = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__SMSafetyMonitorManager_iMessageGroupMembershipChangedFor___block_invoke_393;
  v11[3] = &unk_279B65BB0;
  v10 = forCopy;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v13 taskBlock:v11];
}

void __60__SMSafetyMonitorManager_iMessageGroupMembershipChangedFor___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 40));
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "%@,%@,failed to find proxy,error,%@", &v8, 0x20u);
  }
}

- (void)iMessageGroupDisplayNameChangedFor:(id)for
{
  v20 = *MEMORY[0x277D85DE8];
  forCopy = for;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      *buf = 138412802;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = forCopy;
      _os_log_impl(&dword_26455D000, v6, OS_LOG_TYPE_INFO, "%@,%@,groupID,%@", buf, 0x20u);
    }
  }

  v12 = forCopy;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__SMSafetyMonitorManager_iMessageGroupDisplayNameChangedFor___block_invoke;
  v13[3] = &unk_279B65B38;
  v13[4] = self;
  v13[5] = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__SMSafetyMonitorManager_iMessageGroupDisplayNameChangedFor___block_invoke_394;
  v11[3] = &unk_279B65BB0;
  v10 = forCopy;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v13 taskBlock:v11];
}

void __61__SMSafetyMonitorManager_iMessageGroupDisplayNameChangedFor___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 40));
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "%@,%@,failed to find proxy,error,%@", &v8, 0x20u);
  }
}

- (void)iMessageGroupPhotoChangedFor:(id)for
{
  v20 = *MEMORY[0x277D85DE8];
  forCopy = for;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      *buf = 138412802;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = forCopy;
      _os_log_impl(&dword_26455D000, v6, OS_LOG_TYPE_INFO, "%@,%@,groupID,%@", buf, 0x20u);
    }
  }

  v12 = forCopy;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__SMSafetyMonitorManager_iMessageGroupPhotoChangedFor___block_invoke;
  v13[3] = &unk_279B65B38;
  v13[4] = self;
  v13[5] = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__SMSafetyMonitorManager_iMessageGroupPhotoChangedFor___block_invoke_395;
  v11[3] = &unk_279B65BB0;
  v10 = forCopy;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v13 taskBlock:v11];
}

void __55__SMSafetyMonitorManager_iMessageGroupPhotoChangedFor___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 40));
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "%@,%@,failed to find proxy,error,%@", &v8, 0x20u);
  }
}

- (void)kickedFromIMessageGroupWith:(id)with
{
  v20 = *MEMORY[0x277D85DE8];
  withCopy = with;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      *buf = 138412802;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = withCopy;
      _os_log_impl(&dword_26455D000, v6, OS_LOG_TYPE_INFO, "%@,%@,groupID,%@", buf, 0x20u);
    }
  }

  v12 = withCopy;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__SMSafetyMonitorManager_kickedFromIMessageGroupWith___block_invoke;
  v13[3] = &unk_279B65B38;
  v13[4] = self;
  v13[5] = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __54__SMSafetyMonitorManager_kickedFromIMessageGroupWith___block_invoke_396;
  v11[3] = &unk_279B65BB0;
  v10 = withCopy;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v13 taskBlock:v11];
}

void __54__SMSafetyMonitorManager_kickedFromIMessageGroupWith___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 40));
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "%@,%@,failed to find proxy,error,%@", &v8, 0x20u);
  }
}

- (void)startMonitoringInitiatorSafetyCacheWithHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[SMSafetyMonitorManager startMonitoringInitiatorSafetyCacheWithHandler:]";
      v15 = 1024;
      v16 = 1574;
      _os_log_error_impl(&dword_26455D000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v14 = "[SMSafetyMonitorManager startMonitoringInitiatorSafetyCacheWithHandler:]";
      _os_log_impl(&dword_26455D000, v7, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  [(SMSafetyMonitorManager *)self setInitiatorSafetyCacheHandler:handlerCopy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__SMSafetyMonitorManager_startMonitoringInitiatorSafetyCacheWithHandler___block_invoke;
  v11[3] = &unk_279B65538;
  v11[4] = self;
  v12 = handlerCopy;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__SMSafetyMonitorManager_startMonitoringInitiatorSafetyCacheWithHandler___block_invoke_2;
  v9[3] = &unk_279B65C00;
  v9[4] = self;
  v10 = v12;
  v8 = v12;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v11 taskBlock:v9];
}

void *__73__SMSafetyMonitorManager_startMonitoringInitiatorSafetyCacheWithHandler___block_invoke(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    (*(result[5] + 16))();
    v3 = v2[4];

    return [v3 setInitiatorSafetyCacheHandler:0];
  }

  return result;
}

void __73__SMSafetyMonitorManager_startMonitoringInitiatorSafetyCacheWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __73__SMSafetyMonitorManager_startMonitoringInitiatorSafetyCacheWithHandler___block_invoke_3;
  v5[3] = &unk_279B65BD8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [a2 startMonitoringInitiatorSafetyCacheWithHandler:v5];
}

void *__73__SMSafetyMonitorManager_startMonitoringInitiatorSafetyCacheWithHandler___block_invoke_3(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    v7 = result;
    (*(result[5] + 16))();
    v8 = v7[4];

    return [v8 setInitiatorSafetyCacheHandler:0];
  }

  return result;
}

- (void)stopMonitoringInitiatorSafetyCacheWithCompletion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!completionCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[SMSafetyMonitorManager stopMonitoringInitiatorSafetyCacheWithCompletion:]";
      v14 = 1024;
      v15 = 1597;
      _os_log_error_impl(&dword_26455D000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion (in %s:%d)", buf, 0x12u);
    }
  }

  [(SMSafetyMonitorManager *)self setInitiatorSafetyCacheHandler:0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__SMSafetyMonitorManager_stopMonitoringInitiatorSafetyCacheWithCompletion___block_invoke;
  v10[3] = &unk_279B657A8;
  v11 = completionCopy;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __75__SMSafetyMonitorManager_stopMonitoringInitiatorSafetyCacheWithCompletion___block_invoke_2;
  v8[3] = &unk_279B65868;
  v9 = v11;
  v7 = v11;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v10 taskBlock:v8];
}

- (void)onInitiatorSafetyCacheChangeForSessionID:(id)d phoneCache:(id)cache watchCache:(id)watchCache cacheExpiryDate:(id)date cacheReleaseDate:(id)releaseDate
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  cacheCopy = cache;
  watchCacheCopy = watchCache;
  dateCopy = date;
  releaseDateCopy = releaseDate;
  initiatorSafetyCacheHandler = [(SMSafetyMonitorManager *)self initiatorSafetyCacheHandler];

  if (initiatorSafetyCacheHandler)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        uUIDString = [dCopy UUIDString];
        v23 = NSStringFromSelector(a2);
        v25 = 138412802;
        v26 = v21;
        v27 = 2112;
        v28 = uUIDString;
        v29 = 2112;
        v30 = v23;
        _os_log_impl(&dword_26455D000, v19, OS_LOG_TYPE_INFO, "#SafetyCache,Initiator,%@,sessionID:%@,%@,received safety cache update", &v25, 0x20u);
      }
    }

    initiatorSafetyCacheHandler2 = [(SMSafetyMonitorManager *)self initiatorSafetyCacheHandler];
    (initiatorSafetyCacheHandler2)[2](initiatorSafetyCacheHandler2, dCopy, cacheCopy, watchCacheCopy, dateCopy, releaseDateCopy, 0);
  }
}

- (void)fetchAllReceiverSessionStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__SMSafetyMonitorManager_fetchAllReceiverSessionStatusWithCompletion___block_invoke;
  v9[3] = &unk_279B65AC0;
  v9[4] = self;
  v11 = a2;
  v10 = completionCopy;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__SMSafetyMonitorManager_fetchAllReceiverSessionStatusWithCompletion___block_invoke_398;
  v7[3] = &unk_279B65868;
  v8 = v10;
  v6 = v10;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v9 taskBlock:v7];
}

void __70__SMSafetyMonitorManager_fetchAllReceiverSessionStatusWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 48));
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "%@,%@,failed to find proxy,error,%@", &v8, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchReceiverSessionStatusForSessionID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__SMSafetyMonitorManager_fetchReceiverSessionStatusForSessionID_completion___block_invoke;
  v14[3] = &unk_279B65AC0;
  v14[4] = self;
  v16 = a2;
  v15 = completionCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__SMSafetyMonitorManager_fetchReceiverSessionStatusForSessionID_completion___block_invoke_399;
  v11[3] = &unk_279B65C00;
  v12 = dCopy;
  v13 = v15;
  v9 = v15;
  v10 = dCopy;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v14 taskBlock:v11];
}

void __76__SMSafetyMonitorManager_fetchReceiverSessionStatusForSessionID_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 48));
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "%@,%@,failed to find proxy,error,%@", &v8, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)startMonitoringReceiverSessionStatusWithHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v22 = 136315394;
      *&v22[4] = "[SMSafetyMonitorManager startMonitoringReceiverSessionStatusWithHandler:]";
      *&v22[12] = 1024;
      *&v22[14] = 1648;
      _os_log_error_impl(&dword_26455D000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", v22, 0x12u);
    }
  }

  *v22 = 0;
  *&v22[8] = v22;
  *&v22[16] = 0x2020000000;
  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v8 = os_signpost_id_generate(v7);

  v23 = v8;
  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v10 = v9;
  v11 = *(*&v22[8] + 24);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26455D000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "SMStartMonitoringReceiverSessionStatus", " enableTelemetry=YES ", buf, 2u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "[SMSafetyMonitorManager startMonitoringReceiverSessionStatusWithHandler:]";
      _os_log_impl(&dword_26455D000, v12, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  [(SMSafetyMonitorManager *)self setReceiverSessionStatusHandler:handlerCopy];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __74__SMSafetyMonitorManager_startMonitoringReceiverSessionStatusWithHandler___block_invoke;
  v17[3] = &unk_279B658B8;
  v19 = v22;
  v17[4] = self;
  v18 = handlerCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74__SMSafetyMonitorManager_startMonitoringReceiverSessionStatusWithHandler___block_invoke_400;
  v14[3] = &unk_279B65908;
  v16 = v22;
  v13 = v18;
  v14[4] = self;
  v15 = v13;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v17 taskBlock:v14];

  _Block_object_dispose(v22, 8);
}

void __74__SMSafetyMonitorManager_startMonitoringReceiverSessionStatusWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 48) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMStartMonitoringReceiverSessionStatus", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  if (v3)
  {
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) setReceiverSessionStatusHandler:0];
  }
}

void __74__SMSafetyMonitorManager_startMonitoringReceiverSessionStatusWithHandler___block_invoke_400(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__SMSafetyMonitorManager_startMonitoringReceiverSessionStatusWithHandler___block_invoke_2;
  v6[3] = &unk_279B65C28;
  v5 = *(a1 + 40);
  v4 = v5;
  v7 = v5;
  v6[4] = *(a1 + 32);
  [a2 startMonitoringReceiverSessionStatusWithHandler:v6];
}

void __74__SMSafetyMonitorManager_startMonitoringReceiverSessionStatusWithHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v7 = v6;
  v8 = *(*(*(a1 + 48) + 8) + 24);
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = 134349056;
    v10 = [v5 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v7, OS_SIGNPOST_INTERVAL_END, v8, "SMStartMonitoringReceiverSessionStatus", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v9, 0xCu);
  }

  if (v5)
  {
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) setReceiverSessionStatusHandler:0];
  }
}

- (void)stopMonitoringReceiverSessionStatusWithCompletion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!completionCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v20 = 136315394;
      *&v20[4] = "[SMSafetyMonitorManager stopMonitoringReceiverSessionStatusWithCompletion:]";
      *&v20[12] = 1024;
      *&v20[14] = 1675;
      _os_log_error_impl(&dword_26455D000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion (in %s:%d)", v20, 0x12u);
    }
  }

  *v20 = 0;
  *&v20[8] = v20;
  *&v20[16] = 0x2020000000;
  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v8 = os_signpost_id_generate(v7);

  v21 = v8;
  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v10 = v9;
  v11 = *(*&v20[8] + 24);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26455D000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "SMStopMonitoringReceiverSessionStatus", " enableTelemetry=YES ", buf, 2u);
  }

  [(SMSafetyMonitorManager *)self setReceiverSessionStatusHandler:0];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__SMSafetyMonitorManager_stopMonitoringReceiverSessionStatusWithCompletion___block_invoke;
  v16[3] = &unk_279B656E0;
  v18 = v20;
  v17 = completionCopy;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__SMSafetyMonitorManager_stopMonitoringReceiverSessionStatusWithCompletion___block_invoke_402;
  v13[3] = &unk_279B65758;
  v15 = v20;
  v12 = v17;
  v14 = v12;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v16 taskBlock:v13];

  _Block_object_dispose(v20, 8);
}

void __76__SMSafetyMonitorManager_stopMonitoringReceiverSessionStatusWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMStopMonitoringReceiverSessionStatus", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __76__SMSafetyMonitorManager_stopMonitoringReceiverSessionStatusWithCompletion___block_invoke_402(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76__SMSafetyMonitorManager_stopMonitoringReceiverSessionStatusWithCompletion___block_invoke_2;
  v5[3] = &unk_279B656E0;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  [a2 stopMonitoringReceiverSessionStatusWithCompletion:v5];
}

void __76__SMSafetyMonitorManager_stopMonitoringReceiverSessionStatusWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMStopMonitoringReceiverSessionStatus", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)onReceiverSessionStatusChangeForSessionID:(id)d sessionStatus:(id)status
{
  dCopy = d;
  statusCopy = status;
  receiverSessionStatusHandler = [(SMSafetyMonitorManager *)self receiverSessionStatusHandler];

  if (receiverSessionStatusHandler)
  {
    receiverSessionStatusHandler2 = [(SMSafetyMonitorManager *)self receiverSessionStatusHandler];
    (receiverSessionStatusHandler2)[2](receiverSessionStatusHandler2, dCopy, statusCopy, 0);
  }
}

- (void)userRequestedCacheDownloadForSessionID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v10 = os_signpost_id_generate(v9);

  v28 = v10;
  v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v12 = v11;
  v13 = v26[3];
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26455D000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v13, "SMUserRequestedCacheDownloadForSessionID", " enableTelemetry=YES ", buf, 2u);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __76__SMSafetyMonitorManager_userRequestedCacheDownloadForSessionID_completion___block_invoke;
  v20[3] = &unk_279B65CF0;
  v20[4] = self;
  v22 = &v25;
  v23 = a2;
  v21 = completionCopy;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__SMSafetyMonitorManager_userRequestedCacheDownloadForSessionID_completion___block_invoke_403;
  v16[3] = &unk_279B65908;
  v14 = dCopy;
  v17 = v14;
  v19 = &v25;
  v15 = v21;
  v18 = v15;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v20 taskBlock:v16];

  _Block_object_dispose(&v25, 8);
}

void __76__SMSafetyMonitorManager_userRequestedCacheDownloadForSessionID_completion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector(*(a1 + 56));
    v12 = 138412802;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    v16 = 2112;
    v17 = v3;
    _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "%@,%@,failed to find proxy,error,%@", &v12, 0x20u);
  }

  v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v6 = v5;
  v7 = *(*(*(a1 + 48) + 8) + 24);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v8 = [v3 code];
    v12 = 134349056;
    v13 = v8;
    _os_signpost_emit_with_name_impl(&dword_26455D000, v6, OS_SIGNPOST_INTERVAL_END, v7, "SMUserRequestedCacheDownloadForSessionID", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v12, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void __76__SMSafetyMonitorManager_userRequestedCacheDownloadForSessionID_completion___block_invoke_403(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__SMSafetyMonitorManager_userRequestedCacheDownloadForSessionID_completion___block_invoke_2;
  v6[3] = &unk_279B656E0;
  v5 = *(a1 + 40);
  v4 = v5;
  v7 = v5;
  [a2 userRequestedCacheDownloadForSessionID:v3 completion:v6];
}

void __76__SMSafetyMonitorManager_userRequestedCacheDownloadForSessionID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMUserRequestedCacheDownloadForSessionID", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchReceiverSafetyCacheForSessionID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v10 = os_signpost_id_generate(v9);

  v28 = v10;
  v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v12 = v11;
  v13 = v26[3];
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26455D000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v13, "SMFetchReceiverSafetyCache", " enableTelemetry=YES ", buf, 2u);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __74__SMSafetyMonitorManager_fetchReceiverSafetyCacheForSessionID_completion___block_invoke;
  v20[3] = &unk_279B65CF0;
  v20[4] = self;
  v22 = &v25;
  v23 = a2;
  v21 = completionCopy;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__SMSafetyMonitorManager_fetchReceiverSafetyCacheForSessionID_completion___block_invoke_404;
  v16[3] = &unk_279B65908;
  v14 = dCopy;
  v17 = v14;
  v19 = &v25;
  v15 = v21;
  v18 = v15;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v20 taskBlock:v16];

  _Block_object_dispose(&v25, 8);
}

void __74__SMSafetyMonitorManager_fetchReceiverSafetyCacheForSessionID_completion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromSelector(*(a1 + 56));
    v12 = 138412802;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    v16 = 2112;
    v17 = v3;
    _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "%@,%@,failed to find proxy,error,%@", &v12, 0x20u);
  }

  v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v6 = v5;
  v7 = *(*(*(a1 + 48) + 8) + 24);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v8 = [v3 code];
    v12 = 134349056;
    v13 = v8;
    _os_signpost_emit_with_name_impl(&dword_26455D000, v6, OS_SIGNPOST_INTERVAL_END, v7, "SMFetchReceiverSafetyCache", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v12, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void __74__SMSafetyMonitorManager_fetchReceiverSafetyCacheForSessionID_completion___block_invoke_404(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__SMSafetyMonitorManager_fetchReceiverSafetyCacheForSessionID_completion___block_invoke_2;
  v6[3] = &unk_279B65C50;
  v5 = *(a1 + 40);
  v4 = v5;
  v7 = v5;
  [a2 fetchReceiverSafetyCacheForSessionID:v3 completion:v6];
}

void __74__SMSafetyMonitorManager_fetchReceiverSafetyCacheForSessionID_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v11 = v10;
  v12 = *(*(*(a1 + 40) + 8) + 24);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    if (v9)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v14 = 136446466;
    v15 = [(__CFString *)v13 UTF8String];
    v16 = 2050;
    v17 = [v7 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v11, OS_SIGNPOST_INTERVAL_END, v12, "SMFetchReceiverSafetyCache", " enableTelemetry=YES {phoneCacheAvailable:%{public,signpost.telemetry:string1}s, error:%{public,signpost.telemetry:number1}ld}", &v14, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)startMonitoringReceiverSafetyCacheWithHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v22 = 136315394;
      *&v22[4] = "[SMSafetyMonitorManager startMonitoringReceiverSafetyCacheWithHandler:]";
      *&v22[12] = 1024;
      *&v22[14] = 1740;
      _os_log_error_impl(&dword_26455D000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", v22, 0x12u);
    }
  }

  *v22 = 0;
  *&v22[8] = v22;
  *&v22[16] = 0x2020000000;
  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v8 = os_signpost_id_generate(v7);

  v23 = v8;
  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v10 = v9;
  v11 = *(*&v22[8] + 24);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26455D000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "SMStartMonitoringReceiverSafetyCache", " enableTelemetry=YES ", buf, 2u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v21 = "[SMSafetyMonitorManager startMonitoringReceiverSafetyCacheWithHandler:]";
      _os_log_impl(&dword_26455D000, v12, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  [(SMSafetyMonitorManager *)self setReceiverSafetyCacheHandler:handlerCopy];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __72__SMSafetyMonitorManager_startMonitoringReceiverSafetyCacheWithHandler___block_invoke;
  v17[3] = &unk_279B658B8;
  v19 = v22;
  v17[4] = self;
  v18 = handlerCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __72__SMSafetyMonitorManager_startMonitoringReceiverSafetyCacheWithHandler___block_invoke_406;
  v14[3] = &unk_279B65908;
  v16 = v22;
  v13 = v18;
  v14[4] = self;
  v15 = v13;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v17 taskBlock:v14];

  _Block_object_dispose(v22, 8);
}

void __72__SMSafetyMonitorManager_startMonitoringReceiverSafetyCacheWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 48) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMStartMonitoringReceiverSafetyCache", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  if (v3)
  {
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) setReceiverSafetyCacheHandler:0];
  }
}

void __72__SMSafetyMonitorManager_startMonitoringReceiverSafetyCacheWithHandler___block_invoke_406(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__SMSafetyMonitorManager_startMonitoringReceiverSafetyCacheWithHandler___block_invoke_2;
  v6[3] = &unk_279B65C78;
  v5 = *(a1 + 40);
  v4 = v5;
  v7 = v5;
  v6[4] = *(a1 + 32);
  [a2 startMonitoringReceiverSafetyCacheWithHandler:v6];
}

void __72__SMSafetyMonitorManager_startMonitoringReceiverSafetyCacheWithHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v9 = v8;
  v10 = *(*(*(a1 + 48) + 8) + 24);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    if (a3)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v12 = 136446466;
    v13 = [(__CFString *)v11 UTF8String];
    v14 = 2050;
    v15 = [v7 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v9, OS_SIGNPOST_INTERVAL_END, v10, "SMStartMonitoringReceiverSafetyCache", " enableTelemetry=YES {phoneCache:%{public,signpost.telemetry:string1}s, error:%{public,signpost.telemetry:number1}ld}", &v12, 0x16u);
  }

  if (v7)
  {
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) setReceiverSafetyCacheHandler:0];
  }
}

- (void)stopMonitoringReceiverSafetyCacheWithCompletion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (!completionCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v20 = 136315394;
      *&v20[4] = "[SMSafetyMonitorManager stopMonitoringReceiverSafetyCacheWithCompletion:]";
      *&v20[12] = 1024;
      *&v20[14] = 1767;
      _os_log_error_impl(&dword_26455D000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion (in %s:%d)", v20, 0x12u);
    }
  }

  *v20 = 0;
  *&v20[8] = v20;
  *&v20[16] = 0x2020000000;
  v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v8 = os_signpost_id_generate(v7);

  v21 = v8;
  v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v10 = v9;
  v11 = *(*&v20[8] + 24);
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26455D000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "SMStopMonitoringReceiverSafetyCache", " enableTelemetry=YES ", buf, 2u);
  }

  [(SMSafetyMonitorManager *)self setReceiverSafetyCacheHandler:0];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__SMSafetyMonitorManager_stopMonitoringReceiverSafetyCacheWithCompletion___block_invoke;
  v16[3] = &unk_279B656E0;
  v18 = v20;
  v17 = completionCopy;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__SMSafetyMonitorManager_stopMonitoringReceiverSafetyCacheWithCompletion___block_invoke_408;
  v13[3] = &unk_279B65758;
  v15 = v20;
  v12 = v17;
  v14 = v12;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v16 taskBlock:v13];

  _Block_object_dispose(v20, 8);
}

void __74__SMSafetyMonitorManager_stopMonitoringReceiverSafetyCacheWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMStopMonitoringReceiverSafetyCache", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __74__SMSafetyMonitorManager_stopMonitoringReceiverSafetyCacheWithCompletion___block_invoke_408(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __74__SMSafetyMonitorManager_stopMonitoringReceiverSafetyCacheWithCompletion___block_invoke_2;
  v5[3] = &unk_279B656E0;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  [a2 stopMonitoringReceiverSafetyCacheWithCompletion:v5];
}

void __74__SMSafetyMonitorManager_stopMonitoringReceiverSafetyCacheWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v5 = v4;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v5, OS_SIGNPOST_INTERVAL_END, v6, "SMStopMonitoringReceiverSafetyCache", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)onReceiverSafetyCacheChangeForSessionID:(id)d phoneCache:(id)cache watchCache:(id)watchCache
{
  dCopy = d;
  cacheCopy = cache;
  watchCacheCopy = watchCache;
  receiverSafetyCacheHandler = [(SMSafetyMonitorManager *)self receiverSafetyCacheHandler];

  if (receiverSafetyCacheHandler)
  {
    receiverSafetyCacheHandler2 = [(SMSafetyMonitorManager *)self receiverSafetyCacheHandler];
    (receiverSafetyCacheHandler2)[2](receiverSafetyCacheHandler2, dCopy, cacheCopy, watchCacheCopy, 0);
  }
}

- (void)detailsViewOpenedForSessionID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!dCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[SMSafetyMonitorManager detailsViewOpenedForSessionID:]";
      v13 = 1024;
      v14 = 1795;
      _os_log_error_impl(&dword_26455D000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: sessionID (in %s:%d)", buf, 0x12u);
    }
  }

  v9 = dCopy;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__SMSafetyMonitorManager_detailsViewOpenedForSessionID___block_invoke;
  v10[3] = &unk_279B65B38;
  v10[4] = self;
  v10[5] = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__SMSafetyMonitorManager_detailsViewOpenedForSessionID___block_invoke_409;
  v8[3] = &unk_279B65BB0;
  v7 = dCopy;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v10 taskBlock:v8];
}

void __56__SMSafetyMonitorManager_detailsViewOpenedForSessionID___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = NSStringFromSelector(*(a1 + 40));
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "%@,%@,failed to find proxy,error,%@", &v8, 0x20u);
  }
}

- (void)checkInitiatorEligibilityWithHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[SMSafetyMonitorManager checkInitiatorEligibilityWithHandler:]";
      v14 = 1024;
      v15 = 1808;
      _os_log_error_impl(&dword_26455D000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__SMSafetyMonitorManager_checkInitiatorEligibilityWithHandler___block_invoke;
  v10[3] = &unk_279B657A8;
  v11 = handlerCopy;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__SMSafetyMonitorManager_checkInitiatorEligibilityWithHandler___block_invoke_2;
  v8[3] = &unk_279B65868;
  v9 = v11;
  v7 = v11;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v10 taskBlock:v8];
}

void __63__SMSafetyMonitorManager_checkInitiatorEligibilityWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__SMSafetyMonitorManager_checkInitiatorEligibilityWithHandler___block_invoke_3;
  v3[3] = &unk_279B65CA0;
  v4 = *(a1 + 32);
  [a2 checkInitiatorEligibilityWithHandler:v3];
}

- (void)checkIMessageAccountEnabledWithHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[SMSafetyMonitorManager checkIMessageAccountEnabledWithHandler:]";
      v14 = 1024;
      v15 = 1821;
      _os_log_error_impl(&dword_26455D000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__SMSafetyMonitorManager_checkIMessageAccountEnabledWithHandler___block_invoke;
  v10[3] = &unk_279B657A8;
  v11 = handlerCopy;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__SMSafetyMonitorManager_checkIMessageAccountEnabledWithHandler___block_invoke_2;
  v8[3] = &unk_279B65868;
  v9 = v11;
  v7 = v11;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v10 taskBlock:v8];
}

void __65__SMSafetyMonitorManager_checkIMessageAccountEnabledWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65__SMSafetyMonitorManager_checkIMessageAccountEnabledWithHandler___block_invoke_3;
  v3[3] = &unk_279B65CC8;
  v4 = *(a1 + 32);
  [a2 checkIMessageAccountEnabledWithHandler:v3];
}

- (void)checkHasSimWithHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[SMSafetyMonitorManager checkHasSimWithHandler:]";
      v14 = 1024;
      v15 = 1834;
      _os_log_error_impl(&dword_26455D000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__SMSafetyMonitorManager_checkHasSimWithHandler___block_invoke;
  v10[3] = &unk_279B657A8;
  v11 = handlerCopy;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__SMSafetyMonitorManager_checkHasSimWithHandler___block_invoke_2;
  v8[3] = &unk_279B65868;
  v9 = v11;
  v7 = v11;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v10 taskBlock:v8];
}

void __49__SMSafetyMonitorManager_checkHasSimWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__SMSafetyMonitorManager_checkHasSimWithHandler___block_invoke_3;
  v3[3] = &unk_279B65CC8;
  v4 = *(a1 + 32);
  [a2 checkHasSimWithHandler:v3];
}

- (void)checkConversationEligibility:(id)eligibility handler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  eligibilityCopy = eligibility;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (eligibilityCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v20 = "[SMSafetyMonitorManager checkConversationEligibility:handler:]";
    v21 = 1024;
    v22 = 1847;
    _os_log_error_impl(&dword_26455D000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: conversation (in %s:%d)", buf, 0x12u);
  }

  if (!v9)
  {
LABEL_7:
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[SMSafetyMonitorManager checkConversationEligibility:handler:]";
      v21 = 1024;
      v22 = 1848;
      _os_log_error_impl(&dword_26455D000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63__SMSafetyMonitorManager_checkConversationEligibility_handler___block_invoke;
  v17[3] = &unk_279B657A8;
  v18 = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__SMSafetyMonitorManager_checkConversationEligibility_handler___block_invoke_2;
  v14[3] = &unk_279B65C00;
  v15 = eligibilityCopy;
  v16 = v18;
  v12 = v18;
  v13 = eligibilityCopy;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v17 taskBlock:v14];
}

void __63__SMSafetyMonitorManager_checkConversationEligibility_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__SMSafetyMonitorManager_checkConversationEligibility_handler___block_invoke_3;
  v4[3] = &unk_279B65CA0;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [a2 checkConversationEligibility:v3 handler:v4];
}

- (void)fetchDeviceConfigurationLowPowerModeWarningStateWithHandler:(id)handler
{
  v16 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[SMSafetyMonitorManager fetchDeviceConfigurationLowPowerModeWarningStateWithHandler:]";
      v14 = 1024;
      v15 = 1861;
      _os_log_error_impl(&dword_26455D000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __86__SMSafetyMonitorManager_fetchDeviceConfigurationLowPowerModeWarningStateWithHandler___block_invoke;
  v10[3] = &unk_279B657A8;
  v11 = handlerCopy;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __86__SMSafetyMonitorManager_fetchDeviceConfigurationLowPowerModeWarningStateWithHandler___block_invoke_2;
  v8[3] = &unk_279B65868;
  v9 = v11;
  v7 = v11;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v10 taskBlock:v8];
}

void __86__SMSafetyMonitorManager_fetchDeviceConfigurationLowPowerModeWarningStateWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __86__SMSafetyMonitorManager_fetchDeviceConfigurationLowPowerModeWarningStateWithHandler___block_invoke_3;
  v3[3] = &unk_279B65CA0;
  v4 = *(a1 + 32);
  [a2 fetchDeviceConfigurationLowPowerModeWarningStateWithHandler:v3];
}

- (void)checkEligibilityOfDestination:(id)destination completionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (destinationCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v21 = "[SMSafetyMonitorManager checkEligibilityOfDestination:completionHandler:]";
    v22 = 1024;
    v23 = 1878;
    _os_log_error_impl(&dword_26455D000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: destinationLocation (in %s:%d)", buf, 0x12u);
  }

  if (!v9)
  {
LABEL_7:
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[SMSafetyMonitorManager checkEligibilityOfDestination:completionHandler:]";
      v22 = 1024;
      v23 = 1879;
      _os_log_error_impl(&dword_26455D000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __74__SMSafetyMonitorManager_checkEligibilityOfDestination_completionHandler___block_invoke;
  v17[3] = &unk_279B65538;
  v19 = v9;
  v18 = destinationCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74__SMSafetyMonitorManager_checkEligibilityOfDestination_completionHandler___block_invoke_412;
  v14[3] = &unk_279B65C00;
  v15 = v18;
  v16 = v19;
  v12 = v19;
  v13 = v18;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v17 taskBlock:v14];
}

void __74__SMSafetyMonitorManager_checkEligibilityOfDestination_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[SMSafetyMonitorManager checkEligibilityOfDestination:completionHandler:]_block_invoke";
      v7 = 2112;
      v8 = v3;
      _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "%s, failed to find proxy, error, %@", &v5, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)calculateDistanceToDestination:(id)destination completionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (destinationCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v21 = "[SMSafetyMonitorManager calculateDistanceToDestination:completionHandler:]";
    v22 = 1024;
    v23 = 1897;
    _os_log_error_impl(&dword_26455D000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: destinationLocation (in %s:%d)", buf, 0x12u);
  }

  if (!v9)
  {
LABEL_7:
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[SMSafetyMonitorManager calculateDistanceToDestination:completionHandler:]";
      v22 = 1024;
      v23 = 1898;
      _os_log_error_impl(&dword_26455D000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __75__SMSafetyMonitorManager_calculateDistanceToDestination_completionHandler___block_invoke;
  v17[3] = &unk_279B65538;
  v19 = v9;
  v18 = destinationCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__SMSafetyMonitorManager_calculateDistanceToDestination_completionHandler___block_invoke_413;
  v14[3] = &unk_279B65C00;
  v15 = v18;
  v16 = v19;
  v12 = v19;
  v13 = v18;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v17 taskBlock:v14];
}

void __75__SMSafetyMonitorManager_calculateDistanceToDestination_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "[SMSafetyMonitorManager calculateDistanceToDestination:completionHandler:]_block_invoke";
      v7 = 2112;
      v8 = v3;
      _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "%s, failed to find proxy, error, %@", &v5, 0x16u);
    }

    (*(*(a1 + 40) + 16))(1.79769313e308);
  }
}

- (void)estimateEtaToDestination:(id)destination transportType:(unint64_t)type completionHandler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  destinationCopy = destination;
  handlerCopy = handler;
  if (!destinationCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v34 = 136315394;
      *&v34[4] = "[SMSafetyMonitorManager estimateEtaToDestination:transportType:completionHandler:]";
      *&v34[12] = 1024;
      *&v34[14] = 1917;
      _os_log_error_impl(&dword_26455D000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: destinationLocation (in %s:%d)", v34, 0x12u);
    }
  }

  if (!type)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v34 = 136315394;
      *&v34[4] = "[SMSafetyMonitorManager estimateEtaToDestination:transportType:completionHandler:]";
      *&v34[12] = 1024;
      *&v34[14] = 1918;
      _os_log_error_impl(&dword_26455D000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: transportType (in %s:%d)", v34, 0x12u);
    }
  }

  if (!handlerCopy)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v34 = 136315394;
      *&v34[4] = "[SMSafetyMonitorManager estimateEtaToDestination:transportType:completionHandler:]";
      *&v34[12] = 1024;
      *&v34[14] = 1919;
      _os_log_error_impl(&dword_26455D000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", v34, 0x12u);
    }
  }

  *v34 = 0;
  *&v34[8] = v34;
  *&v34[16] = 0x2020000000;
  v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v15 = os_signpost_id_generate(v14);

  v35 = v15;
  v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v17 = v16;
  v18 = *(*&v34[8] + 24);
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_26455D000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v18, "SMEstimateETAToDestination", " enableTelemetry=YES ", buf, 2u);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v33 = "[SMSafetyMonitorManager estimateEtaToDestination:transportType:completionHandler:]";
      _os_log_impl(&dword_26455D000, v19, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __83__SMSafetyMonitorManager_estimateEtaToDestination_transportType_completionHandler___block_invoke;
  v27[3] = &unk_279B65CF0;
  v30 = v34;
  v29 = handlerCopy;
  v28 = destinationCopy;
  typeCopy = type;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __83__SMSafetyMonitorManager_estimateEtaToDestination_transportType_completionHandler___block_invoke_414;
  v22[3] = &unk_279B65780;
  v20 = v28;
  v25 = v34;
  typeCopy2 = type;
  v23 = v20;
  v21 = v29;
  v24 = v21;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v27 taskBlock:v22];

  _Block_object_dispose(v34, 8);
}

void __83__SMSafetyMonitorManager_estimateEtaToDestination_transportType_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[SMSafetyMonitorManager estimateEtaToDestination:transportType:completionHandler:]_block_invoke";
      v11 = 2112;
      v12 = v3;
      _os_log_error_impl(&dword_26455D000, v4, OS_LOG_TYPE_ERROR, "%s, failed to find proxy, error, %@", &v9, 0x16u);
    }

    v5 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
    v6 = v5;
    v7 = *(*(*(a1 + 48) + 8) + 24);
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      v8 = [v3 code];
      v9 = 134349056;
      v10 = v8;
      _os_signpost_emit_with_name_impl(&dword_26455D000, v6, OS_SIGNPOST_INTERVAL_END, v7, "SMEstimateETAToDestination", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v9, 0xCu);
    }

    (*(*(a1 + 40) + 16))(-1.0, -1.0);
  }
}

void __83__SMSafetyMonitorManager_estimateEtaToDestination_transportType_completionHandler___block_invoke_414(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__SMSafetyMonitorManager_estimateEtaToDestination_transportType_completionHandler___block_invoke_2;
  v7[3] = &unk_279B65D18;
  v6 = *(a1 + 40);
  v5 = v6;
  v8 = v6;
  [a2 estimateEtaToDestination:v3 transportType:v4 completionHandler:v7];
}

void __83__SMSafetyMonitorManager_estimateEtaToDestination_transportType_completionHandler___block_invoke_2(uint64_t a1, void *a2, double a3, double a4, uint64_t a5, void *a6)
{
  v17 = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = a2;
  v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitorAnalytics);
  v13 = v12;
  v14 = *(*(*(a1 + 40) + 8) + 24);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v15 = 134349056;
    v16 = [v10 code];
    _os_signpost_emit_with_name_impl(&dword_26455D000, v13, OS_SIGNPOST_INTERVAL_END, v14, "SMEstimateETAToDestination", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v15, 0xCu);
  }

  (*(*(a1 + 32) + 16))(a3, a4);
}

- (int64_t)prepareUserInfoForNotificationContent:(id)content initiatorHandle:(id)handle messageUrl:(id)url
{
  v86[1] = *MEMORY[0x277D85DE8];
  contentCopy = content;
  handleCopy = handle;
  urlCopy = url;
  if (handleCopy)
  {
    if (contentCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[SMSafetyMonitorManager prepareUserInfoForNotificationContent:initiatorHandle:messageUrl:]";
      v80 = 1024;
      LODWORD(v81) = 1946;
      _os_log_error_impl(&dword_26455D000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: initiatorHandle (in %s:%d)", buf, 0x12u);
    }

    if (contentCopy)
    {
LABEL_3:
      if (urlCopy)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "[SMSafetyMonitorManager prepareUserInfoForNotificationContent:initiatorHandle:messageUrl:]";
    v80 = 1024;
    LODWORD(v81) = 1947;
    _os_log_error_impl(&dword_26455D000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: content (in %s:%d)", buf, 0x12u);
  }

  if (!urlCopy)
  {
LABEL_11:
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "[SMSafetyMonitorManager prepareUserInfoForNotificationContent:initiatorHandle:messageUrl:]";
      v80 = 1024;
      LODWORD(v81) = 1948;
      _os_log_error_impl(&dword_26455D000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: messageUrl (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_14:
  v15 = [SMMessage createMessageFromURL:urlCopy];
  messageType = [objc_opt_class() messageType];
  if (messageType == 2)
  {
    v19 = [SMSessionEndMessage sessionEndReasonFromURL:urlCopy];
    v20 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v19 == 4)
    {
      if (v21)
      {
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v24 = NSStringFromSelector(a2);
        *buf = 138412546;
        *&buf[4] = v23;
        v80 = 2112;
        v81 = v24;
        _os_log_impl(&dword_26455D000, v20, OS_LOG_TYPE_DEFAULT, "#NotificationDeliveryRequest,%@,%@, Session ended due to SafetyCheck, suppress notification", buf, 0x16u);
      }

      v18 = 2;
    }

    else
    {
      if (v21)
      {
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v27 = NSStringFromSelector(a2);
        *buf = 138412546;
        *&buf[4] = v26;
        v80 = 2112;
        v81 = v27;
        _os_log_impl(&dword_26455D000, v20, OS_LOG_TYPE_DEFAULT, "#NotificationDeliveryRequest,%@,%@, Session ended due to unhandled reason, use default delivery mechanism", buf, 0x16u);
      }

      v18 = 0;
    }

    goto LABEL_28;
  }

  if (messageType != 3)
  {
    v18 = 0;
LABEL_28:
    v17 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_46;
    }

    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v30 = NSStringFromSelector(a2);
    *buf = 138412546;
    *&buf[4] = v29;
    v80 = 2112;
    v81 = v30;
    _os_log_impl(&dword_26455D000, v17, OS_LOG_TYPE_DEFAULT, "#NotificationDeliveryRequest,%@,%@, Not a trigger message, use default delivery mechanism", buf, 0x16u);
    goto LABEL_44;
  }

  v17 = v15;
  if (([v17 triggerType]- 10) < 5 || ([v17 isSOSTrigger]& 1) != 0)
  {
    v18 = 2;
    goto LABEL_42;
  }

  [contentCopy setInterruptionLevel:2];
  v31 = +[SMMobileSMSPreferencesUtilities criticalAlertPreference];
  if (v31 == 2)
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      v39 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v38;
      v80 = 2112;
      v81 = v39;
      v40 = "#NotificationDeliveryRequest,%@,%@, User opted out of Critical Alerst, falling back to Notify Anyway + Time Sensitive";
LABEL_39:
      _os_log_impl(&dword_26455D000, v32, OS_LOG_TYPE_DEFAULT, v40, buf, 0x16u);
    }
  }

  else
  {
    if (v31 == 1)
    {
      [contentCopy setInterruptionLevel:3];
      v32 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        v35 = NSStringFromSelector(a2);
        *buf = 138412546;
        *&buf[4] = v34;
        v80 = 2112;
        v81 = v35;
        _os_log_impl(&dword_26455D000, v32, OS_LOG_TYPE_DEFAULT, "#NotificationDeliveryRequest,%@,%@, User opted in for Critical Alert", buf, 0x16u);
      }

      v36 = 0;
      goto LABEL_41;
    }

    v32 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v41 = objc_opt_class();
      v38 = NSStringFromClass(v41);
      v39 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = v38;
      v80 = 2112;
      v81 = v39;
      v40 = "#NotificationDeliveryRequest,%@,%@, Couldn't look up the the SafetyMonitorUsesCriticalAlertsKey in UserDefaults. Perhaps user isn't on-boarded yet!";
      goto LABEL_39;
    }
  }

  v36 = 1;
LABEL_41:

  v18 = v36;
LABEL_42:
  [contentCopy setContentType:*MEMORY[0x277CE2158]];
  v29 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v42 = objc_opt_class();
    v30 = NSStringFromClass(v42);
    NSStringFromSelector(a2);
    v43 = v71 = v18;
    [contentCopy contentType];
    v73 = handleCopy;
    selfCopy = self;
    v45 = a2;
    v47 = v46 = v15;
    *buf = 138413058;
    *&buf[4] = v30;
    v80 = 2112;
    v81 = v43;
    v82 = 2112;
    v83 = contentCopy;
    v84 = 2112;
    v85 = v47;
    _os_log_impl(&dword_26455D000, v29, OS_LOG_TYPE_DEFAULT, "#NotificationDeliveryRequest,%@,%@, content, %@, contentType, %@", buf, 0x2Au);

    v15 = v46;
    a2 = v45;
    self = selfCopy;
    handleCopy = v73;

    v18 = v71;
LABEL_44:
  }

LABEL_46:
  v48 = dispatch_semaphore_create(0);
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __91__SMSafetyMonitorManager_prepareUserInfoForNotificationContent_initiatorHandle_messageUrl___block_invoke;
  v75[3] = &unk_279B65D40;
  v75[4] = self;
  v78 = a2;
  v49 = contentCopy;
  v76 = v49;
  v50 = v48;
  v77 = v50;
  [SMReceiverNotificationUtilities prepareNotificationBodyFromMessage:v15 completionHandler:v75];
  v51 = v50;
  v52 = [MEMORY[0x277CBEAA8] now];
  v53 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v51, v53))
  {
    v70 = urlCopy;
    v72 = v18;
    v69 = v15;
    v74 = handleCopy;
    v54 = [MEMORY[0x277CBEAA8] now];
    [v54 timeIntervalSinceDate:v52];
    v56 = v55;
    v57 = objc_opt_new();
    v58 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_516];
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v60 = [callStackSymbols filteredArrayUsingPredicate:v58];
    firstObject = [v60 firstObject];

    [v57 submitToCoreAnalytics:firstObject type:1 duration:v56];
    v62 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_26455D000, v62, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v63 = MEMORY[0x277CCA9B8];
    v64 = *MEMORY[0x277D01448];
    v86[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v86 count:1];
    v66 = [v63 errorWithDomain:v64 code:15 userInfo:v65];

    v18 = v72;
    handleCopy = v74;
    v15 = v69;
    urlCopy = v70;
    if (v66)
    {
      v67 = v66;
    }
  }

  return v18;
}

void __91__SMSafetyMonitorManager_prepareUserInfoForNotificationContent_initiatorHandle_messageUrl___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(*(a1 + 56));
      v11 = 138412802;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      v15 = 2112;
      v16 = v6;
      _os_log_error_impl(&dword_26455D000, v7, OS_LOG_TYPE_ERROR, "#NotificationDeliveryRequest,Receiver,%@,%@, error while fetching notification body: %@", &v11, 0x20u);
    }
  }

  else
  {
    if (v5)
    {
      [*(a1 + 40) setBody:v5];
      goto LABEL_7;
    }

    v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_error_impl(&dword_26455D000, v7, OS_LOG_TYPE_ERROR, "#NotificationDeliveryRequest,Receiver, notification body is empty", &v11, 2u);
    }
  }

LABEL_7:
  dispatch_semaphore_signal(*(a1 + 48));
}

- (void)respondToNotificationWithIdentifier:(id)identifier sessionIdentifier:(id)sessionIdentifier actionIdentifier:(id)actionIdentifier handler:(id)handler
{
  identifierCopy = identifier;
  sessionIdentifierCopy = sessionIdentifier;
  actionIdentifierCopy = actionIdentifier;
  handlerCopy = handler;
  queue = [(SMSafetyMonitorManager *)self queue];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __105__SMSafetyMonitorManager_respondToNotificationWithIdentifier_sessionIdentifier_actionIdentifier_handler___block_invoke;
  v20[3] = &unk_279B65D68;
  v24 = handlerCopy;
  v25 = a2;
  v20[4] = self;
  v21 = identifierCopy;
  v22 = sessionIdentifierCopy;
  v23 = actionIdentifierCopy;
  v16 = actionIdentifierCopy;
  v17 = sessionIdentifierCopy;
  v18 = identifierCopy;
  v19 = handlerCopy;
  dispatch_async(queue, v20);
}

void __105__SMSafetyMonitorManager_respondToNotificationWithIdentifier_sessionIdentifier_actionIdentifier_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __105__SMSafetyMonitorManager_respondToNotificationWithIdentifier_sessionIdentifier_actionIdentifier_handler___block_invoke_2;
  v5[3] = &unk_279B657A8;
  v3 = *(a1 + 72);
  v6 = *(a1 + 64);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v5];
  [v4 respondToNotificationWithIdentifier:*(a1 + 40) sessionIdentifier:*(a1 + 48) actionIdentifier:*(a1 + 56) handler:*(a1 + 64)];
}

- (BOOL)shouldDropMessage:(id)message from:(id)from fromMe:(BOOL)me
{
  v51 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  fromCopy = from;
  v10 = fromCopy;
  if (messageCopy)
  {
    if (fromCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v43 = 136315394;
    v44 = "[SMSafetyMonitorManager shouldDropMessage:from:fromMe:]";
    v45 = 1024;
    LODWORD(v46) = 2045;
    _os_log_error_impl(&dword_26455D000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: messageUrl (in %s:%d)", &v43, 0x12u);
  }

  if (!v10)
  {
LABEL_7:
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v43 = 136315394;
      v44 = "[SMSafetyMonitorManager shouldDropMessage:from:fromMe:]";
      v45 = 1024;
      LODWORD(v46) = 2046;
      _os_log_error_impl(&dword_26455D000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: from (in %s:%d)", &v43, 0x12u);
    }
  }

LABEL_10:
  v13 = [SMMessage messageTypeFromURL:messageCopy];
  if ([SMMessage interfaceTypeFromMessageType:v13]== 1)
  {
    v14 = [SMMessage createMessageFromURL:messageCopy];
    v15 = v14;
    if (!v14)
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v42 = objc_opt_class();
        v24 = NSStringFromClass(v42);
        v25 = NSStringFromSelector(a2);
        v43 = 138413058;
        v44 = v24;
        v45 = 2112;
        v46 = v25;
        v47 = 2112;
        v48 = *&v10;
        v49 = 2112;
        v50 = messageCopy;
        v26 = "%@,%@,received message from %@ could not be converted to SMMessage,messageUrl,%@";
        v27 = v22;
        v28 = 42;
        goto LABEL_34;
      }

LABEL_21:
      v29 = 1;
LABEL_29:

      goto LABEL_30;
    }

    if (v13 == 3)
    {
      if ([v14 triggerType]== 15)
      {
        v16 = MEMORY[0x277CBEAA8];
        [(SMSafetyMonitorManager *)self requestTimeFromTimed];
        v17 = [v16 dateWithTimeIntervalSinceReferenceDate:?];
        triggerDate = [v15 triggerDate];
        [v17 timeIntervalSinceDate:triggerDate];
        v20 = v19;

        v21 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        v22 = v21;
        if (v20 < -10.0)
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v23 = objc_opt_class();
            v24 = NSStringFromClass(v23);
            v25 = NSStringFromSelector(a2);
            v43 = 138412802;
            v44 = v24;
            v45 = 2112;
            v46 = v25;
            v47 = 2048;
            v48 = fabs(v20);
            v26 = "%@,%@,schedule send message time cross-check failed,arrived early by %lf seconds,drop message";
            v27 = v22;
            v28 = 32;
LABEL_34:
            _os_log_error_impl(&dword_26455D000, v27, OS_LOG_TYPE_ERROR, v26, &v43, v28);

            goto LABEL_21;
          }

          goto LABEL_21;
        }

        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v38 = objc_opt_class();
          v31 = NSStringFromClass(v38);
          v32 = NSStringFromSelector(a2);
          v43 = 138412802;
          v44 = v31;
          v45 = 2112;
          v46 = v32;
          v47 = 2048;
          v48 = v20;
          v33 = "%@,%@,schedule send message time cross-check passed,time difference is %lf seconds";
          v35 = v22;
          v36 = 32;
          goto LABEL_27;
        }

LABEL_28:
        v29 = 0;
        goto LABEL_29;
      }

      v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v34 = objc_opt_class();
      v31 = NSStringFromClass(v34);
      v32 = NSStringFromSelector(a2);
      v43 = 138412546;
      v44 = v31;
      v45 = 2112;
      v46 = v32;
      v33 = "%@,%@,message is valid non-Scheduled-Send Key Release message";
    }

    else
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      v32 = NSStringFromSelector(a2);
      v43 = 138412546;
      v44 = v31;
      v45 = 2112;
      v46 = v32;
      v33 = "%@,%@,message is valid and not a Key Release message";
    }

    v35 = v22;
    v36 = 22;
LABEL_27:
    _os_log_impl(&dword_26455D000, v35, OS_LOG_TYPE_DEFAULT, v33, &v43, v36);

    goto LABEL_28;
  }

  v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    v41 = NSStringFromSelector(a2);
    v43 = 138412802;
    v44 = v40;
    v45 = 2112;
    v46 = v41;
    v47 = 1024;
    LODWORD(v48) = v13;
    _os_log_error_impl(&dword_26455D000, v15, OS_LOG_TYPE_ERROR, "%@,%@,message type (%d) is either unrecognized or not expected as an iMessage", &v43, 0x1Cu);
  }

  v29 = 1;
LABEL_30:

  return v29;
}

- (double)requestTimeFromTimed
{
  v23 = *MEMORY[0x277D85DE8];
  TMGetReferenceTime();
  v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = NSStringFromSelector(a2);
    *buf = 138412546;
    v16 = v12;
    v17 = 2112;
    v18 = v13;
    _os_log_error_impl(&dword_26455D000, v3, OS_LOG_TYPE_ERROR, "%@,%@,TMGetReferenceTime returned invalid time, using time from CFAbsoluteTimeGetCurrent", buf, 0x16u);
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = NSStringFromSelector(a2);
      v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:Current];
      stringFromDate = [v8 stringFromDate];
      *buf = 138413058;
      v16 = v6;
      v17 = 2112;
      v18 = v7;
      v19 = 2112;
      v20 = stringFromDate;
      v21 = 2048;
      v22 = 0;
      _os_log_impl(&dword_26455D000, v4, OS_LOG_TYPE_INFO, "%@,%@,referenceTime:%@,referenceTimeUnc:%f", buf, 0x2Au);
    }
  }

  return Current;
}

- (void)respondedToCheckInRemindersTipWithResponse:(int64_t)response
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v9 = "[SMSafetyMonitorManager respondedToCheckInRemindersTipWithResponse:]";
      _os_log_impl(&dword_26455D000, v6, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    }
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__SMSafetyMonitorManager_respondedToCheckInRemindersTipWithResponse___block_invoke_423;
  v7[3] = &__block_descriptor_40_e8_v16__0_8l;
  v7[4] = response;
  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:&__block_literal_global_422 taskBlock:v7];
}

void __69__SMSafetyMonitorManager_respondedToCheckInRemindersTipWithResponse___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "[SMSafetyMonitorManager respondedToCheckInRemindersTipWithResponse:]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_error_impl(&dword_26455D000, v3, OS_LOG_TYPE_ERROR, "%s, failed to find proxy, error, %@", &v4, 0x16u);
    }
  }
}

- (void)startCheckInRemindersTipMetricsCollection
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[SMSafetyMonitorManager startCheckInRemindersTipMetricsCollection]";
      _os_log_impl(&dword_26455D000, v4, OS_LOG_TYPE_INFO, "%s", &v5, 0xCu);
    }
  }

  [(SMSafetyMonitorManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:&__block_literal_global_426 taskBlock:&__block_literal_global_429];
}

void __67__SMSafetyMonitorManager_startCheckInRemindersTipMetricsCollection__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "[SMSafetyMonitorManager startCheckInRemindersTipMetricsCollection]_block_invoke";
      v6 = 2112;
      v7 = v2;
      _os_log_error_impl(&dword_26455D000, v3, OS_LOG_TYPE_ERROR, "%s, failed to find proxy, error, %@", &v4, 0x16u);
    }
  }
}

- (void)submitInitializationAnalyticsEventWithError:(id)error conversation:(id)conversation duration:(double)duration
{
  v23 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  conversationCopy = conversation;
  v9 = objc_opt_new();
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
  [v9 setObject:v10 forKeyedSubscript:@"initializationDuration"];

  if (errorCopy)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
    [v9 setObject:v11 forKeyedSubscript:@"errorCodeEnum"];

    v12 = MEMORY[0x277CBEC28];
  }

  else
  {
    v12 = MEMORY[0x277CBEC38];
  }

  [v9 setObject:v12 forKeyedSubscript:@"success"];
  v13 = MEMORY[0x277CCABB0];
  receiverHandles = [conversationCopy receiverHandles];

  v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(receiverHandles, "count")}];
  [v9 setObject:v15 forKeyedSubscript:@"numRecepients"];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = 136315650;
      v18 = "[SMSafetyMonitorManager submitInitializationAnalyticsEventWithError:conversation:duration:]";
      v19 = 2112;
      v20 = @"com.apple.SafetyMonitor.initiator.initializationResult";
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_26455D000, v16, OS_LOG_TYPE_INFO, "%s, event name, %@, event, %@", &v17, 0x20u);
    }
  }

  AnalyticsSendEvent();
}

@end