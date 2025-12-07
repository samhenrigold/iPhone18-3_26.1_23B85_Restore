@interface DRSService
+ (BOOL)defaultServiceIsEnabled;
+ (BOOL)shouldRunBackstopUpload:(id)upload currentDate:(id)date errorOut:(id *)out;
+ (BOOL)updateUploadSessionDateFromContainer:(id)container toDate:(id)date errorOut:(id *)out;
+ (id)_currentUploadSession_ON_MOC_QUEUE:(id)e errorOut:(id *)out;
+ (id)carrierConfigurationDirectory;
+ (id)customerConfigurationDirectory;
+ (id)deviceTeamConfigurationDirectory;
+ (id)internalConfigurationDirectory;
+ (id)previousUploadSessionDateFromContainer:(id)container errorOut:(id *)out;
+ (id)seedConfigurationDirectory;
+ (id)sharedInstance;
+ (unint64_t)uploadSessionUploadCapBytes;
- (BOOL)_connectionHasEntitlement:(id)entitlement;
- (BOOL)_enableDataGatheringQueryPassesRandomRejection;
- (BOOL)_persistEnableLogGatheringResult:(id)result workingContext:(id)context;
- (BOOL)_saveDampeningManagerErrorOut:(id *)out;
- (BOOL)_syncConfigurationToDisk:(id)disk;
- (BOOL)activateService;
- (BOOL)clearUploadSessionDate:(id *)date;
- (BOOL)isEnabled;
- (BOOL)shouldRunBackstopUpload:(id *)upload;
- (BOOL)updateUploadSessionDate:(id *)date;
- (DRSService)init;
- (NSNumber)ignoreAutomatedDeviceGroup;
- (NSNumber)isEnabledOverride;
- (double)_resolvedEnableDataGatheringQueryAcceptanceRate;
- (id)_cachedMatchingQuery:(id)query workingContext:(id)context;
- (id)_permissiveXPCActivitCriteriaDict:(unsigned int)dict;
- (id)_updateCKConfig:(id)config;
- (unint64_t)_remainingMonthlyUploadQuotaBytesWithContext:(id)context;
- (unint64_t)_remainingSessionUploadQuotaBytesWithContext:(id)context;
- (void)_addCKConfigSettingsToReplyMessage:(id)message;
- (void)_addRequestToDAFileList:(id)list;
- (void)_adjustStateForNewConfiguration;
- (void)_ckQueueDownstreamOnly_uploadInFlightWithTransaction:(id)transaction xpcActivity:(id)activity ckHelper:(id)helper isExpedited:(BOOL)expedited completionBlock:(id)block;
- (void)_ckQueueOnly_submitOutstandingEnableDataGatheringQueriesWithTransaction:(id)transaction xpcActivity:(id)activity ckHelper:(id)helper followupWorkBlock:(id)block;
- (void)_configureExpeditedUploadXPCActivity;
- (void)_configurePermissiveActivityCriteria:(id)criteria delaySeconds:(unsigned int)seconds;
- (void)_configureReportStatsXPCActivity;
- (void)_configureUploadXPCActivity;
- (void)_configureXPCActivities;
- (void)_finishReportingStatsSessionWithActivity:(id)activity withState:(int64_t)state transaction:(id)transaction endResultString:(id)string;
- (void)_finishUploadSessionWithActivity:(id)activity withState:(int64_t)state isExpedited:(BOOL)expedited transaction:(id)transaction completedSuccessfully:(BOOL)successfully endResultString:(id)string completionBlock:(id)block;
- (void)_getConfiguration;
- (void)_handleCKConfigUpdate:(id)update state:(id)state;
- (void)_handleCKWorkTriggerRequest:(id)request state:(id)state transaction:(id)transaction;
- (void)_handleCancelScheduledUploadRequest:(id)request state:(id)state;
- (void)_handleDRSRequestMessage:(id)message state:(id)state transaction:(id)transaction;
- (void)_handleDampeningConfigurationDictMessage:(id)message state:(id)state transaction:(id)transaction;
- (void)_handleDampeningConfigurationGlobalEnablementMessage:(id)message state:(id)state transaction:(id)transaction;
- (void)_handleDampeningConfigurationReset:(id)reset state:(id)state transaction:(id)transaction;
- (void)_handleEnableLogGatheringRequest:(id)request state:(id)state transaction:(id)transaction;
- (void)_handleGetCKConfig:(id)config state:(id)state;
- (void)_handleGetIgnoreADG:(id)g state:(id)state;
- (void)_handleGetUploadServiceEnabled:(id)enabled state:(id)state;
- (void)_handleInjectEnableLogGatheringRequestResult:(id)result state:(id)state;
- (void)_handleNewEntitledConnection:(id)connection state:(id)state;
- (void)_handleRefreshDampeningConfigMessage:(id)message state:(id)state transaction:(id)transaction;
- (void)_handleRequestCleanTrigger:(id)trigger state:(id)state;
- (void)_handleResetCKConfig:(id)config state:(id)state;
- (void)_handleSetIgnoreADG:(id)g state:(id)state;
- (void)_handleSetUploadServiceEnabled:(id)enabled state:(id)state;
- (void)_handleUploadSchedulingRequest:(id)request state:(id)state;
- (void)_initializeServiceContainer;
- (void)_postReceiptProcessingWork:(id)work;
- (void)_registerPermissiveExpeditedUploadXPCActivity:(unsigned int)activity;
- (void)_rejectInjectRequest:(id)request state:(id)state reason:(const char *)reason;
- (void)_replyToCKConfigMessageWithCurrentCKConfig:(id)config;
- (void)_runCloudKitUploadWorkSessionWithTransaction:(id)transaction xpcActivity:(id)activity isExpedited:(BOOL)expedited completionBlock:(id)block;
- (void)_runReportingSessionWithTransaction:(id)transaction xpcActivity:(id)activity;
- (void)_sendAdminRequestReply:(BOOL)reply rejectionReason:(const char *)reason requestMessage:(id)message;
- (void)_sendCurrentIgnoreADGReply:(id)reply state:(id)state;
- (void)_sendCurrentUploadServiceEnabledReply:(id)reply state:(id)state;
- (void)_sendRejectionMessage:(id)message rejectionReason:(unint64_t)reason state:(id)state;
- (void)_setConfigValue:(id)value forKey:(id)key expectedClass:(Class)class;
- (void)_unregisterPermissiveExpeditedUploadXPCActivity;
- (void)_updateConfigDict:(id)dict;
- (void)_waitForDeviceUnlockAndInitializeServiceState;
- (void)deactivateService;
- (void)dealloc;
- (void)handleRequest:(id)request state:(id)state;
- (void)setIgnoreAutomatedDeviceGroup:(id)group;
- (void)setIsEnabledOverride:(id)override;
@end

@implementation DRSService

+ (BOOL)defaultServiceIsEnabled
{
  if (defaultServiceIsEnabled_onceToken != -1)
  {
    +[DRSService defaultServiceIsEnabled];
  }

  return defaultServiceIsEnabled_isEnabled;
}

void __37__DRSService_defaultServiceIsEnabled__block_invoke()
{
  v0 = +[DRSSystemProfile sharedInstance];
  v1 = [v0 isCarrier];

  if (v1)
  {
    defaultServiceIsEnabled_isEnabled = 0;
    v3 = DPLogHandle_ServiceLifecycle(v2);
    if (os_signpost_enabled(v3))
    {
      *v4 = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ServiceDisabled", "Service is disabled due to being Carrier", v4, 2u);
    }
  }

  else
  {
    defaultServiceIsEnabled_isEnabled = 1;
  }
}

+ (unint64_t)uploadSessionUploadCapBytes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__DRSService_uploadSessionUploadCapBytes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (uploadSessionUploadCapBytes_onceToken != -1)
  {
    dispatch_once(&uploadSessionUploadCapBytes_onceToken, block);
  }

  return uploadSessionUploadCapBytes_cap;
}

void __41__DRSService_uploadSessionUploadCapBytes__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) defaultServiceIsEnabled])
  {
    v1 = +[DRSSystemProfile sharedInstance];
    uploadSessionUploadCapBytes_cap = [v1 uploadSessionUploadCapBytes];
  }

  else
  {
    uploadSessionUploadCapBytes_cap = 0;
  }
}

- (unint64_t)_remainingSessionUploadQuotaBytesWithContext:(id)context
{
  contextCopy = context;
  maxSingleSessionUploadSizeInBytes = [(DRSService *)self maxSingleSessionUploadSizeInBytes];
  v6 = [(DRSService *)self _remainingMonthlyUploadQuotaBytesWithContext:contextCopy];

  if (maxSingleSessionUploadSizeInBytes >= v6)
  {
    return v6;
  }

  else
  {
    return maxSingleSessionUploadSizeInBytes;
  }
}

- (unint64_t)_remainingMonthlyUploadQuotaBytesWithContext:(id)context
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEAA8];
  contextCopy = context;
  v6 = [v4 dateWithTimeIntervalSinceNow:-2592000.0];
  v21 = 0;
  v7 = [DRSRequest uploadedBytesSinceDate:v6 context:contextCopy errorOut:&v21];

  v8 = v21;
  v9 = v8;
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7 == 0;
  }

  if (v10)
  {
    v11 = DPLogHandle_CoreDataError(v8);
    if (os_signpost_enabled(v11))
    {
      localizedDescription = [v9 localizedDescription];
      v13 = localizedDescription;
      v14 = @"Unknown";
      if (localizedDescription)
      {
        v14 = localizedDescription;
      }

      *buf = 138543362;
      v23 = v14;
      _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RemainingQuotaCalculationError", "Encountered error while trying to calculate remaining monthly quota: %{public}@", buf, 0xCu);
    }

    v15 = 0;
  }

  else
  {
    unsignedLongLongValue = [v7 unsignedLongLongValue];
    if (unsignedLongLongValue >= [(DRSService *)self monthlyUploadQuotaBytes])
    {
      v15 = 0;
      goto LABEL_16;
    }

    monthlyUploadQuotaBytes = [(DRSService *)self monthlyUploadQuotaBytes];
    unsignedLongLongValue2 = [v7 unsignedLongLongValue];
    v15 = monthlyUploadQuotaBytes - unsignedLongLongValue2;
    v11 = DPLogHandle_ServiceLifecycle(unsignedLongLongValue2);
    if (os_signpost_enabled(v11))
    {
      monthlyUploadQuotaBytes2 = [(DRSService *)self monthlyUploadQuotaBytes];
      *buf = 134218240;
      v23 = v15;
      v24 = 2048;
      v25 = monthlyUploadQuotaBytes2;
      _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RemainingMonthlyQuotaCalculated", "%lluB remain out of monthly upload quota of %lluB", buf, 0x16u);
    }
  }

LABEL_16:
  return v15;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[DRSService sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

void __28__DRSService_sharedInstance__block_invoke(uint64_t a1, uint64_t a2)
{
  DRSRegisterForDeviceUnlockNotification(a1, a2);
  v2 = objc_alloc_init(DRSService);
  v3 = sharedInstance_sharedInstance_0;
  sharedInstance_sharedInstance_0 = v2;
}

- (void)_initializeServiceContainer
{
  localizedDescription = [self localizedDescription];
  v8 = localizedDescription;
  v9 = @"Unknown";
  if (localizedDescription)
  {
    v9 = localizedDescription;
  }

  LODWORD(v10) = 138543362;
  *(&v10 + 4) = v9;
  OUTLINED_FUNCTION_0_0(&dword_232906000, v2, v3, "FATAL ERROR: Could not instantiate the service persistent container due to error %{public}@", v4, v5, v6, v7, v10, DWORD2(v10));
}

- (void)_waitForDeviceUnlockAndInitializeServiceState
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__DRSService__waitForDeviceUnlockAndInitializeServiceState__block_invoke;
  block[3] = &unk_27899EF98;
  block[4] = self;
  if (_waitForDeviceUnlockAndInitializeServiceState_onceToken_0 != -1)
  {
    dispatch_once(&_waitForDeviceUnlockAndInitializeServiceState_onceToken_0, block);
  }
}

uint64_t __59__DRSService__waitForDeviceUnlockAndInitializeServiceState__block_invoke(uint64_t a1, uint64_t a2)
{
  v61 = *MEMORY[0x277D85DE8];
  DRSWaitForDeviceUnlock(a1, a2);
  v3 = [objc_opt_class() databaseDirectory];
  v4 = DPLogHandle_ServiceLifecycle(v3);
  v5 = DPLogHandle_ServiceLifecycleError(v4);
  DRSConfirmDirectoryIsInitialized(v3, v4, v5);

  v6 = [objc_opt_class() fileDirectory];
  v7 = DPLogHandle_ServiceLifecycle(v6);
  v8 = DPLogHandle_ServiceLifecycleError(v7);
  DRSConfirmDirectoryIsInitialized(v6, v7, v8);

  [*(a1 + 32) _initializeServiceContainer];
  v9 = [DRSDampeningManager alloc];
  v10 = [*(a1 + 32) serviceContainer];
  v11 = [objc_opt_class() deviceTeamConfigurationDirectory];
  v12 = [(DRSDampeningManager *)v9 initWithPersistentContainer:v10 teamConfigurationDirectory:v11];
  v13 = *(a1 + 32);
  v14 = *(v13 + 96);
  *(v13 + 96) = v12;

  v15 = [*(a1 + 32) dampeningManager];

  if (!v15)
  {
    v54 = DPLogHandle_ServiceLifecycleError(v16);
    if (os_signpost_enabled(v54))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v54, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DampeningManagerCreationFailure", "FATAL ERROR: Failed to create dampening manager for service", buf, 2u);
    }

    v56 = DPLogHandle_ServiceLifecycleError(v55);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
    {
      __59__DRSService__waitForDeviceUnlockAndInitializeServiceState__block_invoke_cold_2(v56);
    }

    exit(1);
  }

  v17 = [DRSCKConfigStore alloc];
  v18 = [objc_opt_class() databaseDirectory];
  v58 = 0;
  v19 = [(DRSCKConfigStore *)v17 initWithWorkingDirectory:v18 isReadOnly:0 errorOut:&v58];
  v20 = v58;
  v21 = *(a1 + 32);
  v22 = *(v21 + 120);
  *(v21 + 120) = v19;

  v23 = [*(a1 + 32) ckConfigStore];

  if (v23)
  {
    v25 = [*(a1 + 32) ckConfigStore];
    v57 = 0;
    v26 = [v25 currentConfig:&v57];
    v27 = v57;

    if (v26)
    {
      objc_storeStrong((*(a1 + 32) + 128), v26);
      v30 = DPLogHandle_ServiceLifecycleError(v29);
      if (os_signpost_enabled(v30))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CKConfigFetchSuccess", &unk_232980861, buf, 2u);
      }
    }

    else
    {
      v39 = DPLogHandle_ServiceLifecycleError(v28);
      if (os_signpost_enabled(v39))
      {
        v40 = [v27 localizedDescription];
        v41 = v40;
        v42 = @"Unknown";
        if (v40)
        {
          v42 = v40;
        }

        *buf = 138543362;
        v60 = v42;
        _os_signpost_emit_with_name_impl(&dword_232906000, v39, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CKConfigFetchFailure", "ERROR: Failed to fetch current CK config due to error: %{public}@. Will fallback to default.", buf, 0xCu);
      }

      v43 = +[DRSCKConfig defaultConfig];
      v44 = *(a1 + 32);
      v30 = *(v44 + 128);
      *(v44 + 128) = v43;
    }
  }

  else
  {
    v31 = DPLogHandle_ServiceLifecycleError(v24);
    if (os_signpost_enabled(v31))
    {
      v32 = [v20 localizedDescription];
      v33 = v32;
      v34 = @"Unknown";
      if (v32)
      {
        v34 = v32;
      }

      *buf = 138543362;
      v60 = v34;
      _os_signpost_emit_with_name_impl(&dword_232906000, v31, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CKConfigStoreCreationFailure", "ERROR: Failed to create CK config store for service due to error: %{public}@. Will fallback to default.", buf, 0xCu);
    }

    v36 = DPLogHandle_ServiceLifecycleError(v35);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      __59__DRSService__waitForDeviceUnlockAndInitializeServiceState__block_invoke_cold_1(v20);
    }

    v37 = +[DRSCKConfig defaultConfig];
    v38 = *(a1 + 32);
    v27 = *(v38 + 128);
    *(v38 + 128) = v37;
  }

  v46 = DPLogHandle_ServiceLifecycle(v45);
  if (os_signpost_enabled(v46))
  {
    v47 = [*(a1 + 32) ckConfig];
    v48 = [v47 debugDescription];
    *buf = 138543362;
    v60 = v48;
    _os_signpost_emit_with_name_impl(&dword_232906000, v46, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CKConfigApplied", "Applied config %{public}@", buf, 0xCu);
  }

  v49 = [*(a1 + 32) ckConfig];
  v50 = [DRSCloudKitHelper helperForCKConfig:v49];
  v51 = *(a1 + 32);
  v52 = *(v51 + 112);
  *(v51 + 112) = v50;

  return [*(a1 + 32) _getConfiguration];
}

+ (id)deviceTeamConfigurationDirectory
{
  v3 = +[DRSSystemProfile sharedInstance];
  isCarrier = [v3 isCarrier];

  if (isCarrier)
  {
    carrierConfigurationDirectory = [self carrierConfigurationDirectory];
  }

  else
  {
    v6 = +[DRSSystemProfile sharedInstance];
    isInternal = [v6 isInternal];

    if (isInternal)
    {
      carrierConfigurationDirectory = [self internalConfigurationDirectory];
    }

    else
    {
      v8 = +[DRSSystemProfile sharedInstance];
      isSeed = [v8 isSeed];

      if (isSeed)
      {
        [self seedConfigurationDirectory];
      }

      else
      {
        [self customerConfigurationDirectory];
      }
      carrierConfigurationDirectory = ;
    }
  }

  return carrierConfigurationDirectory;
}

+ (id)carrierConfigurationDirectory
{
  configurationDirectory = [self configurationDirectory];
  v3 = [configurationDirectory stringByAppendingPathComponent:@"TeamConfiguration"];

  v4 = [v3 stringByAppendingPathComponent:@"Carrier"];

  return v4;
}

+ (id)internalConfigurationDirectory
{
  configurationDirectory = [self configurationDirectory];
  v3 = [configurationDirectory stringByAppendingPathComponent:@"TeamConfiguration"];

  v4 = [v3 stringByAppendingPathComponent:@"Internal"];

  return v4;
}

+ (id)seedConfigurationDirectory
{
  configurationDirectory = [self configurationDirectory];
  v3 = [configurationDirectory stringByAppendingPathComponent:@"TeamConfiguration"];

  v4 = [v3 stringByAppendingPathComponent:@"Seed"];

  return v4;
}

+ (id)customerConfigurationDirectory
{
  configurationDirectory = [self configurationDirectory];
  v3 = [configurationDirectory stringByAppendingPathComponent:@"TeamConfiguration"];

  v4 = [v3 stringByAppendingPathComponent:@"Customer"];

  return v4;
}

- (BOOL)_connectionHasEntitlement:(id)entitlement
{
  v15 = *MEMORY[0x277D85DE8];
  entitlementCopy = entitlement;
  v4 = xpc_connection_copy_entitlement_value();
  v5 = v4;
  if (!v4)
  {
    v7 = DPLogHandle_ServiceXPCError(0);
    if (os_signpost_enabled(v7))
    {
      v13 = 67109120;
      pid = xpc_connection_get_pid(entitlementCopy);
      v8 = "ClientConnectionMissingEntitlement";
      v9 = "Client connection from [%d] missing entitlement 'com.apple.diagnosticpipeline.request'";
      goto LABEL_11;
    }

LABEL_12:

    v11 = 0;
    goto LABEL_13;
  }

  v6 = MEMORY[0x23838A140](v4);
  if (v6 != MEMORY[0x277D86448])
  {
    v7 = DPLogHandle_ServiceXPCError(v6);
    if (os_signpost_enabled(v7))
    {
      v13 = 67109120;
      pid = xpc_connection_get_pid(entitlementCopy);
      v8 = "ClientConnectionBadEntitlementType";
      v9 = "Client connection from [%d] has wrong type for entitlement 'com.apple.diagnosticpipeline.request'";
LABEL_11:
      _os_signpost_emit_with_name_impl(&dword_232906000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v8, v9, &v13, 8u);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  value = xpc_BOOL_get_value(v5);
  if (!value)
  {
    v7 = DPLogHandle_ServiceXPCError(value);
    if (os_signpost_enabled(v7))
    {
      v13 = 67109120;
      pid = xpc_connection_get_pid(entitlementCopy);
      v8 = "ClientConnectionFalseEntitlement";
      v9 = "Client connection from [%d] has a 'false' value for entitlement 'com.apple.diagnosticpipeline.request'";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v11 = 1;
LABEL_13:

  return v11;
}

- (void)_sendRejectionMessage:(id)message rejectionReason:(unint64_t)reason state:(id)state
{
  v16 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  stateCopy = state;
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v8, "ServiceMessageType", 1uLL);
  xpc_dictionary_set_uint64(v8, "RejectionType", 1uLL);
  xpc_connection_send_message(messageCopy, v8);
  v10 = DPLogHandle_ServiceXPCError(v9);
  if (os_signpost_enabled(v10))
  {
    stateDescription = [stateCopy stateDescription];
    v12 = 138543618;
    v13 = stateDescription;
    v14 = 2114;
    v15 = @"Missing entitlement 'com.apple.diagnosticpipeline.request'";
    _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RejectingClientConnection", "Rejecting client connection from %{public}@ due to reason: %{public}@", &v12, 0x16u);
  }

  xpc_connection_cancel(messageCopy);
}

- (DRSService)init
{
  v30.receiver = self;
  v30.super_class = DRSService;
  v2 = [(DRSService *)&v30 init];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_4;
  }

  v4 = dispatch_queue_create("com.apple.diagnosticpipeline service message queue", 0);
  messageQueue = v3->_messageQueue;
  v3->_messageQueue = v4;

  v6 = dispatch_queue_create("com.apple.diagnosticpipeline service CloudKit work queue", 0);
  cloudKitQueue = v3->_cloudKitQueue;
  v3->_cloudKitQueue = v6;

  v8 = dispatch_queue_create("com.apple.diagnosticpipeline server post-receipt work queue", 0);
  postReceiptWorkQueue = v3->_postReceiptWorkQueue;
  v3->_postReceiptWorkQueue = v8;

  v10 = dispatch_queue_create("com.apple.diagnosticpipeline server outstanding upload lookup queue", 0);
  uploadRequestLookupQueue = v3->_uploadRequestLookupQueue;
  v3->_uploadRequestLookupQueue = v10;

  v12 = dispatch_queue_create("com.apple.diagnosticpipeline server configuration queue", 0);
  configurationSyncQueue = v3->_configurationSyncQueue;
  v3->_configurationSyncQueue = v12;

  messageQueue = [(DRSService *)v3 messageQueue];
  mach_service = xpc_connection_create_mach_service("com.apple.diagnosticpipeline.service", messageQueue, 1uLL);
  serviceConnection = v3->_serviceConnection;
  v3->_serviceConnection = mach_service;

  v17 = dispatch_semaphore_create(0);
  serviceDeactivatedSem = v3->_serviceDeactivatedSem;
  v3->_serviceDeactivatedSem = v17;

  v3->_maxSingleSessionUploadSizeInBytes = [objc_opt_class() uploadSessionUploadCapBytes];
  v3->_state = 0;
  serviceConnection = [(DRSService *)v3 serviceConnection];

  if (serviceConnection)
  {
    objc_initWeak(location, v3);
    serviceConnection2 = [(DRSService *)v3 serviceConnection];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __18__DRSService_init__block_invoke;
    v26[3] = &unk_27899F270;
    v27 = v3;
    objc_copyWeak(&v28, location);
    xpc_connection_set_event_handler(serviceConnection2, v26);

    objc_destroyWeak(&v28);
    objc_destroyWeak(location);
LABEL_4:
    v22 = DPLogHandle_ServiceLifecycle(v2);
    if (os_signpost_enabled(v22))
    {
      LOWORD(location[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ServiceLaunch", &unk_232980861, location, 2u);
    }

    v23 = v3;
    goto LABEL_10;
  }

  v24 = DPLogHandle_ServiceLifecycle(v20);
  if (os_signpost_enabled(v24))
  {
    LOWORD(location[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FailedServiceLaunch", "Could not create connection for mach service", location, 2u);
  }

  v23 = 0;
LABEL_10:

  return v23;
}

void __18__DRSService_init__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x23838A140]();
  if (v4 == MEMORY[0x277D86450])
  {
    WeakRetained = [[DRSClientConnectionState alloc] initWithConnection:v3 service:*(a1 + 32)];
    v8 = [*(a1 + 32) _connectionHasEntitlement:v3];
    v9 = *(a1 + 32);
    if (v8)
    {
      [v9 _handleNewEntitledConnection:v3 state:WeakRetained];
    }

    else
    {
      [v9 _sendRejectionMessage:v3 rejectionReason:1 state:WeakRetained];
    }

LABEL_15:

    goto LABEL_16;
  }

  if (v3 == MEMORY[0x277D863F8])
  {
    v10 = DPLogHandle_ServiceLifecycle(v4);
    if (os_signpost_enabled(v10))
    {
      LOWORD(v13) = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ServiceConnectionInvalidated", &unk_232980861, &v13, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    WeakRetained->_hasAdminEntitlement = 2;
    v11 = [*(a1 + 32) serviceDeactivatedSem];
    dispatch_semaphore_signal(v11);

    goto LABEL_15;
  }

  if (v3 == MEMORY[0x277D863F0])
  {
    v12 = DPLogHandle_ServiceLifecycle(v4);
    if (os_signpost_enabled(v12))
    {
      LOWORD(v13) = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ServiceConnectionInterrupted", &unk_232980861, &v13, 2u);
    }
  }

  else if (MEMORY[0x23838A140](v3) != MEMORY[0x277D86468])
  {
    v5 = MEMORY[0x238389FD0](v3);
    v6 = DPLogHandle_ServiceLifecycle(v5);
    if (os_signpost_enabled(v6))
    {
      v13 = 136446210;
      v14 = v5;
      _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidMessageType", "Invalid message type unexpected: %{public}s", &v13, 0xCu);
    }

    if (v5)
    {
      free(v5);
    }
  }

LABEL_16:
}

- (BOOL)_saveDampeningManagerErrorOut:(id *)out
{
  v15 = *MEMORY[0x277D85DE8];
  dampeningManager = [(DRSService *)self dampeningManager];
  v6 = [dampeningManager saveToPersistentContainerWithErrorOut:out];

  if (v6)
  {
    v8 = DPLogHandle_DampeningManager(v7);
    if (os_signpost_enabled(v8))
    {
      dampeningManager2 = [(DRSService *)self dampeningManager];
      v10 = [dampeningManager2 debugDescription];
      v13 = 138543362;
      v14 = v10;
      _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DampeningConfigurationUpdated", "Saved updated dampening configuration: %{public}@", &v13, 0xCu);
    }
  }

  else
  {
    v8 = DPLogHandle_CoreDataError(v7);
    if (os_signpost_enabled(v8))
    {
      v11 = *out;
      v13 = 138543362;
      v14 = v11;
      _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DampeningConfigurationSaveFailed", "Saving updated configuration failed due to error: %{public}@", &v13, 0xCu);
    }
  }

  return v6;
}

- (void)_handleDampeningConfigurationGlobalEnablementMessage:(id)message state:(id)state transaction:(id)transaction
{
  v29 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  stateCopy = state;
  hasAdminEntitlement = [stateCopy hasAdminEntitlement];
  if (hasAdminEntitlement)
  {
    v10 = xpc_dictionary_get_BOOL(messageCopy, "DampeningEnabled");
    v11 = DPLogHandle_ServiceXPC(v10);
    if (os_signpost_enabled(v11))
    {
      stateDescription = [stateCopy stateDescription];
      v13 = stateDescription;
      v14 = @"Disabled";
      if (v10)
      {
        v14 = @"Enabled";
      }

      *buf = 138543618;
      v26 = stateDescription;
      v27 = 2114;
      v28 = v14;
      _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DampeningConfigurationGlobalEnablement", "Accepting global enablement request from %{public}@. Dampening will be %{public}@", buf, 0x16u);
    }

    dampeningManager = [(DRSService *)self dampeningManager];
    enforcementSettings = [dampeningManager enforcementSettings];
    [enforcementSettings setAllEnforcement:v10];

    v24 = 0;
    LOBYTE(dampeningManager) = [(DRSService *)self _saveDampeningManagerErrorOut:&v24];
    v17 = v24;
    v18 = v17;
    if (dampeningManager)
    {
      [(DRSService *)self _sendAdminRequestReply:1 rejectionReason:0 requestMessage:messageCopy];
    }

    else
    {
      localizedDescription = [v17 localizedDescription];
      uTF8String = [localizedDescription UTF8String];
      if (uTF8String)
      {
        v23 = uTF8String;
      }

      else
      {
        v23 = "Unknown save error";
      }

      [(DRSService *)self _sendAdminRequestReply:0 rejectionReason:v23 requestMessage:messageCopy];
    }
  }

  else
  {
    v19 = DPLogHandle_ServiceXPCError(hasAdminEntitlement);
    if (os_signpost_enabled(v19))
    {
      stateDescription2 = [stateCopy stateDescription];
      *buf = 138543362;
      v26 = stateDescription2;
      _os_signpost_emit_with_name_impl(&dword_232906000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DampeningConfigurationGlobalEnablementRejected", "Rejecting global enablement request from %{public}@ due to missing entitlement", buf, 0xCu);
    }

    [(DRSService *)self _sendAdminRequestReply:0 rejectionReason:"Client missing entitlement" requestMessage:messageCopy];
  }
}

- (void)_handleDampeningConfigurationReset:(id)reset state:(id)state transaction:(id)transaction
{
  v64 = *MEMORY[0x277D85DE8];
  resetCopy = reset;
  stateCopy = state;
  transactionCopy = transaction;
  hasAdminEntitlement = [stateCopy hasAdminEntitlement];
  if (hasAdminEntitlement)
  {
    v12 = DPLogHandle_ServiceXPC(hasAdminEntitlement);
    if (os_signpost_enabled(v12))
    {
      stateDescription = [stateCopy stateDescription];
      *buf = 138543362;
      *&buf[4] = stateDescription;
      _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DampeningConfigurationReset", "Dampening configuration will be reset to defaults due to request from %{public}@", buf, 0xCu);
    }

    v14 = [DRSDampeningManager alloc];
    serviceContainer = [(DRSService *)self serviceContainer];
    deviceTeamConfigurationDirectory = [objc_opt_class() deviceTeamConfigurationDirectory];
    v17 = [(DRSDampeningManager *)v14 initWithPersistentContainer:serviceContainer teamConfigurationDirectory:deviceTeamConfigurationDirectory];
    dampeningManager = self->_dampeningManager;
    self->_dampeningManager = v17;

    serviceContainer2 = [(DRSService *)self serviceContainer];
    newBackgroundContext = [serviceContainer2 newBackgroundContext];

    dampeningManager = [(DRSService *)self dampeningManager];
    v59 = 0;
    v22 = [objc_opt_class() removeExistingDampeningManagerStateFromManagedObjectContext:newBackgroundContext errorOut:&v59];
    v23 = v59;

    if (v22)
    {

      v55 = 0;
      v56 = &v55;
      v57 = 0x2020000000;
      v58 = 1;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v61 = __Block_byref_object_copy__2;
      v62 = __Block_byref_object_dispose__2;
      v63 = 0;
      v47 = MEMORY[0x277D85DD0];
      v48 = 3221225472;
      v49 = __67__DRSService__handleDampeningConfigurationReset_state_transaction___block_invoke;
      v50 = &unk_27899F298;
      v53 = &v55;
      v51 = newBackgroundContext;
      v54 = buf;
      v52 = stateCopy;
      [v51 performBlockAndWait:&v47];
      v25 = *(*&buf[8] + 40);
      if (v25)
      {
        v26 = MEMORY[0x277CCACA8];
        localizedDescription = [v25 localizedDescription];
        v28 = localizedDescription;
        v29 = @"Unknown";
        if (localizedDescription)
        {
          v29 = localizedDescription;
        }

        v30 = [v26 stringWithFormat:@"Failed save dampening manager due to error: %@", v29, v47, v48, v49, v50, v51];

        v31 = *(v56 + 24);
        if (v30)
        {
          v32 = v30;
          uTF8String = [v30 UTF8String];
        }

        else
        {
          uTF8String = 0;
        }
      }

      else
      {
        v30 = 0;
        uTF8String = 0;
        v31 = *(v56 + 24);
      }

      [(DRSService *)self _sendAdminRequestReply:v31 & 1 rejectionReason:uTF8String requestMessage:resetCopy];

      _Block_object_dispose(buf, 8);
      _Block_object_dispose(&v55, 8);
    }

    else
    {
      v36 = DPLogHandle_CoreDataError(v24);
      if (os_signpost_enabled(v36))
      {
        stateDescription2 = [stateCopy stateDescription];
        localizedDescription2 = [v23 localizedDescription];
        v39 = localizedDescription2;
        if (localizedDescription2)
        {
          v40 = localizedDescription2;
        }

        else
        {
          v40 = @"Unknown";
        }

        *buf = 138543618;
        *&buf[4] = stateDescription2;
        *&buf[12] = 2114;
        *&buf[14] = v40;
        _os_signpost_emit_with_name_impl(&dword_232906000, v36, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DampeningConfigurationResetPersistenceFailure", "Failed to cleanup dampening manager state for reset request from %{public}@ due to error: %{public}@", buf, 0x16u);
      }

      v41 = MEMORY[0x277CCACA8];
      localizedDescription3 = [v23 localizedDescription];
      v43 = localizedDescription3;
      if (localizedDescription3)
      {
        v44 = localizedDescription3;
      }

      else
      {
        v44 = @"Unknown";
      }

      v45 = [v41 stringWithFormat:@"Failed to cleanup dampening manager state due to error: %@", v44];

      v46 = v45;
      -[DRSService _sendAdminRequestReply:rejectionReason:requestMessage:](self, "_sendAdminRequestReply:rejectionReason:requestMessage:", 0, [v45 UTF8String], resetCopy);
    }
  }

  else
  {
    v34 = DPLogHandle_ServiceXPCError(hasAdminEntitlement);
    if (os_signpost_enabled(v34))
    {
      stateDescription3 = [stateCopy stateDescription];
      *buf = 138543362;
      *&buf[4] = stateDescription3;
      _os_signpost_emit_with_name_impl(&dword_232906000, v34, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DampeningConfigurationResetRejected", "Rejecting reset request from %{public}@ due to missing entitlement", buf, 0xCu);
    }

    [(DRSService *)self _sendAdminRequestReply:0 rejectionReason:"Client missing entitlement" requestMessage:resetCopy];
  }
}

void __67__DRSService__handleDampeningConfigurationReset_state_transaction___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v12 = 0;
  v3 = [v2 save:&v12];
  v4 = v12;
  v5 = v12;
  *(*(*(a1 + 48) + 8) + 24) = v3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v4);
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v7 = DPLogHandle_CoreDataError(v6);
    if (os_signpost_enabled(v7))
    {
      v8 = [*(a1 + 40) stateDescription];
      v9 = [*(*(*(a1 + 56) + 8) + 40) localizedDescription];
      v10 = v9;
      v11 = @"Unknown";
      if (v9)
      {
        v11 = v9;
      }

      *buf = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v11;
      _os_signpost_emit_with_name_impl(&dword_232906000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DampeningConfigurationResetPersistenceFailure", "Failed to save cleaned state for reset request from %{public}@ due to error: %@", buf, 0x16u);
    }
  }
}

- (void)_handleDampeningConfigurationDictMessage:(id)message state:(id)state transaction:(id)transaction
{
  v65 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  stateCopy = state;
  hasAdminEntitlement = [stateCopy hasAdminEntitlement];
  if (hasAdminEntitlement)
  {
    v10 = xpc_dictionary_get_value(messageCopy, "EnforceResourceHysteresis");

    if (v10)
    {
      v11 = xpc_dictionary_get_BOOL(messageCopy, "EnforceResourceHysteresis");
      dampeningManager = [(DRSService *)self dampeningManager];
      enforcementSettings = [dampeningManager enforcementSettings];
      [enforcementSettings setEnforcesResourceHysteresis:v11];
    }

    v14 = xpc_dictionary_get_value(messageCopy, "EnforceResourceCap");

    if (v14)
    {
      v15 = xpc_dictionary_get_BOOL(messageCopy, "EnforceResourceCap");
      dampeningManager2 = [(DRSService *)self dampeningManager];
      enforcementSettings2 = [dampeningManager2 enforcementSettings];
      [enforcementSettings2 setEnforcesResourceCap:v15];
    }

    v18 = xpc_dictionary_get_value(messageCopy, "EnforceResourceDownsampling");

    if (v18)
    {
      v19 = xpc_dictionary_get_BOOL(messageCopy, "EnforceResourceDownsampling");
      dampeningManager3 = [(DRSService *)self dampeningManager];
      enforcementSettings3 = [dampeningManager3 enforcementSettings];
      [enforcementSettings3 setEnforcesResourceDownsampling:v19];
    }

    v22 = xpc_dictionary_get_value(messageCopy, "EnforceSignatureHysteresis");

    if (v22)
    {
      v23 = xpc_dictionary_get_BOOL(messageCopy, "EnforceSignatureHysteresis");
      dampeningManager4 = [(DRSService *)self dampeningManager];
      enforcementSettings4 = [dampeningManager4 enforcementSettings];
      [enforcementSettings4 setEnforcesSignatureHysteresis:v23];
    }

    v26 = xpc_dictionary_get_value(messageCopy, "EnforceSignatureCap");

    if (v26)
    {
      v27 = xpc_dictionary_get_BOOL(messageCopy, "EnforceSignatureCap");
      dampeningManager5 = [(DRSService *)self dampeningManager];
      enforcementSettings5 = [dampeningManager5 enforcementSettings];
      [enforcementSettings5 setEnforcesSignatureCap:v27];
    }

    v30 = xpc_dictionary_get_value(messageCopy, "EnforceSignatureDownsampling");

    if (v30)
    {
      v31 = xpc_dictionary_get_BOOL(messageCopy, "EnforceSignatureDownsampling");
      dampeningManager6 = [(DRSService *)self dampeningManager];
      enforcementSettings6 = [dampeningManager6 enforcementSettings];
      [enforcementSettings6 setEnforcesSignatureDownsampling:v31];
    }

    v34 = xpc_dictionary_get_value(messageCopy, "EnforceTotalCap");

    if (v34)
    {
      v35 = xpc_dictionary_get_BOOL(messageCopy, "EnforceTotalCap");
      dampeningManager7 = [(DRSService *)self dampeningManager];
      enforcementSettings7 = [dampeningManager7 enforcementSettings];
      [enforcementSettings7 setEnforcesTotalCap:v35];
    }

    dampeningManager8 = [(DRSService *)self dampeningManager];
    defaultSignatureConfiguration = [dampeningManager8 defaultSignatureConfiguration];
    uint64 = [defaultSignatureConfiguration countCap];

    dampeningManager9 = [(DRSService *)self dampeningManager];
    defaultSignatureConfiguration2 = [dampeningManager9 defaultSignatureConfiguration];
    [defaultSignatureConfiguration2 hysteresis];
    v44 = v43;

    dampeningManager10 = [(DRSService *)self dampeningManager];
    defaultSignatureConfiguration3 = [dampeningManager10 defaultSignatureConfiguration];
    [defaultSignatureConfiguration3 acceptanceRate];
    v48 = v47;

    v49 = xpc_dictionary_get_value(messageCopy, "DefaultSignatureHysteresis");

    v50 = v49 != 0;
    if (v49)
    {
      v44 = xpc_dictionary_get_double(messageCopy, "DefaultSignatureHysteresis");
    }

    v51 = xpc_dictionary_get_value(messageCopy, "DefaultSignatureCap");

    if (v51)
    {
      uint64 = xpc_dictionary_get_uint64(messageCopy, "DefaultSignatureCap");
      v50 = 1;
    }

    v52 = xpc_dictionary_get_value(messageCopy, "AcceptanceRate");

    if (v52)
    {
      v48 = xpc_dictionary_get_double(messageCopy, "AcceptanceRate");
    }

    else if (!v50)
    {
      goto LABEL_26;
    }

    v55 = [[DRSDampeningConfiguration alloc] initWithHysteresis:uint64 cap:v44 acceptanceRate:v48];
    dampeningManager11 = [(DRSService *)self dampeningManager];
    [dampeningManager11 setDefaultSignatureConfiguration:v55];

LABEL_26:
    v62 = 0;
    v57 = [(DRSService *)self _saveDampeningManagerErrorOut:&v62];
    v58 = v62;
    v53 = v58;
    if (v57)
    {
      [(DRSService *)self _sendAdminRequestReply:1 rejectionReason:0 requestMessage:messageCopy];
    }

    else
    {
      localizedDescription = [v58 localizedDescription];
      uTF8String = [localizedDescription UTF8String];
      if (uTF8String)
      {
        v61 = uTF8String;
      }

      else
      {
        v61 = "Unknown save error";
      }

      [(DRSService *)self _sendAdminRequestReply:0 rejectionReason:v61 requestMessage:messageCopy];
    }

    goto LABEL_32;
  }

  v53 = DPLogHandle_ServiceXPCError(hasAdminEntitlement);
  if (os_signpost_enabled(v53))
  {
    stateDescription = [stateCopy stateDescription];
    *buf = 138543362;
    v64 = stateDescription;
    _os_signpost_emit_with_name_impl(&dword_232906000, v53, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DampeningConfigurationDictionaryRejected", "Rejecting dampening configuration dictionary request from %{public}@ due to missing entitlement", buf, 0xCu);
  }

LABEL_32:
}

- (void)_handleRefreshDampeningConfigMessage:(id)message state:(id)state transaction:(id)transaction
{
  v26 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  stateCopy = state;
  hasAdminEntitlement = [stateCopy hasAdminEntitlement];
  if (hasAdminEntitlement)
  {
    v10 = [DRSDampeningManager alloc];
    serviceContainer = [(DRSService *)self serviceContainer];
    deviceTeamConfigurationDirectory = [objc_opt_class() deviceTeamConfigurationDirectory];
    v13 = [(DRSDampeningManager *)v10 initWithPersistentContainer:serviceContainer teamConfigurationDirectory:deviceTeamConfigurationDirectory];

    if (v13)
    {
      objc_storeStrong(&self->_dampeningManager, v13);
      v16 = DPLogHandle_ServiceXPC(v15);
      if (os_signpost_enabled(v16))
      {
        stateDescription = [stateCopy stateDescription];
        v24 = 138543362;
        v25 = stateDescription;
        _os_signpost_emit_with_name_impl(&dword_232906000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RefreshDampeningConfigurationSucceeded", "Request from %{public}@ succeeded", &v24, 0xCu);
      }

      selfCopy2 = self;
      v19 = 1;
      v20 = 0;
    }

    else
    {
      v22 = DPLogHandle_ServiceXPCError(v14);
      if (os_signpost_enabled(v22))
      {
        stateDescription2 = [stateCopy stateDescription];
        v24 = 138543362;
        v25 = stateDescription2;
        _os_signpost_emit_with_name_impl(&dword_232906000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RefreshDampeningConfigurationFailed", "Request from %{public}@ failed: we could not instantiate a new dampening manager...", &v24, 0xCu);
      }

      v20 = "Could not instantiate refreshed dampening manager";
      selfCopy2 = self;
      v19 = 0;
    }

    [(DRSService *)selfCopy2 _sendAdminRequestReply:v19 rejectionReason:v20 requestMessage:messageCopy];
  }

  else
  {
    v13 = DPLogHandle_ServiceXPCError(hasAdminEntitlement);
    if (os_signpost_enabled(v13))
    {
      stateDescription3 = [stateCopy stateDescription];
      v24 = 138543362;
      v25 = stateDescription3;
      _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RefreshDampeningConfigurationMessageRejected", "Rejecting refresh dampening configuration request from %{public}@ due to missing entitlement", &v24, 0xCu);
    }
  }
}

- (void)_addRequestToDAFileList:(id)list
{
  v18 = *MEMORY[0x277D85DE8];
  listCopy = list;
  if (![listCopy requestOutcome])
  {
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    teamID = [listCopy teamID];
    issueCategory = [listCopy issueCategory];
    v7 = [v4 initWithFormat:@"DiagnosticRequest_%@_%@", teamID, issueCategory];

    v8 = [v7 stringByReplacingOccurrencesOfString:@" " withString:&stru_2847F1D58];

    v9 = [listCopy debugDescription];
    v15 = listCopy;
    v10 = v9;
    v11 = OSAWriteLogForSubmission();
    if (v11)
    {
      v12 = DPLogHandle_DAReporting(v11);
      if (os_signpost_enabled(v12))
      {
        *buf = 138543362;
        v17 = v10;
        v13 = "OSAWriteLogForSubmissionSuccess";
        v14 = "Wrote DA log using 'OSAWriteLogForSubmission' for %{public}@";
LABEL_7:
        _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v13, v14, buf, 0xCu);
      }
    }

    else
    {
      v12 = DPLogHandle_DAReportingError(v11);
      if (os_signpost_enabled(v12))
      {
        *buf = 138543362;
        v17 = v10;
        v13 = "OSAWriteLogForSubmissionFailed";
        v14 = "Failed to write log using 'OSAWriteLogForSubmission' for %{public}@";
        goto LABEL_7;
      }
    }
  }
}

void __38__DRSService__addRequestToDAFileList___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) jsonCompatibleDictionaryRepresentationVerbose:1];
  v13 = 0;
  v5 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v4 options:0 error:&v13];
  v6 = v13;
  v7 = v6;
  if (v5)
  {
    [v3 writeData:v5];
  }

  else
  {
    v8 = DPLogHandle_DAReportingError(v6);
    if (os_signpost_enabled(v8))
    {
      v9 = *(a1 + 40);
      v10 = [v7 localizedDescription];
      v11 = v10;
      v12 = @"Unknown";
      if (v10)
      {
        v12 = v10;
      }

      *buf = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = v12;
      _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "JSONSerializationFailure", "Failed to serialize %{public}@ due to: %{public}@", buf, 0x16u);
    }
  }
}

- (void)_postReceiptProcessingWork:(id)work
{
  v39 = *MEMORY[0x277D85DE8];
  workCopy = work;
  serviceContainer = [(DRSService *)self serviceContainer];
  newBackgroundContext = [serviceContainer newBackgroundContext];

  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__2;
  v33 = __Block_byref_object_dispose__2;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __41__DRSService__postReceiptProcessingWork___block_invoke;
  v20[3] = &unk_27899ED80;
  v7 = workCopy;
  v21 = v7;
  v8 = newBackgroundContext;
  v22 = v8;
  v23 = &v25;
  v24 = &v29;
  v9 = [v8 performBlockAndWait:v20];
  if (v26[3])
  {
    v10 = DPLogHandle_CoreData(v9);
    if (os_signpost_enabled(v10))
    {
      v11 = [v7 debugDescription];
      *buf = 138543362;
      v36 = v11;
      _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RequestRecordSave", "Saved request %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v10 = DPLogHandle_CoreDataError(v9);
    if (os_signpost_enabled(v10))
    {
      v12 = [v7 debugDescription];
      localizedDescription = [v30[5] localizedDescription];
      v14 = localizedDescription;
      v15 = @"Unknown";
      if (localizedDescription)
      {
        v15 = localizedDescription;
      }

      *buf = 138412546;
      v36 = v12;
      v37 = 2114;
      v38 = v15;
      _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RequestRecordSaveFailure", "Failed to save request %@ due to error: %{public}@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  postReceiptWorkQueue = [(DRSService *)self postReceiptWorkQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __41__DRSService__postReceiptProcessingWork___block_invoke_97;
  v18[3] = &unk_27899F2E8;
  v18[4] = self;
  v19 = v7;
  v17 = v7;
  dispatch_async(postReceiptWorkQueue, v18);
}

void __41__DRSService__postReceiptProcessingWork___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateContextWithRequest_ON_MOC_QUEUE:*(a1 + 40)];
  v2 = *(a1 + 40);
  obj = 0;
  v3 = [v2 save:&obj];
  v4 = obj;
  *(*(*(a1 + 48) + 8) + 24) = v3;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v4);
}

void *__41__DRSService__postReceiptProcessingWork___block_invoke_97(uint64_t a1)
{
  [*(a1 + 32) _addRequestToDAFileList:*(a1 + 40)];
  result = [*(a1 + 40) isExpedited];
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = [v3 _randomDelaySecWithCap:3600];

    return [v3 _registerPermissiveExpeditedUploadXPCActivity:v4];
  }

  return result;
}

- (void)_handleDRSRequestMessage:(id)message state:(id)state transaction:(id)transaction
{
  v37 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  stateCopy = state;
  v9 = [DRSRequest requestForMessage:messageCopy];
  v10 = v9;
  if (v9)
  {
    [v9 addAutomatedDeviceGroupContext];
    [v10 addHWModelContextMetadata];
    [v10 addIsLikelyCarryContextMetadata];
    fileDirectory = [objc_opt_class() fileDirectory];
    v12 = DPLogHandle_ServiceLifecycle(fileDirectory);
    v13 = DPLogHandle_ServiceLifecycleError(v12);
    DRSConfirmDirectoryIsInitialized(fileDirectory, v12, v13);

    uint64 = xpc_dictionary_get_uint64(messageCopy, "ClientMessageType");
    v15 = DPLogHandle_ServiceXPC(uint64);
    if (os_signpost_enabled(v15))
    {
      if (uint64 <= 3)
      {
        if (uint64 > 1)
        {
          if (uint64 == 2)
          {
            v16 = @"Log Donation request";
          }

          else
          {
            v16 = @"Enable Log Gathering request";
          }
        }

        else if (uint64)
        {
          if (uint64 == 1)
          {
            v16 = @"Tailspin request";
          }

          else
          {
LABEL_19:
            v16 = @"Unknown";
          }
        }

        else
        {
          v16 = @"Invalid";
        }
      }

      else
      {
        switch(uint64)
        {
          case 'd':
            v16 = @"Dampening Global Enablement";
            break;
          case 'e':
            v16 = @"Dampening Config Reset";
            break;
          case 'f':
            v16 = @"Dampening Configuration Dictionary";
            break;
          case 'g':
            v16 = @"CloudKit Work Trigger";
            break;
          case 'h':
            v16 = @"EnableLogGatheringRequest Result Injection";
            break;
          case 'i':
            v16 = @"Request Clean Trigger";
            break;
          case 'j':
            v16 = @"Refresh Dampening Configuration";
            break;
          case 'k':
            v16 = @"Update CK Config";
            break;
          case 'l':
            v16 = @"Get CK Config";
            break;
          case 'm':
            v16 = @"Reset CK Config";
            break;
          case 'n':
            v16 = @"Schedule Permissive Upload Message";
            break;
          case 'o':
            v16 = @"Cancel Scheduled Permissive Upload Message";
            break;
          case 'p':
            v16 = @"Get 'Ignore AutomatedDeviceGroup' setting";
            break;
          case 'q':
            v16 = @"Set 'Ignore AutomatedDeviceGroup' setting";
            break;
          case 'r':
            v16 = @"Get 'Upload Service Enabled' setting";
            break;
          case 's':
            v16 = @"Set 'Upload Service Enabled' setting";
            break;
          default:
            if (uint64 == 4)
            {
              v16 = @"Submit Log to CK Container request";
            }

            else
            {
              if (uint64 != 5)
              {
                goto LABEL_19;
              }

              v16 = @"RAPID Log Donation request";
            }

            break;
        }
      }

      stateDescription = [stateCopy stateDescription];
      teamID = [v10 teamID];
      issueCategory = [v10 issueCategory];
      issueDescription = [v10 issueDescription];
      v27 = 138413314;
      v28 = v16;
      v29 = 2114;
      v30 = stateDescription;
      v31 = 2114;
      v32 = teamID;
      v33 = 2114;
      v34 = issueCategory;
      v35 = 2114;
      v36 = issueDescription;
      _os_signpost_emit_with_name_impl(&dword_232906000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClientRequest", "Received '%@' from client %{public}@: %{public, name=teamID}@/%{public, name=issueCategory}@/%{public, name=issueDescription}@", &v27, 0x34u);
    }

    if ([(DRSService *)self isEnabled])
    {
      dampeningManager = [(DRSService *)self dampeningManager];
      v24 = [dampeningManager dampeningOutcomeForRequest:v10];
    }

    else
    {
      v24 = 8;
    }

    fileDirectory2 = [objc_opt_class() fileDirectory];
    [v10 performOnReceiptWork:fileDirectory2 dampeningOutcome:v24];

    v17 = [v10 replyForMessage:messageCopy];
    if (v17)
    {
      v26 = xpc_dictionary_get_remote_connection(messageCopy);
      xpc_connection_send_message(v26, v17);
    }

    [(DRSService *)self _postReceiptProcessingWork:v10];
  }

  else
  {
    v17 = DPLogHandle_ServiceXPCError(0);
    if (os_signpost_enabled(v17))
    {
      stateDescription2 = [stateCopy stateDescription];
      v27 = 138543362;
      v28 = stateDescription2;
      _os_signpost_emit_with_name_impl(&dword_232906000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidRequest", "Received invalid request from client %{public}@", &v27, 0xCu);
    }
  }
}

- (void)_finishUploadSessionWithActivity:(id)activity withState:(int64_t)state isExpedited:(BOOL)expedited transaction:(id)transaction completedSuccessfully:(BOOL)successfully endResultString:(id)string completionBlock:(id)block
{
  successfullyCopy = successfully;
  v50 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  transactionCopy = transaction;
  stringCopy = string;
  blockCopy = block;
  v19 = blockCopy;
  if (expedited)
  {
    if (!activityCopy)
    {
      goto LABEL_28;
    }

    v20 = DPLogHandle_ServiceLifecycle(blockCopy);
    if (!os_signpost_enabled(v20))
    {
      goto LABEL_27;
    }

    v21 = @"Success!";
    if (stringCopy)
    {
      v21 = stringCopy;
    }

    *buf = 138543362;
    v49 = v21;
    v22 = "CloudKitExpeditedUploadXPCActivity";
    goto LABEL_26;
  }

  v45 = transactionCopy;
  v23 = successfullyCopy;
  serviceContainer = [(DRSService *)self serviceContainer];
  date = [MEMORY[0x277CBEAA8] date];
  v47 = 0;
  v26 = [DRSRequest cullOldRequestRecordsFromPersistentContainer:serviceContainer currentDate:date errorOut:&v47];
  v27 = v47;

  v29 = DPLogHandle_ServiceLifecycle(v28);
  v30 = os_signpost_enabled(v29);
  if (v26)
  {
    if (v30)
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v29, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ContainerCullingSuccess", &unk_232980861, buf, 2u);
    }
  }

  else if (v30)
  {
    localizedDescription = [v27 localizedDescription];
    v32 = localizedDescription;
    v33 = @"Unknown";
    if (localizedDescription)
    {
      v33 = localizedDescription;
    }

    *buf = 138543362;
    v49 = v33;
    _os_signpost_emit_with_name_impl(&dword_232906000, v29, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ContainerCullingFailure", "Failed to clean container due to error: %{public}@", buf, 0xCu);
  }

  serviceContainer2 = [(DRSService *)self serviceContainer];
  v46 = 0;
  v35 = [DRSRequest unblockStrandedUploadingRecordsFromPersistentContainer:serviceContainer2 errorOut:&v46];
  v36 = v46;

  v38 = DPLogHandle_ServiceLifecycle(v37);
  v39 = os_signpost_enabled(v38);
  successfullyCopy = v23;
  if (v35)
  {
    if (v39)
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v38, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UnblockingUploadingLogsSuccess", &unk_232980861, buf, 2u);
    }
  }

  else if (v39)
  {
    localizedDescription2 = [v36 localizedDescription];
    v41 = localizedDescription2;
    v42 = @"Unknown";
    if (localizedDescription2)
    {
      v42 = localizedDescription2;
    }

    *buf = 138543362;
    v49 = v42;
    _os_signpost_emit_with_name_impl(&dword_232906000, v38, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UnblockingUploadingLogsFailure", "Failed to clean container due to error: %{public}@", buf, 0xCu);
  }

  transactionCopy = v45;
  if (activityCopy)
  {
    v20 = DPLogHandle_ServiceLifecycle(blockCopy);
    if (!os_signpost_enabled(v20))
    {
LABEL_27:

      blockCopy = xpc_activity_set_state(activityCopy, state);
      goto LABEL_28;
    }

    v43 = @"Success!";
    if (stringCopy)
    {
      v43 = stringCopy;
    }

    *buf = 138543362;
    v49 = v43;
    v22 = "CloudKitUploadXPCActivity";
LABEL_26:
    _os_signpost_emit_with_name_impl(&dword_232906000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, v22, "Ended with reason: %{public}@", buf, 0xCu);
    goto LABEL_27;
  }

LABEL_28:
  v44 = DPLogHandle_ServiceLifecycle(blockCopy);
  if (os_signpost_enabled(v44))
  {
    *buf = 138412290;
    v49 = stringCopy;
    _os_signpost_emit_with_name_impl(&dword_232906000, v44, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ServiceCKUploadSession", "Upload session finished with result: %@", buf, 0xCu);
  }

  if (v19)
  {
    (v19)[2](v19, successfullyCopy, stringCopy);
  }
}

- (void)_finishReportingStatsSessionWithActivity:(id)activity withState:(int64_t)state transaction:(id)transaction endResultString:(id)string
{
  v14 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (activity)
  {
    activityCopy = activity;
    v10 = DPLogHandle_ServiceLifecycle(activityCopy);
    if (os_signpost_enabled(v10))
    {
      v11 = @"Success!";
      if (stringCopy)
      {
        v11 = stringCopy;
      }

      v12 = 138543362;
      v13 = v11;
      _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CloudKitReportStatsXPCActivity", "Ended with reason: %{public}@", &v12, 0xCu);
    }

    xpc_activity_set_state(activityCopy, state);
  }
}

- (void)_ckQueueDownstreamOnly_uploadInFlightWithTransaction:(id)transaction xpcActivity:(id)activity ckHelper:(id)helper isExpedited:(BOOL)expedited completionBlock:(id)block
{
  transactionCopy = transaction;
  activityCopy = activity;
  helperCopy = helper;
  blockCopy = block;
  uploadRequestLookupQueue = [(DRSService *)self uploadRequestLookupQueue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __116__DRSService__ckQueueDownstreamOnly_uploadInFlightWithTransaction_xpcActivity_ckHelper_isExpedited_completionBlock___block_invoke;
  v21[3] = &unk_27899F338;
  expeditedCopy = expedited;
  v21[4] = self;
  v22 = activityCopy;
  v24 = helperCopy;
  v25 = blockCopy;
  v23 = transactionCopy;
  v17 = helperCopy;
  v18 = blockCopy;
  v19 = transactionCopy;
  v20 = activityCopy;
  dispatch_sync(uploadRequestLookupQueue, v21);
}

void __116__DRSService__ckQueueDownstreamOnly_uploadInFlightWithTransaction_xpcActivity_ckHelper_isExpedited_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = DPLogHandle_ServiceLifecycle(a1);
  if (os_signpost_enabled(v3))
  {
    if (*(a1 + 72))
    {
      v4 = "YES";
    }

    else
    {
      v4 = "NO";
    }

    *buf = 136315138;
    v46 = v4;
    _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ServiceCKUploadSession", "isExpedited = %s", buf, 0xCu);
  }

  v5 = [*(a1 + 32) serviceContainer];
  v6 = [v5 newBackgroundContext];

  if (kDABugTypeString_block_invoke_onceToken != -1)
  {
    __116__DRSService__ckQueueDownstreamOnly_uploadInFlightWithTransaction_xpcActivity_ckHelper_isExpedited_completionBlock___block_invoke_cold_1();
  }

  v7 = +[DRSRequest leastRecentDateFirstSortDescriptor];
  v8 = &kDABugTypeString_block_invoke_waitingForExpeditedUploadPredicate;
  if (!*(a1 + 72))
  {
    v8 = &kDABugTypeString_block_invoke_waitingForUploadPredicate;
  }

  v9 = *v8;
  v44 = v7;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
  v42 = 0;
  v11 = [DRSRequest requestsForFilterPredicate:v9 context:v6 sortDescriptors:v10 fetchLimit:0 errorOut:&v42];
  v12 = v42;

  if (!v12)
  {
    v18 = [*(a1 + 32) isEnabled];
    if (v18)
    {
      if (!v11)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = DPLogHandle_ServiceLifecycle(v18);
      if (os_signpost_enabled(v19))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v19, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "UploadSessionShortCircuit", "Short-circuiting upload since the upload service is not enabled", buf, 2u);
      }

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v20 = v11;
      v21 = [v20 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v39;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v39 != v23)
            {
              objc_enumerationMutation(v20);
            }

            [*(*(&v38 + 1) + 8 * i) updateToState:4103 errorDescription:0 errorOut:0];
          }

          v22 = [v20 countByEnumeratingWithState:&v38 objects:v43 count:16];
        }

        while (v22);
      }

      v11 = MEMORY[0x277CBEBF8];
    }

    if ([v11 count])
    {
      v25 = *(a1 + 56);
      v26 = *(a1 + 40);
      v27 = [*(a1 + 32) _remainingSessionUploadQuotaBytesWithContext:v6];
      v28 = [*(a1 + 32) serviceContainer];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __116__DRSService__ckQueueDownstreamOnly_uploadInFlightWithTransaction_xpcActivity_ckHelper_isExpedited_completionBlock___block_invoke_120;
      v31[3] = &unk_27899F310;
      v29 = *(a1 + 40);
      v30 = *(a1 + 32);
      v32 = v29;
      v33 = v30;
      v11 = v11;
      v34 = v11;
      v37 = *(a1 + 72);
      v35 = *(a1 + 48);
      v36 = *(a1 + 64);
      [v25 uploadRequests:v11 contactDecisionServer:1 xpcActivity:v26 remainingUploadQuota:v27 backingPersistentContainer:v28 completionHandler:v31];

      goto LABEL_30;
    }

LABEL_29:
    [*(a1 + 32) _finishUploadSessionWithActivity:*(a1 + 40) withState:5 isExpedited:*(a1 + 72) transaction:*(a1 + 48) completedSuccessfully:1 endResultString:@"Success (no outstanding requests)!" completionBlock:*(a1 + 64)];
    goto LABEL_30;
  }

  v13 = MEMORY[0x277CCACA8];
  v14 = [v12 localizedDescription];
  v15 = v14;
  v16 = @"Unknown";
  if (v14)
  {
    v16 = v14;
  }

  v17 = [v13 stringWithFormat:@"Request fetch error: %@", v16];

  [*(a1 + 32) _finishUploadSessionWithActivity:*(a1 + 40) withState:5 isExpedited:*(a1 + 72) transaction:*(a1 + 48) completedSuccessfully:0 endResultString:v17 completionBlock:*(a1 + 64)];
LABEL_30:
}

void __116__DRSService__ckQueueDownstreamOnly_uploadInFlightWithTransaction_xpcActivity_ckHelper_isExpedited_completionBlock___block_invoke_103()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"requestState == %llu", 1];
  v1 = kDABugTypeString_block_invoke_waitingForUploadPredicate;
  kDABugTypeString_block_invoke_waitingForUploadPredicate = v0;

  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"requestState == %llu AND isExpedited == YES", 1];
  v3 = kDABugTypeString_block_invoke_waitingForExpeditedUploadPredicate;
  kDABugTypeString_block_invoke_waitingForExpeditedUploadPredicate = v2;
}

void __116__DRSService__ckQueueDownstreamOnly_uploadInFlightWithTransaction_xpcActivity_ckHelper_isExpedited_completionBlock___block_invoke_120(uint64_t a1, void *a2, void *a3, void *a4)
{
  v72 = *MEMORY[0x277D85DE8];
  v46 = a2;
  v45 = a3;
  v44 = a4;
  v7 = *(a1 + 32);
  if (v7)
  {
    should_defer = xpc_activity_should_defer(v7);
    v9 = 5;
    if (should_defer)
    {
      v9 = 3;
    }
  }

  else
  {
    v9 = 5;
  }

  v43 = v9;
  v10 = [*(a1 + 40) serviceContainer];
  v11 = [v10 newBackgroundContext];

  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__2;
  v68 = __Block_byref_object_dispose__2;
  v69 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __116__DRSService__ckQueueDownstreamOnly_uploadInFlightWithTransaction_xpcActivity_ckHelper_isExpedited_completionBlock___block_invoke_2;
  v55[3] = &unk_27899ED80;
  v56 = *(a1 + 48);
  v57 = v11;
  v58 = &v60;
  v59 = &v64;
  v42 = v57;
  [v57 performBlockAndWait:v55];
  if (v61[3])
  {
    if (v46)
    {
      v12 = MEMORY[0x277CCACA8];
      v13 = [v46 localizedDescription];
      v14 = v13;
      v15 = @"Unknown";
      if (v13)
      {
        v15 = v13;
      }

      v16 = [v12 stringWithFormat:@"Decision server error: %@", v15];
    }

    else
    {
      if (v45)
      {
        v17 = [@"CF error(s):\n" mutableCopy];
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v26 = v45;
        v27 = [v26 countByEnumeratingWithState:&v51 objects:v71 count:16];
        if (v27)
        {
          v28 = *v52;
          do
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v52 != v28)
              {
                objc_enumerationMutation(v26);
              }

              v30 = [*(*(&v51 + 1) + 8 * i) localizedDescription];
              v31 = v30;
              if (v30)
              {
                v32 = v30;
              }

              else
              {
                v32 = @"Unknown";
              }

              [v17 appendFormat:@"%@\n", v32];
            }

            v27 = [v26 countByEnumeratingWithState:&v51 objects:v71 count:16];
          }

          while (v27);
        }
      }

      else
      {
        v17 = 0;
      }

      if (!v44)
      {
        goto LABEL_13;
      }

      v14 = [@"Upload error(s):\n" mutableCopy];
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v34 = v44;
      v35 = [v34 countByEnumeratingWithState:&v47 objects:v70 count:16];
      if (v35)
      {
        v36 = *v48;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v48 != v36)
            {
              objc_enumerationMutation(v34);
            }

            v38 = [*(*(&v47 + 1) + 8 * j) localizedDescription];
            v39 = v38;
            if (v38)
            {
              v40 = v38;
            }

            else
            {
              v40 = @"Unknown";
            }

            [v14 appendFormat:@"%@\n", v40];
          }

          v35 = [v34 countByEnumeratingWithState:&v47 objects:v70 count:16];
        }

        while (v35);
      }

      if (v17)
      {
        v41 = [v17 stringByAppendingString:v14];
        goto LABEL_12;
      }

      v16 = v14;
      v14 = v16;
    }

    v17 = v16;
LABEL_12:

LABEL_13:
    v19 = *(a1 + 32);
    v18 = *(a1 + 40);
    v20 = *(a1 + 72);
    v21 = *(a1 + 56);
    if (v17)
    {
      [v18 _finishUploadSessionWithActivity:v19 withState:v43 isExpedited:v20 transaction:v21 completedSuccessfully:0 endResultString:v17 completionBlock:*(a1 + 64)];
    }

    else
    {
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Successfully uploaded %llu requests!", objc_msgSend(*(a1 + 48), "count")];
      [v18 _finishUploadSessionWithActivity:v19 withState:v43 isExpedited:v20 transaction:v21 completedSuccessfully:1 endResultString:v33 completionBlock:*(a1 + 64)];
    }

    goto LABEL_31;
  }

  v22 = MEMORY[0x277CCACA8];
  v23 = [v65[5] localizedDescription];
  v24 = v23;
  v25 = @"Unknown";
  if (v23)
  {
    v25 = v23;
  }

  v17 = [v22 stringWithFormat:@"Request upload request state update error: %@", v25];

  [*(a1 + 40) _finishUploadSessionWithActivity:*(a1 + 32) withState:v43 isExpedited:*(a1 + 72) transaction:*(a1 + 56) completedSuccessfully:0 endResultString:v17 completionBlock:*(a1 + 64)];
LABEL_31:

  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v64, 8);
}

void __116__DRSService__ckQueueDownstreamOnly_uploadInFlightWithTransaction_xpcActivity_ckHelper_isExpedited_completionBlock___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v11 + 1) + 8 * v6++) updateContextWithRequest_ON_MOC_QUEUE:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v7 = *(a1 + 40);
  obj = 0;
  v8 = [v7 save:&obj];
  v9 = obj;
  *(*(*(a1 + 48) + 8) + 24) = v8;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v9);
}

- (void)_ckQueueOnly_submitOutstandingEnableDataGatheringQueriesWithTransaction:(id)transaction xpcActivity:(id)activity ckHelper:(id)helper followupWorkBlock:(id)block
{
  v34[1] = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  activityCopy = activity;
  helperCopy = helper;
  blockCopy = block;
  v14 = DPLogHandle_ServiceLifecycle(blockCopy);
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ServiceCKEnableDataGatheringQueriesSession", &unk_232980861, buf, 2u);
  }

  serviceContainer = [(DRSService *)self serviceContainer];
  newBackgroundContext = [serviceContainer newBackgroundContext];

  if (_ckQueueOnly_submitOutstandingEnableDataGatheringQueriesWithTransaction_xpcActivity_ckHelper_followupWorkBlock__onceToken != -1)
  {
    [DRSService _ckQueueOnly_submitOutstandingEnableDataGatheringQueriesWithTransaction:xpcActivity:ckHelper:followupWorkBlock:];
  }

  v17 = +[DRSEnableDataGatheringQuery leastRecentDateFirstSortDescriptor];
  v34[0] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];

  v31 = 0;
  v19 = [DRSEnableDataGatheringQuery enableDataGatheringQueriesForFilterPredicate:_ckQueueOnly_submitOutstandingEnableDataGatheringQueriesWithTransaction_xpcActivity_ckHelper_followupWorkBlock__outstandingQueryPredicate context:newBackgroundContext sortDescriptors:v18 fetchLimit:0 errorOut:&v31];
  v20 = v31;
  v21 = v20;
  if (v20)
  {
    v22 = DPLogHandle_ServiceLifecycle(v20);
    if (os_signpost_enabled(v22))
    {
      localizedDescription = [v21 localizedDescription];
      v24 = localizedDescription;
      v25 = @"Unknown";
      if (localizedDescription)
      {
        v25 = localizedDescription;
      }

      *buf = 138543362;
      v33 = v25;
      _os_signpost_emit_with_name_impl(&dword_232906000, v22, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ServiceCKEnableDataGatheringQueriesSession", "ERROR: Failed to look up outstanding queries due to error: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (v19)
    {
      v20 = [v19 count];
      if (v20)
      {
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __125__DRSService__ckQueueOnly_submitOutstandingEnableDataGatheringQueriesWithTransaction_xpcActivity_ckHelper_followupWorkBlock___block_invoke_146;
        v26[3] = &unk_27899F360;
        v26[4] = self;
        v27 = v19;
        v30 = blockCopy;
        v28 = transactionCopy;
        v29 = activityCopy;
        [helperCopy shouldEnableDataGathering:v27 xpcActivity:v29 replyHandler:v26];

        goto LABEL_17;
      }
    }

    v22 = DPLogHandle_ServiceLifecycle(v20);
    if (os_signpost_enabled(v22))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v22, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ServiceCKEnableDataGatheringQueriesSession", "No outstanding queries so no need to contact decision server", buf, 2u);
    }
  }

  if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy, transactionCopy, activityCopy);
  }

LABEL_17:
}

void __125__DRSService__ckQueueOnly_submitOutstandingEnableDataGatheringQueriesWithTransaction_xpcActivity_ckHelper_followupWorkBlock___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"response == %llu", 2];
  v1 = _ckQueueOnly_submitOutstandingEnableDataGatheringQueriesWithTransaction_xpcActivity_ckHelper_followupWorkBlock__outstandingQueryPredicate;
  _ckQueueOnly_submitOutstandingEnableDataGatheringQueriesWithTransaction_xpcActivity_ckHelper_followupWorkBlock__outstandingQueryPredicate = v0;
}

void __125__DRSService__ckQueueOnly_submitOutstandingEnableDataGatheringQueriesWithTransaction_xpcActivity_ckHelper_followupWorkBlock___block_invoke_146(uint64_t a1, void *a2, void *a3, void *a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) serviceContainer];
  v11 = [v10 newBackgroundContext];

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__2;
  v37 = __Block_byref_object_dispose__2;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __125__DRSService__ckQueueOnly_submitOutstandingEnableDataGatheringQueriesWithTransaction_xpcActivity_ckHelper_followupWorkBlock___block_invoke_2;
  v24 = &unk_27899ED80;
  v25 = *(a1 + 40);
  v12 = v11;
  v26 = v12;
  v27 = &v29;
  v28 = &v33;
  v13 = [v12 performBlockAndWait:&v21];
  if (v30[3])
  {
    v14 = DPLogHandle_ServiceLifecycle(v13);
    if (os_signpost_enabled(v14))
    {
      v15 = [*(a1 + 40) count];
      *buf = 67109120;
      LODWORD(v40) = v15;
      _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ServiceCKEnableDataGatheringQueriesSession", "Successfully processed %u outstanding queries", buf, 8u);
    }
  }

  else
  {
    v14 = DPLogHandle_ServiceLifecycle(v13);
    if (os_signpost_enabled(v14))
    {
      v16 = [v34[5] localizedDescription];
      v17 = v16;
      v18 = @"Unknown";
      if (v16)
      {
        v18 = v16;
      }

      *buf = 138543362;
      v40 = v18;
      _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ServiceCKEnableDataGatheringQueriesSession", "ERROR: Failed to save updated queries due to error: %{public}@", buf, 0xCu);
    }
  }

  v19 = *(a1 + 64);
  if (v19)
  {
    (*(v19 + 16))(v19, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    v20 = DPLogHandle_ServiceLifecycle(0);
    if (os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FollowUpBlockMissing", &unk_232980861, buf, 2u);
    }
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
}

void __125__DRSService__ckQueueOnly_submitOutstandingEnableDataGatheringQueriesWithTransaction_xpcActivity_ckHelper_followupWorkBlock___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v11 + 1) + 8 * v6++) updateContextWithDataGatheringQuery_ON_MOC_QUEUE:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v7 = *(a1 + 40);
  obj = 0;
  v8 = [v7 save:&obj];
  v9 = obj;
  *(*(*(a1 + 48) + 8) + 24) = v8;
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v9);
}

- (void)_runCloudKitUploadWorkSessionWithTransaction:(id)transaction xpcActivity:(id)activity isExpedited:(BOOL)expedited completionBlock:(id)block
{
  expeditedCopy = expedited;
  transactionCopy = transaction;
  activityCopy = activity;
  blockCopy = block;
  [(DRSService *)self _updateUploadDate];
  if (activityCopy && !xpc_activity_set_state(activityCopy, 4))
  {
    [(DRSService *)self _finishUploadSessionWithActivity:activityCopy withState:5 isExpedited:expeditedCopy transaction:transactionCopy completedSuccessfully:0 endResultString:@"Failed to mark activity as continued completionBlock:so bailing on activity", blockCopy];
  }

  else
  {
    cloudKitQueue = [(DRSService *)self cloudKitQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __99__DRSService__runCloudKitUploadWorkSessionWithTransaction_xpcActivity_isExpedited_completionBlock___block_invoke;
    block[3] = &unk_27899F3B0;
    block[4] = self;
    v18 = expeditedCopy;
    v17 = blockCopy;
    v15 = transactionCopy;
    v16 = activityCopy;
    dispatch_async(cloudKitQueue, block);
  }
}

void __99__DRSService__runCloudKitUploadWorkSessionWithTransaction_xpcActivity_isExpedited_completionBlock___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __99__DRSService__runCloudKitUploadWorkSessionWithTransaction_xpcActivity_isExpedited_completionBlock___block_invoke_2;
  aBlock[3] = &unk_27899F388;
  aBlock[4] = *(a1 + 32);
  v10 = *(a1 + 64);
  v9 = *(a1 + 56);
  v2 = _Block_copy(aBlock);
  v3 = v2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  if (*(a1 + 64) == 1)
  {
    (*(v2 + 2))(v2, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = [v6 ckHelper];
    [v6 _ckQueueOnly_submitOutstandingEnableDataGatheringQueriesWithTransaction:v4 xpcActivity:v5 ckHelper:v7 followupWorkBlock:v3];
  }
}

void __99__DRSService__runCloudKitUploadWorkSessionWithTransaction_xpcActivity_isExpedited_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = v5;
  if (v5 && xpc_activity_should_defer(v5))
  {
    [*(a1 + 32) _finishUploadSessionWithActivity:v6 withState:3 isExpedited:*(a1 + 48) transaction:v9 completedSuccessfully:0 endResultString:@"Deferral before upload work" completionBlock:*(a1 + 40)];
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [v7 ckHelper];
    [v7 _ckQueueDownstreamOnly_uploadInFlightWithTransaction:v9 xpcActivity:v6 ckHelper:v8 isExpedited:*(a1 + 48) completionBlock:*(a1 + 40)];
  }
}

- (void)_runReportingSessionWithTransaction:(id)transaction xpcActivity:(id)activity
{
  transactionCopy = transaction;
  activityCopy = activity;
  v8 = activityCopy;
  if (activityCopy && !xpc_activity_set_state(activityCopy, 4))
  {
    [(DRSService *)self _finishReportingStatsSessionWithActivity:v8 withState:5 transaction:transactionCopy endResultString:@"Failed to mark activity as continued, so bailing on activity"];
  }

  else
  {
    cloudKitQueue = [(DRSService *)self cloudKitQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__DRSService__runReportingSessionWithTransaction_xpcActivity___block_invoke;
    block[3] = &unk_27899F400;
    block[4] = self;
    v11 = v8;
    v12 = transactionCopy;
    dispatch_async(cloudKitQueue, block);
  }
}

void __62__DRSService__runReportingSessionWithTransaction_xpcActivity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceContainer];
  v3 = [v2 newBackgroundContext];

  v13 = 0;
  v4 = [DRSRequest unreportedTerminalRequestsFromContext:v3 sortDescriptors:0 fetchLimit:0 errorOut:&v13];
  v5 = v13;
  v6 = [*(a1 + 32) ckHelper];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__DRSService__runReportingSessionWithTransaction_xpcActivity___block_invoke_2;
  v9[3] = &unk_27899F3D8;
  v7 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v4;
  v11 = v7;
  v12 = *(a1 + 48);
  v8 = v4;
  [v6 reportTerminalRequestStats:v8 xpcActivity:v7 replyHandler:v9];
}

void __62__DRSService__runReportingSessionWithTransaction_xpcActivity___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    v5 = [*(a1 + 40) count];
    v6 = [v3 localizedDescription];
    v7 = v6;
    v8 = @"Unknown";
    if (v6)
    {
      v8 = v6;
    }

    v9 = [v4 initWithFormat:@"Failed to report stats for %lu requests due to error: %@", v5, v8];

    [*(a1 + 32) _finishReportingStatsSessionWithActivity:*(a1 + 48) withState:5 transaction:*(a1 + 56) endResultString:v9];
  }

  else
  {
    v10 = [*(a1 + 32) serviceContainer];
    v11 = [v10 newBackgroundContext];

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __62__DRSService__runReportingSessionWithTransaction_xpcActivity___block_invoke_3;
    v13[3] = &unk_27899F2E8;
    v14 = *(a1 + 40);
    v15 = v11;
    v9 = v11;
    [v9 performBlockAndWait:v13];
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Successfully reported stats for %lu requests", objc_msgSend(*(a1 + 40), "count")];
    [*(a1 + 32) _finishReportingStatsSessionWithActivity:*(a1 + 48) withState:5 transaction:*(a1 + 56) endResultString:v12];
  }
}

void __62__DRSService__runReportingSessionWithTransaction_xpcActivity___block_invoke_3(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        [v7 setHasBeenCountedByTelemetry:1];
        [v7 updateContextWithRequest_ON_MOC_QUEUE:*(a1 + 40)];
      }

      v4 = [v2 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v4);
  }

  v8 = *(a1 + 40);
  v17 = 0;
  v9 = [v8 save:&v17];
  v10 = v17;
  v11 = v10;
  if (v9)
  {
    v12 = DPLogHandle_CoreData(v10);
    if (os_signpost_enabled(v12))
    {
      v13 = [*(a1 + 32) count];
      *buf = 134217984;
      v23 = v13;
      _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReportRequestStatsSave", "Successfully reported stats for %lu records", buf, 0xCu);
    }
  }

  else
  {
    v12 = DPLogHandle_CoreDataError(v10);
    if (os_signpost_enabled(v12))
    {
      v14 = [v11 localizedDescription];
      v15 = v14;
      v16 = @"Unknown";
      if (v14)
      {
        v16 = v14;
      }

      *buf = 138543362;
      v23 = v16;
      _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReportRequestStatsSaveFailure", "Failed to save reported request stats to error: %{public}@", buf, 0xCu);
    }
  }
}

- (double)_resolvedEnableDataGatheringQueryAcceptanceRate
{
  v2 = +[DRSSystemProfile sharedInstance];
  isInternal = [v2 isInternal];

  result = 1.0;
  if ((isInternal & 1) == 0)
  {
    v5 = +[DRSSystemProfile sharedInstance];
    isSeed = [v5 isSeed];

    result = 0.01;
    if (isSeed)
    {
      return 0.1;
    }
  }

  return result;
}

- (BOOL)_enableDataGatheringQueryPassesRandomRejection
{
  [(DRSService *)self _resolvedEnableDataGatheringQueryAcceptanceRate];

  return [DRSDampeningManager passesAcceptanceRate:?];
}

- (BOOL)_persistEnableLogGatheringResult:(id)result workingContext:(id)context
{
  v40 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  contextCopy = context;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__2;
  v34 = __Block_byref_object_dispose__2;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __62__DRSService__persistEnableLogGatheringResult_workingContext___block_invoke;
  v21 = &unk_27899ED80;
  v7 = resultCopy;
  v22 = v7;
  v8 = contextCopy;
  v23 = v8;
  v24 = &v26;
  v25 = &v30;
  v9 = [v8 performBlockAndWait:&v18];
  if (v27[3])
  {
    v10 = DPLogHandle_CoreData(v9);
    if (os_signpost_enabled(v10))
    {
      v11 = [v7 debugDescription];
      *buf = 138543362;
      v37 = v11;
      _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EnableDataGatheringRecordSave", "Saved enable data gathering query %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v10 = DPLogHandle_CoreDataError(v9);
    if (os_signpost_enabled(v10))
    {
      v12 = [v7 debugDescription];
      localizedDescription = [v31[5] localizedDescription];
      v14 = localizedDescription;
      v15 = @"Unknown";
      if (localizedDescription)
      {
        v15 = localizedDescription;
      }

      *buf = 138543618;
      v37 = v12;
      v38 = 2114;
      v39 = v15;
      _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EnableDataGatheringRecordSaveFailure", "Failed to enable data gathering query %{public}@ due to error: %{public}@", buf, 0x16u);
    }
  }

  v16 = *(v27 + 24);
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);

  return v16 & 1;
}

void __62__DRSService__persistEnableLogGatheringResult_workingContext___block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateContextWithDataGatheringQuery_ON_MOC_QUEUE:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 56) + 8);
  obj = *(v3 + 40);
  v4 = [v2 save:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v4;
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

- (id)_cachedMatchingQuery:(id)query workingContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v18 = 0;
  v6 = [DRSEnableDataGatheringQuery cachedQueryResponseForQuery:queryCopy inContext:context errorOut:&v18];
  v7 = v18;
  v8 = v7;
  if (!v7)
  {
    if (!v6)
    {
      v15 = DPLogHandle_CoreData(0);
      if (os_signpost_enabled(v15))
      {
        v16 = [queryCopy debugDescription];
        *buf = 138543362;
        v20 = v16;
        _os_signpost_emit_with_name_impl(&dword_232906000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CachedQueryResultNotFound", "No cached result for '%{public}@'", buf, 0xCu);
      }

      goto LABEL_13;
    }

LABEL_9:
    v14 = v6;
    goto LABEL_14;
  }

  v9 = DPLogHandle_CoreDataError(v7);
  if (os_signpost_enabled(v9))
  {
    v10 = [queryCopy debugDescription];
    localizedDescription = [v8 localizedDescription];
    v12 = localizedDescription;
    v13 = @"Unknown";
    if (localizedDescription)
    {
      v13 = localizedDescription;
    }

    *buf = 138543618;
    v20 = v10;
    v21 = 2114;
    v22 = v13;
    _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CachedQueryResultFetchFailure", "Encountered failure when trying to fetch cached results for '%{public}@': %{public}@", buf, 0x16u);
  }

  if (v6)
  {
    goto LABEL_9;
  }

LABEL_13:
  v14 = 0;
LABEL_14:

  return v14;
}

- (void)_handleEnableLogGatheringRequest:(id)request state:(id)state transaction:(id)transaction
{
  v45 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  stateCopy = state;
  v9 = [[DRSEnableDataGatheringQuery alloc] initWithXPCDict:requestCopy];
  reply = xpc_dictionary_create_reply(requestCopy);
  v11 = reply;
  if (v9)
  {
    v12 = +[DRSSystemProfile sharedInstance];
    isLogUploadEnabled = [v12 isLogUploadEnabled];

    if (isLogUploadEnabled)
    {
      serviceContainer = [(DRSService *)self serviceContainer];
      newBackgroundContext = [serviceContainer newBackgroundContext];

      v16 = [(DRSService *)self _cachedMatchingQuery:v9 workingContext:newBackgroundContext];
      if (v16)
      {
        v17 = v16;
        response = [v16 response];
        if (!response || (response = [v17 response], response == 2))
        {
          v19 = DPLogHandle_CoreData(response);
          if (os_signpost_enabled(v19))
          {
            v20 = [(DRSEnableDataGatheringQuery *)v9 debugDescription];
            v21 = [v17 debugDescription];
            *buf = 138543618;
            v42 = v20;
            v43 = 2114;
            v44 = v21;
            _os_signpost_emit_with_name_impl(&dword_232906000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ReturningCachedQueryResult", "Returning cached result for enable query '%{public}@': %{public}@", buf, 0x16u);
          }

          xpc_dictionary_set_uint64(v11, "EnableLogGatheringQueryReply", [v17 response]);
          v22 = xpc_dictionary_get_remote_connection(requestCopy);
          xpc_connection_send_message(v22, v11);

LABEL_23:
          goto LABEL_24;
        }

        v32 = DPLogHandle_CoreData(response);
        if (os_signpost_enabled(v32))
        {
          v33 = [(DRSEnableDataGatheringQuery *)v9 debugDescription];
          v34 = [v17 debugDescription];
          *buf = 138412546;
          v42 = v33;
          v43 = 2114;
          v44 = v34;
          _os_signpost_emit_with_name_impl(&dword_232906000, v32, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "IgnoringCachedQueryYES", "Asking again for %@ (Ignoring cached YES result '%{public}@')", buf, 0x16u);
        }

        [(DRSEnableDataGatheringQuery *)v9 setIsContinue:1];
        xpc_dictionary_set_uint64(v11, "EnableLogGatheringQueryReply", [v17 response]);
        v35 = xpc_dictionary_get_remote_connection(requestCopy);
        xpc_connection_send_message(v35, v11);
      }

      else if (![(DRSService *)self _enableDataGatheringQueryPassesRandomRejection])
      {
        v29 = objc_alloc(MEMORY[0x277CCACA8]);
        [(DRSService *)self _resolvedEnableDataGatheringQueryAcceptanceRate];
        v17 = [v29 initWithFormat:@"Randomized rejection (%.2f%% acceptance rate)", v30 * 100.0];
        v31 = 0;
LABEL_20:
        [(DRSEnableDataGatheringQuery *)v9 setResponse:v31];
        [(DRSEnableDataGatheringQuery *)v9 setRejectionReason:v17];
        xpc_dictionary_set_uint64(v11, "EnableLogGatheringQueryReply", v31);
        v36 = xpc_dictionary_get_remote_connection(requestCopy);
        xpc_connection_send_message(v36, v11);

        v38 = DPLogHandle_ServiceXPC(v37);
        if (os_signpost_enabled(v38))
        {
          v39 = [(DRSEnableDataGatheringQuery *)v9 debugDescription];
          stateDescription = [stateCopy stateDescription];
          *buf = 138412546;
          v42 = v39;
          v43 = 2114;
          v44 = stateDescription;
          _os_signpost_emit_with_name_impl(&dword_232906000, v38, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EnableLogGatheringQueryReply", "Replied %@ to query from %{public}@", buf, 0x16u);
        }

        [(DRSService *)self _persistEnableLogGatheringResult:v9 workingContext:newBackgroundContext];
        goto LABEL_23;
      }

      v17 = 0;
      v31 = 2;
      goto LABEL_20;
    }

    xpc_dictionary_set_uint64(v11, "EnableLogGatheringQueryReply", 0);
    v27 = xpc_dictionary_get_remote_connection(requestCopy);
    xpc_connection_send_message(v27, v11);

    newBackgroundContext = DPLogHandle_EnableDataGatheringQuery(v28);
    if (os_signpost_enabled(newBackgroundContext))
    {
      *buf = 0;
      v25 = "CustomerDoesNotApprove";
      v26 = "Rejecting enable data gathering query due to lack of customer approval";
      goto LABEL_13;
    }
  }

  else
  {
    xpc_dictionary_set_uint64(reply, "EnableLogGatheringQueryReply", 3uLL);
    v23 = xpc_dictionary_get_remote_connection(requestCopy);
    xpc_connection_send_message(v23, v11);

    newBackgroundContext = DPLogHandle_EnableDataGatheringQueryError(v24);
    if (os_signpost_enabled(newBackgroundContext))
    {
      *buf = 0;
      v25 = "InvalidEnableDataGatheringQuery";
      v26 = "Rejecting enable data gathering query due to malformed message";
LABEL_13:
      _os_signpost_emit_with_name_impl(&dword_232906000, newBackgroundContext, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v25, v26, buf, 2u);
    }
  }

LABEL_24:
}

- (void)_sendAdminRequestReply:(BOOL)reply rejectionReason:(const char *)reason requestMessage:(id)message
{
  replyCopy = reply;
  v18 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  reply = xpc_dictionary_create_reply(messageCopy);
  xpc_dictionary_set_BOOL(reply, "AdminRequest_Reply", replyCopy);
  if (reason && !replyCopy)
  {
    xpc_dictionary_set_string(reply, "AdminRequest_RejectionReason", reason);
  }

  v10 = DPLogHandle_ClientXPC(v9);
  if (os_signpost_enabled(v10))
  {
    v11 = "Rejected";
    if (replyCopy)
    {
      v11 = "Accepted";
    }

    reasonCopy = "Success!";
    if (reason)
    {
      reasonCopy = reason;
    }

    v14 = 136315394;
    v15 = v11;
    v16 = 2082;
    v17 = reasonCopy;
    _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "AdminRequestReply", "%s: %{public}s", &v14, 0x16u);
  }

  v13 = xpc_dictionary_get_remote_connection(messageCopy);

  xpc_connection_send_message(v13, reply);
}

- (void)_rejectInjectRequest:(id)request state:(id)state reason:(const char *)reason
{
  v15 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v9 = DPLogHandle_ServiceXPCError([(DRSService *)self _sendAdminRequestReply:0 rejectionReason:reason requestMessage:request]);
  if (os_signpost_enabled(v9))
  {
    stateDescription = [stateCopy stateDescription];
    v11 = 138543618;
    v12 = stateDescription;
    v13 = 2080;
    reasonCopy = reason;
    _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InjectEnableLogGatheringResultResult_Rejected", "Rejecting inject enable log gathering result request from %{public}@ due reason: %s", &v11, 0x16u);
  }
}

- (void)_handleInjectEnableLogGatheringRequestResult:(id)result state:(id)state
{
  v32 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  stateCopy = state;
  if (([stateCopy hasAdminEntitlement] & 1) == 0)
  {
    v12 = "Missing required entitlement";
    goto LABEL_9;
  }

  v8 = +[DRSSystemProfile sharedInstance];
  isInternal = [v8 isInternal];

  if ((isInternal & 1) == 0)
  {
    v12 = "Device is running non-Internal build";
    goto LABEL_9;
  }

  v10 = xpc_dictionary_get_value(resultCopy, "InjectEnableLogGatheringQueryInjectedResult");

  if (!v10)
  {
    v12 = "Missing injected result parameter";
    goto LABEL_9;
  }

  uint64 = xpc_dictionary_get_uint64(resultCopy, "InjectEnableLogGatheringQueryInjectedResult");
  if ((uint64 & 0xFE) != 0)
  {
    v12 = "Injected response is not a valid value";
LABEL_9:
    [(DRSService *)self _rejectInjectRequest:resultCopy state:stateCopy reason:v12];
    goto LABEL_10;
  }

  v13 = uint64;
  v14 = [[DRSEnableDataGatheringQuery alloc] initWithXPCDict:resultCopy];
  if (!v14)
  {
    v12 = "Malformed query parameters";
    goto LABEL_9;
  }

  v15 = v14;
  serviceContainer = [(DRSService *)self serviceContainer];
  newBackgroundContext = [serviceContainer newBackgroundContext];

  v18 = [(DRSService *)self _cachedMatchingQuery:v15 workingContext:newBackgroundContext];
  v19 = v18;
  if (v18)
  {
    v20 = DPLogHandle_CoreData(v18);
    if (os_signpost_enabled(v20))
    {
      v21 = [(DRSEnableDataGatheringQuery *)v15 debugDescription];
      v22 = [v19 debugDescription];
      v28 = 138543618;
      v29 = v21;
      v30 = 2114;
      v31 = v22;
      _os_signpost_emit_with_name_impl(&dword_232906000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UpdatingCachedQueryResultFound", "Updating cached result for '%{public}@': %{public}@", &v28, 0x16u);
    }

    v23 = v19;
    v15 = v23;
  }

  [(DRSEnableDataGatheringQuery *)v15 setResponse:v13];
  if ([(DRSEnableDataGatheringQuery *)v15 response]!= 1)
  {
    [(DRSEnableDataGatheringQuery *)v15 setRejectionReason:@"Injected response"];
  }

  v24 = [(DRSService *)self _persistEnableLogGatheringResult:v15 workingContext:newBackgroundContext];
  if (v24)
  {
    v25 = DPLogHandle_ServiceXPC(v24);
    if (os_signpost_enabled(v25))
    {
      stateDescription = [stateCopy stateDescription];
      v27 = [(DRSEnableDataGatheringQuery *)v15 debugDescription];
      v28 = 138543618;
      v29 = stateDescription;
      v30 = 2114;
      v31 = v27;
      _os_signpost_emit_with_name_impl(&dword_232906000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InjectEnableLogGatheringResultResult_Accepted", "Accepted inject enable log gathering result request from %{public}@: %{public}@", &v28, 0x16u);
    }

    [(DRSService *)self _sendAdminRequestReply:1 rejectionReason:0 requestMessage:resultCopy];
  }

  else
  {
    [(DRSService *)self _rejectInjectRequest:resultCopy state:stateCopy reason:"Failed to persist injected result"];
  }

LABEL_10:
}

- (void)_handleCKWorkTriggerRequest:(id)request state:(id)state transaction:(id)transaction
{
  v31 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  stateCopy = state;
  transactionCopy = transaction;
  if ([stateCopy hasAdminEntitlement])
  {
    v11 = xpc_dictionary_get_BOOL(requestCopy, "isExpedited");
    v12 = xpc_dictionary_get_BOOL(requestCopy, "isAsync");
    v13 = v12;
    v14 = DPLogHandle_ServiceXPC(v12);
    if (os_signpost_enabled(v14))
    {
      stateDescription = [stateCopy stateDescription];
      v16 = stateDescription;
      v17 = @"NO";
      if (v11)
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      *buf = 138543874;
      v26 = stateDescription;
      v28 = v18;
      v27 = 2112;
      if (v13)
      {
        v17 = @"YES";
      }

      v29 = 2112;
      v30 = v17;
      _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CKWorkTrigger", "Triggering CK work due to request from %{public}@. Expedited:%@, Async:%@", buf, 0x20u);
    }

    if (v13)
    {
      [(DRSService *)self _sendAdminRequestReply:1 rejectionReason:0 requestMessage:requestCopy];
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __60__DRSService__handleCKWorkTriggerRequest_state_transaction___block_invoke;
    v21[3] = &unk_27899F428;
    v24 = v13;
    v21[4] = self;
    v22 = requestCopy;
    v23 = transactionCopy;
    [(DRSService *)self _runCloudKitUploadWorkSessionWithTransaction:v23 xpcActivity:0 isExpedited:v11 completionBlock:v21];
  }

  else
  {
    v19 = DPLogHandle_ServiceXPCError([(DRSService *)self _sendAdminRequestReply:0 rejectionReason:"Missing required entitlement" requestMessage:requestCopy]);
    if (os_signpost_enabled(v19))
    {
      stateDescription2 = [stateCopy stateDescription];
      *buf = 138543362;
      v26 = stateDescription2;
      _os_signpost_emit_with_name_impl(&dword_232906000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CKWorkTriggerRejected", "Rejecting CK work trigger from %{public}@ due to missing entitlement", buf, 0xCu);
    }
  }
}

void *__60__DRSService__handleCKWorkTriggerRequest_state_transaction___block_invoke(void *result, uint64_t a2, id a3)
{
  if ((result[7] & 1) == 0)
  {
    v5 = result;
    v6 = result[4];
    v7 = [a3 UTF8String];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = "Unknown rejection reason";
    }

    v9 = v5[5];

    return [v6 _sendAdminRequestReply:a2 rejectionReason:v8 requestMessage:v9];
  }

  return result;
}

- (void)_handleRequestCleanTrigger:(id)trigger state:(id)state
{
  v37 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  stateCopy = state;
  if ([stateCopy hasAdminEntitlement])
  {
    v8 = xpc_dictionary_get_BOOL(triggerCopy, "KeepRequestRecords");
    v9 = xpc_dictionary_get_BOOL(triggerCopy, "KeepRequestLogs");
    serviceContainer = [(DRSService *)self serviceContainer];
    v28 = 0;
    v11 = [DRSRequest cleanRequestRecordsFromPersistentContainer:serviceContainer removeFiles:!v9 removeRecord:!v8 matchingPredicate:0 errorOut:&v28];
    v12 = v28;

    if (v11)
    {
      v14 = DPLogHandle_ServiceXPC(v13);
      if (os_signpost_enabled(v14))
      {
        if (v8)
        {
          v15 = "YES";
        }

        else
        {
          v15 = "NO";
        }

        if (v9)
        {
          v16 = "YES";
        }

        else
        {
          v16 = "NO";
        }

        stateDescription = [stateCopy stateDescription];
        *buf = 136446722;
        v30 = v15;
        v31 = 2082;
        v32 = v16;
        v33 = 2114;
        v34 = stateDescription;
        _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RequestCleanTrigger_Success", "clean request records with 'KeepRecords' %{public}s ' KeepLogs' %{public}s from %{public}@ succeeded", buf, 0x20u);
      }

      [(DRSService *)self _sendAdminRequestReply:1 rejectionReason:0 requestMessage:triggerCopy];
    }

    else
    {
      v19 = objc_alloc(MEMORY[0x277CCACA8]);
      localizedDescription = [v12 localizedDescription];
      v21 = localizedDescription;
      v22 = @"Unknown";
      if (localizedDescription)
      {
        v22 = localizedDescription;
      }

      v23 = [v19 initWithFormat:@"Error encountered trying to clean records: %@", v22];

      v24 = DPLogHandle_ServiceXPCError(-[DRSService _sendAdminRequestReply:rejectionReason:requestMessage:](self, "_sendAdminRequestReply:rejectionReason:requestMessage:", 0, [v23 UTF8String], triggerCopy));
      if (os_signpost_enabled(v24))
      {
        if (v8)
        {
          v25 = "YES";
        }

        else
        {
          v25 = "NO";
        }

        if (v9)
        {
          v26 = "YES";
        }

        else
        {
          v26 = "NO";
        }

        stateDescription2 = [stateCopy stateDescription];
        *buf = 136446978;
        v30 = v25;
        v31 = 2082;
        v32 = v26;
        v33 = 2114;
        v34 = stateDescription2;
        v35 = 2114;
        v36 = v23;
        _os_signpost_emit_with_name_impl(&dword_232906000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RequestCleanTrigger_Failed", "Failed to clean request records with 'KeepRecords' %{public}s ' KeepLogs' %{public}s from %{public}@ due reason: %{public}@", buf, 0x2Au);
      }
    }
  }

  else
  {
    v12 = DPLogHandle_ServiceXPCError([(DRSService *)self _sendAdminRequestReply:0 rejectionReason:"Missing required entitlement" requestMessage:triggerCopy]);
    if (os_signpost_enabled(v12))
    {
      stateDescription3 = [stateCopy stateDescription];
      *buf = 138543362;
      v30 = stateDescription3;
      _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RequestCleanTrigger_Rejected", "Rejecting request to clean request records from %{public}@ due to missing entitlement", buf, 0xCu);
    }
  }
}

- (void)_addCKConfigSettingsToReplyMessage:(id)message
{
  xdict = message;
  ckConfig = [(DRSService *)self ckConfig];
  v5 = [ckConfig containerEnvironment] == 1;

  ckConfig2 = [(DRSService *)self ckConfig];
  LOBYTE(ckConfig) = [ckConfig2 rapidEnvironment] == 1;

  xpc_dictionary_set_BOOL(xdict, "ContainerEnv", v5);
  xpc_dictionary_set_BOOL(xdict, "RapidEnv", ckConfig);
}

- (void)_replyToCKConfigMessageWithCurrentCKConfig:(id)config
{
  v20 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v5 = _acceptingAdminReplyMessage(configCopy);
  ckConfig = [(DRSService *)self ckConfig];
  containerEnvironment = [ckConfig containerEnvironment];

  ckConfig2 = [(DRSService *)self ckConfig];
  rapidEnvironment = [ckConfig2 rapidEnvironment];

  xpc_dictionary_set_BOOL(v5, "ContainerEnv", containerEnvironment == 1);
  xpc_dictionary_set_BOOL(v5, "RapidEnv", rapidEnvironment == 1);
  ckConfig3 = [(DRSService *)self ckConfig];
  xpc_dictionary_set_BOOL(v5, "OverridesDefault", [ckConfig3 overridesDefault]);

  v12 = DPLogHandle_ClientXPC(v11);
  if (os_signpost_enabled(v12))
  {
    v13 = "Sandbox";
    if (containerEnvironment == 1)
    {
      v14 = "Prod";
    }

    else
    {
      v14 = "Sandbox";
    }

    if (rapidEnvironment == 1)
    {
      v13 = "Prod";
    }

    v16 = 136446466;
    v17 = v14;
    v18 = 2082;
    v19 = v13;
    _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CKConfigRequestReply", "Container environment: %{public}s, RAPID environment: %{public}s", &v16, 0x16u);
  }

  v15 = xpc_dictionary_get_remote_connection(configCopy);

  xpc_connection_send_message(v15, v5);
}

- (id)_updateCKConfig:(id)config
{
  configCopy = config;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  cloudKitQueue = [(DRSService *)self cloudKitQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__DRSService__updateCKConfig___block_invoke;
  block[3] = &unk_27899EDA8;
  block[4] = self;
  v10 = configCopy;
  v11 = &v12;
  v6 = configCopy;
  dispatch_sync(cloudKitQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __30__DRSService__updateCKConfig___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  objc_storeStrong((*(a1 + 32) + 128), *(a1 + 40));
  v2 = [*(a1 + 32) ckConfig];
  v3 = [DRSCloudKitHelper helperForCKConfig:v2];
  v4 = *(a1 + 32);
  v5 = *(v4 + 112);
  *(v4 + 112) = v3;

  v6 = [*(a1 + 32) ckConfigStore];

  if (v6)
  {
    v7 = [*(a1 + 32) ckConfigStore];
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 48) + 8);
    obj = *(v9 + 40);
    v10 = [v7 saveConfig:v8 errorOut:&obj];
    objc_storeStrong((v9 + 40), obj);

    if (v10)
    {
      v12 = DPLogHandle_ServiceXPC(v11);
      if (os_signpost_enabled(v12))
      {
        v13 = [*(a1 + 32) ckConfig];
        v14 = [v13 debugDescription];
        *buf = 138543362;
        v19 = v14;
        _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ServiceCKConfigUpdated", "Service CK Config updated to: %{public}@", buf, 0xCu);

LABEL_9:
      }
    }

    else
    {
      v12 = DPLogHandle_ServiceXPCError(v11);
      if (os_signpost_enabled(v12))
      {
        v15 = [*(*(*(a1 + 48) + 8) + 40) localizedDescription];
        v13 = v15;
        v16 = @"Unknown";
        if (v15)
        {
          v16 = v15;
        }

        *buf = 138543362;
        v19 = v16;
        _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ServiceCKConfigUpdate_Failed", "Service CK Config failed to update due to reason: %{public}@", buf, 0xCu);
        goto LABEL_9;
      }
    }
  }
}

- (void)_handleCKConfigUpdate:(id)update state:(id)state
{
  v34 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  stateCopy = state;
  if ([stateCopy hasAdminEntitlement])
  {
    v8 = xpc_dictionary_get_BOOL(updateCopy, "ContainerEnv");
    v9 = xpc_dictionary_get_BOOL(updateCopy, "RapidEnv");
    v10 = v9;
    if (v8)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (v9)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    v13 = DPLogHandle_ServiceXPC(v9);
    if (os_signpost_enabled(v13))
    {
      stateDescription = [stateCopy stateDescription];
      v15 = stateDescription;
      v16 = "Sandbox";
      if (v8)
      {
        v17 = "Prod";
      }

      else
      {
        v17 = "Sandbox";
      }

      *v32 = 138543874;
      *&v32[4] = stateDescription;
      *&v32[12] = 2082;
      *&v32[14] = v17;
      if (v10)
      {
        v16 = "Prod";
      }

      *&v32[22] = 2082;
      v33 = v16;
      _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CKConfigUpdate_Status", "Client %{public}@ requesting: Container environment: %{public}s, RAPID environment: %{public}s", v32, 0x20u);
    }

    ckConfig = [(DRSService *)self ckConfig];
    if ([ckConfig containerEnvironment] == v11)
    {
      ckConfig2 = [(DRSService *)self ckConfig];
      rapidEnvironment = [ckConfig2 rapidEnvironment];

      if (rapidEnvironment == v12)
      {
        v22 = DPLogHandle_ServiceXPC(v21);
        if (os_signpost_enabled(v22))
        {
          stateDescription2 = [stateCopy stateDescription];
          *v32 = 138543362;
          *&v32[4] = stateDescription2;
          _os_signpost_emit_with_name_impl(&dword_232906000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CKConfigUpdate_AlreadySet", "Config is already what client %{public}@ is asking for", v32, 0xCu);
        }

        [(DRSService *)self _replyToCKConfigMessageWithCurrentCKConfig:updateCopy];
        goto LABEL_31;
      }
    }

    else
    {
    }

    v26 = [[DRSCKConfig alloc] initWithContainerEnvironment:v11 rapidEnvironment:v12 overridesDefault:1];
    v27 = [(DRSService *)self _updateCKConfig:v26];
    v28 = v27;
    if (v27)
    {
      localizedDescription = [v27 localizedDescription];
      uTF8String = [localizedDescription UTF8String];
      if (uTF8String)
      {
        v31 = uTF8String;
      }

      else
      {
        v31 = "Unknown";
      }

      [(DRSService *)self _sendAdminRequestReply:0 rejectionReason:v31 requestMessage:updateCopy, *v32, *&v32[8]];
    }

    else
    {
      [(DRSService *)self _replyToCKConfigMessageWithCurrentCKConfig:updateCopy];
    }
  }

  else
  {
    v24 = DPLogHandle_ServiceXPCError([(DRSService *)self _sendAdminRequestReply:0 rejectionReason:"Missing required entitlement" requestMessage:updateCopy]);
    if (os_signpost_enabled(v24))
    {
      stateDescription3 = [stateCopy stateDescription];
      *v32 = 138543362;
      *&v32[4] = stateDescription3;
      _os_signpost_emit_with_name_impl(&dword_232906000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CKConfigUpdate_Rejected", "Rejecting request to update CK config %{public}@ due to missing entitlement", v32, 0xCu);
    }
  }

LABEL_31:
}

- (void)_handleGetCKConfig:(id)config state:(id)state
{
  v12 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  configCopy = config;
  if ([stateCopy hasAdminEntitlement])
  {
    [(DRSService *)self _replyToCKConfigMessageWithCurrentCKConfig:configCopy];
  }

  else
  {
    [(DRSService *)self _sendAdminRequestReply:0 rejectionReason:"Missing required entitlement" requestMessage:configCopy];

    configCopy = DPLogHandle_ServiceXPCError(v8);
    if (os_signpost_enabled(configCopy))
    {
      stateDescription = [stateCopy stateDescription];
      v10 = 138543362;
      v11 = stateDescription;
      _os_signpost_emit_with_name_impl(&dword_232906000, configCopy, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GetCKConfig_Rejected", "Rejecting request for current CK config %{public}@ due to missing entitlement", &v10, 0xCu);
    }
  }
}

- (void)_handleResetCKConfig:(id)config state:(id)state
{
  v17 = *MEMORY[0x277D85DE8];
  configCopy = config;
  stateCopy = state;
  if ([stateCopy hasAdminEntitlement])
  {
    v8 = +[DRSCKConfig defaultConfig];
    v9 = [(DRSService *)self _updateCKConfig:v8];

    if (v9)
    {
      localizedDescription = [v9 localizedDescription];
      uTF8String = [localizedDescription UTF8String];
      if (uTF8String)
      {
        v12 = uTF8String;
      }

      else
      {
        v12 = "Unknown";
      }

      [(DRSService *)self _sendAdminRequestReply:0 rejectionReason:v12 requestMessage:configCopy];
    }

    else
    {
      [(DRSService *)self _replyToCKConfigMessageWithCurrentCKConfig:configCopy];
    }
  }

  else
  {
    v13 = DPLogHandle_ServiceXPCError([(DRSService *)self _sendAdminRequestReply:0 rejectionReason:"Missing required entitlement" requestMessage:configCopy]);
    if (os_signpost_enabled(v13))
    {
      stateDescription = [stateCopy stateDescription];
      v15 = 138543362;
      v16 = stateDescription;
      _os_signpost_emit_with_name_impl(&dword_232906000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ResetCKConfig_Rejected", "Rejecting request to reset CK config %{public}@ due to missing entitlement", &v15, 0xCu);
    }
  }
}

- (void)_handleUploadSchedulingRequest:(id)request state:(id)state
{
  v12 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  stateCopy = state;
  if ([stateCopy hasAdminEntitlement])
  {
    [(DRSService *)self _registerPermissiveExpeditedUploadXPCActivity:xpc_dictionary_get_uint64(requestCopy, "delaySeconds")];
    [(DRSService *)self _sendAdminRequestReply:1 rejectionReason:0 requestMessage:requestCopy];
  }

  else
  {
    v8 = DPLogHandle_ServiceXPCError([(DRSService *)self _sendAdminRequestReply:0 rejectionReason:"Missing required entitlement" requestMessage:requestCopy]);
    if (os_signpost_enabled(v8))
    {
      stateDescription = [stateCopy stateDescription];
      v10 = 138543362;
      v11 = stateDescription;
      _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UploadSchedulingRequest_Rejected", "Rejecting request to schedule a more permissive expedited upload from %{public}@ due to missing entitlement", &v10, 0xCu);
    }
  }
}

- (void)_handleCancelScheduledUploadRequest:(id)request state:(id)state
{
  v15 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  stateCopy = state;
  hasAdminEntitlement = [stateCopy hasAdminEntitlement];
  if (hasAdminEntitlement)
  {
    v9 = DPLogHandle_PermissiveUploadActivity(hasAdminEntitlement);
    if (os_signpost_enabled(v9))
    {
      stateDescription = [stateCopy stateDescription];
      v13 = 138543362;
      v14 = stateDescription;
      _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CancelScheduledUploadRequest", "Cancelling scheduled permissive expedited upload due to request from %{public}@", &v13, 0xCu);
    }

    [(DRSService *)self _unregisterPermissiveExpeditedUploadXPCActivity];
    [(DRSService *)self _sendAdminRequestReply:1 rejectionReason:0 requestMessage:requestCopy];
  }

  else
  {
    v11 = DPLogHandle_ServiceXPCError([(DRSService *)self _sendAdminRequestReply:0 rejectionReason:"Missing required entitlement" requestMessage:requestCopy]);
    if (os_signpost_enabled(v11))
    {
      stateDescription2 = [stateCopy stateDescription];
      v13 = 138543362;
      v14 = stateDescription2;
      _os_signpost_emit_with_name_impl(&dword_232906000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CancelScheduledUploadRequest_Rejected", "Rejecting request to cancel scheduled permissive expedited upload from %{public}@ due to missing entitlement", &v13, 0xCu);
    }
  }
}

- (void)_sendCurrentIgnoreADGReply:(id)reply state:(id)state
{
  v17 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v6 = _acceptingAdminReplyMessage(replyCopy);
  ignoreAutomatedDeviceGroup = [(DRSService *)self ignoreAutomatedDeviceGroup];

  if (ignoreAutomatedDeviceGroup)
  {
    ignoreAutomatedDeviceGroup2 = [(DRSService *)self ignoreAutomatedDeviceGroup];
    xpc_dictionary_set_BOOL(v6, "IgnoreADGValue", [ignoreAutomatedDeviceGroup2 BOOLValue]);
  }

  v10 = DPLogHandle_ClientXPC(v8);
  if (os_signpost_enabled(v10))
  {
    ignoreAutomatedDeviceGroup3 = [(DRSService *)self ignoreAutomatedDeviceGroup];
    v12 = ignoreAutomatedDeviceGroup3;
    v13 = @"<none>";
    if (ignoreAutomatedDeviceGroup3)
    {
      v13 = ignoreAutomatedDeviceGroup3;
    }

    v15 = 138543362;
    v16 = v13;
    _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "IgnoreADGRequestReply", "Current value: %{public}@", &v15, 0xCu);
  }

  v14 = xpc_dictionary_get_remote_connection(replyCopy);

  xpc_connection_send_message(v14, v6);
}

- (void)_handleGetIgnoreADG:(id)g state:(id)state
{
  v10 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  gCopy = g;
  if ([stateCopy hasAdminEntitlement])
  {
    [(DRSService *)self _sendCurrentIgnoreADGReply:gCopy state:stateCopy];
  }

  else
  {
    [(DRSService *)self _sendAdminRequestReply:0 rejectionReason:"Missing required entitlement" requestMessage:gCopy];

    gCopy = DPLogHandle_ServiceXPCError(v8);
    if (os_signpost_enabled(gCopy))
    {
      v9[0] = 67109120;
      v9[1] = [stateCopy pid];
      _os_signpost_emit_with_name_impl(&dword_232906000, gCopy, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GetIgnoreADG_Rejected", "Rejecting request for current 'Ignore AutomatedDeviceGroup' setting [%d] due to missing entitlement", v9, 8u);
    }
  }
}

- (void)_handleSetIgnoreADG:(id)g state:(id)state
{
  v12 = *MEMORY[0x277D85DE8];
  gCopy = g;
  stateCopy = state;
  if ([stateCopy hasAdminEntitlement])
  {
    v8 = xpc_dictionary_get_value(gCopy, "IgnoreADGValue");

    if (v8)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithBool:{xpc_dictionary_get_BOOL(gCopy, "IgnoreADGValue")}];
    }

    else
    {
      v9 = 0;
    }

    [(DRSService *)self setIgnoreAutomatedDeviceGroup:v9];
    [(DRSService *)self _sendCurrentIgnoreADGReply:gCopy state:stateCopy];
  }

  else
  {
    v10 = DPLogHandle_ServiceXPCError([(DRSService *)self _sendAdminRequestReply:0 rejectionReason:"Missing required entitlement" requestMessage:gCopy]);
    if (os_signpost_enabled(v10))
    {
      v11[0] = 67109120;
      v11[1] = [stateCopy pid];
      _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SetIgnoreADG_Rejected", "Rejecting request to update 'Ignore AutomatedDeviceGroup' setting [%d] due to missing entitlement", v11, 8u);
    }
  }
}

- (void)_sendCurrentUploadServiceEnabledReply:(id)reply state:(id)state
{
  v15 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v6 = _acceptingAdminReplyMessage(replyCopy);
  xpc_dictionary_set_BOOL(v6, "UploadServiceEnabled", [(DRSService *)self isEnabled]);
  isEnabledOverride = [(DRSService *)self isEnabledOverride];
  xpc_dictionary_set_BOOL(v6, "HasOverride", isEnabledOverride != 0);

  v9 = DPLogHandle_ClientXPC(v8);
  if (os_signpost_enabled(v9))
  {
    isEnabled = [(DRSService *)self isEnabled];
    v11 = @"Disabled";
    if (isEnabled)
    {
      v11 = @"Enabled";
    }

    v13 = 138543362;
    v14 = v11;
    _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UploadServiceEnabledRequestReply", "Current value: %{public}@", &v13, 0xCu);
  }

  v12 = xpc_dictionary_get_remote_connection(replyCopy);

  xpc_connection_send_message(v12, v6);
}

- (void)_handleGetUploadServiceEnabled:(id)enabled state:(id)state
{
  v10 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  enabledCopy = enabled;
  if ([stateCopy hasAdminEntitlement])
  {
    [(DRSService *)self _sendCurrentUploadServiceEnabledReply:enabledCopy state:stateCopy];
  }

  else
  {
    [(DRSService *)self _sendAdminRequestReply:0 rejectionReason:"Missing required entitlement" requestMessage:enabledCopy];

    enabledCopy = DPLogHandle_ServiceXPCError(v8);
    if (os_signpost_enabled(enabledCopy))
    {
      v9[0] = 67109120;
      v9[1] = [stateCopy pid];
      _os_signpost_emit_with_name_impl(&dword_232906000, enabledCopy, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "GetUploadServiceEnabled_Rejected", "Rejecting request for current 'Upload Service Enabled' setting [%d] due to missing entitlement", v9, 8u);
    }
  }
}

- (void)_handleSetUploadServiceEnabled:(id)enabled state:(id)state
{
  v12 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  stateCopy = state;
  if ([stateCopy hasAdminEntitlement])
  {
    v8 = xpc_dictionary_get_value(enabledCopy, "UploadServiceEnabled");

    if (v8)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithBool:{xpc_dictionary_get_BOOL(enabledCopy, "UploadServiceEnabled")}];
    }

    else
    {
      v9 = 0;
    }

    [(DRSService *)self setIsEnabledOverride:v9];
    [(DRSService *)self _sendCurrentUploadServiceEnabledReply:enabledCopy state:stateCopy];
  }

  else
  {
    v10 = DPLogHandle_ServiceXPCError([(DRSService *)self _sendAdminRequestReply:0 rejectionReason:"Missing required entitlement" requestMessage:enabledCopy]);
    if (os_signpost_enabled(v10))
    {
      v11[0] = 67109120;
      v11[1] = [stateCopy pid];
      _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SetUploadServiceEnablement", "Rejecting request for current 'Upload Service Enabled' setting [%d] due to missing entitlement", v11, 8u);
    }
  }
}

- (void)handleRequest:(id)request state:(id)state
{
  v18 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  stateCopy = state;
  v8 = objc_autoreleasePoolPush();
  v9 = os_transaction_create();
  uint64 = xpc_dictionary_get_uint64(requestCopy, "ClientMessageType");
  switch(uint64)
  {
    case 'd':
      [(DRSService *)self _handleDampeningConfigurationGlobalEnablementMessage:requestCopy state:stateCopy transaction:v9];
      goto LABEL_26;
    case 'e':
      [(DRSService *)self _handleDampeningConfigurationReset:requestCopy state:stateCopy transaction:v9];
      goto LABEL_26;
    case 'f':
      [(DRSService *)self _handleDampeningConfigurationDictMessage:requestCopy state:stateCopy transaction:v9];
      goto LABEL_26;
    case 'g':
      [(DRSService *)self _handleCKWorkTriggerRequest:requestCopy state:stateCopy transaction:v9];
      goto LABEL_26;
    case 'h':
      [(DRSService *)self _handleInjectEnableLogGatheringRequestResult:requestCopy state:stateCopy];
      goto LABEL_26;
    case 'i':
      [(DRSService *)self _handleRequestCleanTrigger:requestCopy state:stateCopy];
      goto LABEL_26;
    case 'j':
      [(DRSService *)self _handleRefreshDampeningConfigMessage:requestCopy state:stateCopy transaction:v9];
      goto LABEL_26;
    case 'k':
      [(DRSService *)self _handleCKConfigUpdate:requestCopy state:stateCopy];
      goto LABEL_26;
    case 'l':
      [(DRSService *)self _handleGetCKConfig:requestCopy state:stateCopy];
      goto LABEL_26;
    case 'm':
      [(DRSService *)self _handleResetCKConfig:requestCopy state:stateCopy];
      goto LABEL_26;
    case 'n':
      [(DRSService *)self _handleUploadSchedulingRequest:requestCopy state:stateCopy];
      goto LABEL_26;
    case 'o':
      [(DRSService *)self _handleCancelScheduledUploadRequest:requestCopy state:stateCopy];
      goto LABEL_26;
    case 'p':
      [(DRSService *)self _handleGetIgnoreADG:requestCopy state:stateCopy];
      goto LABEL_26;
    case 'q':
      [(DRSService *)self _handleSetIgnoreADG:requestCopy state:stateCopy];
      goto LABEL_26;
    case 'r':
      [(DRSService *)self _handleGetUploadServiceEnabled:requestCopy state:stateCopy];
      goto LABEL_26;
    case 's':
      [(DRSService *)self _handleSetUploadServiceEnabled:requestCopy state:stateCopy];
      goto LABEL_26;
    default:
      v11 = uint64;
      if (uint64 > 5)
      {
        goto LABEL_9;
      }

      if (((1 << uint64) & 0x36) != 0)
      {
        [(DRSService *)self _handleDRSRequestMessage:requestCopy state:stateCopy transaction:v9];
      }

      else if (uint64 == 3)
      {
        [(DRSService *)self _handleEnableLogGatheringRequest:requestCopy state:stateCopy transaction:v9];
      }

      else
      {
LABEL_9:
        v12 = DPLogHandle_ServiceXPCError(uint64);
        if (os_signpost_enabled(v12))
        {
          stateDescription = [stateCopy stateDescription];
          v14 = 134349314;
          v15 = v11;
          v16 = 2114;
          v17 = stateDescription;
          _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UnknownRequest", "Received unknown request %{public}llu from client %{public}@", &v14, 0x16u);
        }
      }

LABEL_26:

      objc_autoreleasePoolPop(v8);
      return;
  }
}

- (void)_handleNewEntitledConnection:(id)connection state:(id)state
{
  v12 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  connectionCopy = connection;
  v8 = DPLogHandle_ServiceLifecycle([(DRSService *)self _waitForDeviceUnlockAndInitializeServiceState]);
  if (os_signpost_enabled(v8))
  {
    stateDescription = [stateCopy stateDescription];
    v10 = 138543362;
    v11 = stateDescription;
    _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NewClientConnection", "New connection from client %{public}@", &v10, 0xCu);
  }

  [(DRSService *)self _sendCurrentConfigurationToConnection:connectionCopy];
}

- (BOOL)activateService
{
  [(DRSService *)self _configureXPCActivities];
  messageQueue = [(DRSService *)self messageQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__DRSService_activateService__block_invoke;
  block[3] = &unk_27899EF98;
  block[4] = self;
  dispatch_sync(messageQueue, block);

  return 1;
}

void __29__DRSService_activateService__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) state];
  v3 = v2;
  v4 = DPLogHandle_ServiceLifecycle(v2);
  v5 = os_signpost_enabled(v4);
  if (v3)
  {
    if (v5)
    {
      v6 = DRSStringForServiceState([*(a1 + 32) state]);
      v7 = 138543362;
      v8 = v6;
      _os_signpost_emit_with_name_impl(&dword_232906000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RedundantServiceActivation", "Tried to activate while in state: %{public}@", &v7, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      LOWORD(v7) = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ServiceActivation", &unk_232980861, &v7, 2u);
    }

    v4 = [*(a1 + 32) serviceConnection];
    xpc_connection_activate(v4);
  }
}

- (void)deactivateService
{
  state = [(DRSService *)self state];
  if (state == 2)
  {
    v4 = DPLogHandle_ServiceLifecycle(state);
    if (os_signpost_enabled(v4))
    {
      v11 = 0;
      v5 = "RedundantServiceDeactivation";
      v6 = "Tried to deactivate already deactivated service";
      v7 = &v11;
LABEL_6:
      _os_signpost_emit_with_name_impl(&dword_232906000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v5, v6, v7, 2u);
    }
  }

  else
  {
    self->_state = 2;
    serviceConnection = [(DRSService *)self serviceConnection];
    xpc_connection_cancel(serviceConnection);

    v4 = DPLogHandle_ServiceLifecycle(v9);
    if (os_signpost_enabled(v4))
    {
      v10 = 0;
      v5 = "ServiceDeactivated";
      v6 = &unk_232980861;
      v7 = &v10;
      goto LABEL_6;
    }
  }
}

- (void)dealloc
{
  [(DRSService *)self deactivateService];
  v3.receiver = self;
  v3.super_class = DRSService;
  [(DRSService *)&v3 dealloc];
}

- (void)_configureXPCActivities
{
  [(DRSService *)self _configureUploadXPCActivity];
  [(DRSService *)self _configureExpeditedUploadXPCActivity];
  [(DRSService *)self _configureBackstopUploadXPCActivity];

  [(DRSService *)self _configureReportStatsXPCActivity];
}

- (void)_configureUploadXPCActivity
{
  v3 = DPLogHandle_ServiceLifecycle(self);
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfiguringUploadXPCActivity", &unk_232980861, buf, 2u);
  }

  v4 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __41__DRSService__configureUploadXPCActivity__block_invoke;
  handler[3] = &unk_27899EF70;
  handler[4] = self;
  xpc_activity_register("com.apple.diagnosticpipeline.cloudkit_activity", v4, handler);
}

void __41__DRSService__configureUploadXPCActivity__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_transaction_create();
  state = xpc_activity_get_state(v3);
  if (state != 2)
  {
    v6 = state;
    if (state)
    {
      v7 = DPLogHandle_ServiceLifecycle(state);
      if (os_signpost_enabled(v7))
      {
        *buf = 134217984;
        v16 = v6;
        v8 = "CloudKitXPCActivityUnknownState";
        v9 = "Unknown XPC activity state %ld";
        v10 = v7;
        v11 = 12;
        goto LABEL_12;
      }
    }

    else
    {
      v7 = DPLogHandle_ServiceLifecycle(0);
      if (os_signpost_enabled(v7))
      {
        *buf = 0;
        v8 = "UploadXPCActivityCheckIn";
        v9 = &unk_232980861;
        v10 = v7;
        v11 = 2;
LABEL_12:
        _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v8, v9, buf, v11);
      }
    }

    goto LABEL_17;
  }

  v12 = DPLogHandle_ServiceLifecycle([*(a1 + 32) _waitForDeviceUnlockAndInitializeServiceState]);
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CloudKitUploadXPCActivity", &unk_232980861, buf, 2u);
  }

  if ([*(a1 + 32) isEnabled])
  {
    should_defer = xpc_activity_should_defer(v3);
    v14 = *(a1 + 32);
    if (should_defer)
    {
      [v14 _finishUploadSessionWithActivity:v3 withState:3 isExpedited:0 transaction:v4 completedSuccessfully:0 endResultString:@"Immediate deferral" completionBlock:0];
    }

    else
    {
      [v14 _unregisterPermissiveExpeditedUploadXPCActivity];
      [*(a1 + 32) _runCloudKitUploadWorkSessionWithTransaction:v4 xpcActivity:v3 isExpedited:0 completionBlock:0];
    }
  }

  else
  {
    [*(a1 + 32) _finishUploadSessionWithActivity:v3 withState:5 isExpedited:0 transaction:v4 completedSuccessfully:0 endResultString:@"Service is disabled" completionBlock:0];
  }

LABEL_17:
}

- (void)_configureExpeditedUploadXPCActivity
{
  v3 = DPLogHandle_ServiceLifecycle(self);
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfiguringExpeditedUploadXPCActivity", &unk_232980861, buf, 2u);
  }

  v4 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __50__DRSService__configureExpeditedUploadXPCActivity__block_invoke;
  handler[3] = &unk_27899EF70;
  handler[4] = self;
  xpc_activity_register("com.apple.diagnosticpipeline.cloudkit_expedited_upload", v4, handler);
}

void __50__DRSService__configureExpeditedUploadXPCActivity__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_transaction_create();
  state = xpc_activity_get_state(v3);
  if (state != 2)
  {
    v6 = state;
    if (state)
    {
      v7 = DPLogHandle_ServiceLifecycle(state);
      if (os_signpost_enabled(v7))
      {
        *buf = 134217984;
        v16 = v6;
        v8 = "ExpeditedCloudKitXPCActivityUnknownState";
        v9 = "Unknown XPC activity state %ld";
        v10 = v7;
        v11 = 12;
        goto LABEL_12;
      }
    }

    else
    {
      v7 = DPLogHandle_ServiceLifecycle(0);
      if (os_signpost_enabled(v7))
      {
        *buf = 0;
        v8 = "ExpeditedUploadXPCActivityCheckIn";
        v9 = &unk_232980861;
        v10 = v7;
        v11 = 2;
LABEL_12:
        _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v8, v9, buf, v11);
      }
    }

    goto LABEL_17;
  }

  v12 = DPLogHandle_ServiceLifecycle([*(a1 + 32) _waitForDeviceUnlockAndInitializeServiceState]);
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CloudKitExpeditedUploadXPCActivity", &unk_232980861, buf, 2u);
  }

  if ([*(a1 + 32) isEnabled])
  {
    should_defer = xpc_activity_should_defer(v3);
    v14 = *(a1 + 32);
    if (should_defer)
    {
      [v14 _finishUploadSessionWithActivity:v3 withState:3 isExpedited:1 transaction:v4 completedSuccessfully:0 endResultString:@"Immediate deferral" completionBlock:0];
    }

    else
    {
      [v14 _unregisterPermissiveExpeditedUploadXPCActivity];
      [*(a1 + 32) _runCloudKitUploadWorkSessionWithTransaction:v4 xpcActivity:v3 isExpedited:1 completionBlock:0];
    }
  }

  else
  {
    [*(a1 + 32) _finishUploadSessionWithActivity:v3 withState:5 isExpedited:1 transaction:v4 completedSuccessfully:0 endResultString:@"Service is disabled" completionBlock:0];
  }

LABEL_17:
}

- (id)_permissiveXPCActivitCriteriaDict:(unsigned int)dict
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86390], 1);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86398], 1);
  xpc_dictionary_set_int64(v4, *MEMORY[0x277D86320], 20971520);
  xpc_dictionary_set_int64(v4, *MEMORY[0x277D86270], *MEMORY[0x277D862A0]);
  xpc_dictionary_set_string(v4, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
  xpc_dictionary_set_int64(v4, *MEMORY[0x277D86250], dict);

  return v4;
}

- (void)_configurePermissiveActivityCriteria:(id)criteria delaySeconds:(unsigned int)seconds
{
  v4 = *&seconds;
  v11 = *MEMORY[0x277D85DE8];
  criteriaCopy = criteria;
  v7 = [(DRSService *)self _permissiveXPCActivitCriteriaDict:v4];
  xpc_activity_set_criteria(criteriaCopy, v7);

  v9 = DPLogHandle_PermissiveUploadActivity(v8);
  if (os_signpost_enabled(v9))
  {
    v10[0] = 67240192;
    v10[1] = v4;
    _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UpdatePermissiveActivity", "%{public, name=delaySeconds}u second(s) delay", v10, 8u);
  }
}

- (void)_unregisterPermissiveExpeditedUploadXPCActivity
{
  v2 = DPLogHandle_PermissiveUploadActivity(self);
  if (os_signpost_enabled(v2))
  {
    *v3 = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CancelScheduledUploadActivity", &unk_232980861, v3, 2u);
  }

  xpc_activity_unregister("com.apple.diagnosticpipeline.cloudkit_permissive_upload");
}

- (void)_registerPermissiveExpeditedUploadXPCActivity:(unsigned int)activity
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = DPLogHandle_PermissiveUploadActivity(self);
  if (os_signpost_enabled(v5))
  {
    *buf = 67240192;
    activityCopy = activity;
    _os_signpost_emit_with_name_impl(&dword_232906000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SchedulingPermissiveExpeditedUploadXPCActivity", "%{public, name=delaySeconds}u second(s) delay", buf, 8u);
  }

  v6 = *MEMORY[0x277D86238];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__DRSService__registerPermissiveExpeditedUploadXPCActivity___block_invoke;
  v7[3] = &unk_27899F478;
  v7[4] = self;
  activityCopy2 = activity;
  xpc_activity_register("com.apple.diagnosticpipeline.cloudkit_permissive_upload", v6, v7);
}

void __60__DRSService__registerPermissiveExpeditedUploadXPCActivity___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_transaction_create();
  state = xpc_activity_get_state(v3);
  if (state)
  {
    v6 = state;
    if (state == 2)
    {
      v7 = DPLogHandle_PermissiveUploadActivity(2);
      if (os_signpost_enabled(v7))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RunPermissiveUploadActivity", &unk_232980861, buf, 2u);
      }

      v8 = DPLogHandle_ServiceLifecycle([*(a1 + 32) _waitForDeviceUnlockAndInitializeServiceState]);
      if (os_signpost_enabled(v8))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_232906000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CloudKitExpeditedUploadXPCActivitySingleton permissive expedited upload activity", &unk_232980861, buf, 2u);
      }

      if ([*(a1 + 32) isEnabled])
      {
        should_defer = xpc_activity_should_defer(v3);
        v10 = *(a1 + 32);
        if (should_defer)
        {
          [v10 _finishUploadSessionWithActivity:v3 withState:3 isExpedited:1 transaction:v4 completedSuccessfully:0 endResultString:@"Immediate deferral" completionBlock:0];
        }

        else
        {
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __60__DRSService__registerPermissiveExpeditedUploadXPCActivity___block_invoke_208;
          v17[3] = &unk_27899F450;
          v17[4] = v10;
          [v10 _runCloudKitUploadWorkSessionWithTransaction:v4 xpcActivity:v3 isExpedited:1 completionBlock:v17];
        }
      }

      else
      {
        [*(a1 + 32) _finishUploadSessionWithActivity:v3 withState:5 isExpedited:1 transaction:v4 completedSuccessfully:0 endResultString:@"Service is disabled" completionBlock:0];
        [*(a1 + 32) _unregisterPermissiveExpeditedUploadXPCActivity];
      }
    }

    else
    {
      v16 = DPLogHandle_PermissiveUploadActivity(state);
      if (os_signpost_enabled(v16))
      {
        *buf = 134217984;
        v19 = v6;
        _os_signpost_emit_with_name_impl(&dword_232906000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PermissiveCloudKitXPCActivityUnknownState", "Unexpected XPC activity state %ld", buf, 0xCu);
      }
    }
  }

  else
  {
    v11 = xpc_activity_copy_criteria(v3);
    v12 = v11;
    if (v11 && (count = xpc_dictionary_get_count(v11)) != 0)
    {
      v14 = DPLogHandle_PermissiveUploadActivity(count);
      if (os_signpost_enabled(v14))
      {
        int64 = xpc_dictionary_get_int64(v12, *MEMORY[0x277D86250]);
        *buf = 134349056;
        v19 = int64;
        _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PermissiveActivityAlreadyScheduled", "Activity already scheduled with %{public, name=delaySeconds}lld s as a delay cap", buf, 0xCu);
      }
    }

    else
    {
      [*(a1 + 32) _configurePermissiveActivityCriteria:v3 delaySeconds:*(a1 + 40)];
    }
  }
}

- (void)_configureReportStatsXPCActivity
{
  v3 = DPLogHandle_ServiceLifecycle(self);
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ConfiguringReportStatsXPCActivity", &unk_232980861, buf, 2u);
  }

  v4 = *MEMORY[0x277D86238];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __46__DRSService__configureReportStatsXPCActivity__block_invoke;
  handler[3] = &unk_27899EF70;
  handler[4] = self;
  xpc_activity_register("com.apple.diagnosticpipeline.cloudkit_report_stats", v4, handler);
}

void __46__DRSService__configureReportStatsXPCActivity__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_transaction_create();
  state = xpc_activity_get_state(v3);
  if (state != 2)
  {
    v6 = state;
    if (state)
    {
      v7 = DPLogHandle_ServiceLifecycle(state);
      if (os_signpost_enabled(v7))
      {
        v21 = 134217984;
        v22 = v6;
        v8 = "CloudKitXPCActivityUnknownState";
        v9 = "Unknown XPC activity state %ld";
        v10 = v7;
        v11 = 12;
        goto LABEL_12;
      }
    }

    else
    {
      v7 = DPLogHandle_ServiceLifecycle(0);
      if (os_signpost_enabled(v7))
      {
        LOWORD(v21) = 0;
        v8 = "ReportStatsXPCActivityCheckIn";
        v9 = &unk_232980861;
        v10 = v7;
        v11 = 2;
LABEL_12:
        _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v8, v9, &v21, v11);
      }
    }

    goto LABEL_19;
  }

  [*(a1 + 32) _waitForDeviceUnlockAndInitializeServiceState];
  v12 = [*(a1 + 32) isEnabled];
  v13 = v12;
  v14 = DPLogHandle_ServiceLifecycle(v12);
  v15 = os_signpost_enabled(v14);
  if (v13)
  {
    if (v15)
    {
      LOWORD(v21) = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CloudKitReportStatsXPCActivity", &unk_232980861, &v21, 2u);
    }

    should_defer = xpc_activity_should_defer(v3);
    v17 = *(a1 + 32);
    if (!should_defer)
    {
      [v17 _runReportingSessionWithTransaction:v4 xpcActivity:v3];
      goto LABEL_19;
    }

    v18 = @"Immediate deferral";
    v19 = v3;
    v20 = 3;
  }

  else
  {
    if (v15)
    {
      LOWORD(v21) = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CloudKitReportStatsXPCActivity", "No-op XPC activity since the service is disabled", &v21, 2u);
    }

    v17 = *(a1 + 32);
    v18 = @"Service is disabled";
    v19 = v3;
    v20 = 5;
  }

  [v17 _finishReportingStatsSessionWithActivity:v19 withState:v20 transaction:v4 endResultString:v18];
LABEL_19:
}

+ (id)_currentUploadSession_ON_MOC_QUEUE:(id)e errorOut:(id *)out
{
  v43 = *MEMORY[0x277D85DE8];
  eCopy = e;
  v6 = +[DRSUploadSessionRecordMO fetchRequest];
  v39 = 0;
  v7 = [eCopy executeFetchRequest:v6 error:&v39];
  v8 = v39;

  if (v8)
  {
    v10 = DPLogHandle_UploadSessionDateError(v9);
    if (os_signpost_enabled(v10))
    {
      localizedDescription = [v8 localizedDescription];
      v12 = localizedDescription;
      v13 = @"Unknown";
      if (localizedDescription)
      {
        v13 = localizedDescription;
      }

      *buf = 138543362;
      v42 = v13;
      _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UploadSessionDateMOFetch", "Failed to fetch an upload session managed object due to error: %{public}@", buf, 0xCu);
    }

    if (out)
    {
      v14 = v8;
      firstObject = 0;
      *out = v8;
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (![v7 count])
  {
    v32 = DPLogHandle_UploadSessionDate(0);
    if (os_signpost_enabled(v32))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v32, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UploadSessionDateFetchMiss", "No cached CK Config", buf, 2u);
    }

    goto LABEL_30;
  }

  v16 = [v7 count];
  if (v16 >= 2)
  {
    v17 = DPLogHandle_UploadSessionDateError(v16);
    if (os_signpost_enabled(v17))
    {
      v18 = [v7 count];
      *buf = 67109120;
      LODWORD(v42) = v18;
      _os_signpost_emit_with_name_impl(&dword_232906000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NonUniqueUploadSessionDate", "Found %u dates. Attempting to delete and recover from state.", buf, 8u);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v19 = v7;
    v20 = [v19 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v36;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v36 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [eCopy deleteObject:*(*(&v35 + 1) + 8 * i)];
        }

        v21 = [v19 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v21);
    }

    v34 = 0;
    v24 = [eCopy save:&v34];
    v25 = v34;
    v26 = v25;
    if ((v24 & 1) == 0)
    {
      v27 = DPLogHandle_CoreDataError(v25);
      if (os_signpost_enabled(v27))
      {
        localizedDescription2 = [v26 localizedDescription];
        v29 = localizedDescription2;
        v30 = @"Unknown";
        if (localizedDescription2)
        {
          v30 = localizedDescription2;
        }

        *buf = 138543362;
        v42 = v30;
        _os_signpost_emit_with_name_impl(&dword_232906000, v27, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FailedToSaveUploadSession", "To save upload session updates due to error: %{public}@", buf, 0xCu);
      }

      if (out)
      {
        v31 = v26;
        *out = v26;
      }
    }

LABEL_30:
    firstObject = 0;
    goto LABEL_31;
  }

  firstObject = [v7 firstObject];
LABEL_31:

  return firstObject;
}

+ (id)previousUploadSessionDateFromContainer:(id)container errorOut:(id *)out
{
  containerCopy = container;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__2;
  v26 = __Block_byref_object_dispose__2;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__2;
  v20 = __Block_byref_object_dispose__2;
  v21 = 0;
  newBackgroundContext = [containerCopy newBackgroundContext];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__DRSService_previousUploadSessionDateFromContainer_errorOut___block_invoke;
  v11[3] = &unk_27899F4A0;
  selfCopy = self;
  v8 = newBackgroundContext;
  v12 = v8;
  v13 = &v16;
  v14 = &v22;
  [v8 performBlockAndWait:v11];
  if (out)
  {
    *out = v17[5];
  }

  v9 = v23[5];

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v9;
}

void __62__DRSService_previousUploadSessionDateFromContainer_errorOut___block_invoke(void *a1)
{
  v2 = a1[7];
  v3 = a1[4];
  v12 = 0;
  v4 = [v2 _currentUploadSession_ON_MOC_QUEUE:v3 errorOut:&v12];
  v5 = v12;
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
  v8 = v5;

  v9 = [v4 sessionDate];
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

+ (BOOL)updateUploadSessionDateFromContainer:(id)container toDate:(id)date errorOut:(id *)out
{
  containerCopy = container;
  dateCopy = date;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2;
  v24 = __Block_byref_object_dispose__2;
  v25 = 0;
  newBackgroundContext = [containerCopy newBackgroundContext];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__DRSService_updateUploadSessionDateFromContainer_toDate_errorOut___block_invoke;
  v15[3] = &unk_27899F4C8;
  selfCopy = self;
  v11 = newBackgroundContext;
  v16 = v11;
  v18 = &v20;
  v12 = dateCopy;
  v17 = v12;
  [v11 performBlockAndWait:v15];
  if (out)
  {
    *out = v21[5];
  }

  v13 = v21[5] == 0;

  _Block_object_dispose(&v20, 8);
  return v13;
}

void __67__DRSService_updateUploadSessionDateFromContainer_toDate_errorOut___block_invoke(uint64_t *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = a1[7];
  v3 = a1[4];
  v17 = 0;
  v4 = [v2 _currentUploadSession_ON_MOC_QUEUE:v3 errorOut:&v17];
  v5 = v17;
  v6 = v17;
  if (v6)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v5);
  }

  if (!v4)
  {
    v4 = [[DRSUploadSessionRecordMO alloc] initWithContext:a1[4]];
  }

  if (a1[5])
  {
    [(DRSUploadSessionRecordMO *)v4 setSessionDate:?];
  }

  else
  {
    [a1[4] deleteObject:v4];
  }

  v7 = a1[4];
  v16 = 0;
  v8 = [v7 save:&v16];
  v9 = v16;
  v10 = v16;
  v11 = v10;
  if ((v8 & 1) == 0)
  {
    v12 = DPLogHandle_CoreDataError(v10);
    if (os_signpost_enabled(v12))
    {
      v13 = [v11 localizedDescription];
      v14 = v13;
      v15 = @"Unknown";
      if (v13)
      {
        v15 = v13;
      }

      *buf = 138543362;
      v19 = v15;
      _os_signpost_emit_with_name_impl(&dword_232906000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FailedToSaveUpdatedUploadSession", "To save upload session updates due to error: %{public}@", buf, 0xCu);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), v9);
  }
}

- (BOOL)updateUploadSessionDate:(id *)date
{
  v5 = objc_opt_class();
  serviceContainer = [(DRSService *)self serviceContainer];
  date = [MEMORY[0x277CBEAA8] date];
  LOBYTE(date) = [v5 updateUploadSessionDateFromContainer:serviceContainer toDate:date errorOut:date];

  return date;
}

- (BOOL)clearUploadSessionDate:(id *)date
{
  v5 = objc_opt_class();
  serviceContainer = [(DRSService *)self serviceContainer];
  LOBYTE(date) = [v5 updateUploadSessionDateFromContainer:serviceContainer toDate:0 errorOut:date];

  return date;
}

- (BOOL)shouldRunBackstopUpload:(id *)upload
{
  v5 = objc_opt_class();
  serviceContainer = [(DRSService *)self serviceContainer];
  date = [MEMORY[0x277CBEAA8] date];
  LOBYTE(upload) = [v5 shouldRunBackstopUpload:serviceContainer currentDate:date errorOut:upload];

  return upload;
}

+ (BOOL)shouldRunBackstopUpload:(id)upload currentDate:(id)date errorOut:(id *)out
{
  dateCopy = date;
  v18 = 0;
  v9 = [self previousUploadSessionDateFromContainer:upload errorOut:&v18];
  v10 = v18;
  v11 = v10;
  if (v10)
  {
    if (out)
    {
      v12 = v10;
      v13 = 0;
      *out = v11;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    [dateCopy timeIntervalSinceDate:v9];
    v15 = v14;
    [self backstopInterval];
    v13 = v15 > v16;
  }

  return v13;
}

- (BOOL)_syncConfigurationToDisk:(id)disk
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v4 = DRSSetConfigurationDictionary(@"/private/var/mobile/Library/DiagnosticPipeline/Configuration", disk, &v15);
  v5 = v15;
  v6 = v5;
  if (v4)
  {
    v7 = DPLogHandle_DRSConfig(v5);
    if (os_signpost_enabled(v7))
    {
      configDict = [(DRSService *)self configDict];
      v9 = [configDict description];
      v10 = v9;
      v11 = @"-";
      if (v9)
      {
        v11 = v9;
      }

      *buf = 138543362;
      v17 = v11;
      _os_signpost_emit_with_name_impl(&dword_232906000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DRSServiceConfigSave", "Saved DRSService config to disk: %{public}@", buf, 0xCu);

LABEL_10:
    }
  }

  else
  {
    v7 = DPLogHandle_DRSConfigError(v5);
    if (os_signpost_enabled(v7))
    {
      localizedDescription = [v6 localizedDescription];
      configDict = localizedDescription;
      v13 = @"Unknown";
      if (localizedDescription)
      {
        v13 = localizedDescription;
      }

      *buf = 138543362;
      v17 = v13;
      _os_signpost_emit_with_name_impl(&dword_232906000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DRSServiceConfigSaveFailure", "Failed to save new config to disk due to error: %{public}@", buf, 0xCu);
      goto LABEL_10;
    }
  }

  return v4;
}

- (void)_getConfiguration
{
  configurationSyncQueue = [(DRSService *)self configurationSyncQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__DRSService__getConfiguration__block_invoke;
  block[3] = &unk_27899EF98;
  block[4] = self;
  dispatch_sync(configurationSyncQueue, block);
}

void __31__DRSService__getConfiguration__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v2 = DRSGetConfigurationDictionary(@"/private/var/mobile/Library/DiagnosticPipeline/Configuration", &v9);
  v3 = v9;
  v4 = v3;
  if (v3)
  {
    v5 = DPLogHandle_DRSConfigError(v3);
    if (os_signpost_enabled(v5))
    {
      v6 = [v4 localizedDescription];
      v7 = v6;
      v8 = @"Unknown";
      if (v6)
      {
        v8 = v6;
      }

      *buf = 138543362;
      v11 = v8;
      _os_signpost_emit_with_name_impl(&dword_232906000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DRSServiceConfigGetFailure", "Failed to get DRSService config due to error: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 136), v2);
    [*(a1 + 32) _adjustStateForNewConfiguration];
  }
}

- (void)_updateConfigDict:(id)dict
{
  v13 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v6 = [(DRSService *)self _syncConfigurationToDisk:dictCopy];
  if (v6)
  {
    objc_storeStrong(&self->_configDict, dict);
    v7 = DPLogHandle_DRSConfig([(DRSService *)self _adjustStateForNewConfiguration]);
    if (os_signpost_enabled(v7))
    {
      v8 = [dictCopy description];
      v9 = v8;
      v10 = @"<none>";
      if (v8)
      {
        v10 = v8;
      }

      v11 = 138543362;
      v12 = v10;
      _os_signpost_emit_with_name_impl(&dword_232906000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UpdatedDRSServiceConfig", "New config: %{public}@", &v11, 0xCu);
    }
  }

  else
  {
    v7 = DPLogHandle_DRSConfig(v6);
    if (os_signpost_enabled(v7))
    {
      LOWORD(v11) = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "FailedToUpdateDRSServiceConfig", &unk_232980861, &v11, 2u);
    }
  }
}

- (void)_adjustStateForNewConfiguration
{
  configDict = [(DRSService *)self configDict];
  v5 = [configDict objectForKeyedSubscript:kDRSIgnoreAutomatedDeviceGroupKey];

  if (v5 && ([v5 BOOLValue] & 1) != 0)
  {
    v3 = +[DRSSystemProfile sharedInstance];
    [v3 setAllowsAutomatedDeviceGroupOverride:1];

    v4 = +[DRSSystemProfile sharedInstance];
    [v4 setOverridingAutomatedDeviceGroup:0];
  }

  else
  {
    v4 = +[DRSSystemProfile sharedInstance];
    [v4 setAllowsAutomatedDeviceGroupOverride:0];
  }
}

- (NSNumber)ignoreAutomatedDeviceGroup
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  configurationSyncQueue = [(DRSService *)self configurationSyncQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__DRSService_ignoreAutomatedDeviceGroup__block_invoke;
  v6[3] = &unk_27899F4F0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(configurationSyncQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __40__DRSService_ignoreAutomatedDeviceGroup__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) configDict];
  v2 = [v5 objectForKeyedSubscript:kDRSIgnoreAutomatedDeviceGroupKey];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_setConfigValue:(id)value forKey:(id)key expectedClass:(Class)class
{
  valueCopy = value;
  keyCopy = key;
  configurationSyncQueue = [(DRSService *)self configurationSyncQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__DRSService__setConfigValue_forKey_expectedClass___block_invoke;
  v13[3] = &unk_27899F518;
  v13[4] = self;
  v14 = valueCopy;
  v15 = keyCopy;
  classCopy = class;
  v11 = keyCopy;
  v12 = valueCopy;
  dispatch_sync(configurationSyncQueue, v13);
}

void __51__DRSService__setConfigValue_forKey_expectedClass___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) configDict];
  v3 = [v2 mutableCopy];

  if (*(a1 + 40))
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      if (!v3)
      {
        v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      [v3 setObject:*(a1 + 40) forKeyedSubscript:*(a1 + 48)];
      v5 = DPLogHandle_DRSConfigError([*(a1 + 32) _updateConfigDict:v3]);
      if (os_signpost_enabled(v5))
      {
        v7 = *(a1 + 40);
        v6 = *(a1 + 48);
        v14 = 138543618;
        v15 = v6;
        v16 = 2114;
        v17 = v7;
        _os_signpost_emit_with_name_impl(&dword_232906000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DRSServiceConfigUpdate", "Set '%{public}@' to %{public}@", &v14, 0x16u);
      }
    }

    else
    {
      v5 = DPLogHandle_DRSConfigError(isKindOfClass);
      if (os_signpost_enabled(v5))
      {
        v11 = *(a1 + 48);
        v12 = NSStringFromClass(*(a1 + 56));
        v13 = *(a1 + 40);
        v14 = 138543874;
        v15 = v11;
        v16 = 2114;
        v17 = v12;
        v18 = 2114;
        v19 = v13;
        _os_signpost_emit_with_name_impl(&dword_232906000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DRSServiceConfigUpdateFailure", "Cannot set '%{public}@' to unexpected non-%{public}@ value: %{public}@", &v14, 0x20u);
      }
    }
  }

  else
  {
    [v3 removeObjectForKey:*(a1 + 48)];
    v8 = [v3 count];
    if (!v8)
    {

      v3 = 0;
    }

    v9 = DPLogHandle_DRSConfigError(v8);
    if (os_signpost_enabled(v9))
    {
      v10 = *(a1 + 48);
      v14 = 138543362;
      v15 = v10;
      _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "DRSServiceConfigKeyClear", "Cleared '%{public}@'", &v14, 0xCu);
    }

    [*(a1 + 32) _updateConfigDict:v3];
  }
}

- (void)setIgnoreAutomatedDeviceGroup:(id)group
{
  v4 = kDRSIgnoreAutomatedDeviceGroupKey;
  groupCopy = group;
  [(DRSService *)self _setConfigValue:groupCopy forKey:v4 expectedClass:objc_opt_class()];
}

- (BOOL)isEnabled
{
  isEnabledOverride = [(DRSService *)self isEnabledOverride];
  v3 = isEnabledOverride;
  if (isEnabledOverride)
  {
    bOOLValue = [isEnabledOverride BOOLValue];
  }

  else
  {
    bOOLValue = [objc_opt_class() defaultServiceIsEnabled];
  }

  v5 = bOOLValue;

  return v5;
}

- (NSNumber)isEnabledOverride
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  configurationSyncQueue = [(DRSService *)self configurationSyncQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__DRSService_isEnabledOverride__block_invoke;
  v6[3] = &unk_27899F4F0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(configurationSyncQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __31__DRSService_isEnabledOverride__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) configDict];
  v2 = [v5 objectForKeyedSubscript:kDRSUploadServiceEnabledKey];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setIsEnabledOverride:(id)override
{
  v4 = kDRSUploadServiceEnabledKey;
  overrideCopy = override;
  [(DRSService *)self _setConfigValue:overrideCopy forKey:v4 expectedClass:objc_opt_class()];
}

void __59__DRSService__waitForDeviceUnlockAndInitializeServiceState__block_invoke_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  v8 = v1;
  v9 = @"Unknown";
  if (v1)
  {
    v9 = v1;
  }

  LODWORD(v10) = 138543362;
  *(&v10 + 4) = v9;
  OUTLINED_FUNCTION_0_0(&dword_232906000, v2, v3, "Failed to initalize CK config store due to error: %{public}@. Falling back to default settings", v4, v5, v6, v7, v10, DWORD2(v10));
}

@end