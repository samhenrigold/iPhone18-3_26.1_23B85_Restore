@interface CKDOperation
+ (BOOL)finishWithCallbackProxy:(id)proxy assetDownloadStagingInfo:(id)info fileURL:(id *)l fileHandle:(id *)handle error:(id *)error;
+ (id)_globalOperationCallbackQueueForQOS:(int64_t)s;
+ (id)nameForState:(unint64_t)state;
+ (id)openFileWithCallbackProxy:(id)proxy openInfo:(id)info error:(id *)error;
- (BOOL)_checkAppVersion;
- (BOOL)allowsCellularAccess;
- (BOOL)allowsExpensiveNetworkAccess;
- (BOOL)allowsPowerNapScheduling;
- (BOOL)automaticallyRetryNetworkFailures;
- (BOOL)checkAndClearUnitTestOverrides:(id)overrides;
- (BOOL)expectDelayBeforeRequestBegins;
- (BOOL)finishWithAssetDownloadStagingInfo:(id)info fileURL:(id *)l fileHandle:(id *)handle error:(id *)error;
- (BOOL)isCloudKitSupportOperation;
- (BOOL)isEqual:(id)equal;
- (BOOL)isLongLived;
- (BOOL)isNetworkingBehaviorEquivalentForOperation:(id)operation;
- (BOOL)isTopLevelDaemonOperation;
- (BOOL)isWaitingOnAuthToken;
- (BOOL)isWaitingOnPCS;
- (BOOL)makeStateTransition;
- (BOOL)preferAnonymousRequests;
- (BOOL)resolvedAutomaticallyRetryNetworkFailures;
- (BOOL)usesBackgroundSession;
- (BOOL)validateAgainstLiveContainer:(id)container error:(id *)error;
- (CKDLogicalDeviceContext)deviceContext;
- (CKDOperation)initWithOperationInfo:(id)info container:(id)container;
- (CKDOperation)parentOperation;
- (CKDOperation)topmostParentOperation;
- (CKDOperationCallbackProxy)clientOperationCallbackProxy;
- (CKDURLRequest)request;
- (CKOperationMMCSRequestOptions)MMCSRequestOptions;
- (CKOperationMetrics)operationMetrics;
- (NSDictionary)unitTestOverrides;
- (NSNumber)cacheDeleteAvailableSpaceClass;
- (NSNumber)operationGroupQuantityNumber;
- (NSNumber)privacyProxyFailClosedOverride;
- (NSString)applicationBundleIdentifierForContainerAccess;
- (NSString)applicationBundleIdentifierForNetworkAttribution;
- (NSString)authPromptReason;
- (NSString)operationGroupID;
- (NSString)operationGroupName;
- (NSString)operationID;
- (NSString)sourceApplicationSecondaryIdentifier;
- (OS_os_activity)osActivity;
- (double)timeoutIntervalForRequest;
- (double)timeoutIntervalForResource;
- (id)CKDescriptionPropertiesWithPublic:(BOOL)public private:(BOOL)private shouldExpand:(BOOL)expand;
- (id)CKStatusReportProperties;
- (id)_startDateString;
- (id)_stateFlags;
- (id)activityCreate;
- (id)additionalRequestHTTPHeaders;
- (id)analyticsPayload;
- (id)baseOperationAndErrorInfoCoreAnalyticsPayloadWithError:(id)error;
- (id)ckShortDescription;
- (id)containerID;
- (id)createConcurrentQueue;
- (id)createInactiveConcurrentQueue;
- (id)createInactiveSerialQueue;
- (id)createSerialQueue;
- (id)dugongKeyRollAnalyticsPayloadWithError:(id)error;
- (id)openFileWithOpenInfo:(id)info error:(id *)error;
- (id)statusReportWithIndent:(unint64_t)indent;
- (id)zoneIDsUsed;
- (int)operationType;
- (int64_t)clientQueuePriority;
- (unint64_t)discretionaryNetworkBehavior;
- (unint64_t)discretionaryWhenBackgroundedState;
- (unint64_t)duetPreClearedMode;
- (unint64_t)hash;
- (unint64_t)networkServiceType;
- (unint64_t)resolvedDiscretionaryNetworkBehavior;
- (unint64_t)state;
- (unint64_t)systemScheduler;
- (unsigned)QOSClass;
- (void)_continueOperationStart;
- (void)_determineNetworkServiceType;
- (void)_ensureOperationGroup;
- (void)_finishInternalOnCallbackQueueWithError:(id)error;
- (void)_finishOnCallbackQueueWithError:(id)error;
- (void)_registerAttemptForOperation;
- (void)addUnitTestOverrides:(id)overrides;
- (void)applyCloudCoreSessionValidityErrorUnitTestOverridesWithKey:(id)key;
- (void)beginUserSyncTask;
- (void)cancel;
- (void)combineMetricsWithOperation:(id)operation;
- (void)configureQualityOfServiceFromOperationInfo:(id)info;
- (void)configureRequest:(id)request;
- (void)dealloc;
- (void)fetchContainerScopedUserID:(id)d;
- (void)finishWithError:(id)error;
- (void)main;
- (void)makeStateTransition:(BOOL)transition;
- (void)noteOperationDidFinishWaitingOnPCS;
- (void)noteOperationWillWaitOnPCS;
- (void)operationDidFinishWaitingOnAuthToken;
- (void)operationWillWaitOnAuthToken;
- (void)pushStatisticsTo:(id)to;
- (void)request:(id)request didFinishWithMetrics:(id)metrics w3cNavigationTiming:(id)timing;
- (void)sendCoreAnalyticsEventOperationFinished;
- (void)setClientOperationCallbackProxy:(id)proxy;
- (void)setCompletionBlock:(id)block;
- (void)setParentOperation:(id)operation;
- (void)setQualityOfService:(int64_t)service;
- (void)setRequest:(id)request;
- (void)setState:(unint64_t)state;
- (void)spawnAndRunOperationOfClass:(Class)class operationInfo:(id)info spawnQueue:(id)queue container:(id)container operationConfigurationBlock:(id)block;
- (void)spawnAndRunOperationOfClass:(Class)class operationInfo:(id)info spawnQueue:(id)queue operationConfigurationBlock:(id)block;
- (void)start;
- (void)updateCloudKitMetrics:(id)metrics;
- (void)updateMMCSMetrics:(id)metrics;
@end

@implementation CKDOperation

- (BOOL)resolvedAutomaticallyRetryNetworkFailures
{
  if (objc_msgSend_systemScheduler(self, a2, v2) == 1 || objc_msgSend_systemScheduler(self, v4, v5) == 3)
  {
    return 0;
  }

  return objc_msgSend_automaticallyRetryNetworkFailures(self, v6, v7);
}

- (unint64_t)resolvedDiscretionaryNetworkBehavior
{
  if (objc_msgSend_duetPreClearedMode(self, a2, v2))
  {
    return 2;
  }

  if (objc_msgSend_discretionaryWhenBackgroundedState(self, v4, v5) == 1)
  {
    return 0;
  }

  return objc_msgSend_discretionaryNetworkBehavior(self, v7, v8);
}

- (BOOL)usesBackgroundSession
{
  v4 = objc_msgSend_resolvedAutomaticallyRetryNetworkFailures(self, a2, v2);
  v7 = objc_msgSend_resolvedDiscretionaryNetworkBehavior(self, v5, v6);
  return ((objc_msgSend_duetPreClearedMode(self, v8, v9) | v7) != 0) | v4 & 1;
}

- (unint64_t)systemScheduler
{
  v3 = objc_msgSend_operationInfo(self, a2, v2);
  v6 = objc_msgSend_systemScheduler(v3, v4, v5);

  return v6;
}

- (BOOL)automaticallyRetryNetworkFailures
{
  v3 = objc_msgSend_operationInfo(self, a2, v2);
  v6 = objc_msgSend_automaticallyRetryNetworkFailures(v3, v4, v5);

  return v6;
}

- (unint64_t)discretionaryWhenBackgroundedState
{
  v3 = objc_msgSend_operationInfo(self, a2, v2);
  v6 = objc_msgSend_discretionaryWhenBackgroundedState(v3, v4, v5);

  return v6;
}

- (unint64_t)discretionaryNetworkBehavior
{
  v3 = objc_msgSend_operationInfo(self, a2, v2);
  v6 = objc_msgSend_discretionaryNetworkBehavior(v3, v4, v5);

  return v6;
}

- (BOOL)allowsCellularAccess
{
  v4 = objc_msgSend_operationInfo(self, a2, v2);
  if (objc_msgSend_allowsCellularAccess(v4, v5, v6))
  {
    v9 = objc_msgSend_container(self, v7, v8);
    v12 = objc_msgSend_allowsCellularAccess(v9, v10, v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)allowsExpensiveNetworkAccess
{
  v4 = objc_msgSend_operationInfo(self, a2, v2);
  if (objc_msgSend_allowsExpensiveNetworkAccess(v4, v5, v6))
  {
    v9 = objc_msgSend_container(self, v7, v8);
    v12 = objc_msgSend_allowsExpensiveNetworkAccess(v9, v10, v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)duetPreClearedMode
{
  v3 = objc_msgSend_operationInfo(self, a2, v2);
  v6 = objc_msgSend_duetPreClearedMode(v3, v4, v5);

  return v6;
}

- (void)_ensureOperationGroup
{
  v15 = objc_msgSend_topmostParentOperation(self, a2, v2);
  v5 = objc_msgSend_operationInfo(v15, v3, v4);
  v8 = objc_msgSend_group(v5, v6, v7);

  if (!v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBC4F8]);
    objc_msgSend_setName_(v9, v10, @"EphemeralGroup");
    v13 = objc_msgSend_operationInfo(v15, v11, v12);
    objc_msgSend_setGroup_(v13, v14, v9);
  }
}

- (BOOL)isCloudKitSupportOperation
{
  v3 = objc_msgSend_operationInfo(self, a2, v2);
  isCloudKitSupportOperation = objc_msgSend_isCloudKitSupportOperation(v3, v4, v5);

  return isCloudKitSupportOperation;
}

- (CKDLogicalDeviceContext)deviceContext
{
  v3 = objc_msgSend_container(self, a2, v2);
  v6 = objc_msgSend_deviceContext(v3, v4, v5);

  return v6;
}

- (CKDOperationCallbackProxy)clientOperationCallbackProxy
{
  v3 = objc_msgSend_topmostParentOperation(self, a2, v2);
  v4 = v3[39];
  v5 = v4;

  return v4;
}

- (OS_os_activity)osActivity
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_osActivity)
  {
    v5 = objc_msgSend_activityCreate(selfCopy, v3, v4);
    osActivity = selfCopy->_osActivity;
    selfCopy->_osActivity = v5;
  }

  objc_sync_exit(selfCopy);

  v7 = selfCopy->_osActivity;

  return v7;
}

- (id)containerID
{
  v3 = objc_msgSend_container(self, a2, v2);
  v6 = objc_msgSend_containerID(v3, v4, v5);

  return v6;
}

- (NSString)operationID
{
  v3 = objc_msgSend_operationInfo(self, a2, v2);
  v6 = objc_msgSend_operationID(v3, v4, v5);

  return v6;
}

- (BOOL)isLongLived
{
  v3 = objc_msgSend_operationInfo(self, a2, v2);
  isLongLived = objc_msgSend_isLongLived(v3, v4, v5);

  return isLongLived;
}

- (NSString)sourceApplicationSecondaryIdentifier
{
  v3 = objc_msgSend_operationInfo(self, a2, v2);
  v6 = objc_msgSend_sourceApplicationSecondaryIdentifier(v3, v4, v5);

  return v6;
}

- (CKDOperation)topmostParentOperation
{
  selfCopy = self;
  v5 = objc_msgSend_parentOperation(selfCopy, v3, v4);
  if (v5)
  {
    v6 = v5;
    do
    {
      v7 = v6;

      v6 = objc_msgSend_parentOperation(v7, v8, v9);

      selfCopy = v7;
    }

    while (v6);
  }

  else
  {
    v7 = selfCopy;
  }

  return v7;
}

- (CKDOperation)parentOperation
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_parentOperation);
  objc_sync_exit(selfCopy);

  return WeakRetained;
}

- (NSString)operationGroupID
{
  v3 = objc_msgSend_topmostParentOperation(self, a2, v2);
  v6 = objc_msgSend_operationInfo(v3, v4, v5);
  v9 = objc_msgSend_group(v6, v7, v8);
  v12 = objc_msgSend_operationGroupID(v9, v10, v11);

  return v12;
}

- (NSString)operationGroupName
{
  v3 = objc_msgSend_topmostParentOperation(self, a2, v2);
  v6 = objc_msgSend_operationInfo(v3, v4, v5);
  v9 = objc_msgSend_group(v6, v7, v8);
  v12 = objc_msgSend_name(v9, v10, v11);

  return v12;
}

- (void)start
{
  v189 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v4 = objc_msgSend_osActivity(self, a2, v2);
  os_activity_scope_enter(v4, &state);

  v7 = objc_msgSend_signpost(self, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_signpost(self, v8, v9);
    v13 = objc_msgSend_log(v10, v11, v12);

    v16 = objc_msgSend_signpost(self, v14, v15);
    v19 = objc_msgSend_identifier(v16, v17, v18);

    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      v20 = objc_opt_class();
      v23 = objc_msgSend_operationID(self, v21, v22);
      v26 = objc_msgSend_containerID(self, v24, v25);
      v29 = objc_msgSend_container(self, v27, v28);
      v32 = objc_msgSend_applicationBundleID(v29, v30, v31);
      objc_msgSend_qualityOfService(self, v33, v34);
      v35 = CKStringForQOS();
      *buf = 138544386;
      v180 = v20;
      v181 = 2112;
      selfCopy = v23;
      v183 = 2112;
      v184 = v26;
      v185 = 2112;
      v186 = v32;
      v187 = 2114;
      v188 = v35;
      _os_signpost_emit_with_name_impl(&dword_22506F000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v19, "CKDOperation", "Type=%{signpost.description:attribute,public}@ ID=%{signpost.description:attribute}@ ContainerID=%{signpost.description:attribute}@ BundleID=%{signpost.description:attribute}@ QoS=%{signpost.description:attribute,public}@ ", buf, 0x34u);
    }
  }

  objc_msgSend_hash(self, v8, v9);
  kdebug_trace();
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v36 = *MEMORY[0x277CBC850];
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    v40 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v39, 1, 0, 0);
    v43 = objc_msgSend_CKPropertiesStyleString(v40, v41, v42);
    v45 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v44, 0, 1, 0);
    v48 = objc_msgSend_CKPropertiesStyleString(v45, v46, v47);
    *buf = 138544130;
    v180 = v38;
    v181 = 2048;
    selfCopy = self;
    v183 = 2114;
    v184 = v43;
    v185 = 2112;
    v186 = v48;
    _os_log_impl(&dword_22506F000, v36, OS_LOG_TYPE_DEFAULT, "Starting <%{public}@: %p; %{public}@, %@>", buf, 0x2Au);
  }

  v51 = objc_msgSend_date(MEMORY[0x277CBEAA8], v49, v50);
  objc_msgSend_setMetricExecuteStartDate_(self, v52, v51);

  v177[0] = MEMORY[0x277D85DD0];
  v177[1] = 3221225472;
  v177[2] = sub_22507AB90;
  v177[3] = &unk_2785487F8;
  v177[4] = self;
  objc_msgSend_updateCloudKitMetrics_(self, v53, v177);
  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  v57 = objc_msgSend_container(selfCopy2, v55, v56);
  v60 = objc_msgSend_beginContentAccess(v57, v58, v59);

  if (v60)
  {
    objc_msgSend_setEndContainerAccess_(selfCopy2, v61, 1);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v62 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22506F000, v62, OS_LOG_TYPE_ERROR, "Failed to begin container content access", buf, 2u);
    }
  }

  objc_sync_exit(selfCopy2);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22526755C;
  aBlock[3] = &unk_27854B570;
  aBlock[4] = selfCopy2;
  v63 = _Block_copy(aBlock);
  if (((v63[2])() & 1) == 0)
  {
    if ((objc_msgSend_isExecuting(selfCopy2, v64, v65) & 1) != 0 || objc_msgSend_isFinished(selfCopy2, v66, v67))
    {
      v68 = MEMORY[0x277CBEAD8];
      v69 = objc_msgSend_operationID(selfCopy2, v66, v67);
      objc_msgSend_raise_format_(v68, v70, *MEMORY[0x277CBE660], @"You can't restart an executing or finished CKOperation: %@", v69);
    }

    if (*MEMORY[0x277CBC810] == 1)
    {
      v71 = objc_msgSend_unitTestOverrides(selfCopy2, v66, v67);
      v75 = objc_msgSend_objectForKeyedSubscript_(v71, v72, @"ForceTimingIssueAroundProxySetupQueue");
      if (v75)
      {
        isLongLivedCallbackRelayOperation = objc_msgSend_isLongLivedCallbackRelayOperation(selfCopy2, v73, v74);

        if (isLongLivedCallbackRelayOperation)
        {
          sleep(2u);
        }
      }

      else
      {
      }
    }

    objc_msgSend_transitionToExecuting(selfCopy2, v66, v67);
    if ((v63[2](v63) & 1) == 0)
    {
      if (*MEMORY[0x277CBC810] == 1)
      {
        objc_msgSend_applyCloudCoreSessionValidityErrorUnitTestOverridesWithKey_(selfCopy2, v77, @"SetCloudCoreCKSessionReadinessErrorBoxBeforeStarting");
      }

      v79 = objc_msgSend_container(selfCopy2, v77, v78);
      v175 = 0;
      v81 = objc_msgSend_checkSessionValidityCacheOnly_error_(v79, v80, 1, &v175);
      v82 = v175;

      if ((v81 & 1) == 0)
      {
        isCloudCoreSessionNoLongerValidError = objc_msgSend_isCloudCoreSessionNoLongerValidError(v82, v83, v84);
        v86 = *MEMORY[0x277CBC878];
        if (isCloudCoreSessionNoLongerValidError)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v86);
          }

          v87 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
          {
            v156 = objc_msgSend_operationID(selfCopy2, v88, v89);
            v159 = objc_msgSend_container(selfCopy2, v157, v158);
            v162 = objc_msgSend_ckShortDescription(v159, v160, v161);
            *buf = 138412802;
            v180 = v156;
            v181 = 2112;
            selfCopy = v162;
            v183 = 2112;
            v184 = v82;
            _os_log_error_impl(&dword_22506F000, v87, OS_LOG_TYPE_ERROR, "Container session is invalid. Aborting operation %@ on container %@: %@", buf, 0x20u);
          }

          objc_msgSend_setError_(selfCopy2, v90, v82);
          objc_msgSend_finishWithError_(selfCopy2, v91, v82);
          goto LABEL_67;
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v86);
        }

        v92 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
        {
          v163 = objc_msgSend_container(selfCopy2, v93, v94);
          v166 = objc_msgSend_ckShortDescription(v163, v164, v165);
          *buf = 138412546;
          v180 = v166;
          v181 = 2112;
          selfCopy = v82;
          _os_log_error_impl(&dword_22506F000, v92, OS_LOG_TYPE_ERROR, "Failed to validate the CloudCore session for container %@: %@", buf, 0x16u);
        }
      }

      if (objc_msgSend_supportsDeviceThrottling(selfCopy2, v83, v84))
      {
        v97 = objc_msgSend_deviceContext(selfCopy2, v95, v96);
        v100 = objc_msgSend_throttleManager(v97, v98, v99);
        v174 = 0;
        v102 = objc_msgSend_enforcedThrottleForCriteria_willSendRequest_outThrottleError_(v100, v101, selfCopy2, 1, &v174);
        v168 = v174;

        if (v102)
        {
          if (objc_msgSend_canTestInClientProcess(v102, v95, v96))
          {
            v105 = objc_msgSend_container(selfCopy2, v103, v104);
            v108 = objc_msgSend_logicalDeviceScopedClientProxy(v105, v106, v107);

            objc_msgSend_setHasBeenThrottled_(v108, v109, 1);
            objc_msgSend_addThrottle_(v108, v110, v102);
          }

          v111 = objc_msgSend_CKClientSuitableError(v168, v103, v104);
          objc_msgSend_finishWithError_(selfCopy2, v112, v111);
LABEL_66:

LABEL_67:
          goto LABEL_68;
        }
      }

      else
      {
        v168 = 0;
      }

      if (*MEMORY[0x277CBC810] == 1 && (objc_msgSend_skipSettingUnitTestOverrides(selfCopy2, v95, v96) & 1) == 0 && objc_msgSend_useEncryption(selfCopy2, v113, v114))
      {
        v117 = objc_msgSend_unitTestOverrides(selfCopy2, v115, v116);
        v120 = objc_msgSend_count(v117, v118, v119);

        objc_msgSend_container(selfCopy2, v121, v122);
        if (v120)
          v123 = {;
          objc_msgSend_pcsManager(v123, v124, v125);
        }

        else
          v123 = {;
          objc_msgSend_pcsManagerIfExists(v123, v126, v127);
        }
        v128 = ;

        v131 = objc_msgSend_unitTestOverrides(selfCopy2, v129, v130);
        objc_msgSend_addEntriesForUnitTestOverrides_(v128, v132, v131);
      }

      v102 = dispatch_group_create();
      v111 = objc_msgSend_clientOperationCallbackProxy(selfCopy2, v133, v134);
      v173[0] = MEMORY[0x277D85DD0];
      v173[1] = 3221225472;
      v173[2] = sub_2252677D8;
      v173[3] = &unk_278545A00;
      v173[4] = selfCopy2;
      v135 = _Block_copy(v173);
      v136 = v135;
      if (v111)
      {
        dispatch_group_enter(v102);
        v171[0] = MEMORY[0x277D85DD0];
        v171[1] = 3221225472;
        v171[2] = sub_2252679C4;
        v171[3] = &unk_2785470C0;
        v137 = v102;
        v172 = v137;
        objc_msgSend_handleDidStart_(v111, v138, v171);

        if (*MEMORY[0x277CBC810] == 1)
        {
          v141 = objc_msgSend_operationInfo(selfCopy2, v139, v140);
          v144 = objc_msgSend_wantsDaemonOperationCallbacks(v141, v142, v143);

          if (v144)
          {
            dispatch_group_enter(v137);
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v145 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(v145, OS_LOG_TYPE_DEBUG))
            {
              v167 = objc_msgSend_operationID(selfCopy2, v146, v147);
              *buf = 138543362;
              v180 = v167;
              _os_log_debug_impl(&dword_22506F000, v145, OS_LOG_TYPE_DEBUG, "Operation %{public}@ calling out to client about lifecycle transition", buf, 0xCu);
            }

            v148 = objc_opt_class();
            v149 = NSStringFromClass(v148);
            isTopLevelDaemonOperation = objc_msgSend_isTopLevelDaemonOperation(selfCopy2, v150, v151);
            v169[0] = MEMORY[0x277D85DD0];
            v169[1] = 3221225472;
            v169[2] = sub_2252679CC;
            v169[3] = &unk_27854B598;
            v169[4] = selfCopy2;
            v170 = v137;
            objc_msgSend_handleDaemonOperationWillStartWithClassName_isTopLevelDaemonOperation_replyBlock_(v111, v153, v149, isTopLevelDaemonOperation, v169);
          }
        }

        v154 = objc_msgSend_callbackQueue(selfCopy2, v139, v140);
        dispatch_group_notify(v137, v154, v136);
      }

      else
      {
        (*(v135 + 2))(v135);
      }

      if (*MEMORY[0x277CBC810] == 1)
      {
        objc_msgSend_applyCloudCoreSessionValidityErrorUnitTestOverridesWithKey_(selfCopy2, v155, @"SetCloudCoreCKSessionReadinessErrorBoxAfterStarting");
      }

      goto LABEL_66;
    }
  }

LABEL_68:

  os_activity_scope_leave(&state);
}

- (CKDURLRequest)request
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_request;
  objc_sync_exit(selfCopy);

  return v3;
}

- (NSString)applicationBundleIdentifierForContainerAccess
{
  v4 = objc_msgSend_operationInfo(self, a2, v2);
  v7 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(v4, v5, v6);

  if (!v7)
  {
    v10 = objc_msgSend_container(self, v8, v9);
    v7 = objc_msgSend_applicationBundleIdentifierForContainerAccess(v10, v11, v12);
  }

  return v7;
}

- (unint64_t)networkServiceType
{
  v4 = objc_msgSend_topmostParentOperation(self, a2, v2);
  v7 = v4;
  if (v4 == self)
  {
    v9 = objc_msgSend_operationInfo(self, v5, v6);
    v12 = objc_msgSend_group(v9, v10, v11);

    if (v12)
    {
      v13 = objc_opt_new();
      v16 = objc_msgSend_allowsCellularAccess(self, v14, v15);
      objc_msgSend_setAllowsCellularAccess_(v13, v17, v16);
      objc_msgSend_setIsUplink_(v13, v18, 1);
      v20 = objc_msgSend_resolvedNetworkServiceTypeForConfig_(v12, v19, v13);
      objc_msgSend_setIsUplink_(v13, v21, 0);
      v23 = objc_msgSend_resolvedNetworkServiceTypeForConfig_(v12, v22, v13);
      v24 = objc_opt_class();
      isPredominatelyDownload = objc_msgSend_isPredominatelyDownload(v24, v25, v26);
      if (v20)
      {
        v28 = v20;
      }

      else
      {
        v28 = v23;
      }

      if (isPredominatelyDownload == 1)
      {
        v28 = v23;
      }

      if (isPredominatelyDownload)
      {
        v8 = v28;
      }

      else
      {
        v8 = v20;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = objc_msgSend_networkServiceType(v4, v5, v6);
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = objc_msgSend_operationID(self, a2, v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

- (unint64_t)state
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  state = selfCopy->_state;
  objc_sync_exit(selfCopy);

  return state;
}

- (BOOL)isWaitingOnAuthToken
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_msgSend_authTokenWaitCount(selfCopy, v3, v4) != 0;
  objc_sync_exit(selfCopy);

  return v5;
}

- (id)ckShortDescription
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_operationID(self, a2, v2);
  v8 = objc_msgSend__stateFlags(self, v6, v7);
  v9 = objc_opt_class();
  v12 = objc_msgSend_state(self, v10, v11);
  v14 = objc_msgSend_nameForState_(v9, v13, v12);
  objc_msgSend_qualityOfService(self, v15, v16);
  v17 = CKStringForQOS();
  v19 = objc_msgSend_stringWithFormat_(v4, v18, @"%@ %@ State: %@, QoS: %@", v5, v8, v14, v17);

  return v19;
}

- (id)_stateFlags
{
  v4 = MEMORY[0x277CCACA8];
  if (objc_msgSend_isExecuting(self, a2, v2))
  {
    v7 = @"R";
  }

  else
  {
    v7 = &stru_28385ED00;
  }

  if (objc_msgSend_isCancelled(self, v5, v6))
  {
    v10 = @"X";
  }

  else
  {
    v10 = &stru_28385ED00;
  }

  if (objc_msgSend_usesBackgroundSession(self, v8, v9))
  {
    v13 = @"B";
  }

  else
  {
    v13 = &stru_28385ED00;
  }

  if (objc_msgSend_allowsCellularAccess(self, v11, v12))
  {
    v16 = @"C";
  }

  else
  {
    v16 = &stru_28385ED00;
  }

  if (objc_msgSend_allowsExpensiveNetworkAccess(self, v14, v15))
  {
    v19 = @"E";
  }

  else
  {
    v19 = &stru_28385ED00;
  }

  if (objc_msgSend_isLongLived(self, v17, v18))
  {
    v22 = @"L";
  }

  else
  {
    v22 = &stru_28385ED00;
  }

  if (objc_msgSend_isWaitingOnPCS(self, v20, v21))
  {
    v25 = @"P";
  }

  else
  {
    v25 = &stru_28385ED00;
  }

  isWaitingOnAuthToken = objc_msgSend_isWaitingOnAuthToken(self, v23, v24);
  v28 = @"T";
  if (!isWaitingOnAuthToken)
  {
    v28 = &stru_28385ED00;
  }

  return objc_msgSend_stringWithFormat_(v4, v27, @"(%@%@%@%@%@%@%@%@) ", v7, v10, v13, v16, v19, v22, v25, v28);
}

- (BOOL)isWaitingOnPCS
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_msgSend_pcsWaitCount(selfCopy, v3, v4) != 0;
  objc_sync_exit(selfCopy);

  return v5;
}

- (id)additionalRequestHTTPHeaders
{
  v3 = objc_msgSend_operationInfo(self, a2, v2);
  v6 = objc_msgSend_additionalRequestHTTPHeaders(v3, v4, v5);

  return v6;
}

- (BOOL)isTopLevelDaemonOperation
{
  v6 = objc_msgSend_parentOperation(self, a2, v2);
  if (v6)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = objc_msgSend_isLongLivedCallbackRelayOperation(self, v4, v5) ^ 1;
  }

  return v7;
}

- (BOOL)_checkAppVersion
{
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_22506F000, v3, OS_LOG_TYPE_DEBUG, "Checking application version", buf, 2u);
  }

  v6 = objc_msgSend_sharedManager(CKDServerConfigurationManager, v4, v5);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_225080700;
  v9[3] = &unk_278548770;
  v9[4] = self;
  objc_msgSend_configurationForOperation_completionHandler_(v6, v7, self, v9);

  return 1;
}

- (unsigned)QOSClass
{
  objc_msgSend_qualityOfService(self, a2, v2);

  return CKQoSClassFromNSQualityOfService();
}

- (NSNumber)operationGroupQuantityNumber
{
  v3 = objc_msgSend_topmostParentOperation(self, a2, v2);
  v6 = objc_msgSend_operationInfo(v3, v4, v5);
  v9 = objc_msgSend_group(v6, v7, v8);
  v12 = objc_msgSend_quantityNumber(v9, v10, v11);

  return v12;
}

- (NSNumber)privacyProxyFailClosedOverride
{
  v3 = objc_msgSend_operationInfo(self, a2, v2);
  v6 = objc_msgSend_privacyProxyFailClosedOverride(v3, v4, v5);

  return v6;
}

- (void)_determineNetworkServiceType
{
  v80 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_operationInfo(self, a2, v2);
  v7 = objc_msgSend_group(v4, v5, v6);

  v10 = objc_msgSend_expectedSendSize(v7, v8, v9);
  v13 = objc_msgSend_expectedReceiveSize(v7, v11, v12);
  if (v10 | v13)
  {
    v16 = v13;
    v74 = 0;
    v75 = &v74;
    v76 = 0x2020000000;
    v77 = 0;
    v17 = objc_msgSend_systemImposedInfo(v7, v14, v15);
    if (!v17)
    {
      *(v75 + 24) = 1;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v18 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "Determining Network Service Types", buf, 2u);
    }

    v19 = objc_opt_new();
    v22 = objc_msgSend_expectedSendSize(v7, v20, v21);
    objc_msgSend_setExpectedSendSize_(v19, v23, v22);
    v26 = objc_msgSend_expectedReceiveSize(v7, v24, v25);
    objc_msgSend_setExpectedReceiveSize_(v19, v27, v26);
    v28 = objc_opt_new();
    v31 = objc_msgSend_networkServiceTypePerConfig(v17, v29, v30);
    objc_msgSend_setNetworkServiceTypePerConfig_(v19, v32, v28);
    v33 = objc_opt_new();
    v34 = v10 != 0;
    v66 = MEMORY[0x277D85DD0];
    v67 = 3221225472;
    v68 = sub_225267394;
    v69 = &unk_27854B548;
    selfCopy = self;
    v35 = v31;
    v71 = v35;
    v73 = &v74;
    v36 = v28;
    v72 = v36;
    v38 = _Block_copy(&v66);
    if (v34)
    {
      objc_msgSend_setIsUplink_(v33, v37, 1, v66, v67, v68, v69, selfCopy, v71);
      objc_msgSend_setAllowsCellularAccess_(v33, v39, 1);
      v42 = objc_msgSend_approximateSendBytes(v7, v40, v41);
      v38[2](v38, v33, v42);
      objc_msgSend_setAllowsCellularAccess_(v33, v43, 0);
      v46 = objc_msgSend_approximateSendBytes(v7, v44, v45);
      v38[2](v38, v33, v46);
    }

    if (v16)
    {
      objc_msgSend_setIsUplink_(v33, v37, 0);
      objc_msgSend_setAllowsCellularAccess_(v33, v47, 1);
      v50 = objc_msgSend_approximateReceiveBytes(v7, v48, v49);
      v38[2](v38, v33, v50);
      objc_msgSend_setAllowsCellularAccess_(v33, v51, 0);
      v54 = objc_msgSend_approximateReceiveBytes(v7, v52, v53);
      v38[2](v38, v33, v54);
    }

    if (*(v75 + 24) == 1)
    {
      objc_msgSend_setSystemImposedInfo_(v7, v37, v19);
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v55 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        objc_msgSend_networkServiceType(self, v56, v57);
        v65 = CKStringForNetworkServiceType();
        *buf = 138543362;
        v79 = v65;
        _os_log_debug_impl(&dword_22506F000, v55, OS_LOG_TYPE_DEBUG, "Determined Network Service Type %{public}@", buf, 0xCu);
      }

      v60 = objc_msgSend_clientOperationCallbackProxy(self, v58, v59);
      objc_msgSend_handleSystemDidImposeInfo_(v60, v61, v19);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v60 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        objc_msgSend_networkServiceType(self, v62, v63);
        v64 = CKStringForNetworkServiceType();
        *buf = 138543362;
        v79 = v64;
        _os_log_debug_impl(&dword_22506F000, v60, OS_LOG_TYPE_DEBUG, "Using pre-determined Network Service Type %{public}@", buf, 0xCu);
      }
    }

    _Block_object_dispose(&v74, 8);
  }

  objc_msgSend__continueOperationStart(self, v14, v15, v66, v67, v68, v69, selfCopy);
}

- (void)_continueOperationStart
{
  v24 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isCancelled(self, a2, v2))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v6 = *MEMORY[0x277CBC850];
    if (os_log_type_enabled(*MEMORY[0x277CBC850], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v6, OS_LOG_TYPE_DEFAULT, "Operation was cancelled before it could start", buf, 2u);
    }

    v9 = MEMORY[0x277CBC560];
    v10 = *MEMORY[0x277CBC120];
    v11 = objc_msgSend_operationID(self, v7, v8);
    v13 = objc_msgSend_errorWithDomain_code_format_(v9, v12, v10, 1, @"Operation %@ was cancelled", v11);

    objc_msgSend_finishWithError_(self, v14, v13);
  }

  else
  {
    objc_msgSend__registerAttemptForOperation(self, v4, v5);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v15 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v18 = v15;
      v21 = objc_msgSend_operationID(self, v19, v20);
      *buf = 138543362;
      v23 = v21;
      _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "Invoking main for operation %{public}@", buf, 0xCu);
    }

    objc_msgSend_main(self, v16, v17);
  }
}

- (void)_registerAttemptForOperation
{
  v23 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isLongLived(self, a2, v2) && (objc_msgSend_isLongLivedCallbackRelayOperation(self, v4, v5) & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v6 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v17 = v6;
      v20 = objc_msgSend_operationID(self, v18, v19);
      v21 = 138543362;
      v22 = v20;
      _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Notifying operation info cache of an attempt for long-lived operation %{public}@", &v21, 0xCu);
    }

    v9 = objc_msgSend_deviceContext(self, v7, v8);
    v12 = objc_msgSend_operationInfoCache(v9, v10, v11);
    v15 = objc_msgSend_operationID(self, v13, v14);
    objc_msgSend_registerAttemptForOperationWithID_(v12, v16, v15);
  }
}

- (double)timeoutIntervalForRequest
{
  v3 = objc_msgSend_operationInfo(self, a2, v2);
  objc_msgSend_timeoutIntervalForRequest(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (double)timeoutIntervalForResource
{
  v3 = objc_msgSend_operationInfo(self, a2, v2);
  objc_msgSend_timeoutIntervalForResource(v3, v4, v5);
  v7 = v6;

  return v7;
}

- (BOOL)expectDelayBeforeRequestBegins
{
  v4 = objc_msgSend_duetPreClearedMode(self, a2, v2);
  result = objc_msgSend_usesBackgroundSession(self, v5, v6);
  if (v4)
  {
    return 0;
  }

  return result;
}

- (BOOL)preferAnonymousRequests
{
  v4 = objc_msgSend_operationInfo(self, a2, v2);
  if (objc_msgSend_preferAnonymousRequests(v4, v5, v6))
  {
    v9 = 1;
  }

  else
  {
    v10 = objc_msgSend_container(self, v7, v8);
    v9 = objc_msgSend_preferAnonymousRequests(v10, v11, v12);
  }

  return v9;
}

- (void)sendCoreAnalyticsEventOperationFinished
{
  v29 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_didAttemptDugongKeyRoll(self, a2, v2))
  {
    v6 = objc_msgSend_error(self, v4, v5);

    if (v6)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v7 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v21 = v7;
        v24 = objc_msgSend_operationID(self, v22, v23);
        v25 = 138543618;
        v26 = v24;
        v27 = 2114;
        v28 = 0x28387E400;
        _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "Operation %{public}@ sending CoreAnalytics event %{public}@", &v25, 0x16u);
      }

      v10 = objc_msgSend_error(self, v8, v9);
      v12 = objc_msgSend_dugongKeyRollAnalyticsPayloadWithError_(self, v11, v10);

      AnalyticsSendEvent();
    }
  }

  if (objc_msgSend_isTopLevelDaemonOperation(self, v4, v5))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v17 = v13;
      v20 = objc_msgSend_operationID(self, v18, v19);
      v25 = 138543618;
      v26 = v20;
      v27 = 2114;
      v28 = 0x28387E3E0;
      _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Operation %{public}@ sending CoreAnalytics event %{public}@", &v25, 0x16u);
    }

    v16 = objc_msgSend_analyticsPayload(self, v14, v15);
    AnalyticsSendEvent();
  }
}

- (CKOperationMetrics)operationMetrics
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = objc_alloc(MEMORY[0x277CBC480]);
  v5 = objc_msgSend_initWithMMCSOperationMetric_(v3, v4, self->_cloudKitMetrics);
  if (self->_MMCSMetrics)
  {
    v6 = objc_alloc(MEMORY[0x277CBC480]);
    v8 = objc_msgSend_initWithMMCSOperationMetric_(v6, v7, self->_MMCSMetrics);
  }

  else
  {
    v8 = 0;
  }

  v9 = objc_alloc(MEMORY[0x277CBC520]);
  v11 = objc_msgSend_initWithCloudKitMetrics_MMCSMetrics_(v9, v10, v5, v8);
  os_unfair_recursive_lock_unlock();

  return v11;
}

- (id)analyticsPayload
{
  v4 = objc_msgSend_error(self, a2, v2);
  v6 = objc_msgSend_baseOperationAndErrorInfoCoreAnalyticsPayloadWithError_(self, v5, v4);

  os_unfair_recursive_lock_lock_with_options();
  v7 = MEMORY[0x277CCABB0];
  objc_msgSend_duration(self->_cloudKitMetrics, v8, v9);
  v12 = objc_msgSend_numberWithDouble_(v7, v10, v11);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v13, v12, 0x28387E500);

  v14 = MEMORY[0x277CCABB0];
  objc_msgSend_queueing(self->_cloudKitMetrics, v15, v16);
  v19 = objc_msgSend_numberWithDouble_(v14, v17, v18);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v20, v19, 0x28387E520);

  v21 = MEMORY[0x277CCABB0];
  objc_msgSend_executing(self->_cloudKitMetrics, v22, v23);
  v26 = objc_msgSend_numberWithDouble_(v21, v24, v25);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v27, v26, 0x28387E540);

  v28 = MEMORY[0x277CCABB0];
  v31 = objc_msgSend_bytesUploaded(self->_cloudKitMetrics, v29, v30);
  v33 = objc_msgSend_numberWithUnsignedInteger_(v28, v32, v31);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v34, v33, 0x28387E560);

  v35 = MEMORY[0x277CCABB0];
  v38 = objc_msgSend_bytesDownloaded(self->_cloudKitMetrics, v36, v37);
  v40 = objc_msgSend_numberWithUnsignedInteger_(v35, v39, v38);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v41, v40, 0x28387E580);

  v42 = MEMORY[0x277CCABB0];
  v45 = objc_msgSend_connections(self->_cloudKitMetrics, v43, v44);
  v47 = objc_msgSend_numberWithUnsignedInteger_(v42, v46, v45);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v48, v47, 0x28387E5A0);

  v49 = MEMORY[0x277CCABB0];
  v52 = objc_msgSend_connectionsCreated(self->_cloudKitMetrics, v50, v51);
  v54 = objc_msgSend_numberWithUnsignedInteger_(v49, v53, v52);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v55, v54, 0x28387E5C0);

  MMCSMetrics = self->_MMCSMetrics;
  if (MMCSMetrics)
  {
    v59 = MEMORY[0x277CCABB0];
    objc_msgSend_duration(MMCSMetrics, v56, v57);
    v62 = objc_msgSend_numberWithDouble_(v59, v60, v61);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v63, v62, 0x28387E5E0);

    v64 = MEMORY[0x277CCABB0];
    objc_msgSend_queueing(self->_MMCSMetrics, v65, v66);
    v69 = objc_msgSend_numberWithDouble_(v64, v67, v68);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v70, v69, 0x28387E600);

    v71 = MEMORY[0x277CCABB0];
    objc_msgSend_executing(self->_MMCSMetrics, v72, v73);
    v76 = objc_msgSend_numberWithDouble_(v71, v74, v75);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v77, v76, 0x28387E620);

    v78 = MEMORY[0x277CCABB0];
    v81 = objc_msgSend_bytesUploaded(self->_MMCSMetrics, v79, v80);
    v83 = objc_msgSend_numberWithUnsignedInteger_(v78, v82, v81);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v84, v83, 0x28387E640);

    v85 = MEMORY[0x277CCABB0];
    v88 = objc_msgSend_bytesDownloaded(self->_MMCSMetrics, v86, v87);
    v90 = objc_msgSend_numberWithUnsignedInteger_(v85, v89, v88);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v91, v90, 0x28387E660);

    v92 = MEMORY[0x277CCABB0];
    v95 = objc_msgSend_connections(self->_MMCSMetrics, v93, v94);
    v97 = objc_msgSend_numberWithUnsignedInteger_(v92, v96, v95);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v98, v97, 0x28387E680);

    v99 = MEMORY[0x277CCABB0];
    v102 = objc_msgSend_connectionsCreated(self->_MMCSMetrics, v100, v101);
    v104 = objc_msgSend_numberWithUnsignedInteger_(v99, v103, v102);
    objc_msgSend_setObject_forKeyedSubscript_(v6, v105, v104, 0x28387E6A0);
  }

  os_unfair_recursive_lock_unlock();

  return v6;
}

- (void)dealloc
{
  v5 = objc_msgSend_stateTransitionGroup(self, a2, v2);
  v6 = dispatch_group_wait(v5, 0);

  if (v6)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    v12 = objc_msgSend_operationID(self, v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v13, a2, self, @"CKDOperation.m", 272, @"Operation %@ tried to dealloc with outstanding entries in the state transition group", v12);
  }

  v16 = self->_transaction;
  if (*MEMORY[0x277CBC810] == 1)
  {
    v17 = objc_msgSend_deviceContext(self, v14, v15);
    v20 = objc_msgSend_testServer(v17, v18, v19);

    if (v20 && (objc_msgSend_useLiveServer(v20, v21, v22) & 1) == 0)
    {
      v23 = dispatch_time(0, 60000000000);
      v24 = CKGetGlobalQueue();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = nullsub_12;
      block[3] = &unk_278545A00;
      v39 = v16;
      dispatch_after(v23, v24, block);
    }
  }

  if (objc_msgSend_endContainerAccess(self, v14, v15))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v27 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22506F000, v27, OS_LOG_TYPE_ERROR, "Operation deallocated while holding container content access", buf, 2u);
    }

    v30 = objc_msgSend_container(self, v28, v29);
    objc_msgSend_endContentAccess(v30, v31, v32);

    objc_msgSend_setEndContainerAccess_(self, v33, 0);
  }

  v34 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v25, v26);
  objc_msgSend_removeObserver_(v34, v35, self->_accountChangeObserver);

  v36.receiver = self;
  v36.super_class = CKDOperation;
  [(CKDOperation *)&v36 dealloc];
}

- (BOOL)allowsPowerNapScheduling
{
  v3 = objc_msgSend_container(self, a2, v2);
  v6 = objc_msgSend_entitlements(v3, v4, v5);
  hasDarkWakeNetworkReachabilityEnabledEntitlement = objc_msgSend_hasDarkWakeNetworkReachabilityEnabledEntitlement(v6, v7, v8);

  return hasDarkWakeNetworkReachabilityEnabledEntitlement;
}

- (NSString)applicationBundleIdentifierForNetworkAttribution
{
  v4 = objc_msgSend_operationInfo(self, a2, v2);
  v7 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(v4, v5, v6);

  if (!v7)
  {
    v10 = objc_msgSend_container(self, v8, v9);
    v7 = objc_msgSend_applicationBundleIdentifierForNetworkAttribution(v10, v11, v12);
  }

  return v7;
}

- (id)zoneIDsUsed
{
  if (objc_opt_respondsToSelector())
  {
    v5 = objc_msgSend_relevantZoneIDs(self, v3, v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)noteOperationDidFinishWaitingOnPCS
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (objc_msgSend_pcsWaitCount(selfCopy, v3, v4))
  {
    v7 = objc_msgSend_pcsWaitCount(selfCopy, v5, v6);
    objc_msgSend_setPcsWaitCount_(selfCopy, v8, v7 - 1);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_22506F000, v9, OS_LOG_TYPE_ERROR, "Operation is not waiting for PCS while is notified PCS is finished.", v10, 2u);
    }
  }

  objc_sync_exit(selfCopy);
}

- (id)createInactiveSerialQueue
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = objc_msgSend_QOSClass(self, v4, v5);
  v7 = dispatch_queue_attr_make_with_qos_class(v3, v6, 0);

  v8 = dispatch_queue_attr_make_initially_inactive(v7);

  v9 = MEMORY[0x277CCACA8];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v13 = objc_msgSend_stringWithFormat_(v9, v12, @"com.apple.cloudkit.%@", v11);

  v14 = v13;
  v17 = objc_msgSend_UTF8String(v14, v15, v16);
  v18 = dispatch_queue_create(v17, v8);

  return v18;
}

- (void)noteOperationWillWaitOnPCS
{
  obj = self;
  objc_sync_enter(obj);
  v4 = objc_msgSend_pcsWaitCount(obj, v2, v3);
  objc_msgSend_setPcsWaitCount_(obj, v5, v4 + 1);
  objc_sync_exit(obj);
}

- (void)applyCloudCoreSessionValidityErrorUnitTestOverridesWithKey:(id)key
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  sub_2250F59A0(v4, v6);
}

- (CKDOperation)initWithOperationInfo:(id)info container:(id)container
{
  v117 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  containerCopy = container;
  if (!infoCopy)
  {
    v104 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v104, v105, a2, self, @"CKDOperation.m", 194, @"Expected non-nil operationInfo");
  }

  v106.receiver = self;
  v106.super_class = CKDOperation;
  v11 = [(CKDOperation *)&v106 init];
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    v13 = *(v11 + 41);
    *(v11 + 41) = v12;

    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v19 = objc_msgSend_operationID(infoCopy, v17, v18);
    v21 = objc_msgSend_initWithFormat_(v14, v20, @"com.apple.cloudkit.%@.%@", v16, v19);

    v24 = objc_msgSend_parentOperation(infoCopy, v22, v23);
    objc_storeWeak(v11 + 40, v24);

    objc_storeStrong(v11 + 42, container);
    v25 = objc_opt_new();
    v26 = *(v11 + 48);
    *(v11 + 48) = v25;

    v27 = objc_opt_new();
    v28 = *(v11 + 49);
    *(v11 + 49) = v27;

    v29 = objc_opt_new();
    v30 = *(v11 + 50);
    *(v11 + 50) = v29;

    *(v11 + 34) = 1;
    v31 = dispatch_group_create();
    v32 = *(v11 + 47);
    *(v11 + 47) = v31;

    v33 = dispatch_group_create();
    v34 = *(v11 + 51);
    *(v11 + 51) = v33;

    objc_msgSend_UTF8String(v21, v35, v36);
    v37 = os_transaction_create();
    v38 = *(v11 + 54);
    *(v11 + 54) = v37;

    v39 = objc_alloc(MEMORY[0x277CBC6C0]);
    v40 = MEMORY[0x277CBC850];
    v42 = objc_msgSend_initWithLog_(v39, v41, *MEMORY[0x277CBC850]);
    v43 = *(v11 + 55);
    *(v11 + 55) = v42;

    objc_msgSend__ensureOperationGroup(v11, v44, v45);
    if (!infoCopy)
    {
      infoCopy = objc_opt_new();
      objc_msgSend_setRequestOriginator_(infoCopy, v48, 1);
    }

    if (!objc_msgSend_requestOriginator(infoCopy, v46, v47))
    {
      objc_msgSend_setRequestOriginator_(infoCopy, v49, 1);
    }

    objc_storeStrong(v11 + 46, infoCopy);
    objc_msgSend_configureQualityOfServiceFromOperationInfo_(v11, v50, infoCopy);
    v53 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v51, v52);
    if (objc_msgSend_useEncryption(v53, v54, v55))
    {
      v58 = objc_msgSend_options(containerCopy, v56, v57);
      v11[292] = objc_msgSend_bypassPCSEncryption(v58, v59, v60) ^ 1;
    }

    else
    {
      v11[292] = 0;
    }

    v61 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_msgSend_qualityOfService(v11, v62, v63);
    v64 = CKQoSClassFromNSQualityOfService();
    v65 = dispatch_queue_attr_make_with_qos_class(v61, v64, 0);

    v66 = dispatch_queue_attr_make_initially_inactive(v65);

    v69 = objc_msgSend_UTF8String(v21, v67, v68);
    v70 = dispatch_queue_create(v69, v66);
    v71 = *(v11 + 43);
    *(v11 + 43) = v70;

    dispatch_queue_set_specific(*(v11 + 43), v11 + 344, 1, 0);
    if ((objc_msgSend_isCloudKitSupportOperation(v11, v72, v73) & 1) == 0)
    {
      v76 = *(v11 + 43);
      v77 = objc_msgSend_qualityOfService(v11, v74, v75);
      v79 = objc_msgSend__globalOperationCallbackQueueForQOS_(CKDOperation, v78, v77);
      dispatch_set_target_queue(v76, v79);
    }

    dispatch_activate(*(v11 + 43));
    v80 = [CKDOperationCallbackProxy alloc];
    v83 = objc_msgSend_callbackProxyEndpoint(infoCopy, v81, v82);
    v85 = objc_msgSend_initWithEndpoint_(v80, v84, v83);
    v86 = *(v11 + 39);
    *(v11 + 39) = v85;

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v87 = *v40;
    if (os_log_type_enabled(*v40, OS_LOG_TYPE_DEFAULT))
    {
      v88 = v87;
      v91 = objc_msgSend_usesBackgroundSession(v11, v89, v90);
      v94 = objc_msgSend_allowsCellularAccess(v11, v92, v93);
      v97 = objc_msgSend_allowsExpensiveNetworkAccess(v11, v95, v96);
      v100 = objc_msgSend_qualityOfService(v11, v98, v99);
      *buf = 134219008;
      v108 = containerCopy;
      v109 = 1024;
      v110 = v91;
      v111 = 1024;
      v112 = v94;
      v113 = 1024;
      v114 = v97;
      v115 = 1024;
      v116 = v100;
      _os_log_impl(&dword_22506F000, v88, OS_LOG_TYPE_DEFAULT, "Initialized with container %p. Background: %d, cellular: %d, expensive: %d, QOS: 0x%x", buf, 0x24u);
    }

    v101 = objc_opt_new();
    v102 = *(v11 + 32);
    *(v11 + 32) = v101;
  }

  return v11;
}

- (id)activityCreate
{
  v2 = _os_activity_create(&dword_22506F000, "daemon/?", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (id)createSerialQueue
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = objc_msgSend_QOSClass(self, v4, v5);
  v7 = dispatch_queue_attr_make_with_qos_class(v3, v6, 0);

  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v12 = objc_msgSend_stringWithFormat_(v8, v11, @"com.apple.cloudkit.%@", v10);

  v13 = v12;
  v16 = objc_msgSend_UTF8String(v13, v14, v15);
  v17 = dispatch_queue_create(v16, v7);

  return v17;
}

- (id)createConcurrentQueue
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = objc_msgSend_QOSClass(self, v4, v5);
  v7 = dispatch_queue_attr_make_with_qos_class(v3, v6, 0);

  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v12 = objc_msgSend_stringWithFormat_(v8, v11, @"com.apple.cloudkit.%@", v10);

  v13 = v12;
  v16 = objc_msgSend_UTF8String(v13, v14, v15);
  v17 = dispatch_queue_create(v16, v7);

  return v17;
}

- (id)createInactiveConcurrentQueue
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = objc_msgSend_QOSClass(self, v4, v5);
  v7 = dispatch_queue_attr_make_with_qos_class(v3, v6, 0);

  v8 = dispatch_queue_attr_make_initially_inactive(v7);

  v9 = MEMORY[0x277CCACA8];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v13 = objc_msgSend_stringWithFormat_(v9, v12, @"com.apple.cloudkit.%@", v11);

  v14 = v13;
  v17 = objc_msgSend_UTF8String(v14, v15, v16);
  v18 = dispatch_queue_create(v17, v8);

  return v18;
}

- (int64_t)clientQueuePriority
{
  v3 = objc_msgSend_operationInfo(self, a2, v2);
  v6 = objc_msgSend_clientQueuePriority(v3, v4, v5);

  return v6;
}

- (CKOperationMMCSRequestOptions)MMCSRequestOptions
{
  v3 = objc_msgSend_operationInfo(self, a2, v2);
  v6 = objc_msgSend_MMCSRequestOptions(v3, v4, v5);

  return v6;
}

- (NSDictionary)unitTestOverrides
{
  if ((*MEMORY[0x277CBC810] & 1) == 0)
  {
    v13 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, v2);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v14, a2, self, @"CKDOperation.m", 388, @"Only suitable for testing: %s:%d", "/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/Operations/CKDOperation.m", 388);
  }

  v4 = objc_msgSend_operationInfo(self, a2, v2);
  v7 = objc_msgSend_resolvedConfiguration(v4, v5, v6);
  v10 = objc_msgSend_unitTestOverrides(v7, v8, v9);

  return v10;
}

- (void)addUnitTestOverrides:(id)overrides
{
  overridesCopy = overrides;
  v11 = objc_msgSend_operationInfo(self, v5, v6);
  v9 = objc_msgSend_resolvedConfiguration(v11, v7, v8);
  objc_msgSend_addUnitTestOverrides_(v9, v10, overridesCopy);
}

- (BOOL)checkAndClearUnitTestOverrides:(id)overrides
{
  overridesCopy = overrides;
  if ((*MEMORY[0x277CBC810] & 1) == 0)
  {
    v26 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v26, v27, a2, self, @"CKDOperation.m", 397, @"Only suitable for testing: %s:%d", "/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/Operations/CKDOperation.m", 397);
  }

  v8 = objc_msgSend_operationInfo(self, v5, v6);
  v11 = objc_msgSend_resolvedConfiguration(v8, v9, v10);
  v14 = objc_msgSend_unitTestOverrides(v11, v12, v13);
  v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, overridesCopy);
  v17 = v16 != 0;

  v20 = objc_msgSend_operationInfo(self, v18, v19);
  v23 = objc_msgSend_resolvedConfiguration(v20, v21, v22);
  objc_msgSend_removeUnitTestOverride_(v23, v24, overridesCopy);

  return v17;
}

- (NSString)authPromptReason
{
  v3 = objc_msgSend_operationInfo(self, a2, v2);
  v6 = objc_msgSend_authPromptReason(v3, v4, v5);

  return v6;
}

- (NSNumber)cacheDeleteAvailableSpaceClass
{
  v3 = objc_msgSend_operationInfo(self, a2, v2);
  v6 = objc_msgSend_cacheDeleteAvailableSpaceClass(v3, v4, v5);

  return v6;
}

- (id)CKDescriptionPropertiesWithPublic:(BOOL)public private:(BOOL)private shouldExpand:(BOOL)expand
{
  expandCopy = expand;
  privateCopy = private;
  publicCopy = public;
  v11 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x277CBEB38], a2, 10);
  if (publicCopy)
  {
    v223 = publicCopy;
    v224 = expandCopy;
    v12 = objc_msgSend_operationID(self, v9, v10);
    objc_msgSend_CKAddPropertySafelyForKey_value_(v11, v13, @"operationID", v12);

    v16 = objc_msgSend_state(self, v14, v15);
    if (v16 != 1)
    {
      v18 = v16;
      v19 = objc_opt_class();
      v21 = objc_msgSend_nameForState_(v19, v20, v18);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v11, v22, @"state", v21);
    }

    v23 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v17, 3);
    if (objc_msgSend_isExecuting(self, v24, v25))
    {
      objc_msgSend_addObject_(v23, v26, @"executing");
    }

    if (objc_msgSend_isFinished(self, v26, v27))
    {
      objc_msgSend_addObject_(v23, v28, @"finished");
    }

    if (objc_msgSend_isCancelled(self, v28, v29))
    {
      objc_msgSend_addObject_(v23, v30, @"cancelled");
    }

    if (objc_msgSend_count(v23, v30, v31))
    {
      v34 = objc_msgSend_componentsJoinedByString_(v23, v32, @"|");
      objc_msgSend_CKAddPropertySafelyForKey_value_(v11, v35, @"stateFlags", v34);
    }

    objc_msgSend_qualityOfService(self, v32, v33);
    v36 = CKStringForQOS();
    objc_msgSend_CKAddPropertySafelyForKey_value_(v11, v37, @"qos", v36);

    v40 = objc_msgSend_requestUUIDs(self, v38, v39);
    objc_sync_enter(v40);
    v43 = objc_msgSend_requestUUIDs(self, v41, v42);
    v46 = objc_msgSend_count(v43, v44, v45);

    if (v46)
    {
      v49 = MEMORY[0x277CCACA8];
      v50 = objc_msgSend_requestUUIDs(self, v47, v48);
      v52 = objc_msgSend_componentsJoinedByString_(v50, v51, @", ");
      v54 = objc_msgSend_stringWithFormat_(v49, v53, @"[%@]", v52);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v11, v55, @"requestIDs", v54);
    }

    objc_sync_exit(v40);

    v57 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v56, 3);
    if (objc_msgSend_usesBackgroundSession(self, v58, v59))
    {
      objc_msgSend_addObject_(v57, v60, @"background");
    }

    if (objc_msgSend_allowsCellularAccess(self, v60, v61))
    {
      objc_msgSend_addObject_(v57, v62, @"allows-cellular");
    }

    if (objc_msgSend_allowsExpensiveNetworkAccess(self, v62, v63))
    {
      objc_msgSend_addObject_(v57, v64, @"allows-expensive");
    }

    if (objc_msgSend_isLongLived(self, v64, v65))
    {
      objc_msgSend_addObject_(v57, v66, @"long-lived");
    }

    if (objc_msgSend_count(v57, v66, v67))
    {
      v70 = objc_msgSend_componentsJoinedByString_(v57, v68, @"|");
      objc_msgSend_CKAddPropertySafelyForKey_value_(v11, v71, @"flags", v70);
    }

    if (objc_msgSend_isWaitingOnAuthToken(self, v68, v69))
    {
      objc_msgSend_addObject_(v57, v72, @"waiting-for-auth-token");
    }

    v74 = MEMORY[0x277CCABB0];
    v75 = objc_msgSend_startDate(self, v72, v73);
    objc_msgSend_timeIntervalSinceNow(v75, v76, v77);
    v81 = objc_msgSend_numberWithDouble_(v74, v79, v80, -v78);
    v83 = objc_msgSend_CKRoundedToMaximumDecimalPlaces_(v81, v82, 3);
    objc_msgSend_CKAddPropertySafelyForKey_value_(v11, v84, @"runningFor", v83);

    v87 = objc_msgSend_finishedChildOperationIDs(self, v85, v86);
    objc_sync_enter(v87);
    v90 = objc_msgSend_finishedChildOperationIDs(self, v88, v89);
    v93 = objc_msgSend_count(v90, v91, v92);

    if (v93)
    {
      v96 = MEMORY[0x277CCACA8];
      v97 = objc_msgSend_finishedChildOperationIDs(self, v94, v95);
      v99 = objc_msgSend_componentsJoinedByString_(v97, v98, @", ");
      v101 = objc_msgSend_stringWithFormat_(v96, v100, @"[%@]", v99);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v11, v102, @"finishedChildOpIDs", v101);
    }

    objc_sync_exit(v87);

    v105 = objc_msgSend_childOperations(self, v103, v104);
    objc_sync_enter(v105);
    v108 = objc_msgSend_childOperations(self, v106, v107);
    v111 = objc_msgSend_copy(v108, v109, v110);

    objc_sync_exit(v105);
    if (objc_msgSend_count(v111, v112, v113))
    {
      v116 = objc_msgSend_CKMap_(v111, v114, &unk_28385D8E0);
      v117 = MEMORY[0x277CCACA8];
      v119 = objc_msgSend_componentsJoinedByString_(v116, v118, @", ");
      v121 = objc_msgSend_stringWithFormat_(v117, v120, @"[%@]", v119);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v11, v122, @"childOps", v121);
    }

    v125 = objc_msgSend_operationGroupID(self, v114, v115);
    if (v125)
    {
      objc_msgSend_CKAddPropertySafelyForKey_value_(v11, v123, @"operationGroupID", v125);
    }

    v126 = objc_msgSend_operationGroupName(self, v123, v124);
    v129 = v126;
    if (v126)
    {
      if (objc_msgSend_length(v126, v127, v128) <= 0x80)
      {
        v131 = v129;
      }

      else
      {
        v131 = objc_msgSend_substringToIndex_(v129, v130, 128);
      }

      v134 = v131;
      v135 = MEMORY[0x277CCACA8];
      v136 = objc_msgSend_length(v129, v132, v133);
      v138 = &stru_28385ED00;
      if (v136 > 0x80)
      {
        v138 = @"...";
      }

      v139 = objc_msgSend_stringWithFormat_(v135, v137, @"%@%@", v134, v138);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v11, v140, @"operationGroupName", v139);
    }

    v142 = objc_msgSend_operationGroupQuantityNumber(self, v127, v128);
    if (v142)
    {
      objc_msgSend_CKAddPropertySafelyForKey_value_(v11, v141, @"operationGroupQuantityNumber", v142);
    }

    publicCopy = v223;
    expandCopy = v224;
  }

  if (privateCopy)
  {
    v143 = objc_msgSend_container(self, v9, v10);
    v146 = objc_msgSend_account(v143, v144, v145);
    v149 = objc_msgSend_accountID(v146, v147, v148);

    if (v149)
    {
      objc_msgSend_CKAddPropertySafelyForKey_value_(v11, v150, @"currentAccountID", v149);
    }

    if (objc_msgSend_isSupported(MEMORY[0x277CBC558], v150, v151))
    {
      v154 = objc_msgSend_currentPersona(MEMORY[0x277CBC558], v152, v153);
      v157 = v154;
      if (v154)
      {
        v158 = objc_msgSend_ckShortDescription(v154, v155, v156);
        objc_msgSend_CKAddPropertySafelyForKey_value_(v11, v159, @"currentPersona", v158);
      }

      else
      {
        objc_msgSend_CKAddPropertySafelyForKey_value_(v11, v155, @"currentPersona", @"nilPersonaValue");
      }
    }

    v160 = objc_msgSend_operationInfo(self, v152, v153);
    v163 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(v160, v161, v162);

    if (v163)
    {
      v166 = objc_msgSend_operationInfo(self, v164, v165);
      v169 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(v166, v167, v168);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v11, v170, @"applicationBundleIdentifierOverrideForContainerAccess", v169);
    }

    v171 = objc_msgSend_operationInfo(self, v164, v165);
    v174 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(v171, v172, v173);

    if (v174)
    {
      v177 = objc_msgSend_operationInfo(self, v175, v176);
      v180 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(v177, v178, v179);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v11, v181, @"applicationBundleIdentifierOverrideForNetworkAttribution", v180);
    }

    v182 = objc_msgSend_sourceApplicationSecondaryIdentifier(self, v175, v176);

    if (v182)
    {
      v185 = objc_msgSend_sourceApplicationSecondaryIdentifier(self, v183, v184);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v11, v186, @"applicationSecondaryID", v185);
    }

    v187 = objc_msgSend_privacyProxyFailClosedOverride(self, v183, v184);

    if (v187)
    {
      v190 = objc_msgSend_privacyProxyFailClosedOverride(self, v188, v189);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v11, v191, @"privacyProxyFailClosedOverride", v190);
    }

    v192 = objc_msgSend_containerID(v143, v188, v189);
    v195 = v192;
    if (v192)
    {
      v196 = objc_msgSend_containerIdentifier(v192, v193, v194);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v11, v197, @"containerID", v196);
    }

    v198 = objc_msgSend_request(self, v193, v194);

    if (v198)
    {
      v201 = objc_msgSend_request(self, v199, v200);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v11, v202, @"request", v201);
    }

    os_unfair_recursive_lock_lock_with_options();
    MMCSMetrics = self->_MMCSMetrics;
    if (MMCSMetrics)
    {
      v205 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(MMCSMetrics, v203, publicCopy, 1, expandCopy);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v11, v206, @"MMCSMetrics", v205);
    }

    os_unfair_recursive_lock_unlock();
    if (*MEMORY[0x277CBC810] == 1)
    {
      v209 = objc_msgSend_unitTestOverrides(self, v207, v208);
      v212 = objc_msgSend_allKeys(v209, v210, v211);
      v215 = objc_msgSend_count(v212, v213, v214);

      if (v215)
      {
        v218 = objc_msgSend_unitTestOverrides(self, v216, v217);
        v220 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v218, v219, publicCopy, 1, expandCopy);
        objc_msgSend_CKAddPropertySafelyForKey_value_(v11, v221, @"unitTestOverrides", v220);
      }
    }
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    v7 = equalCopy;
    v10 = objc_msgSend_operationID(self, v8, v9);
    v13 = objc_msgSend_operationID(v7, v11, v12);

    isEqualToString = objc_msgSend_isEqualToString_(v10, v14, v13);
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

- (void)setParentOperation:(id)operation
{
  v12 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_parentOperation);

  if (WeakRetained != operationCopy)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v7 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v8 = 134218240;
      v9 = selfCopy;
      v10 = 2048;
      v11 = operationCopy;
      _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "Setting parent operation of %p to %p", &v8, 0x16u);
    }

    objc_storeWeak(&selfCopy->_parentOperation, operationCopy);
  }

  objc_sync_exit(selfCopy);
}

- (void)combineMetricsWithOperation:(id)operation
{
  v32[1] = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  os_unfair_recursive_lock_lock_with_options();
  v7 = objc_msgSend_copy(operationCopy[32], v5, v6);
  v10 = objc_msgSend_copy(operationCopy[33], v8, v9);
  os_unfair_recursive_lock_unlock();
  os_unfair_recursive_lock_lock_with_options();
  objc_msgSend_addCKSpecificMetricsFromMetrics_(self->_cloudKitMetrics, v11, v7);
  if (v10)
  {
    if (!self->_MMCSMetrics)
    {
      v13 = objc_opt_new();
      MMCSMetrics = self->_MMCSMetrics;
      self->_MMCSMetrics = v13;
    }

    v32[0] = v10;
    v15 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v12, v32, 1);
    MMCSOperationMetricCombineMetrics();
  }

  os_unfair_recursive_lock_unlock();
  v18 = objc_msgSend_requestUUIDs(operationCopy, v16, v17);
  objc_sync_enter(v18);
  v21 = objc_msgSend_requestUUIDs(operationCopy, v19, v20);
  v24 = objc_msgSend_copy(v21, v22, v23);

  objc_sync_exit(v18);
  v27 = objc_msgSend_requestUUIDs(self, v25, v26);
  objc_sync_enter(v27);
  v30 = objc_msgSend_requestUUIDs(self, v28, v29);
  objc_msgSend_addObjectsFromArray_(v30, v31, v24);

  objc_sync_exit(v27);
}

- (void)spawnAndRunOperationOfClass:(Class)class operationInfo:(id)info spawnQueue:(id)queue container:(id)container operationConfigurationBlock:(id)block
{
  v90 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  queueCopy = queue;
  containerCopy = container;
  blockCopy = block;
  v17 = objc_msgSend_operationInfo(self, v15, v16);
  objc_msgSend_takeValuesFromParentOperationInfo_(infoCopy, v18, v17);

  objc_msgSend_setParentOperation_(infoCopy, v19, self);
  v20 = [class alloc];
  v22 = objc_msgSend_initWithOperationInfo_container_(v20, v21, infoCopy, containerCopy);
  v25 = objc_msgSend_useEncryption(self, v23, v24);
  objc_msgSend_setUseEncryption_(v22, v26, v25);
  if (blockCopy)
  {
    blockCopy[2](blockCopy, v22);
  }

  v27 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v28 = MEMORY[0x277CBC830];
  v29 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v31 = v29;
    v34 = objc_msgSend_operationID(v22, v32, v33);
    v37 = objc_msgSend_operationID(self, v35, v36);
    *buf = 138543618;
    v87 = v34;
    v88 = 2114;
    v89 = v37;
    _os_log_impl(&dword_22506F000, v31, OS_LOG_TYPE_INFO, "Adding child operation %{public}@ to parent operation %{public}@", buf, 0x16u);
  }

  objc_msgSend_setParentOperation_(v22, v30, self);
  v40 = objc_msgSend_requestCompletedBlock(self, v38, v39);
  objc_msgSend_setRequestCompletedBlock_(v22, v41, v40);

  if (queueCopy)
  {
    objc_msgSend_addOperation_(queueCopy, v42, v22);
  }

  else if (!containerCopy || (objc_msgSend_operationQueue(containerCopy, v42, v43), v44 = objc_claimAutoreleasedReturnValue(), v45 = v44 == 0, v44, v45))
  {
    if (*v27 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v72 = *v28;
    if (os_log_type_enabled(*v28, OS_LOG_TYPE_DEBUG))
    {
      v76 = v72;
      v79 = objc_msgSend_operationID(v22, v77, v78);
      v82 = objc_msgSend_operationID(self, v80, v81);
      *buf = 138543618;
      v87 = v79;
      v88 = 2114;
      v89 = v82;
      _os_log_debug_impl(&dword_22506F000, v76, OS_LOG_TYPE_DEBUG, "Child operation %{public}@ was added to parent %{public}@ but the parent has no container or operation queue to run that operation on", buf, 0x16u);
    }

    v74 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v73, *MEMORY[0x277CBC120], 1, @"Can't run a child operation on an orphaned parent operation");
    objc_msgSend_finishWithError_(v22, v75, v74);
  }

  else
  {
    v46 = MEMORY[0x277CCA8C8];
    v84[0] = MEMORY[0x277D85DD0];
    v84[1] = 3221225472;
    v84[2] = sub_225266F88;
    v84[3] = &unk_278545898;
    v84[4] = self;
    v47 = v22;
    v85 = v47;
    v49 = objc_msgSend_blockOperationWithBlock_(v46, v48, v84);
    v52 = objc_msgSend_childOperationsGroup(self, v50, v51);
    dispatch_group_enter(v52);

    v55 = objc_msgSend_childOperations(self, v53, v54);
    objc_sync_enter(v55);
    v58 = objc_msgSend_childOperations(self, v56, v57);
    objc_msgSend_addObject_(v58, v59, v47);

    objc_sync_exit(v55);
    if (objc_msgSend_isCancelled(self, v60, v61))
    {
      objc_msgSend_cancel(v47, v62, v63);
    }

    objc_msgSend_addDependency_(v49, v62, v47);
    v66 = objc_msgSend_cleanupOperationQueue(containerCopy, v64, v65);
    objc_msgSend_addOperation_(v66, v67, v49);

    v70 = objc_msgSend_operationQueue(containerCopy, v68, v69);
    objc_msgSend_addOperation_(v70, v71, v47);
  }
}

- (void)spawnAndRunOperationOfClass:(Class)class operationInfo:(id)info spawnQueue:(id)queue operationConfigurationBlock:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  infoCopy = info;
  v16 = objc_msgSend_container(self, v13, v14);
  objc_msgSend_spawnAndRunOperationOfClass_operationInfo_spawnQueue_container_operationConfigurationBlock_(self, v15, class, infoCopy, queueCopy, v16, blockCopy);
}

+ (id)_globalOperationCallbackQueueForQOS:(int64_t)s
{
  if (qword_280D54ED8 != -1)
  {
    dispatch_once(&qword_280D54ED8, &unk_28385D900);
  }

  v4 = &qword_280D54EF0;
  v5 = &qword_280D54EE0;
  v6 = &qword_280D54EE8;
  v7 = &qword_280D54EF8;
  if (s <= 16)
  {
    v7 = &qword_280D54F00;
  }

  if (s <= 24)
  {
    v6 = v7;
  }

  if (s <= 32)
  {
    v5 = v6;
  }

  if (s != -1)
  {
    v4 = v5;
  }

  v8 = *v4;

  return v8;
}

- (void)main
{
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
  {
    *v9 = 0;
    _os_log_fault_impl(&dword_22506F000, v4, OS_LOG_TYPE_FAULT, "main was called on CKDOperation", v9, 2u);
  }

  v7 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CKDOperation.m", 1110, @"Must be called on subclass");
}

- (void)_finishInternalOnCallbackQueueWithError:(id)error
{
  v55 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = objc_msgSend_callbackQueue(self, v5, v6);
  dispatch_assert_queue_V2(v7);

  v10 = objc_msgSend_signpost(self, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_signpost(self, v11, v12);
    v16 = objc_msgSend_log(v13, v14, v15);

    v19 = objc_msgSend_signpost(self, v17, v18);
    v22 = objc_msgSend_identifier(v19, v20, v21);

    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 138412290;
      v54 = errorCopy;
      _os_signpost_emit_with_name_impl(&dword_22506F000, v16, OS_SIGNPOST_EVENT, v22, "CKDOperation", "Finishing with error: %@", buf, 0xCu);
    }
  }

  v23 = MEMORY[0x277CBC878];
  v24 = *MEMORY[0x277CBC878];
  v25 = MEMORY[0x277CBC880];
  v26 = MEMORY[0x277CBC830];
  if (errorCopy)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v24);
    }

    v27 = *MEMORY[0x277CBC850];
    if (os_log_type_enabled(*MEMORY[0x277CBC850], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEFAULT, "Operation is finishing on callback queue with an error", buf, 2u);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v24);
    }

    v30 = *v26;
    if (os_log_type_enabled(*v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v30, OS_LOG_TYPE_DEBUG, "Operation is finishing on callback queue with no error", buf, 2u);
    }
  }

  if (objc_msgSend_isExecuting(self, v28, v29))
  {
    goto LABEL_19;
  }

  if (*v25 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *v23);
  }

  v33 = *v26;
  if (os_log_type_enabled(*v26, OS_LOG_TYPE_DEBUG))
  {
    v49 = v33;
    v52 = objc_msgSend_operationID(self, v50, v51);
    *buf = 138543362;
    v54 = v52;
    _os_log_debug_impl(&dword_22506F000, v49, OS_LOG_TYPE_DEBUG, "The operation %{public}@ didn't start or is already finished", buf, 0xCu);

    if (errorCopy)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_19:
    if (errorCopy)
    {
      goto LABEL_23;
    }
  }

  if (objc_msgSend_isCancelled(self, v31, v32))
  {
    v34 = MEMORY[0x277CBC560];
    v35 = *MEMORY[0x277CBC120];
    v36 = objc_msgSend_operationID(self, v31, v32);
    errorCopy = objc_msgSend_errorWithDomain_code_format_(v34, v37, v35, 1, @"Operation %@ was cancelled", v36);
  }

  else
  {
    errorCopy = 0;
  }

LABEL_23:
  v38 = objc_msgSend_error(self, v31, v32);

  if (!v38)
  {
    objc_msgSend_setError_(self, v39, errorCopy);
  }

  if ((objc_msgSend_isFinished(self, v39, v40) & 1) == 0)
  {
    v44 = objc_msgSend_error(self, v41, v42);
    objc_msgSend__finishOnCallbackQueueWithError_(self, v48, v44);
    goto LABEL_31;
  }

  if (*v25 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *v23);
  }

  v43 = *v26;
  if (os_log_type_enabled(*v26, OS_LOG_TYPE_DEBUG))
  {
    v44 = v43;
    v47 = objc_msgSend_operationID(self, v45, v46);
    *buf = 138543362;
    v54 = v47;
    _os_log_debug_impl(&dword_22506F000, v44, OS_LOG_TYPE_DEBUG, "Ignoring _finishInternalOnCallbackQueue invocation on already-finished operation %{public}@", buf, 0xCu);

LABEL_31:
  }
}

- (void)finishWithError:(id)error
{
  v86 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = dispatch_group_create();
  v8 = objc_msgSend_childOperations(self, v6, v7);
  objc_sync_enter(v8);
  v11 = objc_msgSend_childOperations(self, v9, v10);
  v14 = objc_msgSend_count(v11, v12, v13);

  objc_sync_exit(v8);
  v15 = MEMORY[0x277CBC880];
  v16 = MEMORY[0x277CBC830];
  if (v14)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
    {
      v59 = v17;
      v62 = objc_msgSend_operationID(self, v60, v61);
      *buf = 134218242;
      v83 = v14;
      v84 = 2114;
      v85 = v62;
      _os_log_debug_impl(&dword_22506F000, v59, OS_LOG_TYPE_DEBUG, "Waiting for all (%lu) child operations to finish for operation %{public}@", buf, 0x16u);
    }
  }

  dispatch_group_enter(v5);
  v20 = objc_msgSend_childOperationsGroup(self, v18, v19);
  v23 = objc_msgSend_callbackQueue(self, v21, v22);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22526867C;
  block[3] = &unk_278545E20;
  v81 = v14;
  block[4] = self;
  v24 = v5;
  v80 = v24;
  dispatch_group_notify(v20, v23, block);

  v27 = objc_msgSend_stateTransitionGroup(self, v25, v26);
  v28 = dispatch_group_wait(v27, 0);

  if (v28)
  {
    if (*v15 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v29 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
    {
      v63 = v29;
      v66 = objc_msgSend_operationID(self, v64, v65);
      *buf = 138543362;
      v83 = v66;
      _os_log_debug_impl(&dword_22506F000, v63, OS_LOG_TYPE_DEBUG, "Operation %{public}@ is waiting for its state transition lock holders to finish before it can complete", buf, 0xCu);
    }
  }

  v30 = v28 != 0;
  dispatch_group_enter(v24);
  v33 = objc_msgSend_stateTransitionGroup(self, v31, v32);
  v36 = objc_msgSend_callbackQueue(self, v34, v35);
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = sub_2252687A0;
  v76[3] = &unk_278545AB0;
  v78 = v30;
  v76[4] = self;
  v37 = v24;
  v77 = v37;
  dispatch_group_notify(v33, v36, v76);

  v40 = objc_msgSend_clientOperationCallbackProxy(self, v38, v39);

  if (v40)
  {
    if (*v15 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v43 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEBUG))
    {
      v67 = v43;
      v70 = objc_msgSend_operationID(self, v68, v69);
      *buf = 138543362;
      v83 = v70;
      _os_log_debug_impl(&dword_22506F000, v67, OS_LOG_TYPE_DEBUG, "Waiting for all client callbacks to finish for operation %{public}@", buf, 0xCu);
    }

    dispatch_group_enter(v37);
    v46 = objc_msgSend_operationID(self, v44, v45);
    v49 = objc_msgSend_clientOperationCallbackProxy(self, v47, v48);
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = sub_2252688B8;
    v73[3] = &unk_278545898;
    v74 = v46;
    v75 = v37;
    v50 = v46;
    objc_msgSend_addBarrierBlock_(v49, v51, v73);
  }

  if (*MEMORY[0x277CBC810] == 1)
  {
    v52 = objc_msgSend_unitTestOverrides(self, v41, v42);
    v54 = objc_msgSend_objectForKeyedSubscript_(v52, v53, @"FailTheDaemonOperationWithError");

    if (v54)
    {
      objc_msgSend_setError_(self, v55, v54);
      v56 = v54;

      errorCopy = v56;
    }
  }

  v57 = objc_msgSend_callbackQueue(self, v41, v42);
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = sub_22526899C;
  v71[3] = &unk_278545898;
  v71[4] = self;
  v72 = errorCopy;
  v58 = errorCopy;
  dispatch_group_notify(v37, v57, v71);
}

- (void)_finishOnCallbackQueueWithError:(id)error
{
  v206 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = objc_msgSend_callbackQueue(self, v5, v6);
  dispatch_assert_queue_V2(v7);

  if (objc_msgSend_isFinished(self, v8, v9))
  {
    v180 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11);
    v183 = objc_msgSend_operationID(self, v181, v182);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v180, v184, a2, self, @"CKDOperation.m", 1199, @"Operation %@ was already marked as finished", v183);
  }

  v12 = objc_msgSend_signpost(self, v10, v11);

  if (v12)
  {
    v15 = objc_msgSend_signpost(self, v13, v14);
    v18 = objc_msgSend_log(v15, v16, v17);

    v21 = objc_msgSend_signpost(self, v19, v20);
    v24 = objc_msgSend_identifier(v21, v22, v23);

    if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22506F000, v18, OS_SIGNPOST_INTERVAL_END, v24, "CKDOperation", "", buf, 2u);
    }
  }

  v191[0] = MEMORY[0x277D85DD0];
  v191[1] = 3221225472;
  v191[2] = sub_225269364;
  v191[3] = &unk_2785487F8;
  v191[4] = self;
  objc_msgSend_updateCloudKitMetrics_(self, v13, v191);
  if (objc_msgSend_isEnabled(CKDPowerLogger, v25, v26))
  {
    v29 = objc_msgSend_isTopLevelDaemonOperation(self, v27, v28) ^ 1;
    if (errorCopy)
    {
      LOBYTE(v29) = 1;
    }

    if ((v29 & 1) == 0)
    {
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      v185 = CKDaemonOperationTypeForClass(v31);

      os_unfair_recursive_lock_lock_with_options();
      v32 = [CKDOperationCombinedMetrics alloc];
      v187 = objc_msgSend_initWithCloudKitMetrics_andMMCSMetrics_(v32, v33, self->_cloudKitMetrics, self->_MMCSMetrics);
      os_unfair_recursive_lock_unlock();
      v36 = objc_msgSend_topmostParentOperation(self, v34, v35);
      v188 = objc_msgSend_operationInfo(v36, v37, v38);

      v41 = objc_msgSend_group(v188, v39, v40);
      v186 = objc_msgSend_sharedLogger(CKDPowerLogger, v42, v43);
      v46 = objc_msgSend_operationID(self, v44, v45);
      v49 = objc_msgSend_operationGroupID(v41, v47, v48);
      v52 = objc_msgSend_name(v41, v50, v51);
      v55 = objc_msgSend_quantity(v41, v53, v54);
      v58 = objc_msgSend_qualityOfService(self, v56, v57);
      v61 = objc_msgSend_backgroundTaskIdentifier(v188, v59, v60);
      v64 = objc_msgSend_container(self, v62, v63);
      v67 = objc_msgSend_appContainerTuple(v64, v65, v66);
      objc_msgSend_logOperationCombinedMetrics_forOperationID_operationType_operationGroupID_operationGroupName_operationGroupQuantity_operationQualityOfService_backgroundTaskIdentifier_appContainerTuple_(v186, v68, v187, v46, v185, v49, v52, v55, v58, v61, v67);
    }
  }

  objc_msgSend_sendCoreAnalyticsEventOperationFinished(self, v27, v28);
  v71 = objc_msgSend_userSyncTask(self, v69, v70);

  if (v71)
  {
    v74 = objc_msgSend_userSyncTask(self, v72, v73);
    objc_msgSend_end(v74, v75, v76);
  }

  v77 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v78 = *MEMORY[0x277CBC850];
  if (os_log_type_enabled(*MEMORY[0x277CBC850], OS_LOG_TYPE_DEFAULT))
  {
    v79 = v78;
    v80 = objc_opt_class();
    v81 = NSStringFromClass(v80);
    v83 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v82, 1, 0, 0);
    v86 = objc_msgSend_CKPropertiesStyleString(v83, v84, v85);
    v88 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(self, v87, 0, 1, 0);
    v91 = objc_msgSend_CKPropertiesStyleString(v88, v89, v90);
    v94 = objc_msgSend_operationMetrics(self, v92, v93);
    v95 = v94;
    v96 = @" with error: ";
    *buf = 138544898;
    v97 = &stru_28385ED00;
    v193 = v81;
    v194 = 2048;
    if (errorCopy)
    {
      v97 = errorCopy;
    }

    else
    {
      v96 = &stru_28385ED00;
    }

    selfCopy = self;
    v196 = 2114;
    v197 = v86;
    v198 = 2112;
    v199 = v91;
    v200 = 2112;
    v201 = v94;
    v202 = 2114;
    v203 = v96;
    v204 = 2112;
    v205 = v97;
    _os_log_impl(&dword_22506F000, v79, OS_LOG_TYPE_DEFAULT, "Finished operation <%{public}@: %p; %{public}@, %@> metrics=%@%{public}@%@", buf, 0x48u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  request = selfCopy2->_request;
  selfCopy2->_request = 0;

  if (objc_msgSend_endContainerAccess(selfCopy2, v100, v101))
  {
    v104 = objc_msgSend_container(selfCopy2, v102, v103);
    objc_msgSend_endContentAccess(v104, v105, v106);

    objc_msgSend_setEndContainerAccess_(selfCopy2, v107, 0);
  }

  objc_sync_exit(selfCopy2);

  v110 = objc_msgSend_childOperations(selfCopy2, v108, v109);
  objc_sync_enter(v110);
  v113 = objc_msgSend_childOperations(selfCopy2, v111, v112);
  objc_msgSend_removeAllObjects(v113, v114, v115);

  objc_sync_exit(v110);
  if (errorCopy)
  {
    v118 = objc_msgSend_container(selfCopy2, v116, v117);
    v121 = objc_msgSend_options(v118, v119, v120);
    isCloudCoreSession = objc_msgSend_isCloudCoreSession(v121, v122, v123);

    if (isCloudCoreSession)
    {
      if (*v77 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v125 = MEMORY[0x277CBC830];
      v126 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v163 = v126;
        v166 = objc_msgSend_operationID(selfCopy2, v164, v165);
        v169 = objc_msgSend_container(selfCopy2, v167, v168);
        v172 = objc_msgSend_ckShortDescription(v169, v170, v171);
        *buf = 138412546;
        v193 = v166;
        v194 = 2112;
        selfCopy = v172;
        _os_log_debug_impl(&dword_22506F000, v163, OS_LOG_TYPE_DEBUG, "Checking session validity for failed operation %@ on container %@", buf, 0x16u);
      }

      v129 = objc_msgSend_container(selfCopy2, v127, v128);
      v190 = 0;
      v131 = objc_msgSend_checkSessionValidityCacheOnly_error_(v129, v130, 0, &v190);
      v132 = v190;

      if (v131)
      {
        if (*v77 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v135 = *v125;
        if (os_log_type_enabled(*v125, OS_LOG_TYPE_DEBUG))
        {
          v136 = v135;
          v139 = objc_msgSend_operationID(selfCopy2, v137, v138);
          v142 = objc_msgSend_container(selfCopy2, v140, v141);
          v145 = objc_msgSend_ckShortDescription(v142, v143, v144);
          *buf = 138412546;
          v193 = v139;
          v194 = 2112;
          selfCopy = v145;
          _os_log_debug_impl(&dword_22506F000, v136, OS_LOG_TYPE_DEBUG, "Session is still valid for failed operation %@ on container %@", buf, 0x16u);
        }
      }

      else if (objc_msgSend_isCloudCoreSessionNoLongerValidError(v132, v133, v134))
      {
        if ((objc_msgSend_isCloudCoreSessionNoLongerValidError(errorCopy, v146, v147) & 1) == 0)
        {
          if (*v77 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v148 = *v125;
          if (os_log_type_enabled(*v125, OS_LOG_TYPE_INFO))
          {
            v150 = v148;
            v153 = objc_msgSend_operationID(selfCopy2, v151, v152);
            v156 = objc_msgSend_container(selfCopy2, v154, v155);
            v159 = objc_msgSend_ckShortDescription(v156, v157, v158);
            *buf = 138412802;
            v193 = v153;
            v194 = 2112;
            selfCopy = v159;
            v196 = 2112;
            v197 = v132;
            _os_log_impl(&dword_22506F000, v150, OS_LOG_TYPE_INFO, "Container session has become invalid. Replacing the error for operation %@ on container %@ with: %@", buf, 0x20u);
          }

          objc_msgSend_setError_(selfCopy2, v149, v132);
        }
      }

      else
      {
        if (*v77 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v160 = *v125;
        if (os_log_type_enabled(*v125, OS_LOG_TYPE_ERROR))
        {
          v173 = v160;
          v176 = objc_msgSend_container(selfCopy2, v174, v175);
          v179 = objc_msgSend_ckShortDescription(v176, v177, v178);
          *buf = 138412546;
          v193 = v179;
          v194 = 2112;
          selfCopy = v132;
          _os_log_error_impl(&dword_22506F000, v173, OS_LOG_TYPE_ERROR, "Failed to validate CloudCore session for container %@: %@", buf, 0x16u);
        }
      }
    }
  }

  objc_msgSend_setState_(selfCopy2, v116, 0xFFFFFFFFLL);
  objc_msgSend_transitionToFinished(selfCopy2, v161, v162);
}

- (void)cancel
{
  v42 = *MEMORY[0x277D85DE8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v4 = objc_msgSend_osActivity(self, a2, v2);
  os_activity_scope_enter(v4, &state);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = *MEMORY[0x277CBC850];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = objc_msgSend_ckShortDescription(self, v8, v9);
    *buf = 138543874;
    v37 = v7;
    v38 = 2048;
    selfCopy = self;
    v40 = 2114;
    v41 = v10;
    _os_log_impl(&dword_22506F000, v5, OS_LOG_TYPE_DEFAULT, "Cancelling operation <%{public}@: %p; %{public}@>", buf, 0x20u);
  }

  objc_msgSend_setQueuePriority_(self, v11, 8);
  v33.receiver = self;
  v33.super_class = CKDOperation;
  [(CKDOperation *)&v33 cancel];
  v14 = objc_msgSend_request(self, v12, v13);
  objc_msgSend_cancel(v14, v15, v16);

  v19 = objc_msgSend_childOperations(self, v17, v18);
  objc_sync_enter(v19);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v22 = objc_msgSend_childOperations(self, v20, v21, 0);
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v29, v35, 16);
  if (v26)
  {
    v27 = *v30;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v30 != v27)
        {
          objc_enumerationMutation(v22);
        }

        objc_msgSend_cancel(*(*(&v29 + 1) + 8 * i), v24, v25);
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v24, &v29, v35, 16);
    }

    while (v26);
  }

  objc_sync_exit(v19);
  os_activity_scope_leave(&state);
}

- (void)setState:(unint64_t)state
{
  v41 = *MEMORY[0x277D85DE8];
  obj = self;
  objc_sync_enter(obj);
  state = obj->_state;
  if (state == state)
  {
    objc_sync_exit(obj);
  }

  else
  {
    obj->_state = state;
    objc_sync_exit(obj);

    v7 = objc_msgSend_signpost(obj, v5, v6);

    if (v7)
    {
      v10 = objc_msgSend_signpost(obj, v8, v9);
      v13 = objc_msgSend_log(v10, v11, v12);

      v16 = objc_msgSend_signpost(obj, v14, v15);
      v19 = objc_msgSend_identifier(v16, v17, v18);

      if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
      {
        v20 = objc_opt_class();
        v22 = objc_msgSend_nameForState_(v20, v21, state);
        *buf = 138543362;
        v36 = v22;
        _os_signpost_emit_with_name_impl(&dword_22506F000, v13, OS_SIGNPOST_EVENT, v19, "CKDOperation", "%{public}@", buf, 0xCu);
      }
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v23 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v24 = v23;
      v27 = objc_msgSend_operationID(obj, v25, v26);
      v28 = objc_opt_class();
      v30 = objc_msgSend_nameForState_(v28, v29, state);
      v31 = objc_opt_class();
      v33 = objc_msgSend_nameForState_(v31, v32, state);
      *buf = 138543874;
      v36 = v27;
      v37 = 2114;
      v38 = v30;
      v39 = 2114;
      v40 = v33;
      _os_log_debug_impl(&dword_22506F000, v24, OS_LOG_TYPE_DEBUG, "Operation %{public}@ transitioned from state [%{public}@] to state [%{public}@]", buf, 0x20u);
    }
  }
}

- (BOOL)makeStateTransition
{
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
  {
    *v10 = 0;
    _os_log_fault_impl(&dword_22506F000, v4, OS_LOG_TYPE_FAULT, "makeStateTransition was called on CKDOperation", v10, 2u);
  }

  v7 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CKDOperation.m", 1336, @"Must be called on subclass");

  return 0;
}

- (void)makeStateTransition:(BOOL)transition
{
  if (objc_msgSend_state(self, a2, transition) != 0xFFFFFFFFLL)
  {
    isCancelled = objc_msgSend_isCancelled(self, v6, v7);
    if ((isCancelled & 1) != 0 || transition || (objc_msgSend_error(self, v8, v9), v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
    {
      objc_msgSend_setState_(self, v8, 0xFFFFFFFFLL);
      if (isCancelled)
      {
        v15 = 0;
      }

      else
      {
        v15 = objc_msgSend_error(self, v13, v14);
      }

      v30 = v15;
      objc_msgSend_finishWithError_(self, v15, v15);
    }

    else
    {
      if (objc_msgSend_isFinished(self, v8, v12))
      {
        v28 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v16, v17);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v28, v29, a2, self, @"CKDOperation.m", 1354, @"Operation %@ is marked as finished", self);
      }

      v18 = objc_autoreleasePoolPush();
      v21 = objc_msgSend_makeStateTransition(self, v19, v20) ^ 1;
      objc_autoreleasePoolPop(v18);
      v24 = objc_msgSend_stateTransitionGroup(self, v22, v23);
      objc_msgSend_qualityOfService(self, v25, v26);
      v27 = CKGetGlobalQueue();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_225269C58;
      block[3] = &unk_278547970;
      block[4] = self;
      v32 = v21;
      dispatch_group_notify(v24, v27, block);
    }
  }
}

+ (id)nameForState:(unint64_t)state
{
  v3 = @"Unknown";
  if (state == 0xFFFFFFFF)
  {
    v3 = @"Complete";
  }

  if (state == 1)
  {
    return @"Not Started";
  }

  else
  {
    return v3;
  }
}

- (void)beginUserSyncTask
{
  v29 = objc_msgSend_currentProcess(CKDDaemonProcess, a2, v2);
  if (!objc_msgSend_processType(v29, v4, v5))
  {
    v8 = objc_msgSend_sharedManager(MEMORY[0x277D77BF8], v6, v7);
    isSharedIPad = objc_msgSend_isSharedIPad(v8, v9, v10);

    if (!isSharedIPad)
    {
      return;
    }

    v14 = MEMORY[0x277D77C28];
    v15 = objc_msgSend_operationID(self, v12, v13);
    v18 = objc_msgSend_container(self, v16, v17);
    v21 = objc_msgSend_applicationBundleID(v18, v19, v20);
    v23 = objc_msgSend_taskWithName_reason_forBundleID_(v14, v22, v15, @"CloudKit client work", v21);
    objc_msgSend_setUserSyncTask_(self, v24, v23);

    v29 = objc_msgSend_userSyncTask(self, v25, v26);
    objc_msgSend_begin(v29, v27, v28);
  }
}

- (void)operationWillWaitOnAuthToken
{
  obj = self;
  objc_sync_enter(obj);
  v4 = objc_msgSend_authTokenWaitCount(obj, v2, v3);
  objc_msgSend_setAuthTokenWaitCount_(obj, v5, v4 + 1);
  objc_sync_exit(obj);
}

- (void)operationDidFinishWaitingOnAuthToken
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (objc_msgSend_authTokenWaitCount(selfCopy, v3, v4))
  {
    v7 = objc_msgSend_authTokenWaitCount(selfCopy, v5, v6);
    objc_msgSend_setAuthTokenWaitCount_(selfCopy, v8, v7 - 1);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_22506F000, v9, OS_LOG_TYPE_ERROR, "Operation is not waiting for token renewal, while is notified token renewal is finished.", v10, 2u);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)fetchContainerScopedUserID:(id)d
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v7 = objc_msgSend_container(self, v5, v6);
  v10 = objc_msgSend_containerScopedUserID(v7, v8, v9);
  if (v10)
  {

    goto LABEL_4;
  }

  v13 = objc_msgSend_databaseScope(self, v11, v12);

  if (v13 == 1)
  {
LABEL_4:
    if (dCopy)
    {
      dCopy[2](dCopy, 0);
    }

    goto LABEL_11;
  }

  objc_initWeak(&location, self);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v14 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v21 = objc_msgSend_operationID(self, v15, v16);
    *buf = 138543362;
    v27 = v21;
    _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Fetching container scoped user identifier for operation %{public}@", buf, 0xCu);
  }

  v19 = objc_msgSend_container(self, v17, v18);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_22526A15C;
  v22[3] = &unk_27854B5C0;
  objc_copyWeak(&v24, &location);
  v23 = dCopy;
  objc_msgSend_fetchImportantUserIDsForOperation_withCompletionHandler_(v19, v20, self, v22);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
LABEL_11:
}

- (void)configureQualityOfServiceFromOperationInfo:(id)info
{
  v15 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v7 = objc_msgSend_qualityOfService(infoCopy, v5, v6);
  if (v7 == -1)
  {
    v8 = 17;
  }

  else
  {
    v8 = v7;
  }

  v9 = CKQualityOfServiceOrdering();
  if (v9 > CKQualityOfServiceOrdering() && objc_msgSend_discretionaryNetworkBehavior(infoCopy, v10, v11))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Operation %@ was assigned QoS greater than Utility but it has discretionary networking behavior. Demoting operation QoS to Utility.", &v13, 0xCu);
    }

    v8 = 17;
  }

  objc_msgSend_setQualityOfService_(self, v10, v8);
}

- (void)setQualityOfService:(int64_t)service
{
  v5 = CKQualityOfServiceOrdering();
  if (v5 > CKQualityOfServiceOrdering() && objc_msgSend_discretionaryNetworkBehavior(self, v6, v7))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_22506F000, v8, OS_LOG_TYPE_FAULT, "A CKDOperation was assigned a QoS greater than Utility but its discretionaryNetworkingBehavior is not set nonDiscretionary. A high QoS operation may end up gated on the network.", buf, 2u);
    }
  }

  v9.receiver = self;
  v9.super_class = CKDOperation;
  [(CKDOperation *)&v9 setQualityOfService:service];
}

- (void)setClientOperationCallbackProxy:(id)proxy
{
  proxyCopy = proxy;
  v8 = objc_msgSend_topmostParentOperation(self, v5, v6);
  v7 = v8[39];
  v8[39] = proxyCopy;
}

- (void)setCompletionBlock:(id)block
{
  blockCopy = block;
  objc_initWeak(&location, self);
  if (blockCopy)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_22526A6E8;
    v7[3] = &unk_278547220;
    objc_copyWeak(&v9, &location);
    v8 = blockCopy;
    v6.receiver = self;
    v6.super_class = CKDOperation;
    [(CKDOperation *)&v6 setCompletionBlock:v7];

    objc_destroyWeak(&v9);
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CKDOperation;
    [(CKDOperation *)&v5 setCompletionBlock:0];
  }

  objc_destroyWeak(&location);
}

+ (id)openFileWithCallbackProxy:(id)proxy openInfo:(id)info error:(id *)error
{
  proxyCopy = proxy;
  infoCopy = info;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_225074100;
  v42 = sub_22507360C;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_225074100;
  v36 = sub_22507360C;
  v37 = 0;
  if (proxyCopy)
  {
    v10 = dispatch_group_create();
    dispatch_group_enter(v10);
    v11 = objc_autoreleasePoolPush();
    voucher_copy_without_importance();
    voucher_adopt();
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = sub_22526AB14;
    v28 = &unk_278548068;
    v30 = &v32;
    v31 = &v38;
    v12 = v10;
    v29 = v12;
    objc_msgSend_openFileWithOpenInfo_reply_(proxyCopy, v13, infoCopy, &v25);

    objc_autoreleasePoolPop(v11);
    v14 = dispatch_time(0, 150000000000);
    if (dispatch_group_wait(v12, v14))
    {
      v16 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v15, *MEMORY[0x277CBC120], 1000, @"Daemon timed out waiting for adopter process to open file %@", infoCopy, v25, v26, v27, v28);
      v17 = v39[5];
      v39[5] = v16;

      if (error)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v21 = v33[5];
      if (v21)
      {
        v18 = v21;
        goto LABEL_14;
      }

      if (!v39[5])
      {
        v22 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v15, *MEMORY[0x277CBC120], 1000, @"Adopter failed to open file %@", infoCopy, v25, v26, v27, v28);
        v23 = v39[5];
        v39[5] = v22;
      }

      if (error)
      {
LABEL_4:
        v18 = 0;
        *error = v39[5];
LABEL_14:

        goto LABEL_15;
      }
    }

    v18 = 0;
    goto LABEL_14;
  }

  v19 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v8, *MEMORY[0x277CBC120], 1000, @"nil clientOperationCallbackProxy");
  v20 = v39[5];
  v39[5] = v19;

  v18 = 0;
  if (error)
  {
    *error = v39[5];
  }

LABEL_15:
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);

  return v18;
}

- (id)openFileWithOpenInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v9 = objc_msgSend_clientOperationCallbackProxy(self, v7, v8);
  v11 = objc_msgSend_openFileWithCallbackProxy_openInfo_error_(CKDOperation, v10, v9, infoCopy, error);

  return v11;
}

+ (BOOL)finishWithCallbackProxy:(id)proxy assetDownloadStagingInfo:(id)info fileURL:(id *)l fileHandle:(id *)handle error:(id *)error
{
  proxyCopy = proxy;
  infoCopy = info;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = sub_225074100;
  v51 = sub_22507360C;
  v52 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_225074100;
  v45 = sub_22507360C;
  v46 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_225074100;
  v39 = sub_22507360C;
  v40 = 0;
  if (proxyCopy)
  {
    handleCopy = handle;
    v14 = dispatch_group_create();
    dispatch_group_enter(v14);
    v15 = objc_autoreleasePoolPush();
    voucher_copy_without_importance();
    voucher_adopt();
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_22526AFD8;
    v30[3] = &unk_27854B5E8;
    v32 = &v41;
    v33 = &v35;
    v34 = &v47;
    v16 = v14;
    v31 = v16;
    objc_msgSend_handleFinishWithAssetDownloadStagingInfo_reply_(proxyCopy, v17, infoCopy, v30);

    objc_autoreleasePoolPop(v15);
    v18 = dispatch_time(0, 150000000000);
    if (dispatch_group_wait(v16, v18))
    {
      v20 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v19, *MEMORY[0x277CBC120], 1000, @"Daemon timed out waiting for adopter process to finish file %@", infoCopy);
      v21 = v48[5];
      v48[5] = v20;

      if (error)
      {
LABEL_4:
        v22 = 0;
        *error = v48[5];
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
      v25 = v42[5];
      if (v25)
      {
        if (l)
        {
          *l = v25;
        }

        if (handleCopy)
        {
          *handleCopy = v36[5];
        }

        v22 = v42[5] != 0;
        goto LABEL_18;
      }

      if (!v48[5])
      {
        v26 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v19, *MEMORY[0x277CBC120], 1000, @"Adopter failed to finish file %@", infoCopy);
        v27 = v48[5];
        v48[5] = v26;
      }

      if (error)
      {
        goto LABEL_4;
      }
    }

    v22 = 0;
    goto LABEL_18;
  }

  v23 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v12, *MEMORY[0x277CBC120], 1000, @"nil clientOperationCallbackProxy");
  v24 = v48[5];
  v48[5] = v23;

  v22 = 0;
  if (error)
  {
    *error = v48[5];
  }

LABEL_19:
  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);

  return v22;
}

- (BOOL)finishWithAssetDownloadStagingInfo:(id)info fileURL:(id *)l fileHandle:(id *)handle error:(id *)error
{
  infoCopy = info;
  v13 = objc_msgSend_clientOperationCallbackProxy(self, v11, v12);
  LOBYTE(error) = objc_msgSend_finishWithCallbackProxy_assetDownloadStagingInfo_fileURL_fileHandle_error_(CKDOperation, v14, v13, infoCopy, l, handle, error);

  return error;
}

- (void)setRequest:(id)request
{
  v58 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (objc_msgSend_isEqual_(requestCopy, v7, selfCopy->_request))
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    v10 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC850];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v16 = objc_msgSend_ckShortDescription(selfCopy, v14, v15);
      v19 = objc_msgSend_ckShortDescription(selfCopy->_request, v17, v18);
      v22 = objc_msgSend_ckShortDescription(requestCopy, v20, v21);
      v46 = 138544386;
      v47 = v13;
      v48 = 2048;
      v49 = selfCopy;
      v50 = 2114;
      v51 = v16;
      v52 = 2114;
      v53 = v19;
      v54 = 2114;
      v55 = v22;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEFAULT, "Operation <%{public}@: %p; %{public}@>, setting current request from %{public}@ to %{public}@", &v46, 0x34u);
    }

    objc_storeStrong(&selfCopy->_request, request);
    objc_sync_exit(selfCopy);

    if (requestCopy)
    {
      objc_msgSend_configureRequest_(selfCopy, v8, requestCopy);
      if (*v10 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v23 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v35 = v23;
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v40 = objc_msgSend_ckShortDescription(requestCopy, v38, v39);
        v41 = objc_opt_class();
        v42 = NSStringFromClass(v41);
        v45 = objc_msgSend_ckShortDescription(selfCopy, v43, v44);
        v46 = 138544642;
        v47 = v37;
        v48 = 2048;
        v49 = requestCopy;
        v50 = 2114;
        v51 = v40;
        v52 = 2114;
        v53 = v42;
        v54 = 2048;
        v55 = selfCopy;
        v56 = 2114;
        v57 = v45;
        _os_log_debug_impl(&dword_22506F000, v35, OS_LOG_TYPE_DEBUG, "Configured request <%{public}@: %p; %{public}@> for operation <%{public}@: %p; %{public}@>", &v46, 0x3Eu);
      }
    }
  }

  v24 = objc_msgSend_additionalRequestHTTPHeaders(selfCopy, v8, v9);
  objc_msgSend_setClientProvidedAdditionalHeaderValues_(requestCopy, v25, v24);

  if (*MEMORY[0x277CBC810] == 1)
  {
    v28 = objc_msgSend_unitTestOverrides(selfCopy, v26, v27);
    objc_msgSend_setUnitTestOverrides_(requestCopy, v29, v28);
  }

  if (objc_msgSend_isCancelled(selfCopy, v26, v27))
  {
    v32 = objc_msgSend_request(selfCopy, v30, v31);
    objc_msgSend_cancel(v32, v33, v34);
  }
}

- (void)configureRequest:(id)request
{
  requestCopy = request;
  v6 = objc_msgSend_requestUUIDs(self, v4, v5);
  objc_sync_enter(v6);
  v9 = objc_msgSend_requestUUIDs(self, v7, v8);
  v12 = objc_msgSend_requestUUID(requestCopy, v10, v11);
  objc_msgSend_addObject_(v9, v13, v12);

  objc_sync_exit(v6);
  objc_msgSend_updateCloudKitMetrics_(self, v14, &unk_28385D920);
}

- (void)request:(id)request didFinishWithMetrics:(id)metrics w3cNavigationTiming:(id)timing
{
  requestCopy = request;
  metricsCopy = metrics;
  timingCopy = timing;
  v15 = objc_msgSend_requestUUID(requestCopy, v11, v12);
  if (metricsCopy)
  {
    v131[0] = MEMORY[0x277D85DD0];
    v131[1] = 3221225472;
    v131[2] = sub_22526BBF4;
    v131[3] = &unk_27854B610;
    v132 = metricsCopy;
    v133 = v15;
    v134 = requestCopy;
    objc_msgSend_updateCloudKitMetrics_(self, v16, v131);
  }

  v17 = objc_msgSend_requestCompletedBlock(self, v13, v14);

  v20 = MEMORY[0x277CBC810];
  if (v17)
  {
    v21 = objc_msgSend_responseHeaders(requestCopy, v18, v19);
    v24 = objc_msgSend_container(self, v22, v23);
    v27 = objc_msgSend_options(v24, v25, v26);
    v30 = objc_msgSend_captureResponseHTTPHeaders(v27, v28, v29);

    v129 = metricsCopy;
    if ((v30 & 1) == 0)
    {

      v21 = 0;
    }

    v31 = objc_alloc(MEMORY[0x277CBC630]);
    v32 = v15;
    v33 = v15;
    v34 = timingCopy;
    v36 = objc_msgSend_initWithRequestUUID_responseHTTPHeaders_w3cTiming_(v31, v35, v33, v21, timingCopy);
    v37 = objc_opt_class();
    v38 = NSStringFromClass(v37);
    objc_msgSend_setOperationClassName_(v36, v39, v38);

    v42 = v20;
    if (*v20 == 1)
    {
      v43 = objc_msgSend_container(self, v40, v41);
      v46 = objc_msgSend_options(v43, v44, v45);
      v49 = objc_msgSend_returnRequestOperationProto(v46, v47, v48);

      if (v49)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v52 = objc_msgSend_requestOperations(requestCopy, v50, v51);
          objc_msgSend_setRequestOperations_(v36, v53, v52);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v54 = objc_msgSend_requestOperations(requestCopy, v40, v41);
          objc_msgSend_setRequestOperations_(v36, v55, v54);
        }
      }
    }

    v56 = objc_msgSend_requestCompletedBlock(self, v40, v41);
    (v56)[2](v56, v36);

    v20 = v42;
    timingCopy = v34;
    v15 = v32;
    metricsCopy = v129;
  }

  v57 = objc_msgSend_error(requestCopy, v18, v19);
  v60 = v57;
  if (v57)
  {
    v61 = objc_msgSend_domain(v57, v58, v59);
    if (objc_msgSend_isEqualToString_(v61, v62, *MEMORY[0x277CBC120]))
    {
    }

    else
    {
      v67 = objc_msgSend_domain(v60, v63, v64);
      isEqualToString = objc_msgSend_isEqualToString_(v67, v68, *MEMORY[0x277CBBF50]);

      if (!isEqualToString)
      {
        goto LABEL_38;
      }
    }

    v72 = objc_msgSend_userInfo(v60, v65, v66);
    if (*v20 != 1 || (objc_msgSend_unitTestOverrides(self, v70, v71), v73 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v73, v74, @"AllowThrottling"), v75 = objc_claimAutoreleasedReturnValue(), v78 = objc_msgSend_BOOLValue(v75, v76, v77), v75, v73, v78))
    {
      v79 = objc_msgSend_objectForKey_(v72, v70, *MEMORY[0x277CBC128]);
      v82 = objc_msgSend_integerValue(v79, v80, v81);

      if (v82 == 503 || v82 == 429)
      {
        if (objc_msgSend_operationType(self, v83, v84))
        {
          v87 = objc_msgSend_deviceContext(self, v85, v86);
          v90 = objc_msgSend_throttleManager(v87, v88, v89);

          v92 = objc_msgSend_enforcedThrottleForCriteria_willSendRequest_outThrottleError_(v90, v91, self, 0, 0);

          if (!v92)
          {
            v94 = objc_msgSend_objectForKeyedSubscript_(v72, v93, *MEMORY[0x277CBBF68]);
            v128 = v94;
            if (v94)
            {
              v97 = objc_msgSend_unsignedLongValue(v94, v95, v96);
            }

            else
            {
              v99 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v95, v96);
              v126 = objc_msgSend_defaultRetryAfter(v99, v100, v101);

              v97 = v126;
            }

            if (v97 >= 1)
            {
              v127 = v97;
              v124 = objc_alloc_init(MEMORY[0x277CBC788]);
              v104 = objc_msgSend_containerID(self, v102, v103);
              v122 = objc_msgSend_containerIdentifier(v104, v105, v106);

              v123 = objc_msgSend_operationType(self, v107, v108);
              v125 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v109, @"Device throttle: container=%@, type=%d", v122, v123);
              objc_msgSend_setLabel_(v124, v110, v125);
              objc_msgSend_setContainerIdentifier_(v124, v111, v122);
              v113 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v112, v123);
              objc_msgSend_setOperationType_(v124, v114, v113);

              v117 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x277CBEAA8], v115, v116, v127);
              objc_msgSend_setExpirationDate_(v124, v118, v117);

              if (v82 == 503)
              {
                v120 = &unk_2838C8430;
              }

              else
              {
                v120 = &unk_2838C8448;
              }

              objc_msgSend_setErrorCode_(v124, v119, v120);
              objc_msgSend_addThrottle_(v90, v121, v124);
            }
          }
        }

        else
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v98 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22506F000, v98, OS_LOG_TYPE_INFO, "Not creating a legacy throttle for operation type 'none'.", buf, 2u);
          }
        }
      }
    }
  }

LABEL_38:
}

- (void)updateCloudKitMetrics:(id)metrics
{
  metricsCopy = metrics;
  os_unfair_recursive_lock_lock_with_options();
  metricsCopy[2](metricsCopy, self->_cloudKitMetrics);

  os_unfair_recursive_lock_unlock();
}

- (void)updateMMCSMetrics:(id)metrics
{
  metricsCopy = metrics;
  os_unfair_recursive_lock_lock_with_options();
  MMCSMetrics = self->_MMCSMetrics;
  if (!MMCSMetrics)
  {
    v5 = objc_opt_new();
    v6 = self->_MMCSMetrics;
    self->_MMCSMetrics = v5;

    MMCSMetrics = self->_MMCSMetrics;
  }

  metricsCopy[2](metricsCopy, MMCSMetrics);
  os_unfair_recursive_lock_unlock();
}

- (id)_startDateString
{
  if (qword_280D54F10 != -1)
  {
    dispatch_once(&qword_280D54F10, &unk_28385D940);
  }

  v3 = *MEMORY[0x277CBC998];
  v6 = objc_msgSend_objectForKey_(qword_280D54F08, a2, *MEMORY[0x277CBC998]);
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCA968]);
    objc_msgSend_setTimeStyle_(v6, v7, 3);
    objc_msgSend_setDateStyle_(v6, v8, 1);
    objc_msgSend_setObject_forKey_(qword_280D54F08, v9, v6, v3);
  }

  v10 = objc_msgSend_startDate(self, v4, v5);

  if (v10)
  {
    v13 = objc_msgSend_startDate(self, v11, v12);
    v15 = objc_msgSend_stringFromDate_(v6, v14, v13);
  }

  else
  {
    v15 = @"(unknown)";
  }

  return v15;
}

- (id)CKStatusReportProperties
{
  v4 = objc_msgSend_parentOperation(self, a2, v2);
  v7 = objc_msgSend_container(self, v5, v6);
  v8 = objc_opt_new();
  v11 = objc_msgSend_state(self, v9, v10);
  if (v11 >= 2)
  {
    v14 = v11;
    v15 = MEMORY[0x277CCACA8];
    v16 = objc_opt_class();
    v18 = objc_msgSend_nameForState_(v16, v17, v14);
    v20 = objc_msgSend_stringWithFormat_(v15, v19, @"state: %@", v18);
    objc_msgSend_addObject_(v8, v21, v20);
  }

  if (v4)
  {
    v22 = MEMORY[0x277CCACA8];
    v23 = objc_msgSend_operationID(v4, v12, v13);
    v25 = objc_msgSend_stringWithFormat_(v22, v24, @"parent: %@", v23);
    objc_msgSend_addObject_(v8, v26, v25);
  }

  if (v7)
  {
    v27 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"container: %p", v7);
    objc_msgSend_addObject_(v8, v28, v27);
  }

  return v8;
}

- (id)statusReportWithIndent:(unint64_t)indent
{
  v184 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAB68];
  v6 = CKTabIndentAtDepth();
  selfCopy = self;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v11 = objc_msgSend_operationID(selfCopy, v9, v10);
  v13 = objc_msgSend_stringWithFormat_(v5, v12, @"%s<%@ %@ ", v6, v8, v11);

  v16 = objc_msgSend__stateFlags(selfCopy, v14, v15);
  objc_msgSend_appendFormat_(v13, v17, @"%@", v16);

  objc_msgSend_qualityOfService(selfCopy, v18, v19);
  v20 = CKStringForQOS();
  objc_msgSend_appendFormat_(v13, v21, @"QoS %@ ", v20);

  v24 = objc_msgSend_startDate(selfCopy, v22, v23);
  objc_msgSend_timeIntervalSinceNow(v24, v25, v26);

  v162 = CKDescriptionForTimeInterval();
  isWaitingOnAuthToken = objc_msgSend_isWaitingOnAuthToken(selfCopy, v27, v28);
  v30 = &stru_28385ED00;
  if (isWaitingOnAuthToken)
  {
    v30 = @", waiting for auth token";
  }

  v161 = v30;
  v33 = objc_msgSend__startDateString(selfCopy, v31, v32);
  objc_msgSend_appendFormat_(v13, v34, @"running for %@ (started %@)%@ ", v162, v33, v161);

  v164 = objc_msgSend_CKStatusReportProperties(selfCopy, v35, v36);
  if (objc_msgSend_count(v164, v37, v38))
  {
    v40 = objc_msgSend_componentsJoinedByString_(v164, v39, @", ");
    objc_msgSend_appendFormat_(v13, v41, @"%@ ", v40);
  }

  objc_msgSend_appendString_(v13, v39, @">\n");
  v44 = objc_msgSend_childOperations(selfCopy, v42, v43);
  objc_sync_enter(v44);
  v47 = objc_msgSend_childOperations(selfCopy, v45, v46);
  v50 = objc_msgSend_copy(v47, v48, v49);

  objc_sync_exit(v44);
  if (objc_msgSend_count(v50, v51, v52))
  {
    v55 = CKTabIndentAtDepth();
    objc_msgSend_appendFormat_(v13, v56, @"%sRunning Child Operations: {\n", v55);
    v179 = 0u;
    v180 = 0u;
    v177 = 0u;
    v178 = 0u;
    v57 = v50;
    v58 = v50;
    v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v59, &v177, v183, 16);
    if (v61)
    {
      v62 = *v178;
      do
      {
        for (i = 0; i != v61; ++i)
        {
          if (*v178 != v62)
          {
            objc_enumerationMutation(v58);
          }

          v64 = objc_msgSend_statusReportWithIndent_(*(*(&v177 + 1) + 8 * i), v60, indent + 1);
          objc_msgSend_appendFormat_(v13, v65, @"%@", v64);
        }

        v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v58, v60, &v177, v183, 16);
      }

      while (v61);
    }

    v66 = CKTabIndentAtDepth();
    objc_msgSend_appendFormat_(v13, v67, @"%s}\n", v66);
    v50 = v57;
  }

  v160 = v50;
  v163 = objc_msgSend_request(selfCopy, v53, v54);
  if (v163)
  {
    v70 = CKTabIndentAtDepth();
    objc_msgSend_appendFormat_(v13, v71, @"%sRequest: {\n", v70);
    v73 = objc_msgSend_statusReportWithIndent_(v163, v72, indent + 1);
    objc_msgSend_appendFormat_(v13, v74, @"%@", v73);

    v75 = CKTabIndentAtDepth();
    objc_msgSend_appendFormat_(v13, v76, @"%s}\n", v75);
  }

  v168 = objc_msgSend_CKStatusReportLogGroups(selfCopy, v68, v69);
  if (objc_msgSend_count(v168, v77, v78))
  {
    v175 = 0u;
    v176 = 0u;
    v173 = 0u;
    v174 = 0u;
    obj = objc_msgSend_allKeys(v168, v79, v80);
    v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v81, &v173, v182, 16);
    if (v83)
    {
      v167 = *v174;
      do
      {
        for (j = 0; j != v83; ++j)
        {
          if (*v174 != v167)
          {
            objc_enumerationMutation(obj);
          }

          v85 = *(*(&v173 + 1) + 8 * j);
          v86 = objc_msgSend_objectForKeyedSubscript_(v168, v82, v85);
          v87 = CKTabIndentAtDepth();
          objc_msgSend_appendFormat_(v13, v88, @"%s%@: {\n", v87, v85);
          v171 = 0u;
          v172 = 0u;
          v169 = 0u;
          v170 = 0u;
          v89 = v86;
          v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(v89, v90, &v169, v181, 16);
          if (v91)
          {
            v92 = *v170;
            do
            {
              for (k = 0; k != v91; ++k)
              {
                if (*v170 != v92)
                {
                  objc_enumerationMutation(v89);
                }

                v94 = *(*(&v169 + 1) + 8 * k);
                v95 = CKTabIndentAtDepth();
                objc_msgSend_appendFormat_(v13, v96, @"%s%@\n", v95, v94);
              }

              v91 = objc_msgSend_countByEnumeratingWithState_objects_count_(v89, v97, &v169, v181, 16);
            }

            while (v91);
          }

          v98 = CKTabIndentAtDepth();
          objc_msgSend_appendFormat_(v13, v99, @"%s}\n", v98);
        }

        v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v82, &v173, v182, 16);
      }

      while (v83);
    }
  }

  v100 = objc_msgSend_requestUUIDs(selfCopy, v79, v80);
  objc_sync_enter(v100);
  v103 = objc_msgSend_requestUUIDs(selfCopy, v101, v102);
  v106 = objc_msgSend_count(v103, v104, v105);

  if (v106)
  {
    v107 = CKTabIndentAtDepth();
    v110 = objc_msgSend_requestUUIDs(selfCopy, v108, v109);
    v113 = objc_msgSend_count(v110, v111, v112);
    v116 = objc_msgSend_requestUUIDs(selfCopy, v114, v115);
    v118 = objc_msgSend_componentsJoinedByString_(v116, v117, @", ");
    objc_msgSend_appendFormat_(v13, v119, @"%s%lu Previous Requests: [%@]\n", v107, v113, v118);
  }

  objc_sync_exit(v100);

  v122 = objc_msgSend_finishedChildOperationIDs(selfCopy, v120, v121);
  objc_sync_enter(v122);
  v125 = objc_msgSend_finishedChildOperationIDs(selfCopy, v123, v124);
  v128 = objc_msgSend_count(v125, v126, v127);

  if (v128)
  {
    v129 = CKTabIndentAtDepth();
    v132 = objc_msgSend_finishedChildOperationIDs(selfCopy, v130, v131);
    v135 = objc_msgSend_count(v132, v133, v134);
    v138 = objc_msgSend_finishedChildOperationIDs(selfCopy, v136, v137);
    v140 = objc_msgSend_componentsJoinedByString_(v138, v139, @", ");
    objc_msgSend_appendFormat_(v13, v141, @"%s%lu Finished Child Operations: [%@]\n", v129, v135, v140);
  }

  objc_sync_exit(v122);

  os_unfair_recursive_lock_lock_with_options();
  v142 = CKTabIndentAtDepth();
  objc_msgSend_appendFormat_(v13, v143, @"%sCloudKit metrics: {\n", v142);
  v144 = CKTabIndentAtDepth();
  objc_msgSend_appendFormat_(v13, v145, @"%s%@\n", v144, selfCopy->_cloudKitMetrics);
  v146 = CKTabIndentAtDepth();
  objc_msgSend_appendFormat_(v13, v147, @"%s}\n", v146);
  if (selfCopy->_MMCSMetrics)
  {
    v148 = CKTabIndentAtDepth();
    objc_msgSend_appendFormat_(v13, v149, @"%sMMCS metrics: {\n", v148);
    v150 = CKTabIndentAtDepth();
    objc_msgSend_appendFormat_(v13, v151, @"%s%@\n", v150, selfCopy->_MMCSMetrics);
    v152 = CKTabIndentAtDepth();
    objc_msgSend_appendFormat_(v13, v153, @"%s}\n", v152);
  }

  os_unfair_recursive_lock_unlock();
  v156 = objc_msgSend_error(selfCopy, v154, v155);
  if (v156)
  {
    v157 = CKTabIndentAtDepth();
    objc_msgSend_appendFormat_(v13, v158, @"%sError: %@\n", v157, v156);
  }

  return v13;
}

- (BOOL)isNetworkingBehaviorEquivalentForOperation:(id)operation
{
  operationCopy = operation;
  v7 = objc_msgSend_operationInfo(self, v5, v6);
  v10 = objc_msgSend_allowsCellularAccess(v7, v8, v9);
  v13 = objc_msgSend_operationInfo(operationCopy, v11, v12);
  v16 = objc_msgSend_allowsCellularAccess(v13, v14, v15);

  if (v10 == v16 && (objc_msgSend_operationInfo(self, v17, v18), v19 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend_allowsExpensiveNetworkAccess(v19, v20, v21), objc_msgSend_operationInfo(operationCopy, v23, v24), v25 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend_allowsExpensiveNetworkAccess(v25, v26, v27), v25, v19, v22 == v28) && (v31 = objc_msgSend_usesBackgroundSession(self, v29, v30), v31 == objc_msgSend_usesBackgroundSession(operationCopy, v32, v33)) && (v36 = objc_msgSend_resolvedAutomaticallyRetryNetworkFailures(self, v34, v35), v36 == objc_msgSend_resolvedAutomaticallyRetryNetworkFailures(operationCopy, v37, v38)) && (v41 = objc_msgSend_resolvedDiscretionaryNetworkBehavior(self, v39, v40), v41 == objc_msgSend_resolvedDiscretionaryNetworkBehavior(operationCopy, v42, v43)) && (v46 = objc_msgSend_duetPreClearedMode(self, v44, v45), v46 == objc_msgSend_duetPreClearedMode(operationCopy, v47, v48)) && (objc_msgSend_applicationBundleIdentifierForNetworkAttribution(self, v49, v50), v51 = objc_claimAutoreleasedReturnValue(), objc_msgSend_applicationBundleIdentifierForNetworkAttribution(operationCopy, v52, v53), v54 = objc_claimAutoreleasedReturnValue(), v55 = CKObjectsAreBothNilOrEqual(), v54, v51, v55) && (objc_msgSend_sourceApplicationSecondaryIdentifier(self, v56, v57), v58 = objc_claimAutoreleasedReturnValue(), objc_msgSend_sourceApplicationSecondaryIdentifier(operationCopy, v59, v60), v61 = objc_claimAutoreleasedReturnValue(), v62 = CKObjectsAreBothNilOrEqual(), v61, v58, v62))
  {
    v65 = objc_msgSend_privacyProxyFailClosedOverride(self, v63, v64);
    v68 = objc_msgSend_privacyProxyFailClosedOverride(operationCopy, v66, v67);
    v69 = CKObjectsAreBothNilOrEqual();
  }

  else
  {
    v69 = 0;
  }

  return v69;
}

- (id)baseOperationAndErrorInfoCoreAnalyticsPayloadWithError:(id)error
{
  errorCopy = error;
  v7 = objc_msgSend_container(self, v5, v6);
  v10 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v8, v9);
  v13 = objc_msgSend_containerID(v7, v11, v12);
  v16 = objc_msgSend_containerIdentifier(v13, v14, v15);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v17, v16, 0x28387A420);

  v18 = MEMORY[0x277CCABB0];
  v21 = objc_msgSend_containerID(v7, v19, v20);
  v24 = objc_msgSend_environment(v21, v22, v23);
  v26 = objc_msgSend_numberWithInteger_(v18, v25, v24);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v27, v26, 0x2838761E0);

  v30 = objc_msgSend_containerID(v7, v28, v29);
  objc_msgSend_environment(v30, v31, v32);
  v33 = CKContainerEnvironmentString();
  objc_msgSend_setObject_forKeyedSubscript_(v10, v34, v33, 0x28387E420);

  v35 = objc_opt_class();
  v36 = NSStringFromClass(v35);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v37, v36, 0x28387E440);

  v38 = MEMORY[0x277CCABB0];
  v41 = objc_msgSend_qualityOfService(self, v39, v40);
  v43 = objc_msgSend_numberWithInteger_(v38, v42, v41);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v44, v43, 0x28387E460);

  objc_msgSend_qualityOfService(self, v45, v46);
  v47 = CKStringForQOS();
  objc_msgSend_setObject_forKeyedSubscript_(v10, v48, v47, 0x28387E480);

  v51 = objc_msgSend_applicationBundleID(v7, v49, v50);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v52, v51, 0x28387D820);

  v55 = objc_msgSend_operationInfo(self, v53, v54);
  v58 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(v55, v56, v57);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v59, v58, 0x28386DF20);

  v62 = objc_msgSend_operationInfo(self, v60, v61);
  v65 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(v62, v63, v64);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v66, v65, 0x28386DF40);

  v69 = objc_msgSend_operationGroupQuantityNumber(self, v67, v68);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v70, v69, 0x283872F00);

  v73 = objc_msgSend_operationGroupName(self, v71, v72);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v74, v73, 0x28386DE60);

  v77 = objc_msgSend_operationInfo(self, v75, v76);
  v80 = objc_msgSend_requestOriginator(v77, v78, v79);

  if ((v80 - 1) > 4)
  {
    v82 = @"unknown";
    objc_msgSend_setObject_forKeyedSubscript_(v10, v81, @"unknown", 0x283877300);
  }

  else
  {
    v82 = off_27854B630[v80 - 1];
    objc_msgSend_setObject_forKeyedSubscript_(v10, v81, v82, 0x283877300);
  }

  if (errorCopy)
  {
    v85 = objc_msgSend_CKClientSuitableError(errorCopy, v83, v84);
    v86 = MEMORY[0x277CCABB0];
    v89 = objc_msgSend_code(v85, v87, v88);
    v91 = objc_msgSend_numberWithInteger_(v86, v90, v89);
    objc_msgSend_setObject_forKeyedSubscript_(v10, v92, v91, 0x28387E4A0);

    v93 = CKErrorChainStringFromError();
    objc_msgSend_setObject_forKeyedSubscript_(v10, v94, v93, 0x28387E4C0);

    v98 = objc_msgSend_CKStringForWellKnownCKErrors(v85, v95, v96);
    if (v98)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v10, v97, v98, 0x28387E4E0);
    }
  }

  return v10;
}

- (id)dugongKeyRollAnalyticsPayloadWithError:(id)error
{
  errorCopy = error;
  v7 = errorCopy;
  if (errorCopy)
  {
    v8 = errorCopy;
  }

  else
  {
    v8 = objc_msgSend_error(self, v5, v6);
  }

  v10 = v8;
  v11 = objc_msgSend_baseOperationAndErrorInfoCoreAnalyticsPayloadWithError_(self, v9, v8);

  return v11;
}

- (int)operationType
{
  v13 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
  {
    v5 = v3;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_fault_impl(&dword_22506F000, v5, OS_LOG_TYPE_FAULT, "Operation class %{public}@ does not implement %{public}@", &v9, 0x16u);
  }

  return 0;
}

- (BOOL)validateAgainstLiveContainer:(id)container error:(id *)error
{
  hasValidatedEntitlements = objc_msgSend_hasValidatedEntitlements(container, a2, container, error);
  v8 = objc_msgSend_operationInfo(self, v6, v7);
  objc_msgSend_setClientHasValidatedEntitlements_(v8, v9, hasValidatedEntitlements);

  return 1;
}

- (void)pushStatisticsTo:(id)to
{
  toCopy = to;
  os_unfair_recursive_lock_lock_with_options();
  objc_msgSend_addOperation_cloudKitMetrics_MMCSMetrics_(toCopy, v5, self, self->_cloudKitMetrics, self->_MMCSMetrics);

  os_unfair_recursive_lock_unlock();
}

@end