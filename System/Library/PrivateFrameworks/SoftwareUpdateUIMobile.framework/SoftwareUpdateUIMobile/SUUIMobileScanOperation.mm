@interface SUUIMobileScanOperation
+ (id)_generateStateTable;
- (BOOL)isActive;
- (BOOL)shouldConsiderErrorAsSuccessfulCase:(id)case;
- (SUUIMobileScanOperation)init;
- (SUUIMobileScanOperation)initWithIdentifier:(id)identifier options:(id)options usingSUManagerClient:(id)client andBetaManager:(id)manager withCompletionQueue:(id)queue;
- (id)baseDomain;
- (id)cachedScanResults;
- (id)cachedScanResults:(BOOL *)results;
- (id)currentOSVersionIdentifier;
- (id)readScanResultsCacheExpectedTTLValue;
- (id)scanResultsCacheExpectedTTLDuration;
- (int64_t)actionUnknownAction:(id)action error:(id *)error;
- (int64_t)action_CheckForAvailableUpdate:(id)update error:(id *)error;
- (int64_t)action_ObserveConcurrentQueries:(id)queries error:(id *)error;
- (int64_t)action_QueryCurrentDownload:(id)download error:(id *)error;
- (int64_t)action_QueryFullScanMetadata:(id)metadata error:(id *)error;
- (int64_t)action_QueryUpdatesInfo:(id)info error:(id *)error;
- (int64_t)action_ReportScanCanceled:(id)canceled error:(id *)error;
- (int64_t)action_ReportScanOutcome:(id)outcome error:(id *)error;
- (int64_t)performAction:(id)action onEvent:(id)event inState:(id)state withInfo:(id)info nextState:(id)nextState error:(id *)error;
- (void)cacheDiscoveredScanResults:(id)results;
- (void)cancel:(id)cancel;
- (void)checkForAvailableUpdatesWithCompletionHandler:(id)handler;
- (void)checkForAvailableUpdatesWithContext:(id)context completionHandler:(id)handler;
- (void)checkForBetaPrograms:(id)programs withReplyHandler:(id)handler;
- (void)checkForMDMRestrictions:(id)restrictions withReplyHandler:(id)handler;
- (void)checkIfAutoUpdateScheduled:(id)scheduled withReplyHandler:(id)handler;
- (void)checkIsEligibleForRollback:(id)rollback withReplyHandler:(id)handler;
- (void)controllerCurrentlyScanning:(id)scanning;
- (void)dealloc;
- (void)handleDiscoveredScanResults:(id)results withError:(id)error usingEventInfo:(id)info isCachedResults:(BOOL)cachedResults activity:(suui_activity_s *)activity;
- (void)handleDiscoveredScanResults:(id)results withError:(id)error usingEventInfo:(id)info isCachedResults:(BOOL)cachedResults activity:(suui_activity_s *)activity beforePostEvent:(id)event;
- (void)hasScanResultsCacheWithCompletion:(id)completion;
- (void)invalidateMachine;
- (void)invalidateScanResultsCache:(id)cache;
- (void)queryDDMDeclaration:(id)declaration withReplyHandler:(id)handler;
- (void)queryRollbackStatus:(id)status withReplyHandler:(id)handler;
- (void)refreshScanResultsWithPreferredUpdate:(id)update alternateUpdate:(id)alternateUpdate completionHandler:(id)handler;
- (void)refreshScanResultsWithPreferredUpdate:(id)update alternateUpdate:(id)alternateUpdate context:(id)context completionHandler:(id)handler;
- (void)removeCachedScanResults;
- (void)scanForDeviceEligibleBetaPrograms:(id)programs withReplyHandler:(id)handler;
- (void)scheduleConcurrentActionWithSelector:(SEL)selector eventInfo:(id)info;
@end

@implementation SUUIMobileScanOperation

+ (id)_generateStateTable
{
  v110[6] = *MEMORY[0x277D85DE8];
  v50[2] = self;
  v50[1] = a2;
  v15 = MEMORY[0x277D64E88];
  v109[0] = *MEMORY[0x277D64E88];
  v107[0] = *MEMORY[0x277D64D18];
  v18 = MEMORY[0x277D64800];
  v105[0] = *MEMORY[0x277D64800];
  v4 = MEMORY[0x277D64E80];
  v106[0] = *MEMORY[0x277D64E80];
  v16 = MEMORY[0x277D644B8];
  v105[1] = *MEMORY[0x277D644B8];
  v106[1] = *MEMORY[0x277D64CC0];
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:?];
  v108[0] = v47;
  v107[1] = *MEMORY[0x277D64DD8];
  v103[0] = *v18;
  v6 = MEMORY[0x277D64EC0];
  v104[0] = *MEMORY[0x277D64EC0];
  v103[1] = *v16;
  v5 = MEMORY[0x277D64CB8];
  v104[1] = *MEMORY[0x277D64CB8];
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v104 forKeys:v103 count:2];
  v108[1] = v46;
  v107[2] = *MEMORY[0x277D64DE0];
  v101[0] = *v18;
  v9 = MEMORY[0x277D64EC8];
  v102[0] = *MEMORY[0x277D64EC8];
  v101[1] = *v16;
  v7 = MEMORY[0x277D64CC8];
  v102[1] = *MEMORY[0x277D64CC8];
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:2];
  v108[2] = v45;
  v14 = MEMORY[0x277D64D08];
  v107[3] = *MEMORY[0x277D64D08];
  v99[0] = *v18;
  v100[0] = *v15;
  v99[1] = *v16;
  v17 = MEMORY[0x277D64CD0];
  v100[1] = *MEMORY[0x277D64CD0];
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:v99 count:2];
  v108[3] = v44;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v108 forKeys:v107 count:?];
  v110[0] = v43;
  v109[1] = *v4;
  v97[0] = *MEMORY[0x277D64D88];
  v95 = *v16;
  v96 = *MEMORY[0x277D64C78];
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v96 forKeys:&v95 count:?];
  v98[0] = v42;
  v97[1] = *MEMORY[0x277D64E70];
  v93[0] = *v18;
  v94[0] = *v6;
  v93[1] = *v16;
  v94[1] = *v5;
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:2];
  v98[1] = v41;
  v8 = MEMORY[0x277D64D80];
  v97[2] = *MEMORY[0x277D64D80];
  v91[0] = *v18;
  v92[0] = *v6;
  v91[1] = *v16;
  v92[1] = *v5;
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:2];
  v98[2] = v40;
  v97[3] = *MEMORY[0x277D64D20];
  v89[0] = *v18;
  v90[0] = *v15;
  v89[1] = *v16;
  v13 = MEMORY[0x277D64CD8];
  v90[1] = *MEMORY[0x277D64CD8];
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:2];
  v98[3] = v39;
  v12 = MEMORY[0x277D64D28];
  v97[4] = *MEMORY[0x277D64D28];
  v87[0] = *v18;
  v88[0] = *v15;
  v87[1] = *v16;
  v88[1] = *v13;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:2];
  v98[4] = v38;
  v97[5] = *v14;
  v85[0] = *v18;
  v86[0] = *v15;
  v85[1] = *v16;
  v86[1] = *v17;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:2];
  v98[5] = v37;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:?];
  v110[1] = v36;
  v109[2] = *v6;
  v83[0] = *MEMORY[0x277D64DC0];
  v81[0] = *v18;
  v82[0] = *v9;
  v81[1] = *v16;
  v82[1] = *v7;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:2];
  v84[0] = v35;
  v83[1] = *MEMORY[0x277D64DB8];
  v79[0] = *v18;
  v80[0] = *v15;
  v79[1] = *v16;
  v80[1] = *v13;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:2];
  v84[1] = v34;
  v83[2] = *v8;
  v77[0] = *v18;
  v11 = MEMORY[0x277D64EA0];
  v78[0] = *MEMORY[0x277D64EA0];
  v77[1] = *v16;
  v10 = MEMORY[0x277D64C90];
  v78[1] = *MEMORY[0x277D64C90];
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:2];
  v84[2] = v33;
  v83[3] = *v12;
  v75[0] = *v18;
  v76[0] = *v15;
  v75[1] = *v16;
  v76[1] = *v13;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:2];
  v84[3] = v32;
  v83[4] = *v14;
  v73[0] = *v18;
  v74[0] = *v15;
  v73[1] = *v16;
  v74[1] = *v17;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:2];
  v84[4] = v31;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:5];
  v110[2] = v30;
  v109[3] = *v9;
  v71[0] = *MEMORY[0x277D64DD0];
  v69[0] = *v18;
  v70[0] = *v11;
  v69[1] = *v16;
  v70[1] = *v10;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:2];
  v72[0] = v29;
  v71[1] = *MEMORY[0x277D64DC8];
  v67[0] = *v18;
  v68[0] = *v15;
  v67[1] = *v16;
  v68[1] = *v13;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:2];
  v72[1] = v28;
  v71[2] = *v12;
  v65[0] = *v18;
  v66[0] = *v15;
  v65[1] = *v16;
  v66[1] = *v13;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:2];
  v72[2] = v27;
  v71[3] = *v14;
  v63[0] = *v18;
  v64[0] = *v15;
  v63[1] = *v16;
  v64[1] = *v17;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:2];
  v72[3] = v26;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:4];
  v110[3] = v25;
  v109[4] = *v11;
  v61[0] = *MEMORY[0x277D64CF8];
  v59[0] = *v18;
  v60[0] = *v15;
  v59[1] = *v16;
  v60[1] = *v13;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
  v62[0] = v24;
  v61[1] = *v12;
  v57[0] = *v18;
  v58[0] = *v15;
  v57[1] = *v16;
  v58[1] = *v13;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];
  v62[1] = v23;
  v61[2] = *v14;
  v55[0] = *v18;
  v56[0] = *v15;
  v55[1] = *v16;
  v56[1] = *v17;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
  v62[2] = v22;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:3];
  v110[4] = v21;
  v109[5] = *MEMORY[0x277D647E8];
  v53 = *MEMORY[0x277D647E0];
  v51 = *v18;
  v52 = *MEMORY[0x277D647F0];
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  v54 = v20;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
  v110[5] = v19;
  v50[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v110 forKeys:v109 count:6];
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](v46);
  MEMORY[0x277D82BD8](v47);
  v2 = objc_alloc(MEMORY[0x277CBEAC0]);
  v49 = [v2 initWithDictionary:v50[0] copyItems:1];
  v48 = MEMORY[0x277D82BE0](v49);
  objc_storeStrong(&v49, 0);
  objc_storeStrong(v50, 0);

  return v48;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  if (self->_activity)
  {
    if (selfCopy->_activity->var2)
    {
      os_activity_scope_leave(&selfCopy->_activity->var0);
    }

    free(selfCopy->_activity);
    selfCopy->_activity = 0;
  }

  v2.receiver = selfCopy;
  v2.super_class = SUUIMobileScanOperation;
  [(SUUIMobileScanOperation *)&v2 dealloc];
}

- (int64_t)performAction:(id)action onEvent:(id)event inState:(id)state withInfo:(id)info nextState:(id)nextState error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, action);
  v33 = 0;
  objc_storeStrong(&v33, event);
  v32 = 0;
  objc_storeStrong(&v32, state);
  v31 = 0;
  objc_storeStrong(&v31, info);
  v30 = 0;
  objc_storeStrong(&v30, nextState);
  errorCopy = error;
  scanFSM = [(SUUIMobileScanOperation *)selfCopy scanFSM];
  extendedStateQueue = [(SUCoreFSM *)scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);
  MEMORY[0x277D82BD8](extendedStateQueue);
  MEMORY[0x277D82BD8](scanFSM);
  v28[0] = 3;
  p_lock = &selfCopy->_lock;
  v37 = 0;
  os_unfair_recursive_lock_lock_with_options();
  v28[1] = p_lock;
  if (!selfCopy->_canceled || ([location[0] isEqualToString:*MEMORY[0x277D64CD0]] & 1) != 0)
  {
    v27 = 2;
  }

  else
  {
    scanOperationLogger = [MEMORY[0x277D64B58] scanOperationLogger];
    oslog = [scanOperationLogger oslog];
    MEMORY[0x277D82BD8](scanOperationLogger);
    v25 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [(SUUIMobileScanOperation *)selfCopy identifier];
      v13 = MEMORY[0x277D82BE0](identifier);
      v24 = v13;
      operationType = selfCopy->_operationType;
      if (operationType)
      {
        if (operationType == 1)
        {
          v41 = MEMORY[0x277D82BE0](@"F");
        }

        else if (operationType == 2)
        {
          v41 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v41 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v41 = MEMORY[0x277D82BE0](@"N");
      }

      v11 = v41;
      v8 = v41;
      v10 = v11;
      v23 = MEMORY[0x277D82BE0](v10);
      __os_log_helper_16_2_4_8_32_8_66_8_66_8_64(v42, "[SUUIMobileScanOperation performAction:onEvent:inState:withInfo:nextState:error:]", v13, v23, location[0]);
      _os_log_impl(&dword_26B0B9000, oslog, v25, "%s [%{public}@|%{public}@]: Cancel has been requested. Skipping on %@", v42, 0x2Au);
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](identifier);
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v24, 0);
    }

    objc_storeStrong(&oslog, 0);
    v36 = 0;
    v27 = 1;
  }

  v39 = v28;
  switch(v28[0])
  {
    case 1:
      [v39[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v39[1]);
      break;
    case 3:
      os_unfair_recursive_lock_unlock();
      break;
  }

  if (v27 == 2)
  {
    if ([location[0] isEqualToString:*MEMORY[0x277D647D0]])
    {
      v22 = 0;
    }

    else if ([location[0] isEqualToString:*MEMORY[0x277D64CC0]])
    {
      v22 = [(SUUIMobileScanOperation *)selfCopy action_QueryFullScanMetadata:v31 error:errorCopy];
    }

    else if ([location[0] isEqualToString:*MEMORY[0x277D64C78]])
    {
      v22 = [(SUUIMobileScanOperation *)selfCopy action_CheckForAvailableUpdate:v31 error:errorCopy];
    }

    else if ([location[0] isEqualToString:*MEMORY[0x277D64CB8]])
    {
      v22 = [(SUUIMobileScanOperation *)selfCopy action_QueryCurrentDownload:v31 error:errorCopy];
    }

    else if ([location[0] isEqualToString:*MEMORY[0x277D64CC8]])
    {
      v22 = [(SUUIMobileScanOperation *)selfCopy action_QueryUpdatesInfo:v31 error:errorCopy];
    }

    else if ([location[0] isEqualToString:*MEMORY[0x277D64C90]])
    {
      v22 = [(SUUIMobileScanOperation *)selfCopy action_ObserveConcurrentQueries:v31 error:errorCopy];
    }

    else if ([location[0] isEqualToString:*MEMORY[0x277D64CD8]])
    {
      v22 = [(SUUIMobileScanOperation *)selfCopy action_ReportScanOutcome:v31 error:errorCopy];
    }

    else if ([location[0] isEqualToString:*MEMORY[0x277D64CD0]])
    {
      v22 = [(SUUIMobileScanOperation *)selfCopy action_ReportScanCanceled:v31 error:errorCopy];
    }

    else
    {
      v22 = [(SUUIMobileScanOperation *)selfCopy actionUnknownAction:location[0] error:errorCopy];
    }

    v36 = v22;
    v27 = 1;
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
  return v36;
}

- (int64_t)action_QueryFullScanMetadata:(id)metadata error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, metadata);
  errorCopy = error;
  scanFSM = [(SUUIMobileScanOperation *)selfCopy scanFSM];
  extendedStateQueue = [(SUCoreFSM *)scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);
  MEMORY[0x277D82BD8](extendedStateQueue);
  MEMORY[0x277D82BD8](scanFSM);
  if (location[0])
  {
    v84 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
    if (v84)
    {
      v83 = _os_activity_create(&dword_26B0B9000, "com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.ScheduleConcurrentActions", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      v4 = v84[1].opaque[0];
      v84[1].opaque[0] = v83;
      MEMORY[0x277D82BD8](v4);
    }

    else
    {
      softwareUpdateUILogger = [MEMORY[0x277D64B58] softwareUpdateUILogger];
      oslog = [softwareUpdateUILogger oslog];
      MEMORY[0x277D82BD8](softwareUpdateUILogger);
      v81 = 16;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        log = oslog;
        type = v81;
        __os_log_helper_16_0_0(v80);
        _os_log_error_impl(&dword_26B0B9000, log, type, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.ScheduleConcurrentActions", v80, 2u);
      }

      objc_storeStrong(&oslog, 0);
    }

    v79 = v84;
    v85 = v84;
    if (v84)
    {
      os_activity_scope_enter(v85[1].opaque[0], v85);
      LOBYTE(v85[1].opaque[1]) = 1;
    }

    v78 = v85;
    v86 = v85;
    v75 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
    if (v75)
    {
      v74 = _os_activity_create(&dword_26B0B9000, "com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.ScheduleConcurrentActions: queryDDMDeclaration:withReplyHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      v5 = v75[1].opaque[0];
      v75[1].opaque[0] = v74;
      MEMORY[0x277D82BD8](v5);
    }

    else
    {
      softwareUpdateUILogger2 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
      oslog2 = [softwareUpdateUILogger2 oslog];
      MEMORY[0x277D82BD8](softwareUpdateUILogger2);
      v72 = 16;
      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
      {
        v24 = oslog2;
        v25 = v72;
        __os_log_helper_16_0_0(v71);
        _os_log_error_impl(&dword_26B0B9000, v24, v25, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.ScheduleConcurrentActions: queryDDMDeclaration:withReplyHandler:", v71, 2u);
      }

      objc_storeStrong(&oslog2, 0);
    }

    v70 = v75;
    v76 = v75;
    if (v75)
    {
      os_activity_scope_enter(v76[1].opaque[0], v76);
      LOBYTE(v76[1].opaque[1]) = 1;
    }

    v69 = v76;
    v77 = v76;
    [(SUUIMobileScanOperation *)selfCopy scheduleConcurrentActionWithSelector:sel_queryDDMDeclaration_withReplyHandler_ eventInfo:location[0]];
    if (v77)
    {
      if (LOBYTE(v77[1].opaque[1]))
      {
        os_activity_scope_leave(v77);
      }

      free(v77);
      v77 = 0;
    }

    v66 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
    if (v66)
    {
      v65 = _os_activity_create(&dword_26B0B9000, "com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.ScheduleConcurrentActions: checkForMDMRestrictions:withReplyHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      v6 = v66[1].opaque[0];
      v66[1].opaque[0] = v65;
      MEMORY[0x277D82BD8](v6);
    }

    else
    {
      softwareUpdateUILogger3 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
      oslog3 = [softwareUpdateUILogger3 oslog];
      MEMORY[0x277D82BD8](softwareUpdateUILogger3);
      v63 = 16;
      if (os_log_type_enabled(oslog3, OS_LOG_TYPE_ERROR))
      {
        v21 = oslog3;
        v22 = v63;
        __os_log_helper_16_0_0(v62);
        _os_log_error_impl(&dword_26B0B9000, v21, v22, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.ScheduleConcurrentActions: checkForMDMRestrictions:withReplyHandler:", v62, 2u);
      }

      objc_storeStrong(&oslog3, 0);
    }

    v61 = v66;
    v67 = v66;
    if (v66)
    {
      os_activity_scope_enter(v67[1].opaque[0], v67);
      LOBYTE(v67[1].opaque[1]) = 1;
    }

    v60 = v67;
    v68 = v67;
    [(SUUIMobileScanOperation *)selfCopy scheduleConcurrentActionWithSelector:sel_checkForMDMRestrictions_withReplyHandler_ eventInfo:location[0]];
    if (v68)
    {
      if (LOBYTE(v68[1].opaque[1]))
      {
        os_activity_scope_leave(v68);
      }

      free(v68);
      v68 = 0;
    }

    v57 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
    if (v57)
    {
      v56 = _os_activity_create(&dword_26B0B9000, "com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.ScheduleConcurrentActions: checkForBetaPrograms:withReplyHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      v7 = v57[1].opaque[0];
      v57[1].opaque[0] = v56;
      MEMORY[0x277D82BD8](v7);
    }

    else
    {
      softwareUpdateUILogger4 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
      oslog = [softwareUpdateUILogger4 oslog];
      MEMORY[0x277D82BD8](softwareUpdateUILogger4);
      v54 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v18 = oslog;
        v19 = v54;
        __os_log_helper_16_0_0(v53);
        _os_log_error_impl(&dword_26B0B9000, v18, v19, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.ScheduleConcurrentActions: checkForBetaPrograms:withReplyHandler:", v53, 2u);
      }

      objc_storeStrong(&oslog, 0);
    }

    v52 = v57;
    state = v57;
    if (v57)
    {
      os_activity_scope_enter(state[1].opaque[0], state);
      LOBYTE(state[1].opaque[1]) = 1;
    }

    v51 = state;
    v59 = state;
    [(SUUIMobileScanOperation *)selfCopy scheduleConcurrentActionWithSelector:sel_checkForBetaPrograms_withReplyHandler_ eventInfo:location[0]];
    if (v59)
    {
      if (LOBYTE(v59[1].opaque[1]))
      {
        os_activity_scope_leave(v59);
      }

      free(v59);
      v59 = 0;
    }

    v48 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
    if (v48)
    {
      v47 = _os_activity_create(&dword_26B0B9000, "com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.ScheduleConcurrentActions: queryRollbackStatus:withReplyHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      v8 = v48[1].opaque[0];
      v48[1].opaque[0] = v47;
      MEMORY[0x277D82BD8](v8);
    }

    else
    {
      softwareUpdateUILogger5 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
      oslog4 = [softwareUpdateUILogger5 oslog];
      MEMORY[0x277D82BD8](softwareUpdateUILogger5);
      v45 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog4, OS_LOG_TYPE_ERROR))
      {
        v15 = oslog4;
        v16 = v45;
        __os_log_helper_16_0_0(v44);
        _os_log_error_impl(&dword_26B0B9000, v15, v16, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.ScheduleConcurrentActions: queryRollbackStatus:withReplyHandler:", v44, 2u);
      }

      objc_storeStrong(&oslog4, 0);
    }

    v43 = v48;
    v49 = v48;
    if (v48)
    {
      os_activity_scope_enter(v49[1].opaque[0], v49);
      LOBYTE(v49[1].opaque[1]) = 1;
    }

    v42 = v49;
    v50 = v49;
    [(SUUIMobileScanOperation *)selfCopy scheduleConcurrentActionWithSelector:sel_queryRollbackStatus_withReplyHandler_ eventInfo:location[0]];
    if (v50)
    {
      if (LOBYTE(v50[1].opaque[1]))
      {
        os_activity_scope_leave(v50);
      }

      free(v50);
      v50 = 0;
    }

    v39 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
    if (v39)
    {
      v38 = _os_activity_create(&dword_26B0B9000, "com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.ScheduleConcurrentActions: checkIsEligibleForRollback:withReplyHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      v9 = v39[1].opaque[0];
      v39[1].opaque[0] = v38;
      MEMORY[0x277D82BD8](v9);
    }

    else
    {
      softwareUpdateUILogger6 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
      oslog5 = [softwareUpdateUILogger6 oslog];
      MEMORY[0x277D82BD8](softwareUpdateUILogger6);
      v36 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog5, OS_LOG_TYPE_ERROR))
      {
        v12 = oslog5;
        v13 = v36;
        __os_log_helper_16_0_0(v35);
        _os_log_error_impl(&dword_26B0B9000, v12, v13, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.ScheduleConcurrentActions: checkIsEligibleForRollback:withReplyHandler:", v35, 2u);
      }

      objc_storeStrong(&oslog5, 0);
    }

    v40 = v39;
    if (v39)
    {
      os_activity_scope_enter(v40[1].opaque[0], v40);
      LOBYTE(v40[1].opaque[1]) = 1;
    }

    v41 = v40;
    [(SUUIMobileScanOperation *)selfCopy scheduleConcurrentActionWithSelector:sel_checkIsEligibleForRollback_withReplyHandler_ eventInfo:location[0]];
    if (v41)
    {
      if (LOBYTE(v41[1].opaque[1]))
      {
        os_activity_scope_leave(v41);
      }

      free(v41);
      v41 = 0;
    }

    scanFSM2 = [(SUUIMobileScanOperation *)selfCopy scanFSM];
    [(SUCoreFSM *)scanFSM2 followupEvent:*MEMORY[0x277D64D88] withInfo:location[0]];
    MEMORY[0x277D82BD8](scanFSM2);
    v91 = 0;
    v87 = 1;
    _SUUIActivityCleanup(&v86);
  }

  else
  {
    scanFSM3 = [(SUUIMobileScanOperation *)selfCopy scanFSM];
    diag = [(SUCoreFSM *)scanFSM3 diag];
    [diag trackAnomaly:@"[SUUIMobileScanOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:? withError:?];
    MEMORY[0x277D82BD8](diag);
    MEMORY[0x277D82BD8](scanFSM3);
    v91 = 8102;
    v87 = 1;
  }

  objc_storeStrong(location, 0);
  return v91;
}

- (int64_t)action_CheckForAvailableUpdate:(id)update error:(id *)error
{
  v91 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  errorCopy = error;
  scanFSM = [(SUUIMobileScanOperation *)selfCopy scanFSM];
  extendedStateQueue = [(SUCoreFSM *)scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);
  MEMORY[0x277D82BD8](extendedStateQueue);
  MEMORY[0x277D82BD8](scanFSM);
  if (location[0])
  {
    v76 = 0;
    v77 = &v76;
    v78 = 0x20000000;
    v79 = 32;
    v80 = 0;
    v74 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
    if (v74)
    {
      v73 = _os_activity_create(&dword_26B0B9000, "com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.CheckForUpdates", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      v4 = v74[1].opaque[0];
      v74[1].opaque[0] = v73;
      MEMORY[0x277D82BD8](v4);
    }

    else
    {
      softwareUpdateUILogger = [MEMORY[0x277D64B58] softwareUpdateUILogger];
      oslog = [softwareUpdateUILogger oslog];
      MEMORY[0x277D82BD8](softwareUpdateUILogger);
      v71 = 16;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        log = oslog;
        type = v71;
        __os_log_helper_16_0_0(v70);
        _os_log_error_impl(&dword_26B0B9000, log, type, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.CheckForUpdates", v70, 2u);
      }

      objc_storeStrong(&oslog, 0);
    }

    v69 = v74;
    v75 = v74;
    if (v74)
    {
      os_activity_scope_enter(v75[1].opaque[0], v75);
      LOBYTE(v75[1].opaque[1]) = 1;
    }

    v68 = v75;
    v77[3] = v75;
    v66 = 0;
    options = [location[0] options];
    v32 = 1;
    if (options)
    {
      options2 = [location[0] options];
      v66 = 1;
      v32 = options2 == 0;
    }

    if (v66)
    {
      MEMORY[0x277D82BD8](options2);
    }

    MEMORY[0x277D82BD8](options);
    if (v32)
    {
      scanFSM2 = [(SUUIMobileScanOperation *)selfCopy scanFSM];
      diag = [(SUCoreFSM *)scanFSM2 diag];
      [diag trackAnomaly:@"[SUUIMobileScanOperation]" forReason:@"Missing eventInfo parameter: scanOptions." withResult:8102 withError:0];
      MEMORY[0x277D82BD8](diag);
      MEMORY[0x277D82BD8](scanFSM2);
      if (v77[3])
      {
        if (*(v77[3] + 24))
        {
          os_activity_scope_leave(v77[3]);
        }

        free(v77[3]);
        v77[3] = 0;
      }

      v85 = 8102;
      v81 = 1;
      goto LABEL_57;
    }

    v64 = 0;
    thirdPartyDiscoveredScanResults = [location[0] thirdPartyDiscoveredScanResults];
    v28 = 0;
    if (!thirdPartyDiscoveredScanResults)
    {
      thirdPartyDiscoveredScanError = [location[0] thirdPartyDiscoveredScanError];
      v64 = 1;
      v28 = thirdPartyDiscoveredScanError == 0;
    }

    if (v64)
    {
      MEMORY[0x277D82BD8](thirdPartyDiscoveredScanError);
    }

    MEMORY[0x277D82BD8](thirdPartyDiscoveredScanResults);
    if (v28)
    {
      v62 = 0;
      supportScanResultsCaching = 0;
      if (([location[0] forceReloadScanResults] & 1) == 0)
      {
        options3 = [(SUUIMobileScanOperation *)selfCopy options];
        v62 = 1;
        supportScanResultsCaching = [(SUUIMobileScanOperationOptions *)options3 supportScanResultsCaching];
      }

      if (v62)
      {
        MEMORY[0x277D82BD8](options3);
      }

      if (supportScanResultsCaching)
      {
        v61 = 0;
        v60 = [(SUUIMobileScanOperation *)selfCopy cachedScanResults:&v61];
        if (v60 || (v61 & 1) != 0)
        {
          [(SUUIMobileScanOperation *)selfCopy handleDiscoveredScanResults:v60 withError:0 usingEventInfo:location[0] isCachedResults:1 activity:v77[3]];
          v85 = 0;
          v81 = 1;
        }

        else
        {
          v81 = 0;
        }

        objc_storeStrong(&v60, 0);
        if (v81)
        {
          goto LABEL_57;
        }
      }

      else if ([location[0] forceReloadScanResults])
      {
        [(SUUIMobileScanOperation *)selfCopy removeCachedScanResults];
      }

      v59 = 0uLL;
      scanOperationLogger = [MEMORY[0x277D64B58] scanOperationLogger];
      oslog2 = [scanOperationLogger oslog];
      *&v24 = _SUUISignpostCreate();
      *(&v24 + 1) = v5;
      v58 = v24;
      MEMORY[0x277D82BD8](oslog2);
      MEMORY[0x277D82BD8](scanOperationLogger);
      if (v24)
      {
        scanOperationLogger2 = [MEMORY[0x277D64B58] scanOperationLogger];
        oslog3 = [scanOperationLogger2 oslog];
        MEMORY[0x277D82BD8](scanOperationLogger2);
        v56 = OS_SIGNPOST_INTERVAL_BEGIN;
        v55 = v58;
        if (v58 != -1 && os_signpost_enabled(oslog3))
        {
          identifier = [(SUUIMobileScanOperation *)selfCopy identifier];
          __os_log_helper_16_2_1_8_66(v90, identifier);
          _os_signpost_emit_with_name_impl(&dword_26B0B9000, oslog3, v56, v55, "CheckForAvailableUpdates", "Begins scanForUpdates  ScanIdentifier=%{public,signpost.telemetry:string1,name=ScanIdentifier}@  enableTelemetry=YES ", v90, 0xCu);
          MEMORY[0x277D82BD8](identifier);
        }

        objc_storeStrong(&oslog3, 0);
        scanOperationLogger3 = [MEMORY[0x277D64B58] scanOperationLogger];
        oslog = [scanOperationLogger3 oslog];
        MEMORY[0x277D82BD8](scanOperationLogger3);
        v53 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v58;
          identifier2 = [(SUUIMobileScanOperation *)selfCopy identifier];
          __os_log_helper_16_2_2_8_0_8_66(v89, v19, identifier2);
          _os_log_impl(&dword_26B0B9000, oslog, v53, "BEGIN [%lld]: CheckForAvailableUpdates Begins scanForUpdates  ScanIdentifier=%{public,signpost.telemetry:string1,name=ScanIdentifier}@  enableTelemetry=YES ", v89, 0x16u);
          MEMORY[0x277D82BD8](identifier2);
        }

        objc_storeStrong(&oslog, 0);
      }

      v59 = v58;
      suClient = [(SUUIMobileScanOperation *)selfCopy suClient];
      options4 = [location[0] options];
      v45 = MEMORY[0x277D85DD0];
      v46 = -1073741824;
      v47 = 0;
      v48 = __64__SUUIMobileScanOperation_action_CheckForAvailableUpdate_error___block_invoke;
      v49 = &unk_279CCCCE0;
      v52 = v59;
      v50 = MEMORY[0x277D82BE0](selfCopy);
      v51[0] = MEMORY[0x277D82BE0](location[0]);
      v51[1] = &v76;
      [(SUManagerClient *)suClient scanForUpdates:options4 withScanResults:&v45];
      MEMORY[0x277D82BD8](options4);
      MEMORY[0x277D82BD8](suClient);
      objc_storeStrong(v51, 0);
      objc_storeStrong(&v50, 0);
    }

    else
    {
      scanOperationLogger4 = [MEMORY[0x277D64B58] scanOperationLogger];
      oslog4 = [scanOperationLogger4 oslog];
      MEMORY[0x277D82BD8](scanOperationLogger4);
      v43 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
      {
        identifier3 = [(SUUIMobileScanOperation *)selfCopy identifier];
        v14 = MEMORY[0x277D82BE0](identifier3);
        v42 = v14;
        operationType = selfCopy->_operationType;
        if (operationType)
        {
          if (operationType == 1)
          {
            v87 = MEMORY[0x277D82BE0](@"F");
          }

          else if (operationType == 2)
          {
            v87 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v87 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v87 = MEMORY[0x277D82BE0](@"N");
        }

        v12 = v87;
        v6 = v87;
        v11 = v12;
        v41 = MEMORY[0x277D82BE0](v11);
        __os_log_helper_16_2_3_8_32_8_66_8_66(v88, "[SUUIMobileScanOperation action_CheckForAvailableUpdate:error:]", v14, v41);
        _os_log_impl(&dword_26B0B9000, oslog4, v43, "%s [%{public}@|%{public}@]: Got third-party discovered scan results. Using them instead of performing a new scan.", v88, 0x20u);
        MEMORY[0x277D82BD8](v11);
        MEMORY[0x277D82BD8](identifier3);
        objc_storeStrong(&v41, 0);
        objc_storeStrong(&v42, 0);
      }

      objc_storeStrong(&oslog4, 0);
      v10 = selfCopy;
      thirdPartyDiscoveredScanResults2 = [location[0] thirdPartyDiscoveredScanResults];
      thirdPartyDiscoveredScanError2 = [location[0] thirdPartyDiscoveredScanError];
      [SUUIMobileScanOperation handleDiscoveredScanResults:v10 withError:"handleDiscoveredScanResults:withError:usingEventInfo:isCachedResults:activity:" usingEventInfo:thirdPartyDiscoveredScanResults2 isCachedResults:? activity:?];
      MEMORY[0x277D82BD8](thirdPartyDiscoveredScanError2);
      MEMORY[0x277D82BD8](thirdPartyDiscoveredScanResults2);
    }

    v85 = 0;
    v81 = 1;
LABEL_57:
    _Block_object_dispose(&v76, 8);
    goto LABEL_58;
  }

  scanFSM3 = [(SUUIMobileScanOperation *)selfCopy scanFSM];
  diag2 = [(SUCoreFSM *)scanFSM3 diag];
  [diag2 trackAnomaly:@"[SUUIMobileScanOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:8102 withError:0];
  MEMORY[0x277D82BD8](diag2);
  MEMORY[0x277D82BD8](scanFSM3);
  v85 = 8102;
  v81 = 1;
LABEL_58:
  objc_storeStrong(location, 0);
  return v85;
}

void __64__SUUIMobileScanOperation_action_CheckForAvailableUpdate_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v63 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v59 = 0;
  objc_storeStrong(&v59, a3);
  v58 = a1;
  v3 = *(a1 + 56);
  v56 = 0;
  v54 = 0;
  v20 = 0;
  if (v3)
  {
    v57 = [MEMORY[0x277D64B58] scanOperationLogger];
    v56 = 1;
    v55 = [v57 oslog];
    v54 = 1;
    v20 = os_signpost_enabled(v55);
  }

  if (v54)
  {
    MEMORY[0x277D82BD8](v55);
  }

  if (v56)
  {
    MEMORY[0x277D82BD8](v57);
  }

  if (v20)
  {
    v53 = _SUUISignpostGetNanoseconds() / 1000000000.0;
    v17 = [MEMORY[0x277D64B58] scanOperationLogger];
    v52 = [v17 oslog];
    MEMORY[0x277D82BD8](v17);
    v51 = OS_SIGNPOST_EVENT;
    v50 = *(a1 + 56);
    if (v50 && v50 != -1 && os_signpost_enabled(v52))
    {
      v48 = 0;
      v46 = 0;
      v44 = 0;
      v42 = 0;
      v40 = 0;
      v38 = 0;
      v36 = 0;
      if (location[0])
      {
        v16 = MEMORY[0x277CCACA8];
        v49 = [location[0] preferredDescriptor];
        v48 = 1;
        if (v49)
        {
          v47 = [location[0] preferredDescriptor];
          v46 = 1;
          v45 = [v47 humanReadableUpdateName];
          v44 = 1;
          v15 = v45;
        }

        else
        {
          v15 = @"N/A";
        }

        v43 = [location[0] alternateDescriptor];
        v42 = 1;
        if (v43)
        {
          v41 = [location[0] alternateDescriptor];
          v40 = 1;
          v39 = [v41 humanReadableUpdateName];
          v38 = 1;
          v4 = [v16 stringWithFormat:@"Preferred: %@; Alternate: %@", v15, v39];
        }

        else
        {
          v4 = [v16 stringWithFormat:@"Preferred: %@; Alternate: %@", v15, @"N/A"];
        }

        v37 = v4;
        v36 = 1;
        v14 = v37;
      }

      else
      {
        v14 = @"N/A";
      }

      if (v59)
      {
        v13 = [v59 code];
      }

      else
      {
        v13 = 0;
      }

      __os_log_helper_16_2_2_8_66_4_2(v62, v14, v13);
      _os_signpost_emit_with_name_impl(&dword_26B0B9000, v52, v51, v50, "CheckForAvailableUpdates", "Scan Finished ScanResults=%{public,signpost.telemetry:string1,name=ScanResults}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", v62, 0x12u);
      if (v36)
      {
        MEMORY[0x277D82BD8](v37);
      }

      if (v38)
      {
        MEMORY[0x277D82BD8](v39);
      }

      if (v40)
      {
        MEMORY[0x277D82BD8](v41);
      }

      if (v42)
      {
        MEMORY[0x277D82BD8](v43);
      }

      if (v44)
      {
        MEMORY[0x277D82BD8](v45);
      }

      if (v46)
      {
        MEMORY[0x277D82BD8](v47);
      }

      if (v48)
      {
        MEMORY[0x277D82BD8](v49);
      }
    }

    objc_storeStrong(&v52, 0);
    v12 = [MEMORY[0x277D64B58] scanOperationLogger];
    oslog = [v12 oslog];
    MEMORY[0x277D82BD8](v12);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 56);
      v11 = *&v53;
      v33 = 0;
      v31 = 0;
      v29 = 0;
      v27 = 0;
      v25 = 0;
      v23 = 0;
      v21 = 0;
      if (location[0])
      {
        v9 = MEMORY[0x277CCACA8];
        v34 = [location[0] preferredDescriptor];
        v33 = 1;
        if (v34)
        {
          v32 = [location[0] preferredDescriptor];
          v31 = 1;
          v30 = [v32 humanReadableUpdateName];
          v29 = 1;
          v8 = v30;
        }

        else
        {
          v8 = @"N/A";
        }

        v28 = [location[0] alternateDescriptor];
        v27 = 1;
        if (v28)
        {
          v26 = [location[0] alternateDescriptor];
          v25 = 1;
          v24 = [v26 humanReadableUpdateName];
          v23 = 1;
          v5 = [v9 stringWithFormat:@"Preferred: %@; Alternate: %@", v8, v24];
        }

        else
        {
          v5 = [v9 stringWithFormat:@"Preferred: %@; Alternate: %@", v8, @"N/A"];
        }

        v22 = v5;
        v21 = 1;
        v7 = v22;
      }

      else
      {
        v7 = @"N/A";
      }

      if (v59)
      {
        v6 = [v59 code];
      }

      else
      {
        v6 = 0;
      }

      __os_log_helper_16_2_4_8_0_8_0_8_66_4_2(v61, v10, v11, v7, v6);
      _os_log_impl(&dword_26B0B9000, oslog, OS_LOG_TYPE_DEFAULT, "EVENT [%lld] %fs: CheckForAvailableUpdates Scan Finished ScanResults=%{public,signpost.telemetry:string1,name=ScanResults}@  Error=%{public,signpost.telemetry:number2,name=Error}d ", v61, 0x26u);
      if (v21)
      {
        MEMORY[0x277D82BD8](v22);
      }

      if (v23)
      {
        MEMORY[0x277D82BD8](v24);
      }

      if (v25)
      {
        MEMORY[0x277D82BD8](v26);
      }

      if (v27)
      {
        MEMORY[0x277D82BD8](v28);
      }

      if (v29)
      {
        MEMORY[0x277D82BD8](v30);
      }

      if (v31)
      {
        MEMORY[0x277D82BD8](v32);
      }

      if (v33)
      {
        MEMORY[0x277D82BD8](v34);
      }
    }

    objc_storeStrong(&oslog, 0);
  }

  [*(a1 + 32) handleDiscoveredScanResults:location[0] withError:v59 usingEventInfo:*(a1 + 40) isCachedResults:0 activity:*(*(*(a1 + 48) + 8) + 24) beforePostEvent:?];
  objc_storeStrong(&v59, 0);
  objc_storeStrong(location, 0);
}

void __64__SUUIMobileScanOperation_action_CheckForAvailableUpdate_error___block_invoke_325(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = a1;
  v13 = a1;
  if (a1[4])
  {
    v12 = _SUUISignpostGetNanoseconds() / 1000000000.0;
    v5 = [MEMORY[0x277D64B58] scanOperationLogger];
    location = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v10 = 2;
    v9 = a1[4];
    if (v9 && v9 != -1 && os_signpost_enabled(location))
    {
      log = location;
      type = v10;
      spid = v9;
      __os_log_helper_16_0_0(v8);
      _os_signpost_emit_with_name_impl(&dword_26B0B9000, log, type, spid, "CheckForAvailableUpdates", "", v8, 2u);
    }

    objc_storeStrong(&location, 0);
    v1 = [MEMORY[0x277D64B58] scanOperationLogger];
    oslog = [v1 oslog];
    MEMORY[0x277D82BD8](v1);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_2_8_0_8_0(v15, a1[4], *&v12);
      _os_log_impl(&dword_26B0B9000, oslog, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: CheckForAvailableUpdates ", v15, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
  }
}

- (int64_t)action_QueryCurrentDownload:(id)download error:(id *)error
{
  v63 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v57 = a2;
  location = 0;
  objc_storeStrong(&location, download);
  errorCopy = error;
  scanFSM = [(SUUIMobileScanOperation *)selfCopy scanFSM];
  extendedStateQueue = [(SUCoreFSM *)scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);
  MEMORY[0x277D82BD8](extendedStateQueue);
  MEMORY[0x277D82BD8](scanFSM);
  if (location)
  {
    v49 = 0;
    v50 = &v49;
    v51 = 0x20000000;
    v52 = 32;
    v53 = 0;
    v47 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
    if (v47)
    {
      v46 = _os_activity_create(&dword_26B0B9000, "com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.QueryCurrentDownload", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      v4 = v47[1].opaque[0];
      v47[1].opaque[0] = v46;
      MEMORY[0x277D82BD8](v4);
    }

    else
    {
      softwareUpdateUILogger = [MEMORY[0x277D64B58] softwareUpdateUILogger];
      oslog = [softwareUpdateUILogger oslog];
      MEMORY[0x277D82BD8](softwareUpdateUILogger);
      v44 = 16;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        log = oslog;
        type = v44;
        __os_log_helper_16_0_0(v43);
        _os_log_error_impl(&dword_26B0B9000, log, type, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.QueryCurrentDownload", v43, 2u);
      }

      objc_storeStrong(&oslog, 0);
    }

    from[2] = v47;
    v48 = v47;
    if (v47)
    {
      os_activity_scope_enter(v48[1].opaque[0], v48);
      LOBYTE(v48[1].opaque[1]) = 1;
    }

    from[1] = v48;
    v50[3] = v48;
    objc_initWeak(from, selfCopy);
    v34 = MEMORY[0x277D85DD0];
    v35 = -1073741824;
    v36 = 0;
    v37 = __61__SUUIMobileScanOperation_action_QueryCurrentDownload_error___block_invoke;
    v38 = &unk_279CCCD30;
    objc_copyWeak(v40, from);
    v40[1] = v57;
    v39[1] = &v49;
    v39[0] = MEMORY[0x277D82BE0](location);
    v41 = MEMORY[0x26D66ED00](&v34);
    currentDownload = [location currentDownload];
    MEMORY[0x277D82BD8](currentDownload);
    if (currentDownload)
    {
      scanOperationLogger = [MEMORY[0x277D64B58] scanOperationLogger];
      oslog = [scanOperationLogger oslog];
      MEMORY[0x277D82BD8](scanOperationLogger);
      v32 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [(SUUIMobileScanOperation *)selfCopy identifier];
        v17 = MEMORY[0x277D82BE0](identifier);
        v31 = v17;
        operationType = selfCopy->_operationType;
        if (operationType)
        {
          if (operationType == 1)
          {
            v61 = MEMORY[0x277D82BE0](@"F");
          }

          else if (operationType == 2)
          {
            v61 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v61 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v61 = MEMORY[0x277D82BE0](@"N");
        }

        v15 = v61;
        v5 = v61;
        v14 = v15;
        v30 = MEMORY[0x277D82BE0](v14);
        currentDownload2 = [location currentDownload];
        descriptor = [currentDownload2 descriptor];
        humanReadableUpdateName = [descriptor humanReadableUpdateName];
        v29 = MEMORY[0x277D82BE0](humanReadableUpdateName);
        currentDownload3 = [location currentDownload];
        __os_log_helper_16_2_5_8_32_8_66_8_66_8_66_8_0(v62, "[SUUIMobileScanOperation action_QueryCurrentDownload:error:]", v17, v30, v29, currentDownload3);
        _os_log_impl(&dword_26B0B9000, oslog, v32, "%s [%{public}@|%{public}@]: Scan operation has already been given a download (%{public}@, %p) - skipping on the download lookup.", v62, 0x34u);
        MEMORY[0x277D82BD8](currentDownload3);
        MEMORY[0x277D82BD8](humanReadableUpdateName);
        MEMORY[0x277D82BD8](descriptor);
        MEMORY[0x277D82BD8](currentDownload2);
        MEMORY[0x277D82BD8](v14);
        MEMORY[0x277D82BD8](identifier);
        objc_storeStrong(&v29, 0);
        objc_storeStrong(&v30, 0);
        objc_storeStrong(&v31, 0);
      }

      objc_storeStrong(&oslog, 0);
      v9 = v41;
      currentDownload4 = [location currentDownload];
      operationError = [location operationError];
      v9[2](v9, currentDownload4);
      MEMORY[0x277D82BD8](operationError);
      MEMORY[0x277D82BD8](currentDownload4);
    }

    else
    {
      suClient = [(SUUIMobileScanOperation *)selfCopy suClient];
      [(SUManagerClient *)suClient download:v41];
      MEMORY[0x277D82BD8](suClient);
    }

    v59 = 0;
    v54 = 1;
    objc_storeStrong(&v41, 0);
    objc_storeStrong(v39, 0);
    objc_destroyWeak(v40);
    objc_destroyWeak(from);
    _Block_object_dispose(&v49, 8);
  }

  else
  {
    scanFSM2 = [(SUUIMobileScanOperation *)selfCopy scanFSM];
    diag = [(SUCoreFSM *)scanFSM2 diag];
    [diag trackAnomaly:@"[SUUIMobileScanOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:8102 withError:0];
    MEMORY[0x277D82BD8](diag);
    MEMORY[0x277D82BD8](scanFSM2);
    v59 = 8102;
    v54 = 1;
  }

  objc_storeStrong(&location, 0);
  return v59;
}

void __61__SUUIMobileScanOperation_action_QueryCurrentDownload_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v109 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v97 = 0;
  objc_storeStrong(&v97, a3);
  v96[1] = a1;
  v96[0] = objc_loadWeakRetained((a1 + 48));
  v56 = 0;
  if (!v96[0])
  {
    v55 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v95 = [v55 oslog];
    MEMORY[0x277D82BD8](v55);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      log = v95;
      v54 = type;
      v52 = NSStringFromSelector(*(a1 + 56));
      v93 = MEMORY[0x277D82BE0](v52);
      __os_log_helper_16_2_2_8_32_8_66(v108, "[SUUIMobileScanOperation action_QueryCurrentDownload:error:]_block_invoke", v93);
      _os_log_error_impl(&dword_26B0B9000, log, v54, "%s: Self is nil in %{public}@. Stopping.", v108, 0x16u);
      MEMORY[0x277D82BD8](v52);
      objc_storeStrong(&v93, 0);
    }

    objc_storeStrong(&v95, 0);
    v92 = 1;
    v56 = 1;
  }

  if (v56)
  {
    v91 = 1;
  }

  else if (*(v96[0] + 40))
  {
    v51 = [MEMORY[0x277D64B58] scanOperationLogger];
    v90 = [v51 oslog];
    MEMORY[0x277D82BD8](v51);
    v89 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      v49 = v90;
      v50 = v89;
      v47 = [v96[0] identifier];
      v48 = MEMORY[0x277D82BE0](v47);
      v88 = v48;
      v103 = *(v96[0] + 18);
      if (v103)
      {
        if (v103 == 1)
        {
          v104 = MEMORY[0x277D82BE0](@"F");
        }

        else
        {
          if (v103 == 2)
          {
            v3 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v3 = MEMORY[0x277D82BE0](@"N/A");
          }

          v104 = v3;
        }
      }

      else
      {
        v104 = MEMORY[0x277D82BE0](@"N");
      }

      v46 = v104;
      v4 = v104;
      v45 = v46;
      v87 = MEMORY[0x277D82BE0](v45);
      __os_log_helper_16_2_3_8_32_8_66_8_66(v107, "[SUUIMobileScanOperation action_QueryCurrentDownload:error:]_block_invoke", v48, v87);
      _os_log_impl(&dword_26B0B9000, v49, v50, "%s [%{public}@|%{public}@]: The task has already been canceled. Stopping.", v107, 0x20u);
      MEMORY[0x277D82BD8](v45);
      MEMORY[0x277D82BD8](v47);
      objc_storeStrong(&v87, 0);
      objc_storeStrong(&v88, 0);
    }

    objc_storeStrong(&v90, 0);
    v91 = 1;
  }

  else
  {
    v44 = [MEMORY[0x277D64B58] scanOperationLogger];
    v86 = [v44 oslog];
    MEMORY[0x277D82BD8](v44);
    v85 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
    {
      v42 = v86;
      v43 = v85;
      v40 = [v96[0] identifier];
      v41 = MEMORY[0x277D82BE0](v40);
      v84 = v41;
      v101 = *(v96[0] + 18);
      if (v101)
      {
        if (v101 == 1)
        {
          v102 = MEMORY[0x277D82BE0](@"F");
        }

        else
        {
          if (v101 == 2)
          {
            v5 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v5 = MEMORY[0x277D82BE0](@"N/A");
          }

          v102 = v5;
        }
      }

      else
      {
        v102 = MEMORY[0x277D82BE0](@"N");
      }

      v39 = v102;
      v6 = v102;
      v38 = v39;
      v83 = MEMORY[0x277D82BE0](v38);
      __os_log_helper_16_2_6_8_32_8_66_8_66_8_66_8_0_8_66(v106, "[SUUIMobileScanOperation action_QueryCurrentDownload:error:]_block_invoke", v41, v83, v97, location[0], location[0]);
      _os_log_impl(&dword_26B0B9000, v42, v43, "%s [%{public}@|%{public}@]: error: %{public}@, download: <%p> %{public}@", v106, 0x3Eu);
      MEMORY[0x277D82BD8](v38);
      MEMORY[0x277D82BD8](v40);
      objc_storeStrong(&v83, 0);
      objc_storeStrong(&v84, 0);
    }

    objc_storeStrong(&v86, 0);
    if (!v97 || ([v96[0] shouldConsiderErrorAsSuccessfulCase:v97] & 1) != 0)
    {
      v81 = 0;
      v34 = 0;
      if (!location[0])
      {
        v82 = [v97 domain];
        v81 = 1;
        v34 = 0;
        if ([v82 isEqualToString:*MEMORY[0x277D64910]])
        {
          v34 = [v97 code] == 11;
        }
      }

      if (v81)
      {
        MEMORY[0x277D82BD8](v82);
      }

      if (v34)
      {
        v33 = [[SUUIMobileUninitializedDownload alloc] initWithDescriptor:0];
        v7 = location[0];
        location[0] = v33;
        MEMORY[0x277D82BD8](v7);
        v32 = [MEMORY[0x277D64B58] scanOperationLogger];
        v80 = [v32 oslog];
        MEMORY[0x277D82BD8](v32);
        v79 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
        {
          v30 = v80;
          v31 = v79;
          v28 = [v96[0] identifier];
          v29 = MEMORY[0x277D82BE0](v28);
          v78 = v29;
          v99 = *(v96[0] + 18);
          if (v99)
          {
            if (v99 == 1)
            {
              v100 = MEMORY[0x277D82BE0](@"F");
            }

            else
            {
              if (v99 == 2)
              {
                v8 = MEMORY[0x277D82BE0](@"R");
              }

              else
              {
                v8 = MEMORY[0x277D82BE0](@"N/A");
              }

              v100 = v8;
            }
          }

          else
          {
            v100 = MEMORY[0x277D82BE0](@"N");
          }

          v27 = v100;
          v9 = v100;
          v26 = v27;
          v77 = MEMORY[0x277D82BE0](v26);
          __os_log_helper_16_2_5_8_32_8_66_8_66_8_66_8_66(v105, "[SUUIMobileScanOperation action_QueryCurrentDownload:error:]_block_invoke", v29, v77, v97, location[0]);
          _os_log_impl(&dword_26B0B9000, v30, v31, "%s [%{public}@|%{public}@]: Received a nil download and SUErrorCodeDownloadInProgress error (%{public}@) - assigned SUDownloadUninitialized to the download object: %{public}@", v105, 0x34u);
          MEMORY[0x277D82BD8](v26);
          MEMORY[0x277D82BD8](v28);
          objc_storeStrong(&v77, 0);
          objc_storeStrong(&v78, 0);
        }

        objc_storeStrong(&v80, 0);
      }

      v75 = 0;
      v73 = 0;
      v25 = 0;
      if (!location[0])
      {
        v24 = 1;
        if (([*(a1 + 32) emptyScanResults] & 1) == 0)
        {
          v76 = [*(a1 + 32) preferredDescriptor];
          v75 = 1;
          v23 = 0;
          if (!v76)
          {
            v74 = [*(a1 + 32) alternateDescriptor];
            v73 = 1;
            v23 = v74 == 0;
          }

          v24 = v23;
        }

        v25 = v24;
      }

      if (v73)
      {
        MEMORY[0x277D82BD8](v74);
      }

      if (v75)
      {
        MEMORY[0x277D82BD8](v76);
      }

      if (v25)
      {
        [*(v96[0] + 7) postEvent:*MEMORY[0x277D64D80] withInfo:*(a1 + 32) endingActivity:*(*(a1 + 40) + 8) + 24];
        v91 = 1;
      }

      else
      {
        [*(a1 + 32) setCurrentDownload:location[0]];
        v22 = [*(a1 + 32) agreementStatusRegistry];
        v20 = [location[0] downloadOptions];
        v21 = [v20 downloadFeeAgreementStatus];
        v19 = [location[0] descriptor];
        [v22 setAgreementStatus:v21 type:1 forDescriptor:?];
        MEMORY[0x277D82BD8](v19);
        MEMORY[0x277D82BD8](v20);
        MEMORY[0x277D82BD8](v22);
        v18 = [*(a1 + 32) agreementStatusRegistry];
        v16 = [location[0] downloadOptions];
        v17 = [v16 termsAndConditionsAgreementStatus];
        v15 = [location[0] descriptor];
        [v18 setAgreementStatus:v17 type:2 forDescriptor:?];
        MEMORY[0x277D82BD8](v15);
        MEMORY[0x277D82BD8](v16);
        MEMORY[0x277D82BD8](v18);
        v70 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
        if (v70)
        {
          v69 = _os_activity_create(&dword_26B0B9000, "com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.QueryCurrentDownload: checkIfAutoUpdateScheduled:withReplyHandler:", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
          v10 = v70[1].opaque[0];
          v70[1].opaque[0] = v69;
          MEMORY[0x277D82BD8](v10);
        }

        else
        {
          v14 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
          oslog = [v14 oslog];
          MEMORY[0x277D82BD8](v14);
          v67 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            v12 = oslog;
            v13 = v67;
            __os_log_helper_16_0_0(v66);
            _os_log_error_impl(&dword_26B0B9000, v12, v13, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.QueryCurrentDownload: checkIfAutoUpdateScheduled:withReplyHandler:", v66, 2u);
          }

          objc_storeStrong(&oslog, 0);
        }

        v65[3] = v70;
        v71 = v70;
        if (v70)
        {
          os_activity_scope_enter(v71[1].opaque[0], v71);
          LOBYTE(v71[1].opaque[1]) = 1;
        }

        v65[2] = v71;
        v72 = v71;
        [v96[0] scheduleConcurrentActionWithSelector:sel_checkIfAutoUpdateScheduled_withReplyHandler_ eventInfo:*(a1 + 32)];
        if (v72)
        {
          if (LOBYTE(v72[1].opaque[1]))
          {
            os_activity_scope_leave(v72);
          }

          free(v72);
          v72 = 0;
        }

        v11 = *(v96[0] + 8);
        v59 = MEMORY[0x277D85DD0];
        v60 = -1073741824;
        v61 = 0;
        v62 = __61__SUUIMobileScanOperation_action_QueryCurrentDownload_error___block_invoke_332;
        v63 = &unk_279CCCD08;
        objc_copyWeak(v65, (a1 + 48));
        v65[1] = *(a1 + 56);
        v64[1] = *(a1 + 40);
        v64[0] = MEMORY[0x277D82BE0](*(a1 + 32));
        [v11 isClearingSpaceForDownload:&v59];
        objc_storeStrong(v64, 0);
        objc_destroyWeak(v65);
        v91 = 0;
      }
    }

    else
    {
      v36 = *(v96[0] + 7);
      v37 = *MEMORY[0x277D64DB8];
      v35 = [[SUUIMobileScanOperationParam alloc] initWithError:v97];
      [v36 postEvent:v37 withInfo:v35 endingActivity:*(*(a1 + 40) + 8) + 24];
      MEMORY[0x277D82BD8](v35);
      v91 = 1;
    }
  }

  objc_storeStrong(v96, 0);
  if (!v91)
  {
    v91 = 0;
  }

  objc_storeStrong(&v97, 0);
  objc_storeStrong(location, 0);
}

void __61__SUUIMobileScanOperation_action_QueryCurrentDownload_error___block_invoke_332(uint64_t a1, char a2, id obj)
{
  v53 = *MEMORY[0x277D85DE8];
  v45 = a1;
  v44 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v42[1] = a1;
  v42[0] = objc_loadWeakRetained((a1 + 48));
  v27 = 0;
  if (!v42[0])
  {
    v26 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v41 = [v26 oslog];
    MEMORY[0x277D82BD8](v26);
    v40 = 16;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      log = v41;
      type = v40;
      v25 = NSStringFromSelector(*(a1 + 56));
      v39 = MEMORY[0x277D82BE0](v25);
      __os_log_helper_16_2_2_8_32_8_66(v52, "[SUUIMobileScanOperation action_QueryCurrentDownload:error:]_block_invoke", v39);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v52, 0x16u);
      MEMORY[0x277D82BD8](v25);
      objc_storeStrong(&v39, 0);
    }

    objc_storeStrong(&v41, 0);
    v38 = 1;
    v27 = 1;
  }

  if (v27)
  {
    v37 = 1;
  }

  else if (*(v42[0] + 40))
  {
    v22 = [MEMORY[0x277D64B58] scanOperationLogger];
    v36 = [v22 oslog];
    MEMORY[0x277D82BD8](v22);
    v35 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v36;
      v19 = v35;
      v20 = [v42[0] identifier];
      v21 = MEMORY[0x277D82BE0](v20);
      v34 = v21;
      v48 = *(v42[0] + 18);
      if (v48)
      {
        if (v48 == 1)
        {
          v49 = MEMORY[0x277D82BE0](@"F");
        }

        else if (v48 == 2)
        {
          v49 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v49 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v49 = MEMORY[0x277D82BE0](@"N");
      }

      v16 = v49;
      v3 = v49;
      v17 = v16;
      v33 = MEMORY[0x277D82BE0](v17);
      __os_log_helper_16_2_3_8_32_8_66_8_66(v51, "[SUUIMobileScanOperation action_QueryCurrentDownload:error:]_block_invoke", v21, v33);
      _os_log_impl(&dword_26B0B9000, v18, v19, "%s [%{public}@|%{public}@]: The task has already been canceled. Stopping.", v51, 0x20u);
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v20);
      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v34, 0);
    }

    objc_storeStrong(&v36, 0);
    v37 = 1;
  }

  else
  {
    v15 = [MEMORY[0x277D64B58] scanOperationLogger];
    oslog = [v15 oslog];
    MEMORY[0x277D82BD8](v15);
    v31 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = oslog;
      v12 = v31;
      v13 = [v42[0] identifier];
      v14 = MEMORY[0x277D82BE0](v13);
      v30 = v14;
      v46 = *(v42[0] + 18);
      if (v46)
      {
        if (v46 == 1)
        {
          v47 = MEMORY[0x277D82BE0](@"F");
        }

        else if (v46 == 2)
        {
          v47 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v47 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v47 = MEMORY[0x277D82BE0](@"N");
      }

      v9 = v47;
      v4 = v47;
      v10 = v9;
      v29 = MEMORY[0x277D82BE0](v10);
      __os_log_helper_16_2_5_8_32_8_66_8_66_4_0_8_66(v50, "[SUUIMobileScanOperation action_QueryCurrentDownload:error:]_block_invoke", v14, v29, v44 & 1, location);
      _os_log_impl(&dword_26B0B9000, v11, v12, "%s [%{public}@|%{public}@]: isClearingSpaceForDownload? %d, isClearingSpaceError: %{public}@", v50, 0x30u);
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v13);
      objc_storeStrong(&v29, 0);
      objc_storeStrong(&v30, 0);
    }

    objc_storeStrong(&oslog, 0);
    if (location)
    {
      v7 = *(v42[0] + 7);
      v6 = *MEMORY[0x277D64DB8];
      v5 = [SUUIMobileScanOperationParam alloc];
      v8 = [(SUUIMobileScanOperationParam *)v5 initWithError:location];
      [v7 postEvent:v6 withInfo:? endingActivity:?];
      MEMORY[0x277D82BD8](v8);
      v37 = 1;
    }

    else
    {
      [*(a1 + 32) setClearingSpaceForDownload:v44 & 1];
      [*(v42[0] + 7) postEvent:*MEMORY[0x277D64DC0] withInfo:*(a1 + 32) endingActivity:*(*(a1 + 40) + 8) + 24];
      v37 = 0;
    }
  }

  objc_storeStrong(v42, 0);
  if (!v37)
  {
    v37 = 0;
  }

  objc_storeStrong(&location, 0);
}

- (int64_t)action_QueryUpdatesInfo:(id)info error:(id *)error
{
  v73 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v67 = a2;
  location = 0;
  objc_storeStrong(&location, info);
  errorCopy = error;
  scanFSM = [(SUUIMobileScanOperation *)selfCopy scanFSM];
  extendedStateQueue = [(SUCoreFSM *)scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);
  MEMORY[0x277D82BD8](extendedStateQueue);
  MEMORY[0x277D82BD8](scanFSM);
  if (location)
  {
    v59 = 0;
    v60 = &v59;
    v61 = 0x20000000;
    v62 = 32;
    v63 = 0;
    v57 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
    if (v57)
    {
      v56 = _os_activity_create(&dword_26B0B9000, "com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.QueryUpdateInfo", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      v4 = v57[1].opaque[0];
      v57[1].opaque[0] = v56;
      MEMORY[0x277D82BD8](v4);
    }

    else
    {
      softwareUpdateUILogger = [MEMORY[0x277D64B58] softwareUpdateUILogger];
      oslog = [softwareUpdateUILogger oslog];
      MEMORY[0x277D82BD8](softwareUpdateUILogger);
      v54 = 16;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        log = oslog;
        type = v54;
        __os_log_helper_16_0_0(v53);
        _os_log_error_impl(&dword_26B0B9000, log, type, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.QueryUpdateInfo", v53, 2u);
      }

      objc_storeStrong(&oslog, 0);
    }

    v52 = v57;
    v58 = v57;
    if (v57)
    {
      os_activity_scope_enter(v58[1].opaque[0], v58);
      LOBYTE(v58[1].opaque[1]) = 1;
    }

    v51 = v58;
    v60[3] = v58;
    v49 = 0;
    v47 = 0;
    preferredDescriptor = [location preferredDescriptor];
    if (preferredDescriptor || (v50 = [location alternateDescriptor], v49 = 1, v23 = 1, v50))
    {
      agreementStatusRegistry = [location agreementStatusRegistry];
      v47 = 1;
      v23 = agreementStatusRegistry == 0;
    }

    if (v47)
    {
      MEMORY[0x277D82BD8](agreementStatusRegistry);
    }

    if (v49)
    {
      MEMORY[0x277D82BD8](v50);
    }

    MEMORY[0x277D82BD8](preferredDescriptor);
    if (v23)
    {
      scanOperationLogger = [MEMORY[0x277D64B58] scanOperationLogger];
      oslog = [scanOperationLogger oslog];
      MEMORY[0x277D82BD8](scanOperationLogger);
      v45 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        identifier = [(SUUIMobileScanOperation *)selfCopy identifier];
        v21 = MEMORY[0x277D82BE0](identifier);
        v44 = v21;
        operationType = selfCopy->_operationType;
        if (operationType)
        {
          if (operationType == 1)
          {
            v71 = MEMORY[0x277D82BE0](@"F");
          }

          else if (operationType == 2)
          {
            v71 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v71 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v71 = MEMORY[0x277D82BE0](@"N");
        }

        v19 = v71;
        v5 = v71;
        v18 = v19;
        v43 = MEMORY[0x277D82BE0](v18);
        __os_log_helper_16_2_3_8_32_8_66_8_66(v72, "[SUUIMobileScanOperation action_QueryUpdatesInfo:error:]", v21, v43);
        _os_log_error_impl(&dword_26B0B9000, oslog, v45, "%s [%{public}@|%{public}@]: Both the preferredUpdate and alternateUpdate are empty, or agreementStatusRegistry is missing - yet there is a download. Trying to recovery by querying for downloadability.", v72, 0x20u);
        MEMORY[0x277D82BD8](v18);
        MEMORY[0x277D82BD8](identifier);
        objc_storeStrong(&v43, 0);
        objc_storeStrong(&v44, 0);
      }

      objc_storeStrong(&oslog, 0);
    }

    v17 = objc_alloc(MEMORY[0x277D64890]);
    preferredDescriptor2 = [location preferredDescriptor];
    v42 = [v17 initWithDescriptor:?];
    MEMORY[0x277D82BD8](preferredDescriptor2);
    [v42 setAllowUnrestrictedCellularDownload:{-[SUUIMobileScanOperationOptions doesAllowUnrestrictedCellularDownload](selfCopy->_options, "doesAllowUnrestrictedCellularDownload")}];
    agreementStatusRegistry2 = [location agreementStatusRegistry];
    preferredDescriptor3 = [location preferredDescriptor];
    [v42 setDownloadFeeAgreementStatus:{objc_msgSend(agreementStatusRegistry2, "agreementStatusForType:descriptor:", 1)}];
    MEMORY[0x277D82BD8](preferredDescriptor3);
    MEMORY[0x277D82BD8](agreementStatusRegistry2);
    v13 = objc_alloc(MEMORY[0x277D64890]);
    alternateDescriptor = [location alternateDescriptor];
    v41 = [v13 initWithDescriptor:?];
    MEMORY[0x277D82BD8](alternateDescriptor);
    [v41 setAllowUnrestrictedCellularDownload:{-[SUUIMobileScanOperationOptions doesAllowUnrestrictedCellularDownload](selfCopy->_options, "doesAllowUnrestrictedCellularDownload")}];
    agreementStatusRegistry3 = [location agreementStatusRegistry];
    alternateDescriptor2 = [location alternateDescriptor];
    [v41 setDownloadFeeAgreementStatus:{objc_msgSend(agreementStatusRegistry3, "agreementStatusForType:descriptor:", 1)}];
    MEMORY[0x277D82BD8](alternateDescriptor2);
    MEMORY[0x277D82BD8](agreementStatusRegistry3);
    objc_initWeak(&from, selfCopy);
    suClient = [(SUUIMobileScanOperation *)selfCopy suClient];
    v8 = v42;
    v9 = v41;
    v33 = MEMORY[0x277D85DD0];
    v34 = -1073741824;
    v35 = 0;
    v36 = __57__SUUIMobileScanOperation_action_QueryUpdatesInfo_error___block_invoke;
    v37 = &unk_279CCCD80;
    objc_copyWeak(v39, &from);
    v39[1] = v67;
    v38[0] = MEMORY[0x277D82BE0](location);
    v38[1] = &v59;
    [(SUManagerClient *)suClient updatesDownloadableWithOptions:v8 alternateDownloadOptions:v9 replyHandler:&v33];
    MEMORY[0x277D82BD8](suClient);
    v69 = 0;
    v64 = 1;
    objc_storeStrong(v38, 0);
    objc_destroyWeak(v39);
    objc_destroyWeak(&from);
    objc_storeStrong(&v41, 0);
    objc_storeStrong(&v42, 0);
    _Block_object_dispose(&v59, 8);
  }

  else
  {
    scanFSM2 = [(SUUIMobileScanOperation *)selfCopy scanFSM];
    diag = [(SUCoreFSM *)scanFSM2 diag];
    [diag trackAnomaly:@"[SUUIMobileScanOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:8102 withError:0];
    MEMORY[0x277D82BD8](diag);
    MEMORY[0x277D82BD8](scanFSM2);
    v69 = 8102;
    v64 = 1;
  }

  objc_storeStrong(&location, 0);
  return v69;
}

void __57__SUUIMobileScanOperation_action_QueryUpdatesInfo_error___block_invoke(uint64_t a1, char a2, char a3, id obj, void *a5)
{
  v87 = *MEMORY[0x277D85DE8];
  v77 = a1;
  v76 = a2;
  v75 = a3;
  location = 0;
  objc_storeStrong(&location, obj);
  v73 = 0;
  objc_storeStrong(&v73, a5);
  v72[1] = a1;
  v72[0] = objc_loadWeakRetained((a1 + 48));
  v42 = 0;
  if (!v72[0])
  {
    v41 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v71 = [v41 oslog];
    MEMORY[0x277D82BD8](v41);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      log = v71;
      v40 = type;
      v38 = NSStringFromSelector(*(a1 + 56));
      v69 = MEMORY[0x277D82BE0](v38);
      __os_log_helper_16_2_2_8_32_8_66(v86, "[SUUIMobileScanOperation action_QueryUpdatesInfo:error:]_block_invoke", v69);
      _os_log_error_impl(&dword_26B0B9000, log, v40, "%s: Self is nil in %{public}@. Stopping.", v86, 0x16u);
      MEMORY[0x277D82BD8](v38);
      objc_storeStrong(&v69, 0);
    }

    objc_storeStrong(&v71, 0);
    v68 = 1;
    v42 = 1;
  }

  if (v42)
  {
    v67 = 1;
  }

  else if (*(v72[0] + 40))
  {
    v37 = [MEMORY[0x277D64B58] scanOperationLogger];
    v66 = [v37 oslog];
    MEMORY[0x277D82BD8](v37);
    v65 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      v35 = v66;
      v36 = v65;
      v33 = [v72[0] identifier];
      v34 = MEMORY[0x277D82BE0](v33);
      v64 = v34;
      v80 = *(v72[0] + 18);
      if (v80)
      {
        if (v80 == 1)
        {
          v81 = MEMORY[0x277D82BE0](@"F");
        }

        else
        {
          if (v80 == 2)
          {
            v5 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v5 = MEMORY[0x277D82BE0](@"N/A");
          }

          v81 = v5;
        }
      }

      else
      {
        v81 = MEMORY[0x277D82BE0](@"N");
      }

      v32 = v81;
      v6 = v81;
      v31 = v32;
      v63 = MEMORY[0x277D82BE0](v31);
      __os_log_helper_16_2_3_8_32_8_66_8_66(v85, "[SUUIMobileScanOperation action_QueryUpdatesInfo:error:]_block_invoke", v34, v63);
      _os_log_impl(&dword_26B0B9000, v35, v36, "%s [%{public}@|%{public}@]: The task has already been canceled. Stopping.", v85, 0x20u);
      MEMORY[0x277D82BD8](v31);
      MEMORY[0x277D82BD8](v33);
      objc_storeStrong(&v63, 0);
      objc_storeStrong(&v64, 0);
    }

    objc_storeStrong(&v66, 0);
    v67 = 1;
  }

  else
  {
    v30 = [MEMORY[0x277D64B58] scanOperationLogger];
    v62 = [v30 oslog];
    MEMORY[0x277D82BD8](v30);
    v61 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v62;
      v29 = v61;
      v26 = [v72[0] identifier];
      v27 = MEMORY[0x277D82BE0](v26);
      v60 = v27;
      v78 = *(v72[0] + 18);
      if (v78)
      {
        if (v78 == 1)
        {
          v79 = MEMORY[0x277D82BE0](@"F");
        }

        else
        {
          if (v78 == 2)
          {
            v7 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v7 = MEMORY[0x277D82BE0](@"N/A");
          }

          v79 = v7;
        }
      }

      else
      {
        v79 = MEMORY[0x277D82BE0](@"N");
      }

      v25 = v79;
      v8 = v79;
      v22 = v25;
      v23 = MEMORY[0x277D82BE0](v22);
      v59 = v23;
      v83 = v76 & 1;
      if (v76)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      v24 = v9;
      v10 = v9;
      v18 = v24;
      v19 = MEMORY[0x277D82BE0](v18);
      v58 = v19;
      v20 = location;
      v82 = v75 & 1;
      if (v75)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v21 = v11;
      v12 = v11;
      v17 = v21;
      v57 = MEMORY[0x277D82BE0](v17);
      __os_log_helper_16_2_7_8_32_8_66_8_66_8_66_8_66_8_66_8_66(v84, "[SUUIMobileScanOperation action_QueryUpdatesInfo:error:]_block_invoke", v27, v23, v19, v20, v57, v73);
      _os_log_impl(&dword_26B0B9000, v28, v29, "%s [%{public}@|%{public}@]: preferredDownloadable: %{public}@, preferredError: %{public}@, alternateDownloadable: %{public}@, alternateError: %{public}@", v84, 0x48u);
      MEMORY[0x277D82BD8](v17);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v22);
      MEMORY[0x277D82BD8](v26);
      objc_storeStrong(&v57, 0);
      objc_storeStrong(&v58, 0);
      objc_storeStrong(&v59, 0);
      objc_storeStrong(&v60, 0);
    }

    objc_storeStrong(&v62, 0);
    [*(a1 + 32) setPreferredUpdateDownloadable:v76 & 1];
    [*(a1 + 32) setAlternateUpdateDownloadable:v75 & 1];
    [*(a1 + 32) setPreferredUpdateDownloadError:location];
    [*(a1 + 32) setAlternateUpdateDownloadError:v73];
    v15 = [*(a1 + 32) currentDownload];
    v55 = 0;
    v53 = 0;
    v16 = 0;
    if (v15)
    {
      v56 = [*(a1 + 32) currentDownload];
      v55 = 1;
      v54 = [v56 progress];
      v53 = 1;
      v16 = [v54 isDone];
    }

    if (v53)
    {
      MEMORY[0x277D82BD8](v54);
    }

    if (v55)
    {
      MEMORY[0x277D82BD8](v56);
    }

    MEMORY[0x277D82BD8](v15);
    if (v16)
    {
      v52 = objc_alloc_init(MEMORY[0x277D648A0]);
      [v52 setIgnorableConstraints:{objc_msgSend(objc_opt_class(), "installationIgnorableConstraints")}];
      v13 = *(v72[0] + 8);
      v14 = v52;
      v45 = MEMORY[0x277D85DD0];
      v46 = -1073741824;
      v47 = 0;
      v48 = __57__SUUIMobileScanOperation_action_QueryUpdatesInfo_error___block_invoke_337;
      v49 = &unk_279CCCD58;
      objc_copyWeak(v51, (a1 + 48));
      v51[1] = *(a1 + 56);
      v50[0] = MEMORY[0x277D82BE0](*(a1 + 32));
      v50[1] = *(a1 + 40);
      [v13 isUpdateReadyForInstallationWithOptions:v14 withResult:&v45];
      objc_storeStrong(v50, 0);
      objc_destroyWeak(v51);
      objc_storeStrong(&v52, 0);
    }

    else
    {
      [*(v72[0] + 7) postEvent:*MEMORY[0x277D64DD0] withInfo:*(a1 + 32) endingActivity:*(*(a1 + 40) + 8) + 24];
    }

    v67 = 0;
  }

  objc_storeStrong(v72, 0);
  if (!v67)
  {
    v67 = 0;
  }

  objc_storeStrong(&v73, 0);
  objc_storeStrong(&location, 0);
}

void __57__SUUIMobileScanOperation_action_QueryUpdatesInfo_error___block_invoke_337(uint64_t a1, char a2, id obj)
{
  v56 = *MEMORY[0x277D85DE8];
  v47 = a1;
  v46 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v44[1] = a1;
  v44[0] = objc_loadWeakRetained((a1 + 48));
  v28 = 0;
  if (!v44[0])
  {
    v27 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v43 = [v27 oslog];
    MEMORY[0x277D82BD8](v27);
    v42 = 16;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      log = v43;
      type = v42;
      v26 = NSStringFromSelector(*(a1 + 56));
      v41 = MEMORY[0x277D82BE0](v26);
      __os_log_helper_16_2_2_8_32_8_66(v55, "[SUUIMobileScanOperation action_QueryUpdatesInfo:error:]_block_invoke", v41);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v55, 0x16u);
      MEMORY[0x277D82BD8](v26);
      objc_storeStrong(&v41, 0);
    }

    objc_storeStrong(&v43, 0);
    v40 = 1;
    v28 = 1;
  }

  if (v28)
  {
    v39 = 1;
  }

  else if (*(v44[0] + 40))
  {
    v23 = [MEMORY[0x277D64B58] scanOperationLogger];
    oslog = [v23 oslog];
    MEMORY[0x277D82BD8](v23);
    v37 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v19 = oslog;
      v20 = v37;
      v21 = [v44[0] identifier];
      v22 = MEMORY[0x277D82BE0](v21);
      v36 = v22;
      v50 = *(v44[0] + 18);
      if (v50)
      {
        if (v50 == 1)
        {
          v51 = MEMORY[0x277D82BE0](@"F");
        }

        else if (v50 == 2)
        {
          v51 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v51 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v51 = MEMORY[0x277D82BE0](@"N");
      }

      v17 = v51;
      v3 = v51;
      v18 = v17;
      v35 = MEMORY[0x277D82BE0](v18);
      __os_log_helper_16_2_3_8_32_8_66_8_66(v54, "[SUUIMobileScanOperation action_QueryUpdatesInfo:error:]_block_invoke", v22, v35);
      _os_log_impl(&dword_26B0B9000, v19, v20, "%s [%{public}@|%{public}@]: The task has already been canceled. Stopping.", v54, 0x20u);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v21);
      objc_storeStrong(&v35, 0);
      objc_storeStrong(&v36, 0);
    }

    objc_storeStrong(&oslog, 0);
    v39 = 1;
  }

  else
  {
    v16 = [MEMORY[0x277D64B58] scanOperationLogger];
    v34 = [v16 oslog];
    MEMORY[0x277D82BD8](v16);
    v33 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v34;
      v13 = v33;
      v14 = [v44[0] identifier];
      v15 = MEMORY[0x277D82BE0](v14);
      v32 = v15;
      v48 = *(v44[0] + 18);
      if (v48)
      {
        if (v48 == 1)
        {
          v49 = MEMORY[0x277D82BE0](@"F");
        }

        else if (v48 == 2)
        {
          v49 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v49 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v49 = MEMORY[0x277D82BE0](@"N");
      }

      v7 = v49;
      v4 = v49;
      v11 = v7;
      v9 = MEMORY[0x277D82BE0](v11);
      v31 = v9;
      v52 = v46 & 1;
      if (v46)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v8 = v5;
      v6 = v5;
      v10 = v8;
      v30 = MEMORY[0x277D82BE0](v10);
      __os_log_helper_16_2_5_8_32_8_66_8_66_8_66_8_66(v53, "[SUUIMobileScanOperation action_QueryUpdatesInfo:error:]_block_invoke", v15, v9, v30, location);
      _os_log_impl(&dword_26B0B9000, v12, v13, "%s [%{public}@|%{public}@]: Ready to install: %{public}@; error: %{public}@", v53, 0x34u);
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v14);
      objc_storeStrong(&v30, 0);
      objc_storeStrong(&v31, 0);
      objc_storeStrong(&v32, 0);
    }

    objc_storeStrong(&v34, 0);
    [*(a1 + 32) setIsUpdateReadyForInstallation:v46 & 1];
    [*(a1 + 32) setUpdateInstallationError:location];
    [*(v44[0] + 7) postEvent:*MEMORY[0x277D64DD0] withInfo:*(a1 + 32) endingActivity:*(*(a1 + 40) + 8) + 24];
    v39 = 0;
  }

  objc_storeStrong(v44, 0);
  if (!v39)
  {
    v39 = 0;
  }

  objc_storeStrong(&location, 0);
}

- (int64_t)action_ObserveConcurrentQueries:(id)queries error:(id *)error
{
  v111 = *MEMORY[0x277D85DE8];
  val = self;
  v93 = a2;
  location = 0;
  objc_storeStrong(&location, queries);
  errorCopy = error;
  scanFSM = [val scanFSM];
  extendedStateQueue = [scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);
  MEMORY[0x277D82BD8](extendedStateQueue);
  MEMORY[0x277D82BD8](scanFSM);
  if (location)
  {
    v85 = 0;
    v86 = &v85;
    v87 = 0x20000000;
    v88 = 32;
    v89 = 0;
    v83 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
    if (v83)
    {
      v82 = _os_activity_create(&dword_26B0B9000, "com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.ObserveConcurrentQueries", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      v4 = v83[1].opaque[0];
      v83[1].opaque[0] = v82;
      MEMORY[0x277D82BD8](v4);
    }

    else
    {
      softwareUpdateUILogger = [MEMORY[0x277D64B58] softwareUpdateUILogger];
      oslog = [softwareUpdateUILogger oslog];
      MEMORY[0x277D82BD8](softwareUpdateUILogger);
      type = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        log = oslog;
        v33 = type;
        __os_log_helper_16_0_0(v79);
        _os_log_error_impl(&dword_26B0B9000, log, v33, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.State.ObserveConcurrentQueries", v79, 2u);
      }

      objc_storeStrong(&oslog, 0);
    }

    v78 = v83;
    state = v83;
    if (v83)
    {
      os_activity_scope_enter(state[1].opaque[0], state);
      LOBYTE(state[1].opaque[1]) = 1;
    }

    v77 = state;
    v86[3] = state;
    v76 = 0;
    v75 = 0;
    v74 = 0;
    v73[0] = 3;
    v99 = val + 8;
    v98 = 0;
    os_unfair_recursive_lock_lock_with_options();
    v73[1] = v99;
    v72[0] = 3;
    v97 = val + 16;
    v96 = 0;
    os_unfair_recursive_lock_lock_with_options();
    v72[1] = v97;
    v76 = [*(val + 19) count];
    v75 = *(val + 41) & 1;
    if (v76)
    {
      allObjects = [*(val + 19) allObjects];
      v5 = [allObjects componentsJoinedByString:{@", "}];
      v6 = v74;
      v74 = v5;
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](allObjects);
    }

    v90 = 9;
    v101 = v72;
    os_unfair_recursive_lock_unlock();
    v90 = 6;
    v100 = v73;
    switch(v73[0])
    {
      case 1:
        [v100[1] unlock];
        break;
      case 2:
        os_unfair_lock_unlock(v100[1]);
        break;
      case 3:
        os_unfair_recursive_lock_unlock();
        break;
    }

    if (v76)
    {
      if (v75)
      {
        scanOperationLogger = [MEMORY[0x277D64B58] scanOperationLogger];
        oslog = [scanOperationLogger oslog];
        MEMORY[0x277D82BD8](scanOperationLogger);
        v66 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          identifier = [val identifier];
          v24 = MEMORY[0x277D82BE0](identifier);
          v65 = v24;
          v104 = *(val + 18);
          if (v104)
          {
            if (v104 == 1)
            {
              v105 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v104 == 2)
            {
              v105 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v105 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v105 = MEMORY[0x277D82BE0](@"N");
          }

          v22 = v105;
          v8 = v105;
          v21 = v22;
          v64 = MEMORY[0x277D82BE0](v21);
          __os_log_helper_16_2_3_8_32_8_66_8_66(v109, "[SUUIMobileScanOperation action_ObserveConcurrentQueries:error:]", v24, v64);
          _os_log_impl(&dword_26B0B9000, oslog, v66, "%s [%{public}@|%{public}@]: One or more of the concurrent operations have been failed/timed out.", v109, 0x20u);
          MEMORY[0x277D82BD8](v21);
          MEMORY[0x277D82BD8](identifier);
          objc_storeStrong(&v64, 0);
          objc_storeStrong(&v65, 0);
        }

        objc_storeStrong(&oslog, 0);
        [*(val + 7) postEvent:*MEMORY[0x277D64D28] withInfo:location endingActivity:v86 + 3];
        v95 = 0;
        v90 = 1;
      }

      else
      {
        scanOperationLogger2 = [MEMORY[0x277D64B58] scanOperationLogger];
        oslog2 = [scanOperationLogger2 oslog];
        MEMORY[0x277D82BD8](scanOperationLogger2);
        v62 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
        {
          identifier2 = [val identifier];
          v19 = MEMORY[0x277D82BE0](identifier2);
          v61 = v19;
          v102 = *(val + 18);
          if (v102)
          {
            if (v102 == 1)
            {
              v103 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v102 == 2)
            {
              v103 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v103 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v103 = MEMORY[0x277D82BE0](@"N");
          }

          v17 = v103;
          v9 = v103;
          v16 = v17;
          v60 = MEMORY[0x277D82BE0](v16);
          __os_log_helper_16_2_5_8_32_8_66_8_66_8_0_8_66(v108, "[SUUIMobileScanOperation action_ObserveConcurrentQueries:error:]", v19, v60, v76, v74);
          _os_log_impl(&dword_26B0B9000, oslog2, v62, "%s [%{public}@|%{public}@]: Waiting for %lu concurrent operations to complete: %{public}@", v108, 0x34u);
          MEMORY[0x277D82BD8](v16);
          MEMORY[0x277D82BD8](identifier2);
          objc_storeStrong(&v60, 0);
          objc_storeStrong(&v61, 0);
        }

        objc_storeStrong(&oslog2, 0);
        objc_initWeak(&from, val);
        v55[0] = 0;
        v55[1] = v55;
        v56 = 0x20000000;
        v57 = 32;
        v58 = 0;
        group = [val scanGroup];
        queue = *(val + 17);
        v48 = MEMORY[0x277D85DD0];
        v49 = -1073741824;
        v50 = 0;
        v51 = __65__SUUIMobileScanOperation_action_ObserveConcurrentQueries_error___block_invoke;
        v52 = &unk_279CCCDA8;
        objc_copyWeak(v54, &from);
        v54[1] = v93;
        v53[1] = v55;
        v53[0] = MEMORY[0x277D82BE0](location);
        v53[2] = &v85;
        dispatch_group_notify(group, queue, &v48);
        MEMORY[0x277D82BD8](group);
        v47 = dispatch_time(0, 300000000000);
        when = v47;
        scanFSM2 = [val scanFSM];
        extendedStateQueue2 = [scanFSM2 extendedStateQueue];
        v40 = MEMORY[0x277D85DD0];
        v41 = -1073741824;
        v42 = 0;
        v43 = __65__SUUIMobileScanOperation_action_ObserveConcurrentQueries_error___block_invoke_342;
        v44 = &unk_279CCCDA8;
        objc_copyWeak(v46, &from);
        v46[1] = v93;
        v45[1] = v55;
        v45[0] = MEMORY[0x277D82BE0](location);
        v45[2] = &v85;
        dispatch_after(when, extendedStateQueue2, &v40);
        MEMORY[0x277D82BD8](extendedStateQueue2);
        MEMORY[0x277D82BD8](scanFSM2);
        v95 = 0;
        v90 = 1;
        objc_storeStrong(v45, 0);
        objc_destroyWeak(v46);
        objc_storeStrong(v53, 0);
        objc_destroyWeak(v54);
        _Block_object_dispose(v55, 8);
        objc_destroyWeak(&from);
      }
    }

    else
    {
      scanOperationLogger3 = [MEMORY[0x277D64B58] scanOperationLogger];
      oslog3 = [scanOperationLogger3 oslog];
      MEMORY[0x277D82BD8](scanOperationLogger3);
      v70 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
      {
        identifier3 = [val identifier];
        v29 = MEMORY[0x277D82BE0](identifier3);
        v69 = v29;
        v106 = *(val + 18);
        if (v106)
        {
          if (v106 == 1)
          {
            v107 = MEMORY[0x277D82BE0](@"F");
          }

          else if (v106 == 2)
          {
            v107 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v107 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v107 = MEMORY[0x277D82BE0](@"N");
        }

        v27 = v107;
        v7 = v107;
        v26 = v27;
        v68 = MEMORY[0x277D82BE0](v26);
        __os_log_helper_16_2_3_8_32_8_66_8_66(v110, "[SUUIMobileScanOperation action_ObserveConcurrentQueries:error:]", v29, v68);
        _os_log_impl(&dword_26B0B9000, oslog3, v70, "%s [%{public}@|%{public}@]: No concurrent operations are running, proceeding immediately.", v110, 0x20u);
        MEMORY[0x277D82BD8](v26);
        MEMORY[0x277D82BD8](identifier3);
        objc_storeStrong(&v68, 0);
        objc_storeStrong(&v69, 0);
      }

      objc_storeStrong(&oslog3, 0);
      [*(val + 7) postEvent:*MEMORY[0x277D64CF8] withInfo:location endingActivity:v86 + 3];
      v95 = 0;
      v90 = 1;
    }

    objc_storeStrong(&v74, 0);
    _Block_object_dispose(&v85, 8);
  }

  else
  {
    scanFSM3 = [val scanFSM];
    diag = [scanFSM3 diag];
    [diag trackAnomaly:@"[SUUIMobileScanOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:8102 withError:0];
    MEMORY[0x277D82BD8](diag);
    MEMORY[0x277D82BD8](scanFSM3);
    v95 = 8102;
    v90 = 1;
  }

  objc_storeStrong(&location, 0);
  return v95;
}

void __65__SUUIMobileScanOperation_action_ObserveConcurrentQueries_error___block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x277D85DE8];
  v44[2] = a1;
  v44[1] = a1;
  v44[0] = objc_loadWeakRetained((a1 + 56));
  v23 = 0;
  if (!v44[0])
  {
    v22 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    oslog = [v22 oslog];
    MEMORY[0x277D82BD8](v22);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v21 = NSStringFromSelector(*(a1 + 64));
      location = MEMORY[0x277D82BE0](v21);
      __os_log_helper_16_2_2_8_32_8_66(v60, "[SUUIMobileScanOperation action_ObserveConcurrentQueries:error:]_block_invoke", location);
      _os_log_error_impl(&dword_26B0B9000, oslog, type, "%s: Self is nil in %{public}@. Stopping.", v60, 0x16u);
      MEMORY[0x277D82BD8](v21);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&oslog, 0);
    v40 = 1;
    v23 = 1;
  }

  if (v23)
  {
    v39 = 1;
  }

  else if (*(v44[0] + 40))
  {
    v20 = [MEMORY[0x277D64B58] scanOperationLogger];
    v38 = [v20 oslog];
    MEMORY[0x277D82BD8](v20);
    v37 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v44[0] identifier];
      v19 = MEMORY[0x277D82BE0](v18);
      v36 = v19;
      v55 = *(v44[0] + 18);
      if (v55)
      {
        if (v55 == 1)
        {
          v56 = MEMORY[0x277D82BE0](@"F");
        }

        else if (v55 == 2)
        {
          v56 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v56 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v56 = MEMORY[0x277D82BE0](@"N");
      }

      v17 = v56;
      v1 = v56;
      v16 = v17;
      v35 = MEMORY[0x277D82BE0](v16);
      __os_log_helper_16_2_3_8_32_8_66_8_66(v59, "[SUUIMobileScanOperation action_ObserveConcurrentQueries:error:]_block_invoke", v19, v35);
      _os_log_impl(&dword_26B0B9000, v38, v37, "%s [%{public}@|%{public}@]: The task has already been canceled. Stopping.", v59, 0x20u);
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v18);
      objc_storeStrong(&v35, 0);
      objc_storeStrong(&v36, 0);
    }

    objc_storeStrong(&v38, 0);
    v39 = 1;
  }

  else
  {
    v34[0] = 3;
    v48 = v44[0] + 8;
    v47 = 0;
    os_unfair_recursive_lock_lock_with_options();
    v34[1] = v48;
    v33[0] = 3;
    v46 = v44[0] + 16;
    v45 = 0;
    os_unfair_recursive_lock_lock_with_options();
    v33[1] = v46;
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v15 = [MEMORY[0x277D64B58] scanOperationLogger];
      v32 = [v15 oslog];
      MEMORY[0x277D82BD8](v15);
      v31 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v44[0] identifier];
        v14 = MEMORY[0x277D82BE0](v13);
        v30 = v14;
        v53 = *(v44[0] + 18);
        if (v53)
        {
          if (v53 == 1)
          {
            v54 = MEMORY[0x277D82BE0](@"F");
          }

          else if (v53 == 2)
          {
            v54 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v54 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v54 = MEMORY[0x277D82BE0](@"N");
        }

        v12 = v54;
        v2 = v54;
        v11 = v12;
        v29 = MEMORY[0x277D82BE0](v11);
        __os_log_helper_16_2_3_8_32_8_66_8_66(v58, "[SUUIMobileScanOperation action_ObserveConcurrentQueries:error:]_block_invoke", v14, v29);
        _os_log_impl(&dword_26B0B9000, v32, v31, "%s [%{public}@|%{public}@]: Concurrent operations completed, but timeout already handled.", v58, 0x20u);
        MEMORY[0x277D82BD8](v11);
        MEMORY[0x277D82BD8](v13);
        objc_storeStrong(&v29, 0);
        objc_storeStrong(&v30, 0);
      }

      objc_storeStrong(&v32, 0);
      v39 = 1;
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      v39 = 14;
    }

    v50 = v33;
    switch(v33[0])
    {
      case 1:
        [v50[1] unlock];
        break;
      case 2:
        os_unfair_lock_unlock(v50[1]);
        break;
      case 3:
        os_unfair_recursive_lock_unlock();
        break;
    }

    if (v39 == 14)
    {
      v39 = 11;
    }

    v49 = v34;
    switch(v34[0])
    {
      case 1:
        [v49[1] unlock];
        break;
      case 2:
        os_unfair_lock_unlock(v49[1]);
        break;
      case 3:
        os_unfair_recursive_lock_unlock();
        break;
    }

    if (v39 == 11)
    {
      v10 = [MEMORY[0x277D64B58] scanOperationLogger];
      v28 = [v10 oslog];
      MEMORY[0x277D82BD8](v10);
      v27 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v44[0] identifier];
        v9 = MEMORY[0x277D82BE0](v8);
        v26 = v9;
        v51 = *(v44[0] + 18);
        if (v51)
        {
          if (v51 == 1)
          {
            v52 = MEMORY[0x277D82BE0](@"F");
          }

          else if (v51 == 2)
          {
            v52 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v52 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v52 = MEMORY[0x277D82BE0](@"N");
        }

        v7 = v52;
        v3 = v52;
        v6 = v7;
        v25 = MEMORY[0x277D82BE0](v6);
        v5 = [*(a1 + 32) operationError];
        __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v57, "[SUUIMobileScanOperation action_ObserveConcurrentQueries:error:]_block_invoke", v9, v25, v5);
        _os_log_impl(&dword_26B0B9000, v28, v27, "%s [%{public}@|%{public}@]: All of the concurrent operations has been finished. Current operation error: %{public}@", v57, 0x2Au);
        MEMORY[0x277D82BD8](v5);
        MEMORY[0x277D82BD8](v6);
        MEMORY[0x277D82BD8](v8);
        objc_storeStrong(&v25, 0);
        objc_storeStrong(&v26, 0);
      }

      objc_storeStrong(&v28, 0);
      v4 = [*(a1 + 32) operationError];
      MEMORY[0x277D82BD8](v4);
      if (v4)
      {
        [*(v44[0] + 7) postEvent:*MEMORY[0x277D64D28] withInfo:*(a1 + 32) endingActivity:*(*(a1 + 48) + 8) + 24];
        v39 = 1;
      }

      else
      {
        [*(v44[0] + 7) postEvent:*MEMORY[0x277D64CF8] withInfo:*(a1 + 32) endingActivity:*(*(a1 + 48) + 8) + 24];
        v39 = 0;
      }
    }
  }

  objc_storeStrong(v44, 0);
}

void __65__SUUIMobileScanOperation_action_ObserveConcurrentQueries_error___block_invoke_342(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v36[2] = a1;
  v36[1] = a1;
  v36[0] = objc_loadWeakRetained((a1 + 56));
  v18 = 0;
  if (!v36[0])
  {
    v17 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v35 = [v17 oslog];
    MEMORY[0x277D82BD8](v17);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v16 = NSStringFromSelector(*(a1 + 64));
      location = MEMORY[0x277D82BE0](v16);
      __os_log_helper_16_2_2_8_32_8_66(v51, "[SUUIMobileScanOperation action_ObserveConcurrentQueries:error:]_block_invoke", location);
      _os_log_error_impl(&dword_26B0B9000, v35, type, "%s: Self is nil in %{public}@. Stopping.", v51, 0x16u);
      MEMORY[0x277D82BD8](v16);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v35, 0);
    v32 = 1;
    v18 = 1;
  }

  if (v18)
  {
    v31 = 1;
  }

  else
  {
    v30[0] = 3;
    v40 = v36[0] + 8;
    v39 = 0;
    os_unfair_recursive_lock_lock_with_options();
    v30[1] = v40;
    v29[0] = 3;
    v38 = v36[0] + 16;
    v37 = 0;
    os_unfair_recursive_lock_lock_with_options();
    v29[1] = v38;
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v15 = [MEMORY[0x277D64B58] scanOperationLogger];
      oslog = [v15 oslog];
      MEMORY[0x277D82BD8](v15);
      v27 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v36[0] identifier];
        v14 = MEMORY[0x277D82BE0](v13);
        v26 = v14;
        v45 = *(v36[0] + 18);
        if (v45)
        {
          if (v45 == 1)
          {
            v46 = MEMORY[0x277D82BE0](@"F");
          }

          else if (v45 == 2)
          {
            v46 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v46 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v46 = MEMORY[0x277D82BE0](@"N");
        }

        v12 = v46;
        v1 = v46;
        v11 = v12;
        v25 = MEMORY[0x277D82BE0](v11);
        __os_log_helper_16_2_3_8_32_8_66_8_66(v50, "[SUUIMobileScanOperation action_ObserveConcurrentQueries:error:]_block_invoke", v14, v25);
        _os_log_impl(&dword_26B0B9000, oslog, v27, "%s [%{public}@|%{public}@]: Timeout fired, but concurrent operations already completed.", v50, 0x20u);
        MEMORY[0x277D82BD8](v11);
        MEMORY[0x277D82BD8](v13);
        objc_storeStrong(&v25, 0);
        objc_storeStrong(&v26, 0);
      }

      objc_storeStrong(&oslog, 0);
      v31 = 1;
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *(v36[0] + 41) = 1;
      v31 = 10;
    }

    v42 = v29;
    switch(v29[0])
    {
      case 1:
        [v42[1] unlock];
        break;
      case 2:
        os_unfair_lock_unlock(v42[1]);
        break;
      case 3:
        os_unfair_recursive_lock_unlock();
        break;
    }

    if (v31 == 10)
    {
      v31 = 7;
    }

    v41 = v30;
    switch(v30[0])
    {
      case 1:
        [v41[1] unlock];
        break;
      case 2:
        os_unfair_lock_unlock(v41[1]);
        break;
      case 3:
        os_unfair_recursive_lock_unlock();
        break;
    }

    if (v31 == 7)
    {
      v10 = [MEMORY[0x277D64B58] scanOperationLogger];
      v24 = [v10 oslog];
      MEMORY[0x277D82BD8](v10);
      v23 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v8 = [v36[0] identifier];
        v9 = MEMORY[0x277D82BE0](v8);
        v22 = v9;
        v43 = *(v36[0] + 18);
        if (v43)
        {
          if (v43 == 1)
          {
            v44 = MEMORY[0x277D82BE0](@"F");
          }

          else if (v43 == 2)
          {
            v44 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v44 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v44 = MEMORY[0x277D82BE0](@"N");
        }

        v7 = v44;
        v2 = v44;
        v6 = v7;
        v21 = MEMORY[0x277D82BE0](v6);
        __os_log_helper_16_2_3_8_32_8_66_8_66(v49, "[SUUIMobileScanOperation action_ObserveConcurrentQueries:error:]_block_invoke", v9, v21);
        _os_log_error_impl(&dword_26B0B9000, v24, v23, "%s [%{public}@|%{public}@]: Concurrent operations timed out. Bailing out.", v49, 0x20u);
        MEMORY[0x277D82BD8](v6);
        MEMORY[0x277D82BD8](v8);
        objc_storeStrong(&v21, 0);
        objc_storeStrong(&v22, 0);
      }

      objc_storeStrong(&v24, 0);
      v4 = MEMORY[0x277CCA9B8];
      v5 = *MEMORY[0x277D64C28];
      v47 = *MEMORY[0x277CCA450];
      v48 = @"Concurrent operations timed out.";
      v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v20 = [v4 errorWithDomain:v5 code:0 userInfo:?];
      MEMORY[0x277D82BD8](v3);
      [*(a1 + 32) setOperationError:v20];
      [*(v36[0] + 7) postEvent:*MEMORY[0x277D64D28] withInfo:*(a1 + 32) endingActivity:*(*(a1 + 48) + 8) + 24];
      objc_storeStrong(&v20, 0);
      v31 = 0;
    }
  }

  objc_storeStrong(v36, 0);
}

- (int64_t)action_ReportScanOutcome:(id)outcome error:(id *)error
{
  v57 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v48 = a2;
  location = 0;
  objc_storeStrong(&location, outcome);
  v46[2] = error;
  scanFSM = [(SUUIMobileScanOperation *)selfCopy scanFSM];
  extendedStateQueue = [(SUCoreFSM *)scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);
  MEMORY[0x277D82BD8](extendedStateQueue);
  MEMORY[0x277D82BD8](scanFSM);
  v46[0] = 3;
  p_lock = &selfCopy->_lock;
  v51 = 0;
  os_unfair_recursive_lock_lock_with_options();
  v46[1] = p_lock;
  if (location)
  {
    scanOperationLogger = [MEMORY[0x277D64B58] scanOperationLogger];
    oslog = [scanOperationLogger oslog];
    MEMORY[0x277D82BD8](scanOperationLogger);
    v43 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [(SUUIMobileScanOperation *)selfCopy identifier];
      v18 = MEMORY[0x277D82BE0](identifier);
      v42 = v18;
      operationType = selfCopy->_operationType;
      if (operationType)
      {
        if (operationType == 1)
        {
          v55 = MEMORY[0x277D82BE0](@"F");
        }

        else if (operationType == 2)
        {
          v55 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v55 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v55 = MEMORY[0x277D82BE0](@"N");
      }

      v16 = v55;
      v4 = v55;
      v14 = v16;
      v15 = MEMORY[0x277D82BE0](v14);
      v41 = v15;
      operationError = [location operationError];
      v5 = "successful";
      if (operationError)
      {
        v5 = "failed";
      }

      v13 = v5;
      v11 = SUUIMobileScanOperationTypeToString(selfCopy->_operationType);
      v40 = MEMORY[0x277D82BE0](v11);
      __os_log_helper_16_2_5_8_32_8_66_8_66_8_32_8_66(v56, "[SUUIMobileScanOperation action_ReportScanOutcome:error:]", v18, v15, v13, v40);
      _os_log_impl(&dword_26B0B9000, oslog, v43, "%s [%{public}@|%{public}@]: Reporting a %s scan of type: %{public}@", v56, 0x34u);
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](operationError);
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](identifier);
      objc_storeStrong(&v40, 0);
      objc_storeStrong(&v41, 0);
      objc_storeStrong(&v42, 0);
    }

    objc_storeStrong(&oslog, 0);
    if (selfCopy->_activity && selfCopy->_activity->var2)
    {
      os_activity_scope_leave(&selfCopy->_activity->var0);
      selfCopy->_activity->var2 = 0;
    }

    objc_initWeak(&from, selfCopy);
    v10 = selfCopy->_operationType;
    if (v10)
    {
      if (v10 == 1)
      {
        queue = selfCopy->_clientCompletionQueue;
        v32 = MEMORY[0x277D85DD0];
        v33 = -1073741824;
        v34 = 0;
        v35 = __58__SUUIMobileScanOperation_action_ReportScanOutcome_error___block_invoke;
        v36 = &unk_279CCBD58;
        objc_copyWeak(v38, &from);
        v38[1] = v48;
        v37 = MEMORY[0x277D82BE0](location);
        dispatch_async(queue, &v32);
        objc_storeStrong(&v37, 0);
        objc_destroyWeak(v38);
      }

      else if (v10 == 2)
      {
        clientCompletionQueue = selfCopy->_clientCompletionQueue;
        v25 = MEMORY[0x277D85DD0];
        v26 = -1073741824;
        v27 = 0;
        v28 = __58__SUUIMobileScanOperation_action_ReportScanOutcome_error___block_invoke_354;
        v29 = &unk_279CCBD58;
        objc_copyWeak(v31, &from);
        v31[1] = v48;
        v30 = MEMORY[0x277D82BE0](location);
        dispatch_async(clientCompletionQueue, &v25);
        objc_storeStrong(&v30, 0);
        objc_destroyWeak(v31);
      }
    }

    else
    {
      diag = [(SUCoreFSM *)selfCopy->_scanFSM diag];
      [diag dumpTracked:@"Could not invoke a completion handler for a 'None' operation type." dumpingTo:5 usingFilename:0 clearingStatistics:0 clearingHistory:0];
      MEMORY[0x277D82BD8](diag);
      [(SUUIMobileScanOperation *)selfCopy invalidateMachine];
    }

    objc_destroyWeak(&from);
    v45 = 2;
  }

  else
  {
    scanFSM2 = [(SUUIMobileScanOperation *)selfCopy scanFSM];
    diag2 = [(SUCoreFSM *)scanFSM2 diag];
    [diag2 trackAnomaly:@"[SUUIMobileScanOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:8102 withError:0];
    MEMORY[0x277D82BD8](diag2);
    MEMORY[0x277D82BD8](scanFSM2);
    v50 = 8102;
    v45 = 1;
  }

  v53 = v46;
  switch(v46[0])
  {
    case 1:
      [v53[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v53[1]);
      break;
    case 3:
      os_unfair_recursive_lock_unlock();
      break;
  }

  if (v45 == 2)
  {
    v50 = 0;
    v45 = 1;
  }

  objc_storeStrong(&location, 0);
  return v50;
}

void __58__SUUIMobileScanOperation_action_ReportScanOutcome_error___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v26[2] = a1;
  v26[1] = a1;
  v26[0] = objc_loadWeakRetained((a1 + 40));
  v9 = 0;
  if (!v26[0])
  {
    v8 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v25 = [v8 oslog];
    MEMORY[0x277D82BD8](v8);
    v24 = 16;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      log = v25;
      type = v24;
      v7 = NSStringFromSelector(*(a1 + 48));
      v23 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v27, "[SUUIMobileScanOperation action_ReportScanOutcome:error:]_block_invoke", v23);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v27, 0x16u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v23, 0);
    }

    objc_storeStrong(&v25, 0);
    v22 = 1;
    v9 = 1;
  }

  if (v9)
  {
    v21 = 1;
  }

  else
  {
    v4 = [*(a1 + 32) operationError];
    v18 = 0;
    if (v4)
    {
      v2 = MEMORY[0x277D82BE0](0);
    }

    else
    {
      v1 = [SUUIMobileScanOperationFullScanResults alloc];
      v19 = [(SUUIMobileScanOperationFullScanResults *)v1 initFromScanParam:*(a1 + 32) withIdentifier:*(v26[0] + 6)];
      v18 = 1;
      v2 = MEMORY[0x277D82BE0](v19);
    }

    v20 = v2;
    if (v18)
    {
      MEMORY[0x277D82BD8](v19);
    }

    MEMORY[0x277D82BD8](v4);
    v17 = MEMORY[0x26D66ED00](*(v26[0] + 13));
    v15 = 0;
    v13 = 0;
    v11 = 0;
    if (v17)
    {
      v16 = [*(a1 + 32) operationError];
      v15 = 1;
      if (v16)
      {
        v3 = [SUUIMobileStatefulError alloc];
        v14 = [*(a1 + 32) operationError];
        v13 = 1;
        v12 = [(SUUIStatefulError *)v3 initFromError:?];
        v11 = 1;
        (*(v17 + 2))(v17, v20, v12);
      }

      else
      {
        (*(v17 + 2))(v17, v20, 0);
      }
    }

    if (v11)
    {
      MEMORY[0x277D82BD8](v12);
    }

    if (v13)
    {
      MEMORY[0x277D82BD8](v14);
    }

    if (v15)
    {
      MEMORY[0x277D82BD8](v16);
    }

    objc_storeStrong(&v17, 0);
    [v26[0] invalidateMachine];
    objc_storeStrong(&v20, 0);
    v21 = 0;
  }

  objc_storeStrong(v26, 0);
}

void __58__SUUIMobileScanOperation_action_ReportScanOutcome_error___block_invoke_354(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v26[2] = a1;
  v26[1] = a1;
  v26[0] = objc_loadWeakRetained((a1 + 40));
  v9 = 0;
  if (!v26[0])
  {
    v8 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v25 = [v8 oslog];
    MEMORY[0x277D82BD8](v8);
    v24 = 16;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      log = v25;
      type = v24;
      v7 = NSStringFromSelector(*(a1 + 48));
      v23 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v27, "[SUUIMobileScanOperation action_ReportScanOutcome:error:]_block_invoke", v23);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v27, 0x16u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v23, 0);
    }

    objc_storeStrong(&v25, 0);
    v22 = 1;
    v9 = 1;
  }

  if (v9)
  {
    v21 = 1;
  }

  else
  {
    v4 = [*(a1 + 32) operationError];
    v18 = 0;
    if (v4)
    {
      v2 = MEMORY[0x277D82BE0](0);
    }

    else
    {
      v1 = [SUUIMobileScanOperationResults alloc];
      v19 = [(SUUIMobileScanOperationResults *)v1 initFromScanParam:*(a1 + 32) withIdentifier:*(v26[0] + 6)];
      v18 = 1;
      v2 = MEMORY[0x277D82BE0](v19);
    }

    v20 = v2;
    if (v18)
    {
      MEMORY[0x277D82BD8](v19);
    }

    MEMORY[0x277D82BD8](v4);
    v17 = MEMORY[0x26D66ED00](*(v26[0] + 14));
    v15 = 0;
    v13 = 0;
    v11 = 0;
    if (v17)
    {
      v16 = [*(a1 + 32) operationError];
      v15 = 1;
      if (v16)
      {
        v3 = [SUUIMobileStatefulError alloc];
        v14 = [*(a1 + 32) operationError];
        v13 = 1;
        v12 = [(SUUIStatefulError *)v3 initFromError:?];
        v11 = 1;
        (*(v17 + 2))(v17, v20, v12);
      }

      else
      {
        (*(v17 + 2))(v17, v20, 0);
      }
    }

    if (v11)
    {
      MEMORY[0x277D82BD8](v12);
    }

    if (v13)
    {
      MEMORY[0x277D82BD8](v14);
    }

    if (v15)
    {
      MEMORY[0x277D82BD8](v16);
    }

    objc_storeStrong(&v17, 0);
    [v26[0] invalidateMachine];
    objc_storeStrong(&v20, 0);
    v21 = 0;
  }

  objc_storeStrong(v26, 0);
}

- (int64_t)action_ReportScanCanceled:(id)canceled error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v32 = a2;
  location = 0;
  objc_storeStrong(&location, canceled);
  errorCopy = error;
  scanFSM = [(SUUIMobileScanOperation *)selfCopy scanFSM];
  extendedStateQueue = [(SUCoreFSM *)scanFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);
  MEMORY[0x277D82BD8](extendedStateQueue);
  MEMORY[0x277D82BD8](scanFSM);
  if (location)
  {
    v28[0] = 3;
    p_lock = &selfCopy->_lock;
    v35 = 0;
    os_unfair_recursive_lock_lock_with_options();
    v28[1] = p_lock;
    scanOperationLogger = [MEMORY[0x277D64B58] scanOperationLogger];
    oslog = [scanOperationLogger oslog];
    MEMORY[0x277D82BD8](scanOperationLogger);
    v26 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [(SUUIMobileScanOperation *)selfCopy identifier];
      v10 = MEMORY[0x277D82BE0](identifier);
      v25 = v10;
      operationType = selfCopy->_operationType;
      if (operationType)
      {
        if (operationType == 1)
        {
          v39 = MEMORY[0x277D82BE0](@"F");
        }

        else if (operationType == 2)
        {
          v39 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v39 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v39 = MEMORY[0x277D82BE0](@"N");
      }

      v8 = v39;
      v4 = v39;
      v7 = v8;
      v24 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_3_8_32_8_66_8_66(v40, "[SUUIMobileScanOperation action_ReportScanCanceled:error:]", v10, v24);
      _os_log_impl(&dword_26B0B9000, oslog, v26, "%s [%{public}@|%{public}@]: The scan was canceled. Calling the cancelation handler.", v40, 0x20u);
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](identifier);
      objc_storeStrong(&v24, 0);
      objc_storeStrong(&v25, 0);
    }

    objc_storeStrong(&oslog, 0);
    if (selfCopy->_activity && selfCopy->_activity->var2)
    {
      os_activity_scope_leave(&selfCopy->_activity->var0);
      selfCopy->_activity->var2 = 0;
    }

    if (selfCopy->_cancelHandler)
    {
      objc_initWeak(&from, selfCopy);
      queue = selfCopy->_clientCompletionQueue;
      block = MEMORY[0x277D85DD0];
      v18 = -1073741824;
      v19 = 0;
      v20 = __59__SUUIMobileScanOperation_action_ReportScanCanceled_error___block_invoke;
      v21 = &unk_279CCC6E8;
      objc_copyWeak(v22, &from);
      v22[1] = v32;
      dispatch_async(queue, &block);
      objc_destroyWeak(v22);
      objc_destroyWeak(&from);
    }

    else
    {
      [(SUUIMobileScanOperation *)selfCopy invalidateMachine];
    }

    v29 = 4;
    v37 = v28;
    switch(v28[0])
    {
      case 1:
        [v37[1] unlock];
        break;
      case 2:
        os_unfair_lock_unlock(v37[1]);
        break;
      case 3:
        os_unfair_recursive_lock_unlock();
        break;
    }

    v34 = 0;
    v29 = 1;
  }

  else
  {
    scanFSM2 = [(SUUIMobileScanOperation *)selfCopy scanFSM];
    diag = [(SUCoreFSM *)scanFSM2 diag];
    [diag trackAnomaly:@"[SUUIMobileScanOperation]" forReason:@"The given eventInfo parameter must not be nil." withResult:8102 withError:0];
    MEMORY[0x277D82BD8](diag);
    MEMORY[0x277D82BD8](scanFSM2);
    v34 = 8102;
    v29 = 1;
  }

  objc_storeStrong(&location, 0);
  return v34;
}

void __59__SUUIMobileScanOperation_action_ReportScanCanceled_error___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v13[2] = a1;
  v13[1] = a1;
  v13[0] = objc_loadWeakRetained((a1 + 32));
  v5 = 0;
  if (!v13[0])
  {
    v4 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v12 = [v4 oslog];
    MEMORY[0x277D82BD8](v4);
    v11 = 16;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      log = v12;
      type = v11;
      v3 = NSStringFromSelector(*(a1 + 40));
      v10 = MEMORY[0x277D82BE0](v3);
      __os_log_helper_16_2_2_8_32_8_66(v14, "[SUUIMobileScanOperation action_ReportScanCanceled:error:]_block_invoke", v10);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v14, 0x16u);
      MEMORY[0x277D82BD8](v3);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
    v9 = 1;
    v5 = 1;
  }

  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v7 = MEMORY[0x26D66ED00](*(v13[0] + 15));
    if (v7)
    {
      (*(v7 + 2))(v7, 1);
    }

    objc_storeStrong(&v7, 0);
    [v13[0] invalidateMachine];
    v8 = 0;
  }

  objc_storeStrong(v13, 0);
}

- (int64_t)actionUnknownAction:(id)action error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, action);
  v16[1] = error;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v16[0] = [v4 initWithFormat:location[0]];
  scanFSM = [(SUUIMobileScanOperation *)selfCopy scanFSM];
  diag = [(SUCoreFSM *)scanFSM diag];
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  v9 = [v5 initWithFormat:@"unknown action(%@)", location[0]];
  [diag dumpTracked:? dumpingTo:? usingFilename:? clearingStatistics:? clearingHistory:?];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](diag);
  MEMORY[0x277D82BD8](scanFSM);
  mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
  v15 = [mEMORY[0x277D643F8] buildError:8116 underlying:0 description:v16[0]];
  MEMORY[0x277D82BD8](mEMORY[0x277D643F8]);
  scanFSM2 = [(SUUIMobileScanOperation *)selfCopy scanFSM];
  diag2 = [(SUCoreFSM *)scanFSM2 diag];
  code = [v15 code];
  [diag2 trackAnomaly:@"[SUUIMobileScanOperation]" forReason:@"Scan FSM has reported an anomaly" withResult:code withError:v15];
  MEMORY[0x277D82BD8](diag2);
  MEMORY[0x277D82BD8](scanFSM2);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);
  objc_storeStrong(location, 0);
  return 0;
}

- (SUUIMobileScanOperation)init
{
  exception = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Use the designated initializer" userInfo:0];
  v2 = exception;
  objc_exception_throw(exception);
}

- (SUUIMobileScanOperation)initWithIdentifier:(id)identifier options:(id)options usingSUManagerClient:(id)client andBetaManager:(id)manager withCompletionQueue:(id)queue
{
  v51 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v44 = 0;
  objc_storeStrong(&v44, options);
  v43 = 0;
  objc_storeStrong(&v43, client);
  v42 = 0;
  objc_storeStrong(&v42, manager);
  v41 = 0;
  objc_storeStrong(&v41, queue);
  v7 = selfCopy;
  selfCopy = 0;
  v40.receiver = v7;
  v40.super_class = SUUIMobileScanOperation;
  v34 = [(SUUIMobileScanOperation *)&v40 init];
  selfCopy = v34;
  objc_storeStrong(&selfCopy, v34);
  if (!v34)
  {
    goto LABEL_8;
  }

  v49 = MGCopyAnswer();
  v25 = v49;
  v8 = v49;
  v39 = v25;
  v48 = MGCopyAnswer();
  v26 = v48;
  v9 = v48;
  v38 = v26;
  v27 = objc_alloc(MEMORY[0x277CCACA8]);
  v10 = objc_opt_class();
  v28 = NSStringFromClass(v10);
  v37 = [v27 initWithFormat:@"%@:%@(%@, %@)", v28, v39, v38, location[0]];
  MEMORY[0x277D82BD8](v28);
  objc_storeStrong(selfCopy + 6, location[0]);
  objc_storeStrong(selfCopy + 9, v44);
  objc_storeStrong(selfCopy + 8, v43);
  objc_storeStrong(selfCopy + 10, v42);
  v36[2] = 0;
  *(selfCopy + 1) = 0;
  v36[1] = 0;
  *(selfCopy + 2) = 0;
  _generateStateTable = [objc_opt_class() _generateStateTable];
  v12 = *(selfCopy + 11);
  *(selfCopy + 11) = _generateStateTable;
  MEMORY[0x277D82BD8](v12);
  *(selfCopy + 18) = 0;
  v13 = objc_alloc(MEMORY[0x277CBEBD0]);
  v14 = [v13 initWithSuiteName:*MEMORY[0x277D64C60]];
  v15 = *(selfCopy + 3);
  *(selfCopy + 3) = v14;
  MEMORY[0x277D82BD8](v15);
  v29 = objc_alloc(MEMORY[0x277D64458]);
  v16 = [v29 initMachine:v37 withTable:*(selfCopy + 11) startingIn:*MEMORY[0x277D64E88] usingDelegate:selfCopy registeringAllInfoClass:objc_opt_class()];
  v17 = *(selfCopy + 7);
  *(selfCopy + 7) = v16;
  MEMORY[0x277D82BD8](v17);
  if (*(selfCopy + 7))
  {
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    v18 = [mEMORY[0x277D643F8] selectCompletionQueue:v41];
    v19 = *(selfCopy + 12);
    *(selfCopy + 12) = v18;
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](mEMORY[0x277D643F8]);
    v20 = objc_opt_new();
    v21 = *(selfCopy + 19);
    *(selfCopy + 19) = v20;
    MEMORY[0x277D82BD8](v21);
    v35 = 0;
  }

  else
  {
    scanOperationLogger = [MEMORY[0x277D64B58] scanOperationLogger];
    v36[0] = [scanOperationLogger oslog];
    MEMORY[0x277D82BD8](scanOperationLogger);
    if (os_log_type_enabled(v36[0], OS_LOG_TYPE_FAULT))
    {
      __os_log_helper_16_2_1_8_32(v50, "[SUUIMobileScanOperation initWithIdentifier:options:usingSUManagerClient:andBetaManager:withCompletionQueue:]");
      _os_log_fault_impl(&dword_26B0B9000, v36[0], OS_LOG_TYPE_FAULT, "%s: Failed creating the Mobile Scan FSM", v50, 0xCu);
    }

    objc_storeStrong(v36, 0);
    v47 = 0;
    v35 = 1;
  }

  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  if (!v35)
  {
LABEL_8:
    v47 = MEMORY[0x277D82BE0](selfCopy);
  }

  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v47;
}

- (void)checkForAvailableUpdatesWithCompletionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, handler);
  v3 = selfCopy;
  v4 = objc_opt_new();
  [SUUIMobileScanOperation checkForAvailableUpdatesWithContext:v3 completionHandler:"checkForAvailableUpdatesWithContext:completionHandler:"];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)checkForAvailableUpdatesWithContext:(id)context completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v38 = 0;
  objc_storeStrong(&v38, handler);
  v37[0] = 3;
  p_lock = &selfCopy->_lock;
  v41 = 0;
  os_unfair_recursive_lock_lock_with_options();
  v37[1] = p_lock;
  if (selfCopy->_operationType)
  {
    diag = [(SUCoreFSM *)selfCopy->_scanFSM diag];
    [diag trackAnomaly:@"[SUUIMobileScanOperation]" forReason:@"There is no active search to cancel" withResult:8102 withError:0];
    MEMORY[0x277D82BD8](diag);
    v36 = 1;
  }

  else
  {
    v34 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
    if (v34)
    {
      v33 = _os_activity_create(&dword_26B0B9000, "com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.FullScan", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      v4 = v34[1].opaque[0];
      v34[1].opaque[0] = v33;
      MEMORY[0x277D82BD8](v4);
    }

    else
    {
      softwareUpdateUILogger = [MEMORY[0x277D64B58] softwareUpdateUILogger];
      oslog = [softwareUpdateUILogger oslog];
      MEMORY[0x277D82BD8](softwareUpdateUILogger);
      v31 = 16;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        log = oslog;
        type = v31;
        __os_log_helper_16_0_0(v30);
        _os_log_error_impl(&dword_26B0B9000, log, type, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.FullScan", v30, 2u);
      }

      objc_storeStrong(&oslog, 0);
    }

    v29[2] = v34;
    v35 = v34;
    if (v34)
    {
      os_activity_scope_enter(v35->var1, &v35->var0);
      v35->var2 = 1;
    }

    v29[1] = v35;
    selfCopy->_activity = v35;
    v5 = MEMORY[0x26D66ED00](v38);
    fullScanCompletionHandler = selfCopy->_fullScanCompletionHandler;
    selfCopy->_fullScanCompletionHandler = v5;
    MEMORY[0x277D82BD8](fullScanCompletionHandler);
    selfCopy->_operationType = 1;
    v7 = dispatch_group_create();
    scanGroup = selfCopy->_scanGroup;
    selfCopy->_scanGroup = v7;
    MEMORY[0x277D82BD8](scanGroup);
    v21 = MEMORY[0x277CCACA8];
    baseDomain = [(SUUIMobileScanOperation *)selfCopy baseDomain];
    v18 = [v21 stringWithFormat:@"%@.concurrent-queue", baseDomain];
    v9 = v18;
    label = [v18 UTF8String];
    v10 = dispatch_queue_create(label, MEMORY[0x277D85CD8]);
    concurrentQueue = selfCopy->_concurrentQueue;
    selfCopy->_concurrentQueue = v10;
    MEMORY[0x277D82BD8](concurrentQueue);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](baseDomain);
    selfCopy->_concurrentActionsFailed = 0;
    selfCopy->_canceled = 0;
    [(SUCoreFSM *)selfCopy->_scanFSM activateMachine];
    v17 = objc_opt_new();
    concurrentRunningActionsNames = selfCopy->_concurrentRunningActionsNames;
    selfCopy->_concurrentRunningActionsNames = v17;
    MEMORY[0x277D82BD8](concurrentRunningActionsNames);
    v28 = MEMORY[0x277D82BE0](location[0]);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      _suui_precondition_failure_with_format();
      __break(1u);
    }

    v27 = MEMORY[0x277D82BE0](v28);
    objc_storeStrong(&v28, 0);
    v29[0] = v27;
    scanFSM = selfCopy->_scanFSM;
    v15 = *MEMORY[0x277D64D18];
    v16 = [SUUIMobileScanOperationParam alloc];
    v13 = [(SUUIMobileScanOperationParam *)v16 initWithFullScanContext:v29[0]];
    [(SUCoreFSM *)scanFSM postEvent:v15 withInfo:v13];
    MEMORY[0x277D82BD8](v13);
    objc_storeStrong(v29, 0);
    v36 = 2;
  }

  v43 = v37;
  switch(v37[0])
  {
    case 1:
      [v43[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v43[1]);
      break;
    case 3:
      os_unfair_recursive_lock_unlock();
      break;
  }

  if (v36 == 2)
  {
    v36 = 0;
  }

  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
}

- (void)controllerCurrentlyScanning:(id)scanning
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scanning);
  suClient = [(SUUIMobileScanOperation *)selfCopy suClient];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __55__SUUIMobileScanOperation_controllerCurrentlyScanning___block_invoke;
  v8 = &unk_279CCC968;
  v9 = MEMORY[0x277D82BE0](location[0]);
  [(SUManagerClient *)suClient isScanning:?];
  MEMORY[0x277D82BD8](suClient);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __55__SUUIMobileScanOperation_controllerCurrentlyScanning___block_invoke(uint64_t a1, char a2, id obj)
{
  v11 = a1;
  v10 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v5 = *(a1 + 32);
  v6 = v10;
  v7 = 0;
  if (location)
  {
    v3 = [SUUIMobileStatefulError alloc];
    v8 = [(SUUIStatefulError *)v3 initFromError:location];
    v7 = 1;
    (*(v5 + 16))(v5, v6 & 1, v8);
  }

  else
  {
    (*(v5 + 16))(v5, v10 & 1, 0);
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  objc_storeStrong(&location, 0);
}

- (void)refreshScanResultsWithPreferredUpdate:(id)update alternateUpdate:(id)alternateUpdate completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  v12 = 0;
  objc_storeStrong(&v12, alternateUpdate);
  v11 = 0;
  objc_storeStrong(&v11, handler);
  v9 = selfCopy;
  v7 = location[0];
  v8 = v12;
  v10 = objc_opt_new();
  [SUUIMobileScanOperation refreshScanResultsWithPreferredUpdate:v9 alternateUpdate:"refreshScanResultsWithPreferredUpdate:alternateUpdate:context:completionHandler:" context:v7 completionHandler:v8];
  MEMORY[0x277D82BD8](v10);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)refreshScanResultsWithPreferredUpdate:(id)update alternateUpdate:(id)alternateUpdate context:(id)context completionHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  v44 = 0;
  objc_storeStrong(&v44, alternateUpdate);
  v43 = 0;
  objc_storeStrong(&v43, context);
  v42 = 0;
  objc_storeStrong(&v42, handler);
  v41[0] = 3;
  p_lock = &selfCopy->_lock;
  v47 = 0;
  os_unfair_recursive_lock_lock_with_options();
  v41[1] = p_lock;
  if (selfCopy->_operationType)
  {
    diag = [(SUCoreFSM *)selfCopy->_scanFSM diag];
    [diag trackAnomaly:@"[SUUIMobileScanOperation]" forReason:@"There is no active search to cancel" withResult:8102 withError:0];
    MEMORY[0x277D82BD8](diag);
    v40 = 1;
  }

  else
  {
    v38 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
    if (v38)
    {
      v37 = _os_activity_create(&dword_26B0B9000, "com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.RefreshScan", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      v6 = v38[1].opaque[0];
      v38[1].opaque[0] = v37;
      MEMORY[0x277D82BD8](v6);
    }

    else
    {
      softwareUpdateUILogger = [MEMORY[0x277D64B58] softwareUpdateUILogger];
      oslog = [softwareUpdateUILogger oslog];
      MEMORY[0x277D82BD8](softwareUpdateUILogger);
      v35 = 16;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        log = oslog;
        type = v35;
        __os_log_helper_16_0_0(v34);
        _os_log_error_impl(&dword_26B0B9000, log, type, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.ScanOperation.RefreshScan", v34, 2u);
      }

      objc_storeStrong(&oslog, 0);
    }

    v33[2] = v38;
    v39 = v38;
    if (v38)
    {
      os_activity_scope_enter(v39->var1, &v39->var0);
      v39->var2 = 1;
    }

    v33[1] = v39;
    selfCopy->_activity = v39;
    v7 = MEMORY[0x26D66ED00](v42);
    refreshScanCompletionHandler = selfCopy->_refreshScanCompletionHandler;
    selfCopy->_refreshScanCompletionHandler = v7;
    MEMORY[0x277D82BD8](refreshScanCompletionHandler);
    selfCopy->_operationType = 2;
    v9 = dispatch_group_create();
    scanGroup = selfCopy->_scanGroup;
    selfCopy->_scanGroup = v9;
    MEMORY[0x277D82BD8](scanGroup);
    v22 = MEMORY[0x277CCACA8];
    baseDomain = [(SUUIMobileScanOperation *)selfCopy baseDomain];
    v19 = [v22 stringWithFormat:@"%@.concurrent-queue", baseDomain];
    v11 = v19;
    label = [v19 UTF8String];
    v12 = dispatch_queue_create(label, MEMORY[0x277D85CD8]);
    concurrentQueue = selfCopy->_concurrentQueue;
    selfCopy->_concurrentQueue = v12;
    MEMORY[0x277D82BD8](concurrentQueue);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](baseDomain);
    selfCopy->_concurrentActionsFailed = 0;
    selfCopy->_canceled = 0;
    v18 = objc_opt_new();
    concurrentRunningActionsNames = selfCopy->_concurrentRunningActionsNames;
    selfCopy->_concurrentRunningActionsNames = v18;
    MEMORY[0x277D82BD8](concurrentRunningActionsNames);
    v32 = MEMORY[0x277D82BE0](v43);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      _suui_precondition_failure_with_format();
      __break(1u);
    }

    v31 = MEMORY[0x277D82BE0](v32);
    objc_storeStrong(&v32, 0);
    v33[0] = v31;
    v17 = [SUUIMobileScanOperationParam alloc];
    underlyingDescriptor = [location[0] underlyingDescriptor];
    underlyingDescriptor2 = [v44 underlyingDescriptor];
    v30 = [SUUIMobileScanOperationParam initWithPreferredDescriptor:v17 alternateDescriptor:"initWithPreferredDescriptor:alternateDescriptor:andRefreshContext:" andRefreshContext:underlyingDescriptor];
    MEMORY[0x277D82BD8](underlyingDescriptor2);
    MEMORY[0x277D82BD8](underlyingDescriptor);
    [(SUCoreFSM *)selfCopy->_scanFSM activateMachine];
    [(SUCoreFSM *)selfCopy->_scanFSM postEvent:*MEMORY[0x277D64DD8] withInfo:v30];
    objc_storeStrong(&v30, 0);
    objc_storeStrong(v33, 0);
    v40 = 2;
  }

  v49 = v41;
  switch(v41[0])
  {
    case 1:
      [v49[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v49[1]);
      break;
    case 3:
      os_unfair_recursive_lock_unlock();
      break;
  }

  if (v40 == 2)
  {
    v40 = 0;
  }

  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(location, 0);
}

- (id)scanResultsCacheExpectedTTLDuration
{
  location[2] = self;
  location[1] = a2;
  if (_os_feature_enabled_impl())
  {
    mEMORY[0x277D64BD8] = [MEMORY[0x277D64BD8] sharedDefaults];
    location[0] = [mEMORY[0x277D64BD8] scanResultsCachingDuration];
    MEMORY[0x277D82BD8](mEMORY[0x277D64BD8]);
    if (location[0])
    {
      v5 = (60 * [location[0] intValue]);
    }

    else if (os_variant_has_internal_content())
    {
      v5 = 60 * *MEMORY[0x277D64C50];
    }

    else
    {
      v5 = 60 * *MEMORY[0x277D64C58];
    }

    v7 = [MEMORY[0x277CCABB0] numberWithLong:v5];
    objc_storeStrong(location, 0);
  }

  else
  {
    v7 = 0;
  }

  v2 = v7;

  return v2;
}

- (id)readScanResultsCacheExpectedTTLValue
{
  selfCopy = self;
  v12 = a2;
  if (_os_feature_enabled_impl())
  {
    mEMORY[0x277D64BD8] = [MEMORY[0x277D64BD8] sharedDefaults];
    v2 = [mEMORY[0x277D64BD8] defaultsContainsKey:*MEMORY[0x277D64C68]];
    v10 = 0;
    v8 = 0;
    v6 = 0;
    if (v2)
    {
      mEMORY[0x277D64BD8]2 = [MEMORY[0x277D64BD8] sharedDefaults];
      v10 = 1;
      scanResultsCachingDuration = [mEMORY[0x277D64BD8]2 scanResultsCachingDuration];
      v8 = 1;
      v6 = [scanResultsCachingDuration intValue] == 0;
    }

    if (v8)
    {
      MEMORY[0x277D82BD8](scanResultsCachingDuration);
    }

    if (v10)
    {
      MEMORY[0x277D82BD8](mEMORY[0x277D64BD8]2);
    }

    MEMORY[0x277D82BD8](mEMORY[0x277D64BD8]);
    if (v6)
    {
      v14 = 0;
    }

    else
    {
      v7 = [(NSUserDefaults *)selfCopy->_userDefaultsSuite objectForKey:@"SUCachedScanResultsTTL"];
      v14 = MEMORY[0x277D82BE0](v7);
      objc_storeStrong(&v7, 0);
    }
  }

  else
  {
    v14 = 0;
  }

  v3 = v14;

  return v3;
}

- (void)hasScanResultsCacheWithCompletion:(id)completion
{
  v113 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    goto LABEL_2;
  }

  mEMORY[0x277D64BD8] = [MEMORY[0x277D64BD8] sharedDefaults];
  v3 = [mEMORY[0x277D64BD8] defaultsContainsKey:*MEMORY[0x277D64C68]];
  v90 = 0;
  v88 = 0;
  v57 = 0;
  if (v3)
  {
    mEMORY[0x277D64BD8]2 = [MEMORY[0x277D64BD8] sharedDefaults];
    v90 = 1;
    scanResultsCachingDuration = [mEMORY[0x277D64BD8]2 scanResultsCachingDuration];
    v88 = 1;
    v57 = [scanResultsCachingDuration intValue] == 0;
  }

  if (v88)
  {
    MEMORY[0x277D82BD8](scanResultsCachingDuration);
  }

  if (v90)
  {
    MEMORY[0x277D82BD8](mEMORY[0x277D64BD8]2);
  }

  MEMORY[0x277D82BD8](mEMORY[0x277D64BD8]);
  if (v57)
  {
LABEL_2:
    (*(location[0] + 2))(location[0], 0, 0);
    v92 = 1;
  }

  else
  {
    v87 = [(NSUserDefaults *)selfCopy->_userDefaultsSuite objectForKey:@"SUCachedScanResultsTTL"];
    v86 = [(NSUserDefaults *)selfCopy->_userDefaultsSuite stringForKey:@"SUCachedAudience"];
    v85 = [(NSUserDefaults *)selfCopy->_userDefaultsSuite stringForKey:@"SUCachedOSVersion"];
    if (v87 || v86 || v85)
    {
      if (v87 && v86 && v85)
      {
        date = [MEMORY[0x277CBEAA8] date];
        v41 = [date compare:v87];
        MEMORY[0x277D82BD8](date);
        if (v41 == 1)
        {
          scanOperationLogger = [MEMORY[0x277D64B58] scanOperationLogger];
          oslog = [scanOperationLogger oslog];
          MEMORY[0x277D82BD8](scanOperationLogger);
          v75 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            v35 = oslog;
            v36 = v75;
            identifier = [(SUUIMobileScanOperation *)selfCopy identifier];
            v38 = MEMORY[0x277D82BE0](identifier);
            v74 = v38;
            operationType = selfCopy->_operationType;
            if (operationType)
            {
              if (operationType == 1)
              {
                v102 = MEMORY[0x277D82BE0](@"F");
              }

              else if (operationType == 2)
              {
                v102 = MEMORY[0x277D82BE0](@"R");
              }

              else
              {
                v102 = MEMORY[0x277D82BE0](@"N/A");
              }
            }

            else
            {
              v102 = MEMORY[0x277D82BE0](@"N");
            }

            v31 = v102;
            v6 = v102;
            v34 = v31;
            v32 = MEMORY[0x277D82BE0](v34);
            v73 = v32;
            date2 = [MEMORY[0x277CBEAA8] date];
            v72 = MEMORY[0x277D82BE0](date2);
            __os_log_helper_16_2_5_8_32_8_66_8_66_8_66_8_66(v110, "[SUUIMobileScanOperation hasScanResultsCacheWithCompletion:]", v38, v32, v72, v87);
            _os_log_impl(&dword_26B0B9000, v35, v36, "%s [%{public}@|%{public}@]: The cached version of SUScanResults has been expired. Assuming that cache doesn't exists.\n\t- Now: %{public}@\n\t- TTL: %{public}@", v110, 0x34u);
            MEMORY[0x277D82BD8](date2);
            MEMORY[0x277D82BD8](v34);
            MEMORY[0x277D82BD8](identifier);
            objc_storeStrong(&v72, 0);
            objc_storeStrong(&v73, 0);
            objc_storeStrong(&v74, 0);
          }

          objc_storeStrong(&oslog, 0);
          (*(location[0] + 2))(location[0], 0, 0);
          v92 = 1;
        }

        else
        {
          pallasAudience = [(SUUIMobileScanOperation *)selfCopy pallasAudience];
          if ([pallasAudience isEqualToString:v86])
          {
            currentOSVersionIdentifier = [(SUUIMobileScanOperation *)selfCopy currentOSVersionIdentifier];
            if ([currentOSVersionIdentifier isEqualToString:v85])
            {
              scanOperationLogger2 = [MEMORY[0x277D64B58] scanOperationLogger];
              oslog2 = [scanOperationLogger2 oslog];
              MEMORY[0x277D82BD8](scanOperationLogger2);
              v60 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
              {
                v12 = oslog2;
                v13 = v60;
                identifier2 = [(SUUIMobileScanOperation *)selfCopy identifier];
                v15 = MEMORY[0x277D82BE0](identifier2);
                v59 = v15;
                v95 = selfCopy->_operationType;
                if (v95)
                {
                  if (v95 == 1)
                  {
                    v96 = MEMORY[0x277D82BE0](@"F");
                  }

                  else if (v95 == 2)
                  {
                    v96 = MEMORY[0x277D82BE0](@"R");
                  }

                  else
                  {
                    v96 = MEMORY[0x277D82BE0](@"N/A");
                  }
                }

                else
                {
                  v96 = MEMORY[0x277D82BE0](@"N");
                }

                v10 = v96;
                v9 = v96;
                v11 = v10;
                v58 = MEMORY[0x277D82BE0](v11);
                __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v107, "[SUUIMobileScanOperation hasScanResultsCacheWithCompletion:]", v15, v58, v87);
                _os_log_impl(&dword_26B0B9000, v12, v13, "%s [%{public}@|%{public}@]: Found a valid SUScanResults cache: %{public}@", v107, 0x2Au);
                MEMORY[0x277D82BD8](v11);
                MEMORY[0x277D82BD8](identifier2);
                objc_storeStrong(&v58, 0);
                objc_storeStrong(&v59, 0);
              }

              objc_storeStrong(&oslog2, 0);
              (*(location[0] + 2))(location[0], 1, 0);
              v92 = 0;
            }

            else
            {
              scanOperationLogger3 = [MEMORY[0x277D64B58] scanOperationLogger];
              oslog3 = [scanOperationLogger3 oslog];
              MEMORY[0x277D82BD8](scanOperationLogger3);
              v64 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
              {
                v19 = oslog3;
                v20 = v64;
                identifier3 = [(SUUIMobileScanOperation *)selfCopy identifier];
                v22 = MEMORY[0x277D82BE0](identifier3);
                v63 = v22;
                v97 = selfCopy->_operationType;
                if (v97)
                {
                  if (v97 == 1)
                  {
                    v98 = MEMORY[0x277D82BE0](@"F");
                  }

                  else if (v97 == 2)
                  {
                    v98 = MEMORY[0x277D82BE0](@"R");
                  }

                  else
                  {
                    v98 = MEMORY[0x277D82BE0](@"N/A");
                  }
                }

                else
                {
                  v98 = MEMORY[0x277D82BE0](@"N");
                }

                v17 = v98;
                v8 = v98;
                v18 = v17;
                v62 = MEMORY[0x277D82BE0](v18);
                __os_log_helper_16_2_5_8_32_8_66_8_66_8_66_8_66(v108, "[SUUIMobileScanOperation hasScanResultsCacheWithCompletion:]", v22, v62, currentOSVersionIdentifier, v85);
                _os_log_impl(&dword_26B0B9000, v19, v20, "%s [%{public}@|%{public}@]: The cached SUScanResults OS Version is different than the current one. Assuming that cache doesn't exists.\n\t- Now: %{public}@\n\t- OS Version: %{public}@", v108, 0x34u);
                MEMORY[0x277D82BD8](v18);
                MEMORY[0x277D82BD8](identifier3);
                objc_storeStrong(&v62, 0);
                objc_storeStrong(&v63, 0);
              }

              objc_storeStrong(&oslog3, 0);
              (*(location[0] + 2))(location[0], 0, 0);
              v92 = 1;
            }

            objc_storeStrong(&currentOSVersionIdentifier, 0);
          }

          else
          {
            scanOperationLogger4 = [MEMORY[0x277D64B58] scanOperationLogger];
            oslog4 = [scanOperationLogger4 oslog];
            MEMORY[0x277D82BD8](scanOperationLogger4);
            v69 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
            {
              v26 = oslog4;
              v27 = v69;
              identifier4 = [(SUUIMobileScanOperation *)selfCopy identifier];
              v29 = MEMORY[0x277D82BE0](identifier4);
              v68 = v29;
              v99 = selfCopy->_operationType;
              if (v99)
              {
                if (v99 == 1)
                {
                  v100 = MEMORY[0x277D82BE0](@"F");
                }

                else if (v99 == 2)
                {
                  v100 = MEMORY[0x277D82BE0](@"R");
                }

                else
                {
                  v100 = MEMORY[0x277D82BE0](@"N/A");
                }
              }

              else
              {
                v100 = MEMORY[0x277D82BE0](@"N");
              }

              v24 = v100;
              v7 = v100;
              v25 = v24;
              v67 = MEMORY[0x277D82BE0](v25);
              __os_log_helper_16_2_5_8_32_8_66_8_66_8_66_8_66(v109, "[SUUIMobileScanOperation hasScanResultsCacheWithCompletion:]", v29, v67, pallasAudience, v86);
              _os_log_impl(&dword_26B0B9000, v26, v27, "%s [%{public}@|%{public}@]: The cached SUScanResults audience is different than the current one. Assuming that cache doesn't exists.\n\t- Now: %{public}@\n\t- Audience: %{public}@", v109, 0x34u);
              MEMORY[0x277D82BD8](v25);
              MEMORY[0x277D82BD8](identifier4);
              objc_storeStrong(&v67, 0);
              objc_storeStrong(&v68, 0);
            }

            objc_storeStrong(&oslog4, 0);
            (*(location[0] + 2))(location[0], 0, 0);
            v92 = 1;
          }

          objc_storeStrong(&pallasAudience, 0);
        }
      }

      else
      {
        scanOperationLogger5 = [MEMORY[0x277D64B58] scanOperationLogger];
        oslog5 = [scanOperationLogger5 oslog];
        MEMORY[0x277D82BD8](scanOperationLogger5);
        v79 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog5, OS_LOG_TYPE_ERROR))
        {
          v44 = oslog5;
          v45 = v79;
          identifier5 = [(SUUIMobileScanOperation *)selfCopy identifier];
          v47 = MEMORY[0x277D82BE0](identifier5);
          v78 = v47;
          v103 = selfCopy->_operationType;
          if (v103)
          {
            if (v103 == 1)
            {
              v104 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v103 == 2)
            {
              v104 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v104 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v104 = MEMORY[0x277D82BE0](@"N");
          }

          v42 = v104;
          v5 = v104;
          v43 = v42;
          v77 = MEMORY[0x277D82BE0](v43);
          __os_log_helper_16_2_6_8_32_8_66_8_66_8_66_8_66_8_66(v111, "[SUUIMobileScanOperation hasScanResultsCacheWithCompletion:]", v47, v77, v87, v86, v85);
          _os_log_error_impl(&dword_26B0B9000, v44, v45, "%s [%{public}@|%{public}@]: One of the required cached fields is/are missing. Assuming that cache doesn't exists.\n\t- TTL: %{public}@\n\t- Audience: %{public}@\n\t- OS Version: %{public}@", v111, 0x3Eu);
          MEMORY[0x277D82BD8](v43);
          MEMORY[0x277D82BD8](identifier5);
          objc_storeStrong(&v77, 0);
          objc_storeStrong(&v78, 0);
        }

        objc_storeStrong(&oslog5, 0);
        (*(location[0] + 2))(location[0], 0, 0);
        v92 = 1;
      }
    }

    else
    {
      scanOperationLogger6 = [MEMORY[0x277D64B58] scanOperationLogger];
      oslog = [scanOperationLogger6 oslog];
      MEMORY[0x277D82BD8](scanOperationLogger6);
      type = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        log = oslog;
        v52 = type;
        identifier6 = [(SUUIMobileScanOperation *)selfCopy identifier];
        v54 = MEMORY[0x277D82BE0](identifier6);
        v82 = v54;
        v105 = selfCopy->_operationType;
        if (v105)
        {
          if (v105 == 1)
          {
            v106 = MEMORY[0x277D82BE0](@"F");
          }

          else if (v105 == 2)
          {
            v106 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v106 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v106 = MEMORY[0x277D82BE0](@"N");
        }

        v49 = v106;
        v4 = v106;
        v50 = v49;
        v81 = MEMORY[0x277D82BE0](v50);
        __os_log_helper_16_2_3_8_32_8_66_8_66(v112, "[SUUIMobileScanOperation hasScanResultsCacheWithCompletion:]", v54, v81);
        _os_log_impl(&dword_26B0B9000, log, v52, "%s [%{public}@|%{public}@]: No cached version of SUScanResults has been found.", v112, 0x20u);
        MEMORY[0x277D82BD8](v50);
        MEMORY[0x277D82BD8](identifier6);
        objc_storeStrong(&v81, 0);
        objc_storeStrong(&v82, 0);
      }

      objc_storeStrong(&oslog, 0);
      (*(location[0] + 2))(location[0], 0, 0);
      v92 = 1;
    }

    objc_storeStrong(&v85, 0);
    objc_storeStrong(&v86, 0);
    objc_storeStrong(&v87, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)invalidateScanResultsCache:(id)cache
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cache);
  [(SUUIMobileScanOperation *)selfCopy removeCachedScanResults];
  (*(location[0] + 2))(location[0], 0);
  objc_storeStrong(location, 0);
}

- (void)cancel:(id)cancel
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, cancel);
  v9[0] = 3;
  p_lock = &selfCopy->_lock;
  v12 = 0;
  os_unfair_recursive_lock_lock_with_options();
  v9[1] = p_lock;
  if (selfCopy->_operationType)
  {
    if (!selfCopy->_canceled)
    {
      selfCopy->_canceled = 1;
      v3 = MEMORY[0x26D66ED00](location[0]);
      cancelHandler = selfCopy->_cancelHandler;
      selfCopy->_cancelHandler = v3;
      MEMORY[0x277D82BD8](cancelHandler);
      scanFSM = selfCopy->_scanFSM;
      v6 = *MEMORY[0x277D64D08];
      v7 = objc_alloc_init(SUUIMobileScanOperationParam);
      [(SUCoreFSM *)scanFSM postEvent:v6 withInfo:v7];
      MEMORY[0x277D82BD8](v7);
    }
  }

  else
  {
    diag = [(SUCoreFSM *)selfCopy->_scanFSM diag];
    [diag trackAnomaly:@"[SUUIMobileScanOperation]" forReason:@"There is no active search to cancel" withResult:8102 withError:0];
    MEMORY[0x277D82BD8](diag);
  }

  v14 = v9;
  switch(v9[0])
  {
    case 1:
      [v14[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v14[1]);
      break;
    case 3:
      os_unfair_recursive_lock_unlock();
      break;
  }

  objc_storeStrong(location, 0);
}

- (BOOL)isActive
{
  selfCopy = self;
  v3[2] = a2;
  v3[0] = 3;
  p_lock = &self->_lock;
  *&v5[1] = 0;
  os_unfair_recursive_lock_lock_with_options();
  v3[1] = p_lock;
  *v5 = selfCopy->_operationType != 0;
  v7 = v3;
  os_unfair_recursive_lock_unlock();
  return v5[0] & 1;
}

- (void)scheduleConcurrentActionWithSelector:(SEL)selector eventInfo:(id)info
{
  v55 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v41 = a2;
  selectorCopy = selector;
  location = 0;
  objc_storeStrong(&location, info);
  v38 = NSStringFromSelector(selectorCopy);
  v37[0] = 3;
  p_lock = &selfCopy->_lock;
  v45 = 0;
  os_unfair_recursive_lock_lock_with_options();
  v37[1] = p_lock;
  v35[0] = 3;
  p_concurrentLock = &selfCopy->_concurrentLock;
  v43 = 0;
  os_unfair_recursive_lock_lock_with_options();
  v35[1] = p_concurrentLock;
  if (!selfCopy->_concurrentQueue)
  {
    scanOperationLogger = [MEMORY[0x277D64B58] scanOperationLogger];
    oslog = [scanOperationLogger oslog];
    MEMORY[0x277D82BD8](scanOperationLogger);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      identifier = [(SUUIMobileScanOperation *)selfCopy identifier];
      v16 = MEMORY[0x277D82BE0](identifier);
      v32 = v16;
      operationType = selfCopy->_operationType;
      if (operationType)
      {
        if (operationType == 1)
        {
          v52 = MEMORY[0x277D82BE0](@"F");
        }

        else if (operationType == 2)
        {
          v52 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v52 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v52 = MEMORY[0x277D82BE0](@"N");
      }

      v14 = v52;
      v4 = v52;
      v13 = v14;
      v31 = MEMORY[0x277D82BE0](v13);
      __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v54, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]", v16, v31, v38);
      _os_log_error_impl(&dword_26B0B9000, oslog, type, "%s [%{public}@|%{public}@]: Concurrent queue is nil, cannot dispatch action %{public}@", v54, 0x2Au);
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](identifier);
      objc_storeStrong(&v31, 0);
      objc_storeStrong(&v32, 0);
    }

    objc_storeStrong(&oslog, 0);
    selfCopy->_concurrentActionsFailed = 1;
  }

  if (selfCopy->_concurrentActionsFailed)
  {
    scanOperationLogger2 = [MEMORY[0x277D64B58] scanOperationLogger];
    oslog = [scanOperationLogger2 oslog];
    MEMORY[0x277D82BD8](scanOperationLogger2);
    v29 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [(SUUIMobileScanOperation *)selfCopy identifier];
      v11 = MEMORY[0x277D82BE0](identifier2);
      v28 = v11;
      v49 = selfCopy->_operationType;
      if (v49)
      {
        if (v49 == 1)
        {
          v50 = MEMORY[0x277D82BE0](@"F");
        }

        else if (v49 == 2)
        {
          v50 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v50 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v50 = MEMORY[0x277D82BE0](@"N");
      }

      v9 = v50;
      v5 = v50;
      v8 = v9;
      v27 = MEMORY[0x277D82BE0](v8);
      __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v53, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]", v11, v27, v38);
      _os_log_impl(&dword_26B0B9000, oslog, v29, "%s [%{public}@|%{public}@]: Not scheduling action %{public}@ because a previous action has already failed or timed out", v53, 0x2Au);
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](identifier2);
      objc_storeStrong(&v27, 0);
      objc_storeStrong(&v28, 0);
    }

    objc_storeStrong(&oslog, 0);
    v36 = 1;
  }

  else
  {
    [(NSMutableSet *)selfCopy->_concurrentRunningActionsNames addObject:v38];
    v36 = 5;
  }

  v48 = v35;
  switch(v35[0])
  {
    case 1:
      [v48[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v48[1]);
      break;
    case 3:
      os_unfair_recursive_lock_unlock();
      break;
  }

  if (v36 == 5)
  {
    v36 = 2;
  }

  v47 = v37;
  switch(v37[0])
  {
    case 1:
      [v47[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v47[1]);
      break;
    case 3:
      os_unfair_recursive_lock_unlock();
      break;
  }

  if (v36 == 2)
  {
    scanGroup = [(SUUIMobileScanOperation *)selfCopy scanGroup];
    dispatch_group_enter(scanGroup);
    MEMORY[0x277D82BD8](scanGroup);
    objc_initWeak(&from, selfCopy);
    queue = [(SUUIMobileScanOperation *)selfCopy concurrentQueue];
    v18 = MEMORY[0x277D85DD0];
    v19 = -1073741824;
    v20 = 0;
    v21 = __74__SUUIMobileScanOperation_scheduleConcurrentActionWithSelector_eventInfo___block_invoke;
    v22 = &unk_279CCC760;
    objc_copyWeak(v25, &from);
    v25[1] = v41;
    v23 = MEMORY[0x277D82BE0](v38);
    v24 = MEMORY[0x277D82BE0](location);
    v25[2] = selectorCopy;
    dispatch_async(queue, &v18);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v23, 0);
    objc_destroyWeak(v25);
    objc_destroyWeak(&from);
    v36 = 0;
  }

  objc_storeStrong(&v38, 0);
  objc_storeStrong(&location, 0);
}

void __74__SUUIMobileScanOperation_scheduleConcurrentActionWithSelector_eventInfo___block_invoke(uint64_t a1)
{
  v171 = *MEMORY[0x277D85DE8];
  v127[2] = a1;
  v127[1] = a1;
  v127[0] = objc_loadWeakRetained((a1 + 48));
  v65 = 0;
  if (!v127[0])
  {
    v64 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    oslog = [v64 oslog];
    MEMORY[0x277D82BD8](v64);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v63 = NSStringFromSelector(*(a1 + 56));
      location = MEMORY[0x277D82BE0](v63);
      __os_log_helper_16_2_2_8_32_8_66(v170, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", location);
      _os_log_error_impl(&dword_26B0B9000, oslog, type, "%s: Self is nil in %{public}@. Stopping.", v170, 0x16u);
      MEMORY[0x277D82BD8](v63);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&oslog, 0);
    v123 = 1;
    v65 = 1;
  }

  if (v65)
  {
    v122 = 1;
  }

  else
  {
    v121[0] = 3;
    v135 = v127[0] + 8;
    v134 = 0;
    os_unfair_recursive_lock_lock_with_options();
    v121[1] = v135;
    v120[0] = 3;
    v133 = v127[0] + 16;
    v132 = 0;
    os_unfair_recursive_lock_lock_with_options();
    v120[1] = v133;
    if (*(v127[0] + 41))
    {
      v62 = [MEMORY[0x277D64B58] scanOperationLogger];
      v119 = [v62 oslog];
      MEMORY[0x277D82BD8](v62);
      v118 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
      {
        v60 = [v127[0] identifier];
        v61 = MEMORY[0x277D82BE0](v60);
        v117 = v61;
        v158 = *(v127[0] + 18);
        if (v158)
        {
          if (v158 == 1)
          {
            v159 = MEMORY[0x277D82BE0](@"F");
          }

          else if (v158 == 2)
          {
            v159 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v159 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v159 = MEMORY[0x277D82BE0](@"N");
        }

        v59 = v159;
        v1 = v159;
        v58 = v59;
        v116 = MEMORY[0x277D82BE0](v58);
        __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v169, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v61, v116, *(a1 + 32));
        _os_log_impl(&dword_26B0B9000, v119, v118, "%s [%{public}@|%{public}@]: Stop resolving %{public}@ because a previous action has already been failed", v169, 0x2Au);
        MEMORY[0x277D82BD8](v58);
        MEMORY[0x277D82BD8](v60);
        objc_storeStrong(&v116, 0);
        objc_storeStrong(&v117, 0);
      }

      objc_storeStrong(&v119, 0);
      if ([*(v127[0] + 19) containsObject:*(a1 + 32)])
      {
        v57 = [MEMORY[0x277D64B58] scanOperationLogger];
        v115 = [v57 oslog];
        MEMORY[0x277D82BD8](v57);
        v114 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
        {
          v55 = [v127[0] identifier];
          v56 = MEMORY[0x277D82BE0](v55);
          v113 = v56;
          v156 = *(v127[0] + 18);
          if (v156)
          {
            if (v156 == 1)
            {
              v157 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v156 == 2)
            {
              v157 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v157 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v157 = MEMORY[0x277D82BE0](@"N");
          }

          v54 = v157;
          v2 = v157;
          v53 = v54;
          v112 = MEMORY[0x277D82BE0](v53);
          __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v168, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v56, v112, *(a1 + 32));
          _os_log_debug_impl(&dword_26B0B9000, v115, v114, "%s [%{public}@|%{public}@]: Calling dispatch_group_leave for action %{public}@, and removing the entry from the set of running actions", v168, 0x2Au);
          MEMORY[0x277D82BD8](v53);
          MEMORY[0x277D82BD8](v55);
          objc_storeStrong(&v112, 0);
          objc_storeStrong(&v113, 0);
        }

        objc_storeStrong(&v115, 0);
        dispatch_group_leave(*(v127[0] + 16));
        [*(v127[0] + 19) removeObject:*(a1 + 32)];
      }

      else
      {
        v52 = [MEMORY[0x277D64B58] scanOperationLogger];
        v111 = [v52 oslog];
        MEMORY[0x277D82BD8](v52);
        v110 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
        {
          v50 = [v127[0] identifier];
          v51 = MEMORY[0x277D82BE0](v50);
          v109 = v51;
          v154 = *(v127[0] + 18);
          if (v154)
          {
            if (v154 == 1)
            {
              v155 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v154 == 2)
            {
              v155 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v155 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v155 = MEMORY[0x277D82BE0](@"N");
          }

          v49 = v155;
          v3 = v155;
          v48 = v49;
          v108 = MEMORY[0x277D82BE0](v48);
          __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v167, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v51, v108, *(a1 + 32));
          _os_log_error_impl(&dword_26B0B9000, v111, v110, "%s [%{public}@|%{public}@]: Ignoring request to call dispatch_group_leave for the action %{public}@, as the running actions set has no entry for this action anymore.", v167, 0x2Au);
          MEMORY[0x277D82BD8](v48);
          MEMORY[0x277D82BD8](v50);
          objc_storeStrong(&v108, 0);
          objc_storeStrong(&v109, 0);
        }

        objc_storeStrong(&v111, 0);
      }

      v122 = 1;
    }

    else if (*(v127[0] + 40))
    {
      v47 = [MEMORY[0x277D64B58] scanOperationLogger];
      v107 = [v47 oslog];
      MEMORY[0x277D82BD8](v47);
      v106 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
      {
        v45 = [v127[0] identifier];
        v46 = MEMORY[0x277D82BE0](v45);
        v105 = v46;
        v152 = *(v127[0] + 18);
        if (v152)
        {
          if (v152 == 1)
          {
            v153 = MEMORY[0x277D82BE0](@"F");
          }

          else if (v152 == 2)
          {
            v153 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v153 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v153 = MEMORY[0x277D82BE0](@"N");
        }

        v44 = v153;
        v4 = v153;
        v43 = v44;
        v104 = MEMORY[0x277D82BE0](v43);
        __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v166, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v46, v104, *(a1 + 32));
        _os_log_impl(&dword_26B0B9000, v107, v106, "%s [%{public}@|%{public}@]: The task has already been canceled. Stopping execution for %{public}@.", v166, 0x2Au);
        MEMORY[0x277D82BD8](v43);
        MEMORY[0x277D82BD8](v45);
        objc_storeStrong(&v104, 0);
        objc_storeStrong(&v105, 0);
      }

      objc_storeStrong(&v107, 0);
      if ([*(v127[0] + 19) containsObject:*(a1 + 32)])
      {
        v42 = [MEMORY[0x277D64B58] scanOperationLogger];
        v103 = [v42 oslog];
        MEMORY[0x277D82BD8](v42);
        v102 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
        {
          v40 = [v127[0] identifier];
          v41 = MEMORY[0x277D82BE0](v40);
          v101 = v41;
          v150 = *(v127[0] + 18);
          if (v150)
          {
            if (v150 == 1)
            {
              v151 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v150 == 2)
            {
              v151 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v151 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v151 = MEMORY[0x277D82BE0](@"N");
          }

          v39 = v151;
          v5 = v151;
          v38 = v39;
          v100 = MEMORY[0x277D82BE0](v38);
          __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v165, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v41, v100, *(a1 + 32));
          _os_log_debug_impl(&dword_26B0B9000, v103, v102, "%s [%{public}@|%{public}@]: Calling dispatch_group_leave for action %{public}@, and removing the entry from the set of running actions", v165, 0x2Au);
          MEMORY[0x277D82BD8](v38);
          MEMORY[0x277D82BD8](v40);
          objc_storeStrong(&v100, 0);
          objc_storeStrong(&v101, 0);
        }

        objc_storeStrong(&v103, 0);
        dispatch_group_leave(*(v127[0] + 16));
        [*(v127[0] + 19) removeObject:*(a1 + 32)];
      }

      else
      {
        v37 = [MEMORY[0x277D64B58] scanOperationLogger];
        v99 = [v37 oslog];
        MEMORY[0x277D82BD8](v37);
        v98 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
        {
          v35 = [v127[0] identifier];
          v36 = MEMORY[0x277D82BE0](v35);
          v97 = v36;
          v148 = *(v127[0] + 18);
          if (v148)
          {
            if (v148 == 1)
            {
              v149 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v148 == 2)
            {
              v149 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v149 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v149 = MEMORY[0x277D82BE0](@"N");
          }

          v34 = v149;
          v6 = v149;
          v33 = v34;
          v96 = MEMORY[0x277D82BE0](v33);
          __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v164, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v36, v96, *(a1 + 32));
          _os_log_error_impl(&dword_26B0B9000, v99, v98, "%s [%{public}@|%{public}@]: Ignoring request to call dispatch_group_leave for the action %{public}@, as the running actions set has no entry for this action anymore.", v164, 0x2Au);
          MEMORY[0x277D82BD8](v33);
          MEMORY[0x277D82BD8](v35);
          objc_storeStrong(&v96, 0);
          objc_storeStrong(&v97, 0);
        }

        objc_storeStrong(&v99, 0);
      }

      v122 = 1;
    }

    else
    {
      v122 = 12;
    }

    v139 = v120;
    switch(v120[0])
    {
      case 1:
        [v139[1] unlock];
        break;
      case 2:
        os_unfair_lock_unlock(v139[1]);
        break;
      case 3:
        os_unfair_recursive_lock_unlock();
        break;
    }

    if (v122 == 12)
    {
      v122 = 9;
    }

    v138 = v121;
    switch(v121[0])
    {
      case 1:
        [v138[1] unlock];
        break;
      case 2:
        os_unfair_lock_unlock(v138[1]);
        break;
      case 3:
        os_unfair_recursive_lock_unlock();
        break;
    }

    if (v122 == 9)
    {
      v32 = [*(a1 + 40) operationError];
      MEMORY[0x277D82BD8](v32);
      if (v32)
      {
        v95[0] = 3;
        v131 = v127[0] + 8;
        v130 = 0;
        os_unfair_recursive_lock_lock_with_options();
        v95[1] = v131;
        v94[0] = 3;
        v129 = v127[0] + 16;
        v128 = 0;
        os_unfair_recursive_lock_lock_with_options();
        v94[1] = v129;
        *(v127[0] + 41) = 1;
        if ([*(v127[0] + 19) containsObject:*(a1 + 32)])
        {
          v31 = [MEMORY[0x277D64B58] scanOperationLogger];
          v93 = [v31 oslog];
          MEMORY[0x277D82BD8](v31);
          v92 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
          {
            v29 = [v127[0] identifier];
            v30 = MEMORY[0x277D82BE0](v29);
            v91 = v30;
            v146 = *(v127[0] + 18);
            if (v146)
            {
              if (v146 == 1)
              {
                v147 = MEMORY[0x277D82BE0](@"F");
              }

              else if (v146 == 2)
              {
                v147 = MEMORY[0x277D82BE0](@"R");
              }

              else
              {
                v147 = MEMORY[0x277D82BE0](@"N/A");
              }
            }

            else
            {
              v147 = MEMORY[0x277D82BE0](@"N");
            }

            v28 = v147;
            v7 = v147;
            v27 = v28;
            v90 = MEMORY[0x277D82BE0](v27);
            __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v163, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v30, v90, *(a1 + 32));
            _os_log_debug_impl(&dword_26B0B9000, v93, v92, "%s [%{public}@|%{public}@]: Calling dispatch_group_leave for action %{public}@, and removing the entry from the set of running actions", v163, 0x2Au);
            MEMORY[0x277D82BD8](v27);
            MEMORY[0x277D82BD8](v29);
            objc_storeStrong(&v90, 0);
            objc_storeStrong(&v91, 0);
          }

          objc_storeStrong(&v93, 0);
          dispatch_group_leave(*(v127[0] + 16));
          [*(v127[0] + 19) removeObject:*(a1 + 32)];
        }

        else
        {
          v26 = [MEMORY[0x277D64B58] scanOperationLogger];
          v89 = [v26 oslog];
          MEMORY[0x277D82BD8](v26);
          v88 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
          {
            v24 = [v127[0] identifier];
            v25 = MEMORY[0x277D82BE0](v24);
            v87 = v25;
            v144 = *(v127[0] + 18);
            if (v144)
            {
              if (v144 == 1)
              {
                v145 = MEMORY[0x277D82BE0](@"F");
              }

              else if (v144 == 2)
              {
                v145 = MEMORY[0x277D82BE0](@"R");
              }

              else
              {
                v145 = MEMORY[0x277D82BE0](@"N/A");
              }
            }

            else
            {
              v145 = MEMORY[0x277D82BE0](@"N");
            }

            v23 = v145;
            v8 = v145;
            v22 = v23;
            v86 = MEMORY[0x277D82BE0](v22);
            __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v162, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v25, v86, *(a1 + 32));
            _os_log_error_impl(&dword_26B0B9000, v89, v88, "%s [%{public}@|%{public}@]: Ignoring request to call dispatch_group_leave for the action %{public}@, as the running actions set has no entry for this action anymore.", v162, 0x2Au);
            MEMORY[0x277D82BD8](v22);
            MEMORY[0x277D82BD8](v24);
            objc_storeStrong(&v86, 0);
            objc_storeStrong(&v87, 0);
          }

          objc_storeStrong(&v89, 0);
        }

        v122 = 34;
        v137 = v94;
        switch(v94[0])
        {
          case 1:
            [v137[1] unlock];
            break;
          case 2:
            os_unfair_lock_unlock(v137[1]);
            break;
          case 3:
            os_unfair_recursive_lock_unlock();
            break;
        }

        v122 = 31;
        v136 = v95;
        switch(v95[0])
        {
          case 1:
            [v136[1] unlock];
            break;
          case 2:
            os_unfair_lock_unlock(v136[1]);
            break;
          case 3:
            os_unfair_recursive_lock_unlock();
            break;
        }

        v21 = [MEMORY[0x277D64B58] scanOperationLogger];
        v85 = [v21 oslog];
        MEMORY[0x277D82BD8](v21);
        v84 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [v127[0] identifier];
          v20 = MEMORY[0x277D82BE0](v19);
          v83 = v20;
          v142 = *(v127[0] + 18);
          if (v142)
          {
            if (v142 == 1)
            {
              v143 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v142 == 2)
            {
              v143 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v143 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v143 = MEMORY[0x277D82BE0](@"N");
          }

          v18 = v143;
          v9 = v143;
          v17 = v18;
          v82 = MEMORY[0x277D82BE0](v17);
          v16 = [*(a1 + 40) operationError];
          __os_log_helper_16_2_5_8_32_8_66_8_66_8_66_8_66(v161, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v20, v82, v16, *(a1 + 32));
          _os_log_impl(&dword_26B0B9000, v85, v84, "%s [%{public}@|%{public}@]: There's a previous operation error (%{public}@). Skipping on the execution of: %{public}@", v161, 0x34u);
          MEMORY[0x277D82BD8](v16);
          MEMORY[0x277D82BD8](v17);
          MEMORY[0x277D82BD8](v19);
          objc_storeStrong(&v82, 0);
          objc_storeStrong(&v83, 0);
        }

        objc_storeStrong(&v85, 0);
        v122 = 1;
      }

      else
      {
        v81 = [v127[0] methodSignatureForSelector:*(a1 + 64)];
        v80 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v81];
        [v80 setTarget:v127[0]];
        [v80 setSelector:*(a1 + 64)];
        [v80 setArgument:a1 + 40 atIndex:2];
        v15 = [MEMORY[0x277D64B58] scanOperationLogger];
        v79 = [v15 oslog];
        MEMORY[0x277D82BD8](v15);
        v78 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v127[0] identifier];
          v14 = MEMORY[0x277D82BE0](v13);
          v77 = v14;
          v140 = *(v127[0] + 18);
          if (v140)
          {
            if (v140 == 1)
            {
              v141 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v140 == 2)
            {
              v141 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v141 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v141 = MEMORY[0x277D82BE0](@"N");
          }

          v12 = v141;
          v10 = v141;
          v11 = v12;
          v76 = MEMORY[0x277D82BE0](v11);
          __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v160, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v14, v76, *(a1 + 32));
          _os_log_impl(&dword_26B0B9000, v79, v78, "%s [%{public}@|%{public}@]: Starting to execute concurrent action: %{public}@", v160, 0x2Au);
          MEMORY[0x277D82BD8](v11);
          MEMORY[0x277D82BD8](v13);
          objc_storeStrong(&v76, 0);
          objc_storeStrong(&v77, 0);
        }

        objc_storeStrong(&v79, 0);
        v67 = MEMORY[0x277D85DD0];
        v68 = -1073741824;
        v69 = 0;
        v70 = __74__SUUIMobileScanOperation_scheduleConcurrentActionWithSelector_eventInfo___block_invoke_403;
        v71 = &unk_279CCC850;
        objc_copyWeak(v74, (a1 + 48));
        v74[1] = *(a1 + 56);
        v72 = MEMORY[0x277D82BE0](*(a1 + 32));
        v73 = MEMORY[0x277D82BE0](*(a1 + 40));
        v75 = MEMORY[0x26D66ED00](&v67);
        [v80 setArgument:&v75 atIndex:3];
        [v80 invoke];
        objc_storeStrong(&v75, 0);
        objc_storeStrong(&v73, 0);
        objc_storeStrong(&v72, 0);
        objc_destroyWeak(v74);
        objc_storeStrong(&v80, 0);
        objc_storeStrong(&v81, 0);
        v122 = 0;
      }
    }
  }

  objc_storeStrong(v127, 0);
}

void __74__SUUIMobileScanOperation_scheduleConcurrentActionWithSelector_eventInfo___block_invoke_403(uint64_t a1, char a2, id obj)
{
  v114 = *MEMORY[0x277D85DE8];
  v88 = a1;
  v87 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v85[1] = a1;
  v85[0] = objc_loadWeakRetained((a1 + 48));
  v42 = 0;
  if (!v85[0])
  {
    v41 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    oslog = [v41 oslog];
    MEMORY[0x277D82BD8](v41);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v40 = NSStringFromSelector(*(a1 + 56));
      v82 = MEMORY[0x277D82BE0](v40);
      __os_log_helper_16_2_2_8_32_8_66(v113, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v82);
      _os_log_error_impl(&dword_26B0B9000, oslog, type, "%s: Self is nil in %{public}@. Stopping.", v113, 0x16u);
      MEMORY[0x277D82BD8](v40);
      objc_storeStrong(&v82, 0);
    }

    objc_storeStrong(&oslog, 0);
    v81 = 1;
    v42 = 1;
  }

  if (v42)
  {
    v80 = 1;
  }

  else
  {
    v79[0] = 3;
    v92 = v85[0] + 8;
    v91 = 0;
    os_unfair_recursive_lock_lock_with_options();
    v79[1] = v92;
    v78[0] = 3;
    v90 = v85[0] + 16;
    v89 = 0;
    os_unfair_recursive_lock_lock_with_options();
    v78[1] = v90;
    if (*(v85[0] + 41))
    {
      v39 = [MEMORY[0x277D64B58] scanOperationLogger];
      v77 = [v39 oslog];
      MEMORY[0x277D82BD8](v39);
      v76 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        v37 = [v85[0] identifier];
        v38 = MEMORY[0x277D82BE0](v37);
        v75 = v38;
        v105 = *(v85[0] + 18);
        if (v105)
        {
          if (v105 == 1)
          {
            v106 = MEMORY[0x277D82BE0](@"F");
          }

          else if (v105 == 2)
          {
            v106 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v106 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v106 = MEMORY[0x277D82BE0](@"N");
        }

        v36 = v106;
        v3 = v106;
        v35 = v36;
        v74 = MEMORY[0x277D82BE0](v35);
        __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v112, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v38, v74, *(a1 + 32));
        _os_log_impl(&dword_26B0B9000, v77, v76, "%s [%{public}@|%{public}@]: Stop resolving %{public}@ because a previous action has already been failed", v112, 0x2Au);
        MEMORY[0x277D82BD8](v35);
        MEMORY[0x277D82BD8](v37);
        objc_storeStrong(&v74, 0);
        objc_storeStrong(&v75, 0);
      }

      objc_storeStrong(&v77, 0);
      if ([*(v85[0] + 19) containsObject:*(a1 + 32)])
      {
        v34 = [MEMORY[0x277D64B58] scanOperationLogger];
        v73 = [v34 oslog];
        MEMORY[0x277D82BD8](v34);
        v72 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
        {
          v32 = [v85[0] identifier];
          v33 = MEMORY[0x277D82BE0](v32);
          v71 = v33;
          v103 = *(v85[0] + 18);
          if (v103)
          {
            if (v103 == 1)
            {
              v104 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v103 == 2)
            {
              v104 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v104 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v104 = MEMORY[0x277D82BE0](@"N");
          }

          v31 = v104;
          v4 = v104;
          v30 = v31;
          v70 = MEMORY[0x277D82BE0](v30);
          __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v111, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v33, v70, *(a1 + 32));
          _os_log_debug_impl(&dword_26B0B9000, v73, v72, "%s [%{public}@|%{public}@]: Calling dispatch_group_leave for action %{public}@, and removing the entry from the set of running actions", v111, 0x2Au);
          MEMORY[0x277D82BD8](v30);
          MEMORY[0x277D82BD8](v32);
          objc_storeStrong(&v70, 0);
          objc_storeStrong(&v71, 0);
        }

        objc_storeStrong(&v73, 0);
        dispatch_group_leave(*(v85[0] + 16));
        [*(v85[0] + 19) removeObject:*(a1 + 32)];
      }

      else
      {
        v29 = [MEMORY[0x277D64B58] scanOperationLogger];
        v69 = [v29 oslog];
        MEMORY[0x277D82BD8](v29);
        v68 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          v27 = [v85[0] identifier];
          v28 = MEMORY[0x277D82BE0](v27);
          v67 = v28;
          v101 = *(v85[0] + 18);
          if (v101)
          {
            if (v101 == 1)
            {
              v102 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v101 == 2)
            {
              v102 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v102 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v102 = MEMORY[0x277D82BE0](@"N");
          }

          v26 = v102;
          v5 = v102;
          v25 = v26;
          v66 = MEMORY[0x277D82BE0](v25);
          __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v110, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v28, v66, *(a1 + 32));
          _os_log_error_impl(&dword_26B0B9000, v69, v68, "%s [%{public}@|%{public}@]: Ignoring request to call dispatch_group_leave for the action %{public}@, as the running actions set has no entry for this action anymore.", v110, 0x2Au);
          MEMORY[0x277D82BD8](v25);
          MEMORY[0x277D82BD8](v27);
          objc_storeStrong(&v66, 0);
          objc_storeStrong(&v67, 0);
        }

        objc_storeStrong(&v69, 0);
      }

      v80 = 1;
    }

    else if (*(v85[0] + 40))
    {
      v24 = [MEMORY[0x277D64B58] scanOperationLogger];
      v65 = [v24 oslog];
      MEMORY[0x277D82BD8](v24);
      v64 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v85[0] identifier];
        v23 = MEMORY[0x277D82BE0](v22);
        v63 = v23;
        v99 = *(v85[0] + 18);
        if (v99)
        {
          if (v99 == 1)
          {
            v100 = MEMORY[0x277D82BE0](@"F");
          }

          else if (v99 == 2)
          {
            v100 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v100 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v100 = MEMORY[0x277D82BE0](@"N");
        }

        v21 = v100;
        v6 = v100;
        v20 = v21;
        v62 = MEMORY[0x277D82BE0](v20);
        __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v109, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v23, v62, *(a1 + 32));
        _os_log_impl(&dword_26B0B9000, v65, v64, "%s [%{public}@|%{public}@]: The task has already been canceled. Stopping execution for %{public}@.", v109, 0x2Au);
        MEMORY[0x277D82BD8](v20);
        MEMORY[0x277D82BD8](v22);
        objc_storeStrong(&v62, 0);
        objc_storeStrong(&v63, 0);
      }

      objc_storeStrong(&v65, 0);
      if ([*(v85[0] + 19) containsObject:*(a1 + 32)])
      {
        v19 = [MEMORY[0x277D64B58] scanOperationLogger];
        v61 = [v19 oslog];
        MEMORY[0x277D82BD8](v19);
        v60 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
        {
          v17 = [v85[0] identifier];
          v18 = MEMORY[0x277D82BE0](v17);
          v59 = v18;
          v97 = *(v85[0] + 18);
          if (v97)
          {
            if (v97 == 1)
            {
              v98 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v97 == 2)
            {
              v98 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v98 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v98 = MEMORY[0x277D82BE0](@"N");
          }

          v16 = v98;
          v7 = v98;
          v15 = v16;
          v58 = MEMORY[0x277D82BE0](v15);
          __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v108, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v18, v58, *(a1 + 32));
          _os_log_debug_impl(&dword_26B0B9000, v61, v60, "%s [%{public}@|%{public}@]: Calling dispatch_group_leave for action %{public}@, and removing the entry from the set of running actions", v108, 0x2Au);
          MEMORY[0x277D82BD8](v15);
          MEMORY[0x277D82BD8](v17);
          objc_storeStrong(&v58, 0);
          objc_storeStrong(&v59, 0);
        }

        objc_storeStrong(&v61, 0);
        dispatch_group_leave(*(v85[0] + 16));
        [*(v85[0] + 19) removeObject:*(a1 + 32)];
      }

      else
      {
        v14 = [MEMORY[0x277D64B58] scanOperationLogger];
        v57 = [v14 oslog];
        MEMORY[0x277D82BD8](v14);
        v56 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v12 = [v85[0] identifier];
          v13 = MEMORY[0x277D82BE0](v12);
          v55 = v13;
          v95 = *(v85[0] + 18);
          if (v95)
          {
            if (v95 == 1)
            {
              v96 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v95 == 2)
            {
              v96 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v96 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v96 = MEMORY[0x277D82BE0](@"N");
          }

          v11 = v96;
          v8 = v96;
          v10 = v11;
          v54 = MEMORY[0x277D82BE0](v10);
          __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v107, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v13, v54, *(a1 + 32));
          _os_log_error_impl(&dword_26B0B9000, v57, v56, "%s [%{public}@|%{public}@]: Ignoring request to call dispatch_group_leave for the action %{public}@, as the running actions set has no entry for this action anymore.", v107, 0x2Au);
          MEMORY[0x277D82BD8](v10);
          MEMORY[0x277D82BD8](v12);
          objc_storeStrong(&v54, 0);
          objc_storeStrong(&v55, 0);
        }

        objc_storeStrong(&v57, 0);
      }

      v80 = 1;
    }

    else
    {
      v80 = 12;
    }

    v94 = v78;
    switch(v78[0])
    {
      case 1:
        [v94[1] unlock];
        break;
      case 2:
        os_unfair_lock_unlock(v94[1]);
        break;
      case 3:
        os_unfair_recursive_lock_unlock();
        break;
    }

    if (v80 == 12)
    {
      v80 = 9;
    }

    v93 = v79;
    switch(v79[0])
    {
      case 1:
        [v93[1] unlock];
        break;
      case 2:
        os_unfair_lock_unlock(v93[1]);
        break;
      case 3:
        os_unfair_recursive_lock_unlock();
        break;
    }

    if (v80 == 9)
    {
      queue = *(v85[0] + 17);
      v44 = MEMORY[0x277D85DD0];
      v45 = -1073741824;
      v46 = 0;
      v47 = __74__SUUIMobileScanOperation_scheduleConcurrentActionWithSelector_eventInfo___block_invoke_404;
      v48 = &unk_279CCCDD0;
      objc_copyWeak(v52, (a1 + 48));
      v52[1] = *(a1 + 56);
      v49 = MEMORY[0x277D82BE0](*(a1 + 32));
      v53 = v87 & 1;
      v50 = MEMORY[0x277D82BE0](location);
      v51 = MEMORY[0x277D82BE0](*(a1 + 40));
      dispatch_async(queue, &v44);
      objc_storeStrong(&v51, 0);
      objc_storeStrong(&v50, 0);
      objc_storeStrong(&v49, 0);
      objc_destroyWeak(v52);
      v80 = 0;
    }
  }

  objc_storeStrong(v85, 0);
  if (!v80)
  {
    v80 = 0;
  }

  objc_storeStrong(&location, 0);
}

void __74__SUUIMobileScanOperation_scheduleConcurrentActionWithSelector_eventInfo___block_invoke_404(uint64_t a1)
{
  v227 = *MEMORY[0x277D85DE8];
  v161[2] = a1;
  v161[1] = a1;
  v161[0] = objc_loadWeakRetained((a1 + 56));
  v91 = 0;
  if (!v161[0])
  {
    v90 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    oslog = [v90 oslog];
    MEMORY[0x277D82BD8](v90);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v89 = NSStringFromSelector(*(a1 + 64));
      location = MEMORY[0x277D82BE0](v89);
      __os_log_helper_16_2_2_8_32_8_66(v226, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", location);
      _os_log_error_impl(&dword_26B0B9000, oslog, type, "%s: Self is nil in %{public}@. Stopping.", v226, 0x16u);
      MEMORY[0x277D82BD8](v89);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&oslog, 0);
    v157 = 1;
    v91 = 1;
  }

  if (v91)
  {
    v156 = 1;
  }

  else
  {
    v155[0] = 3;
    v177 = v161[0] + 8;
    v176 = 0;
    os_unfair_recursive_lock_lock_with_options();
    v155[1] = v177;
    v154[0] = 3;
    v175 = v161[0] + 16;
    v174 = 0;
    os_unfair_recursive_lock_lock_with_options();
    v154[1] = v175;
    if (*(v161[0] + 41))
    {
      v88 = [MEMORY[0x277D64B58] scanOperationLogger];
      v153 = [v88 oslog];
      MEMORY[0x277D82BD8](v88);
      v152 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
      {
        v86 = [v161[0] identifier];
        v87 = MEMORY[0x277D82BE0](v86);
        v151 = v87;
        v210 = *(v161[0] + 18);
        if (v210)
        {
          if (v210 == 1)
          {
            v211 = MEMORY[0x277D82BE0](@"F");
          }

          else if (v210 == 2)
          {
            v211 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v211 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v211 = MEMORY[0x277D82BE0](@"N");
        }

        v85 = v211;
        v1 = v211;
        v84 = v85;
        v150 = MEMORY[0x277D82BE0](v84);
        __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v225, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v87, v150, *(a1 + 32));
        _os_log_impl(&dword_26B0B9000, v153, v152, "%s [%{public}@|%{public}@]: Stop resolving %{public}@ because a previous action has already been failed", v225, 0x2Au);
        MEMORY[0x277D82BD8](v84);
        MEMORY[0x277D82BD8](v86);
        objc_storeStrong(&v150, 0);
        objc_storeStrong(&v151, 0);
      }

      objc_storeStrong(&v153, 0);
      if ([*(v161[0] + 19) containsObject:*(a1 + 32)])
      {
        v83 = [MEMORY[0x277D64B58] scanOperationLogger];
        v149 = [v83 oslog];
        MEMORY[0x277D82BD8](v83);
        v148 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v149, OS_LOG_TYPE_DEBUG))
        {
          v81 = [v161[0] identifier];
          v82 = MEMORY[0x277D82BE0](v81);
          v147 = v82;
          v208 = *(v161[0] + 18);
          if (v208)
          {
            if (v208 == 1)
            {
              v209 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v208 == 2)
            {
              v209 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v209 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v209 = MEMORY[0x277D82BE0](@"N");
          }

          v80 = v209;
          v2 = v209;
          v79 = v80;
          v146 = MEMORY[0x277D82BE0](v79);
          __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v224, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v82, v146, *(a1 + 32));
          _os_log_debug_impl(&dword_26B0B9000, v149, v148, "%s [%{public}@|%{public}@]: Calling dispatch_group_leave for action %{public}@, and removing the entry from the set of running actions", v224, 0x2Au);
          MEMORY[0x277D82BD8](v79);
          MEMORY[0x277D82BD8](v81);
          objc_storeStrong(&v146, 0);
          objc_storeStrong(&v147, 0);
        }

        objc_storeStrong(&v149, 0);
        dispatch_group_leave(*(v161[0] + 16));
        [*(v161[0] + 19) removeObject:*(a1 + 32)];
      }

      else
      {
        v78 = [MEMORY[0x277D64B58] scanOperationLogger];
        v145 = [v78 oslog];
        MEMORY[0x277D82BD8](v78);
        v144 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
        {
          v76 = [v161[0] identifier];
          v77 = MEMORY[0x277D82BE0](v76);
          v143 = v77;
          v206 = *(v161[0] + 18);
          if (v206)
          {
            if (v206 == 1)
            {
              v207 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v206 == 2)
            {
              v207 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v207 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v207 = MEMORY[0x277D82BE0](@"N");
          }

          v75 = v207;
          v3 = v207;
          v74 = v75;
          v142 = MEMORY[0x277D82BE0](v74);
          __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v223, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v77, v142, *(a1 + 32));
          _os_log_error_impl(&dword_26B0B9000, v145, v144, "%s [%{public}@|%{public}@]: Ignoring request to call dispatch_group_leave for the action %{public}@, as the running actions set has no entry for this action anymore.", v223, 0x2Au);
          MEMORY[0x277D82BD8](v74);
          MEMORY[0x277D82BD8](v76);
          objc_storeStrong(&v142, 0);
          objc_storeStrong(&v143, 0);
        }

        objc_storeStrong(&v145, 0);
      }

      v156 = 1;
    }

    else if (*(v161[0] + 40))
    {
      v73 = [MEMORY[0x277D64B58] scanOperationLogger];
      v141 = [v73 oslog];
      MEMORY[0x277D82BD8](v73);
      v140 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
      {
        v71 = [v161[0] identifier];
        v72 = MEMORY[0x277D82BE0](v71);
        v139 = v72;
        v204 = *(v161[0] + 18);
        if (v204)
        {
          if (v204 == 1)
          {
            v205 = MEMORY[0x277D82BE0](@"F");
          }

          else if (v204 == 2)
          {
            v205 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v205 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v205 = MEMORY[0x277D82BE0](@"N");
        }

        v70 = v205;
        v4 = v205;
        v69 = v70;
        v138 = MEMORY[0x277D82BE0](v69);
        __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v222, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v72, v138, *(a1 + 32));
        _os_log_impl(&dword_26B0B9000, v141, v140, "%s [%{public}@|%{public}@]: The task has already been canceled. Stopping execution for %{public}@.", v222, 0x2Au);
        MEMORY[0x277D82BD8](v69);
        MEMORY[0x277D82BD8](v71);
        objc_storeStrong(&v138, 0);
        objc_storeStrong(&v139, 0);
      }

      objc_storeStrong(&v141, 0);
      if ([*(v161[0] + 19) containsObject:*(a1 + 32)])
      {
        v68 = [MEMORY[0x277D64B58] scanOperationLogger];
        v137 = [v68 oslog];
        MEMORY[0x277D82BD8](v68);
        v136 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(v137, OS_LOG_TYPE_DEBUG))
        {
          v66 = [v161[0] identifier];
          v67 = MEMORY[0x277D82BE0](v66);
          v135 = v67;
          v202 = *(v161[0] + 18);
          if (v202)
          {
            if (v202 == 1)
            {
              v203 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v202 == 2)
            {
              v203 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v203 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v203 = MEMORY[0x277D82BE0](@"N");
          }

          v65 = v203;
          v5 = v203;
          v64 = v65;
          v134 = MEMORY[0x277D82BE0](v64);
          __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v221, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v67, v134, *(a1 + 32));
          _os_log_debug_impl(&dword_26B0B9000, v137, v136, "%s [%{public}@|%{public}@]: Calling dispatch_group_leave for action %{public}@, and removing the entry from the set of running actions", v221, 0x2Au);
          MEMORY[0x277D82BD8](v64);
          MEMORY[0x277D82BD8](v66);
          objc_storeStrong(&v134, 0);
          objc_storeStrong(&v135, 0);
        }

        objc_storeStrong(&v137, 0);
        dispatch_group_leave(*(v161[0] + 16));
        [*(v161[0] + 19) removeObject:*(a1 + 32)];
      }

      else
      {
        v63 = [MEMORY[0x277D64B58] scanOperationLogger];
        v133 = [v63 oslog];
        MEMORY[0x277D82BD8](v63);
        v132 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
        {
          v61 = [v161[0] identifier];
          v62 = MEMORY[0x277D82BE0](v61);
          v131 = v62;
          v200 = *(v161[0] + 18);
          if (v200)
          {
            if (v200 == 1)
            {
              v201 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v200 == 2)
            {
              v201 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v201 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v201 = MEMORY[0x277D82BE0](@"N");
          }

          v60 = v201;
          v6 = v201;
          v59 = v60;
          v130 = MEMORY[0x277D82BE0](v59);
          __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v220, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v62, v130, *(a1 + 32));
          _os_log_error_impl(&dword_26B0B9000, v133, v132, "%s [%{public}@|%{public}@]: Ignoring request to call dispatch_group_leave for the action %{public}@, as the running actions set has no entry for this action anymore.", v220, 0x2Au);
          MEMORY[0x277D82BD8](v59);
          MEMORY[0x277D82BD8](v61);
          objc_storeStrong(&v130, 0);
          objc_storeStrong(&v131, 0);
        }

        objc_storeStrong(&v133, 0);
      }

      v156 = 1;
    }

    else
    {
      v156 = 12;
    }

    v185 = v154;
    switch(v154[0])
    {
      case 1:
        [v185[1] unlock];
        break;
      case 2:
        os_unfair_lock_unlock(v185[1]);
        break;
      case 3:
        os_unfair_recursive_lock_unlock();
        break;
    }

    if (v156 == 12)
    {
      v156 = 9;
    }

    v184 = v155;
    switch(v155[0])
    {
      case 1:
        [v184[1] unlock];
        break;
      case 2:
        os_unfair_lock_unlock(v184[1]);
        break;
      case 3:
        os_unfair_recursive_lock_unlock();
        break;
    }

    if (v156 == 9)
    {
      v58 = [MEMORY[0x277D64B58] scanOperationLogger];
      v129 = [v58 oslog];
      MEMORY[0x277D82BD8](v58);
      v128 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
      {
        v56 = [v161[0] identifier];
        v57 = MEMORY[0x277D82BE0](v56);
        v127 = v57;
        v198 = *(v161[0] + 18);
        if (v198)
        {
          if (v198 == 1)
          {
            v199 = MEMORY[0x277D82BE0](@"F");
          }

          else if (v198 == 2)
          {
            v199 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v199 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v199 = MEMORY[0x277D82BE0](@"N");
        }

        v55 = v199;
        v7 = v199;
        v51 = v55;
        v52 = MEMORY[0x277D82BE0](v51);
        v126 = v52;
        v53 = *(a1 + 32);
        v212 = *(a1 + 72) & 1;
        if (v212)
        {
          v8 = @"YES";
        }

        else
        {
          v8 = @"NO";
        }

        v54 = v8;
        v9 = v8;
        v49 = v54;
        v125 = MEMORY[0x277D82BE0](v49);
        v50 = *(a1 + 40);
        v48 = [*(a1 + 48) operationError];
        __os_log_helper_16_2_7_8_32_8_66_8_66_8_66_8_66_8_66_8_66(v219, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v57, v52, v53, v125, v50, v48);
        _os_log_impl(&dword_26B0B9000, v129, v128, "%s [%{public}@|%{public}@]: Concurrent operation %{public}@ has been finished. Success: %{public}@; error: %{public}@. Previous error: %{public}@", v219, 0x48u);
        MEMORY[0x277D82BD8](v48);
        MEMORY[0x277D82BD8](v49);
        MEMORY[0x277D82BD8](v51);
        MEMORY[0x277D82BD8](v56);
        objc_storeStrong(&v125, 0);
        objc_storeStrong(&v126, 0);
        objc_storeStrong(&v127, 0);
      }

      objc_storeStrong(&v129, 0);
      v47 = [*(a1 + 48) operationError];
      MEMORY[0x277D82BD8](v47);
      if (v47)
      {
        v124[0] = 3;
        v173 = v161[0] + 8;
        v172 = 0;
        os_unfair_recursive_lock_lock_with_options();
        v124[1] = v173;
        v123[0] = 3;
        v171 = v161[0] + 16;
        v170 = 0;
        os_unfair_recursive_lock_lock_with_options();
        v123[1] = v171;
        *(v161[0] + 41) = 1;
        if ([*(v161[0] + 19) containsObject:*(a1 + 32)])
        {
          v46 = [MEMORY[0x277D64B58] scanOperationLogger];
          v122 = [v46 oslog];
          MEMORY[0x277D82BD8](v46);
          v121 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v122, OS_LOG_TYPE_DEBUG))
          {
            v44 = [v161[0] identifier];
            v45 = MEMORY[0x277D82BE0](v44);
            v120 = v45;
            v196 = *(v161[0] + 18);
            if (v196)
            {
              if (v196 == 1)
              {
                v197 = MEMORY[0x277D82BE0](@"F");
              }

              else if (v196 == 2)
              {
                v197 = MEMORY[0x277D82BE0](@"R");
              }

              else
              {
                v197 = MEMORY[0x277D82BE0](@"N/A");
              }
            }

            else
            {
              v197 = MEMORY[0x277D82BE0](@"N");
            }

            v43 = v197;
            v10 = v197;
            v42 = v43;
            v119 = MEMORY[0x277D82BE0](v42);
            __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v218, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v45, v119, *(a1 + 32));
            _os_log_debug_impl(&dword_26B0B9000, v122, v121, "%s [%{public}@|%{public}@]: Calling dispatch_group_leave for action %{public}@, and removing the entry from the set of running actions", v218, 0x2Au);
            MEMORY[0x277D82BD8](v42);
            MEMORY[0x277D82BD8](v44);
            objc_storeStrong(&v119, 0);
            objc_storeStrong(&v120, 0);
          }

          objc_storeStrong(&v122, 0);
          dispatch_group_leave(*(v161[0] + 16));
          [*(v161[0] + 19) removeObject:*(a1 + 32)];
        }

        else
        {
          v41 = [MEMORY[0x277D64B58] scanOperationLogger];
          v118 = [v41 oslog];
          MEMORY[0x277D82BD8](v41);
          v117 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
          {
            v39 = [v161[0] identifier];
            v40 = MEMORY[0x277D82BE0](v39);
            v116 = v40;
            v194 = *(v161[0] + 18);
            if (v194)
            {
              if (v194 == 1)
              {
                v195 = MEMORY[0x277D82BE0](@"F");
              }

              else if (v194 == 2)
              {
                v195 = MEMORY[0x277D82BE0](@"R");
              }

              else
              {
                v195 = MEMORY[0x277D82BE0](@"N/A");
              }
            }

            else
            {
              v195 = MEMORY[0x277D82BE0](@"N");
            }

            v38 = v195;
            v11 = v195;
            v37 = v38;
            v115 = MEMORY[0x277D82BE0](v37);
            __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v217, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v40, v115, *(a1 + 32));
            _os_log_error_impl(&dword_26B0B9000, v118, v117, "%s [%{public}@|%{public}@]: Ignoring request to call dispatch_group_leave for the action %{public}@, as the running actions set has no entry for this action anymore.", v217, 0x2Au);
            MEMORY[0x277D82BD8](v37);
            MEMORY[0x277D82BD8](v39);
            objc_storeStrong(&v115, 0);
            objc_storeStrong(&v116, 0);
          }

          objc_storeStrong(&v118, 0);
        }

        v156 = 36;
        v183 = v123;
        switch(v123[0])
        {
          case 1:
            [v183[1] unlock];
            break;
          case 2:
            os_unfair_lock_unlock(v183[1]);
            break;
          case 3:
            os_unfair_recursive_lock_unlock();
            break;
        }

        v156 = 33;
        v182 = v124;
        switch(v124[0])
        {
          case 1:
            [v182[1] unlock];
            break;
          case 2:
            os_unfair_lock_unlock(v182[1]);
            break;
          case 3:
            os_unfair_recursive_lock_unlock();
            break;
        }

        v156 = 1;
      }

      else if (*(a1 + 72))
      {
        v102[0] = 3;
        v165 = v161[0] + 8;
        v164 = 0;
        os_unfair_recursive_lock_lock_with_options();
        v102[1] = v165;
        v101[0] = 3;
        v163 = v161[0] + 16;
        v162 = 0;
        os_unfair_recursive_lock_lock_with_options();
        v101[1] = v163;
        if ([*(v161[0] + 19) containsObject:*(a1 + 32)])
        {
          v25 = [MEMORY[0x277D64B58] scanOperationLogger];
          v100 = [v25 oslog];
          MEMORY[0x277D82BD8](v25);
          v99 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
          {
            v23 = [v161[0] identifier];
            v24 = MEMORY[0x277D82BE0](v23);
            v98 = v24;
            v188 = *(v161[0] + 18);
            if (v188)
            {
              if (v188 == 1)
              {
                v189 = MEMORY[0x277D82BE0](@"F");
              }

              else if (v188 == 2)
              {
                v189 = MEMORY[0x277D82BE0](@"R");
              }

              else
              {
                v189 = MEMORY[0x277D82BE0](@"N/A");
              }
            }

            else
            {
              v189 = MEMORY[0x277D82BE0](@"N");
            }

            v22 = v189;
            v14 = v189;
            v21 = v22;
            v97 = MEMORY[0x277D82BE0](v21);
            __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v214, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v24, v97, *(a1 + 32));
            _os_log_debug_impl(&dword_26B0B9000, v100, v99, "%s [%{public}@|%{public}@]: Calling dispatch_group_leave for action %{public}@, and removing the entry from the set of running actions", v214, 0x2Au);
            MEMORY[0x277D82BD8](v21);
            MEMORY[0x277D82BD8](v23);
            objc_storeStrong(&v97, 0);
            objc_storeStrong(&v98, 0);
          }

          objc_storeStrong(&v100, 0);
          dispatch_group_leave(*(v161[0] + 16));
          [*(v161[0] + 19) removeObject:*(a1 + 32)];
        }

        else
        {
          v20 = [MEMORY[0x277D64B58] scanOperationLogger];
          v96 = [v20 oslog];
          MEMORY[0x277D82BD8](v20);
          v95 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
          {
            v18 = [v161[0] identifier];
            v19 = MEMORY[0x277D82BE0](v18);
            v94 = v19;
            v186 = *(v161[0] + 18);
            if (v186)
            {
              if (v186 == 1)
              {
                v187 = MEMORY[0x277D82BE0](@"F");
              }

              else if (v186 == 2)
              {
                v187 = MEMORY[0x277D82BE0](@"R");
              }

              else
              {
                v187 = MEMORY[0x277D82BE0](@"N/A");
              }
            }

            else
            {
              v187 = MEMORY[0x277D82BE0](@"N");
            }

            v17 = v187;
            v15 = v187;
            v16 = v17;
            v93 = MEMORY[0x277D82BE0](v16);
            __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v213, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v19, v93, *(a1 + 32));
            _os_log_error_impl(&dword_26B0B9000, v96, v95, "%s [%{public}@|%{public}@]: Ignoring request to call dispatch_group_leave for the action %{public}@, as the running actions set has no entry for this action anymore.", v213, 0x2Au);
            MEMORY[0x277D82BD8](v16);
            MEMORY[0x277D82BD8](v18);
            objc_storeStrong(&v93, 0);
            objc_storeStrong(&v94, 0);
          }

          objc_storeStrong(&v96, 0);
        }

        v156 = 60;
        v179 = v101;
        switch(v101[0])
        {
          case 1:
            [v179[1] unlock];
            break;
          case 2:
            os_unfair_lock_unlock(v179[1]);
            break;
          case 3:
            os_unfair_recursive_lock_unlock();
            break;
        }

        v156 = 57;
        v178 = v102;
        switch(v102[0])
        {
          case 1:
            [v178[1] unlock];
            break;
          case 2:
            os_unfair_lock_unlock(v178[1]);
            break;
          case 3:
            os_unfair_recursive_lock_unlock();
            break;
        }

        v156 = 0;
      }

      else
      {
        v114[0] = 3;
        v169 = v161[0] + 8;
        v168 = 0;
        os_unfair_recursive_lock_lock_with_options();
        v114[1] = v169;
        v113[0] = 3;
        v167 = v161[0] + 16;
        v166 = 0;
        os_unfair_recursive_lock_lock_with_options();
        v113[1] = v167;
        *(v161[0] + 41) = 1;
        v36 = *(a1 + 40);
        v111 = 0;
        if (v36)
        {
          [*(a1 + 48) setOperationError:v36];
        }

        else
        {
          v112 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64C28] code:0 userInfo:0];
          v111 = 1;
          [*(a1 + 48) setOperationError:v112];
        }

        if (v111)
        {
          MEMORY[0x277D82BD8](v112);
        }

        if ([*(v161[0] + 19) containsObject:*(a1 + 32)])
        {
          v35 = [MEMORY[0x277D64B58] scanOperationLogger];
          v110 = [v35 oslog];
          MEMORY[0x277D82BD8](v35);
          v109 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
          {
            v33 = [v161[0] identifier];
            v34 = MEMORY[0x277D82BE0](v33);
            v108 = v34;
            v192 = *(v161[0] + 18);
            if (v192)
            {
              if (v192 == 1)
              {
                v193 = MEMORY[0x277D82BE0](@"F");
              }

              else if (v192 == 2)
              {
                v193 = MEMORY[0x277D82BE0](@"R");
              }

              else
              {
                v193 = MEMORY[0x277D82BE0](@"N/A");
              }
            }

            else
            {
              v193 = MEMORY[0x277D82BE0](@"N");
            }

            v32 = v193;
            v12 = v193;
            v31 = v32;
            v107 = MEMORY[0x277D82BE0](v31);
            __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v216, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v34, v107, *(a1 + 32));
            _os_log_debug_impl(&dword_26B0B9000, v110, v109, "%s [%{public}@|%{public}@]: Calling dispatch_group_leave for action %{public}@, and removing the entry from the set of running actions", v216, 0x2Au);
            MEMORY[0x277D82BD8](v31);
            MEMORY[0x277D82BD8](v33);
            objc_storeStrong(&v107, 0);
            objc_storeStrong(&v108, 0);
          }

          objc_storeStrong(&v110, 0);
          dispatch_group_leave(*(v161[0] + 16));
          [*(v161[0] + 19) removeObject:*(a1 + 32)];
        }

        else
        {
          v30 = [MEMORY[0x277D64B58] scanOperationLogger];
          v106 = [v30 oslog];
          MEMORY[0x277D82BD8](v30);
          v105 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
          {
            v28 = [v161[0] identifier];
            v29 = MEMORY[0x277D82BE0](v28);
            v104 = v29;
            v190 = *(v161[0] + 18);
            if (v190)
            {
              if (v190 == 1)
              {
                v191 = MEMORY[0x277D82BE0](@"F");
              }

              else if (v190 == 2)
              {
                v191 = MEMORY[0x277D82BE0](@"R");
              }

              else
              {
                v191 = MEMORY[0x277D82BE0](@"N/A");
              }
            }

            else
            {
              v191 = MEMORY[0x277D82BE0](@"N");
            }

            v27 = v191;
            v13 = v191;
            v26 = v27;
            v103 = MEMORY[0x277D82BE0](v26);
            __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v215, "[SUUIMobileScanOperation scheduleConcurrentActionWithSelector:eventInfo:]_block_invoke", v29, v103, *(a1 + 32));
            _os_log_error_impl(&dword_26B0B9000, v106, v105, "%s [%{public}@|%{public}@]: Ignoring request to call dispatch_group_leave for the action %{public}@, as the running actions set has no entry for this action anymore.", v215, 0x2Au);
            MEMORY[0x277D82BD8](v26);
            MEMORY[0x277D82BD8](v28);
            objc_storeStrong(&v103, 0);
            objc_storeStrong(&v104, 0);
          }

          objc_storeStrong(&v106, 0);
        }

        v156 = 48;
        v181 = v113;
        switch(v113[0])
        {
          case 1:
            [v181[1] unlock];
            break;
          case 2:
            os_unfair_lock_unlock(v181[1]);
            break;
          case 3:
            os_unfair_recursive_lock_unlock();
            break;
        }

        v156 = 45;
        v180 = v114;
        switch(v114[0])
        {
          case 1:
            [v180[1] unlock];
            break;
          case 2:
            os_unfair_lock_unlock(v180[1]);
            break;
          case 3:
            os_unfair_recursive_lock_unlock();
            break;
        }

        [*(v161[0] + 7) postEvent:*MEMORY[0x277D64D28] withInfo:*(a1 + 48)];
        v156 = 1;
      }
    }
  }

  objc_storeStrong(v161, 0);
}

- (void)checkForMDMRestrictions:(id)restrictions withReplyHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, restrictions);
  v14 = 0;
  objc_storeStrong(&v14, handler);
  suClient = [(SUUIMobileScanOperation *)selfCopy suClient];
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __68__SUUIMobileScanOperation_checkForMDMRestrictions_withReplyHandler___block_invoke;
  v10 = &unk_279CCCE20;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v13 = MEMORY[0x277D82BE0](v14);
  v12 = MEMORY[0x277D82BE0](location[0]);
  [(SUManagerClient *)suClient softwareUpdatePathRestriction:?];
  MEMORY[0x277D82BD8](suClient);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void __68__SUUIMobileScanOperation_checkForMDMRestrictions_withReplyHandler___block_invoke(uint64_t a1, void *a2, id obj)
{
  v35 = *MEMORY[0x277D85DE8];
  v31 = a1;
  v30 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v28[1] = a1;
  v13 = [MEMORY[0x277D64B58] scanOperationLogger];
  v28[0] = [v13 oslog];
  MEMORY[0x277D82BD8](v13);
  v27 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v28[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v28[0];
    type = v27;
    v11 = [*(a1 + 32) identifier];
    v12 = MEMORY[0x277D82BE0](v11);
    v26 = v12;
    v32 = *(*(a1 + 32) + 144);
    if (v32)
    {
      if (v32 == 1)
      {
        v33 = MEMORY[0x277D82BE0](@"F");
      }

      else if (v32 == 2)
      {
        v33 = MEMORY[0x277D82BE0](@"R");
      }

      else
      {
        v33 = MEMORY[0x277D82BE0](@"N/A");
      }
    }

    else
    {
      v33 = MEMORY[0x277D82BE0](@"N");
    }

    v5 = v33;
    v3 = v33;
    v8 = v5;
    v6 = MEMORY[0x277D82BE0](v8);
    v25 = v6;
    v7 = SUStringFromMDMSUPath();
    v24 = MEMORY[0x277D82BE0](v7);
    __os_log_helper_16_2_6_8_32_8_66_8_66_8_64_8_0_8_66(v34, "[SUUIMobileScanOperation checkForMDMRestrictions:withReplyHandler:]_block_invoke", v12, v6, v24, v30, location);
    _os_log_impl(&dword_26B0B9000, log, type, "%s [%{public}@|%{public}@]: Found path restriction: %@ (%ld); error: %{public}@", v34, 0x3Eu);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
  }

  objc_storeStrong(v28, 0);
  if (location)
  {
    (*(*(a1 + 48) + 16))();
    v23 = 1;
  }

  else
  {
    v4 = [*(a1 + 32) suClient];
    v15 = MEMORY[0x277D85DD0];
    v16 = -1073741824;
    v17 = 0;
    v18 = __68__SUUIMobileScanOperation_checkForMDMRestrictions_withReplyHandler___block_invoke_405;
    v19 = &unk_279CCCDF8;
    v20 = MEMORY[0x277D82BE0](*(a1 + 32));
    v22[0] = MEMORY[0x277D82BE0](*(a1 + 48));
    v21 = MEMORY[0x277D82BE0](*(a1 + 40));
    v22[1] = v30;
    [v4 isDelayingUpdates:&v15];
    MEMORY[0x277D82BD8](v4);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(v22, 0);
    objc_storeStrong(&v20, 0);
    v23 = 0;
  }

  objc_storeStrong(&location, 0);
}

void __68__SUUIMobileScanOperation_checkForMDMRestrictions_withReplyHandler___block_invoke_405(uint64_t a1, char a2, id obj)
{
  v22 = *MEMORY[0x277D85DE8];
  v18 = a1;
  v17 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v15[1] = a1;
  v10 = [MEMORY[0x277D64B58] scanOperationLogger];
  v15[0] = [v10 oslog];
  MEMORY[0x277D82BD8](v10);
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v15[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v15[0];
    type = v14;
    v8 = [*(a1 + 32) identifier];
    v9 = MEMORY[0x277D82BE0](v8);
    v13 = v9;
    v19 = *(*(a1 + 32) + 144);
    if (v19)
    {
      if (v19 == 1)
      {
        v20 = MEMORY[0x277D82BE0](@"F");
      }

      else if (v19 == 2)
      {
        v20 = MEMORY[0x277D82BE0](@"R");
      }

      else
      {
        v20 = MEMORY[0x277D82BE0](@"N/A");
      }
    }

    else
    {
      v20 = MEMORY[0x277D82BE0](@"N");
    }

    v4 = v20;
    v3 = v20;
    v5 = v4;
    v12 = MEMORY[0x277D82BE0](v5);
    __os_log_helper_16_2_5_8_32_8_66_8_66_4_0_8_66(v21, "[SUUIMobileScanOperation checkForMDMRestrictions:withReplyHandler:]_block_invoke", v9, v12, v17 & 1, location);
    _os_log_impl(&dword_26B0B9000, log, type, "%s [%{public}@|%{public}@]: Is delaying updates: %d; error: %{public}@", v21, 0x30u);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v8);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(v15, 0);
  if (!location)
  {
    [*(a1 + 40) setMdmPathRestrictions:*(a1 + 56)];
    [*(a1 + 40) setIsDelayingUpdate:v17 & 1];
  }

  (*(*(a1 + 48) + 16))();
  objc_storeStrong(&location, 0);
}

- (void)queryDDMDeclaration:(id)declaration withReplyHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, declaration);
  v13 = 0;
  objc_storeStrong(&v13, handler);
  suClient = [(SUUIMobileScanOperation *)selfCopy suClient];
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __64__SUUIMobileScanOperation_queryDDMDeclaration_withReplyHandler___block_invoke;
  v10 = &unk_279CCCE48;
  v12 = MEMORY[0x277D82BE0](v13);
  v11 = MEMORY[0x277D82BE0](location[0]);
  [(SUManagerClient *)suClient getDDMDeclarationWithHandler:?];
  MEMORY[0x277D82BD8](suClient);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __64__SUUIMobileScanOperation_queryDDMDeclaration_withReplyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v7 = 0;
  v6 = 0;
  if (v9)
  {
    v8 = [v9 domain];
    v7 = 1;
    v3 = 0;
    if ([v8 isEqualToString:*MEMORY[0x277D64910]])
    {
      v3 = [v9 code] == 102;
    }

    v6 = !v3;
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  if (!v6)
  {
    [*(a1 + 32) setDDMDeclaration:location[0]];
  }

  (*(*(a1 + 40) + 16))();
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)checkForBetaPrograms:(id)programs withReplyHandler:(id)handler
{
  v95 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, programs);
  v77 = 0;
  objc_storeStrong(&v77, handler);
  if (_os_feature_enabled_impl())
  {
    seedingBetaManager = [(SUUIMobileScanOperation *)selfCopy seedingBetaManager];
    MEMORY[0x277D82BD8](seedingBetaManager);
    if (seedingBetaManager)
    {
      if ([(SUUIMobileScanOperationOptions *)selfCopy->_options clientIsBuddy])
      {
        scanOperationLogger = [MEMORY[0x277D64B58] scanOperationLogger];
        oslog = [scanOperationLogger oslog];
        MEMORY[0x277D82BD8](scanOperationLogger);
        v66 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v27 = oslog;
          v28 = v66;
          identifier = [(SUUIMobileScanOperation *)selfCopy identifier];
          v30 = MEMORY[0x277D82BE0](identifier);
          v65 = v30;
          operationType = selfCopy->_operationType;
          if (operationType)
          {
            if (operationType == 1)
            {
              v85 = MEMORY[0x277D82BE0](@"F");
            }

            else if (operationType == 2)
            {
              v85 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v85 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v85 = MEMORY[0x277D82BE0](@"N");
          }

          v25 = v85;
          v6 = v85;
          v26 = v25;
          v64 = MEMORY[0x277D82BE0](v26);
          __os_log_helper_16_2_3_8_32_8_66_8_66(v92, "[SUUIMobileScanOperation checkForBetaPrograms:withReplyHandler:]", v30, v64);
          _os_log_impl(&dword_26B0B9000, v27, v28, "%s [%{public}@|%{public}@]: The client is Buddy - skipping on the Seeding feature.", v92, 0x20u);
          MEMORY[0x277D82BD8](v26);
          MEMORY[0x277D82BD8](identifier);
          objc_storeStrong(&v64, 0);
          objc_storeStrong(&v65, 0);
        }

        objc_storeStrong(&oslog, 0);
        (*(v77 + 2))(v77, 1, 0);
        v72 = 1;
      }

      else
      {
        currentSeedingDevice = [location[0] currentSeedingDevice];
        MEMORY[0x277D82BD8](currentSeedingDevice);
        if (currentSeedingDevice)
        {
          scanOperationLogger2 = [MEMORY[0x277D64B58] scanOperationLogger];
          oslog2 = [scanOperationLogger2 oslog];
          MEMORY[0x277D82BD8](scanOperationLogger2);
          v62 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
          {
            v19 = oslog2;
            v20 = v62;
            identifier2 = [(SUUIMobileScanOperation *)selfCopy identifier];
            v22 = MEMORY[0x277D82BE0](identifier2);
            v61 = v22;
            v82 = selfCopy->_operationType;
            if (v82)
            {
              if (v82 == 1)
              {
                v83 = MEMORY[0x277D82BE0](@"F");
              }

              else if (v82 == 2)
              {
                v83 = MEMORY[0x277D82BE0](@"R");
              }

              else
              {
                v83 = MEMORY[0x277D82BE0](@"N/A");
              }
            }

            else
            {
              v83 = MEMORY[0x277D82BE0](@"N");
            }

            v17 = v83;
            v7 = v83;
            v18 = v17;
            v60 = MEMORY[0x277D82BE0](v18);
            __os_log_helper_16_2_3_8_32_8_66_8_66(v91, "[SUUIMobileScanOperation checkForBetaPrograms:withReplyHandler:]", v22, v60);
            _os_log_impl(&dword_26B0B9000, v19, v20, "%s [%{public}@|%{public}@]: A seeding device has been provided, using it.", v91, 0x20u);
            MEMORY[0x277D82BD8](v18);
            MEMORY[0x277D82BD8](identifier2);
            objc_storeStrong(&v60, 0);
            objc_storeStrong(&v61, 0);
          }

          objc_storeStrong(&oslog2, 0);
          [(SUUIMobileScanOperation *)selfCopy scanForDeviceEligibleBetaPrograms:location[0] withReplyHandler:v77];
        }

        else
        {
          scanOperationLogger3 = [MEMORY[0x277D64B58] scanOperationLogger];
          oslog3 = [scanOperationLogger3 oslog];
          MEMORY[0x277D82BD8](scanOperationLogger3);
          v58 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
          {
            v12 = oslog3;
            v13 = v58;
            identifier3 = [(SUUIMobileScanOperation *)selfCopy identifier];
            v15 = MEMORY[0x277D82BE0](identifier3);
            v57 = v15;
            v80 = selfCopy->_operationType;
            if (v80)
            {
              if (v80 == 1)
              {
                v81 = MEMORY[0x277D82BE0](@"F");
              }

              else if (v80 == 2)
              {
                v81 = MEMORY[0x277D82BE0](@"R");
              }

              else
              {
                v81 = MEMORY[0x277D82BE0](@"N/A");
              }
            }

            else
            {
              v81 = MEMORY[0x277D82BE0](@"N");
            }

            v10 = v81;
            v8 = v81;
            v11 = v10;
            v56 = MEMORY[0x277D82BE0](v11);
            __os_log_helper_16_2_3_8_32_8_66_8_66(v90, "[SUUIMobileScanOperation checkForBetaPrograms:withReplyHandler:]", v15, v56);
            _os_log_impl(&dword_26B0B9000, v12, v13, "%s [%{public}@|%{public}@]: A seeding device has not been provided, attempting to find one.", v90, 0x20u);
            MEMORY[0x277D82BD8](v11);
            MEMORY[0x277D82BD8](identifier3);
            objc_storeStrong(&v56, 0);
            objc_storeStrong(&v57, 0);
          }

          objc_storeStrong(&oslog3, 0);
          v9 = MEMORY[0x277D4D320];
          v48 = MEMORY[0x277D85DD0];
          v49 = -1073741824;
          v50 = 0;
          v51 = __65__SUUIMobileScanOperation_checkForBetaPrograms_withReplyHandler___block_invoke;
          v52 = &unk_279CCCE70;
          v53 = MEMORY[0x277D82BE0](location[0]);
          v54 = MEMORY[0x277D82BE0](selfCopy);
          v55 = MEMORY[0x277D82BE0](v77);
          [v9 getCurrentDevice:&v48];
          objc_storeStrong(&v55, 0);
          objc_storeStrong(&v54, 0);
          objc_storeStrong(&v53, 0);
        }

        v72 = 0;
      }
    }

    else
    {
      scanOperationLogger4 = [MEMORY[0x277D64B58] scanOperationLogger];
      oslog4 = [scanOperationLogger4 oslog];
      MEMORY[0x277D82BD8](scanOperationLogger4);
      v70 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
      {
        v34 = oslog4;
        v35 = v70;
        identifier4 = [(SUUIMobileScanOperation *)selfCopy identifier];
        v37 = MEMORY[0x277D82BE0](identifier4);
        v69 = v37;
        v86 = selfCopy->_operationType;
        if (v86)
        {
          if (v86 == 1)
          {
            v87 = MEMORY[0x277D82BE0](@"F");
          }

          else if (v86 == 2)
          {
            v87 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v87 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v87 = MEMORY[0x277D82BE0](@"N");
        }

        v32 = v87;
        v5 = v87;
        v33 = v32;
        v68 = MEMORY[0x277D82BE0](v33);
        __os_log_helper_16_2_3_8_32_8_66_8_66(v93, "[SUUIMobileScanOperation checkForBetaPrograms:withReplyHandler:]", v37, v68);
        _os_log_impl(&dword_26B0B9000, v34, v35, "%s [%{public}@|%{public}@]: The seeding beta manager was not configured for this scan operation. Skipping.", v93, 0x20u);
        MEMORY[0x277D82BD8](v33);
        MEMORY[0x277D82BD8](identifier4);
        objc_storeStrong(&v68, 0);
        objc_storeStrong(&v69, 0);
      }

      objc_storeStrong(&oslog4, 0);
      (*(v77 + 2))(v77, 1, 0);
      v72 = 1;
    }
  }

  else
  {
    scanOperationLogger5 = [MEMORY[0x277D64B58] scanOperationLogger];
    oslog = [scanOperationLogger5 oslog];
    MEMORY[0x277D82BD8](scanOperationLogger5);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      v43 = type;
      identifier5 = [(SUUIMobileScanOperation *)selfCopy identifier];
      v45 = MEMORY[0x277D82BE0](identifier5);
      v74 = v45;
      v88 = selfCopy->_operationType;
      if (v88)
      {
        if (v88 == 1)
        {
          v89 = MEMORY[0x277D82BE0](@"F");
        }

        else if (v88 == 2)
        {
          v89 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v89 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v89 = MEMORY[0x277D82BE0](@"N");
      }

      v40 = v89;
      v4 = v89;
      v41 = v40;
      v73 = MEMORY[0x277D82BE0](v41);
      __os_log_helper_16_2_3_8_32_8_66_8_66(v94, "[SUUIMobileScanOperation checkForBetaPrograms:withReplyHandler:]", v45, v73);
      _os_log_impl(&dword_26B0B9000, log, v43, "%s [%{public}@|%{public}@]: The Seeding feature is unavailable.", v94, 0x20u);
      MEMORY[0x277D82BD8](v41);
      MEMORY[0x277D82BD8](identifier5);
      objc_storeStrong(&v73, 0);
      objc_storeStrong(&v74, 0);
    }

    objc_storeStrong(&oslog, 0);
    (*(v77 + 2))(v77, 1, 0);
    v72 = 1;
  }

  objc_storeStrong(&v77, 0);
  objc_storeStrong(location, 0);
}

void __65__SUUIMobileScanOperation_checkForBetaPrograms_withReplyHandler___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [*(a1 + 32) setCurrentSeedingDevice:location[0]];
  [*(a1 + 40) scanForDeviceEligibleBetaPrograms:*(a1 + 32) withReplyHandler:*(a1 + 48)];
  objc_storeStrong(location, 0);
}

- (void)scanForDeviceEligibleBetaPrograms:(id)programs withReplyHandler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, programs);
  v30 = 0;
  objc_storeStrong(&v30, handler);
  currentSeedingDevice = [location[0] currentSeedingDevice];
  MEMORY[0x277D82BD8](currentSeedingDevice);
  if (currentSeedingDevice)
  {
    seedingBetaManager = [(SUUIMobileScanOperation *)selfCopy seedingBetaManager];
    currentSeedingDevice2 = [location[0] currentSeedingDevice];
    platform = [currentSeedingDevice2 platform];
    v17 = MEMORY[0x277D85DD0];
    v18 = -1073741824;
    v19 = 0;
    v20 = __78__SUUIMobileScanOperation_scanForDeviceEligibleBetaPrograms_withReplyHandler___block_invoke;
    v21 = &unk_279CCCEC0;
    v22 = MEMORY[0x277D82BE0](location[0]);
    v23 = MEMORY[0x277D82BE0](selfCopy);
    v24 = MEMORY[0x277D82BE0](v30);
    [(SDBetaManager *)seedingBetaManager queryProgramsForSystemAccountsWithPlatforms:platform completion:&v17];
    MEMORY[0x277D82BD8](currentSeedingDevice2);
    MEMORY[0x277D82BD8](seedingBetaManager);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v22, 0);
    v25 = 0;
  }

  else
  {
    scanOperationLogger = [MEMORY[0x277D64B58] scanOperationLogger];
    oslog = [scanOperationLogger oslog];
    MEMORY[0x277D82BD8](scanOperationLogger);
    v28 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      type = v28;
      identifier = [(SUUIMobileScanOperation *)selfCopy identifier];
      v13 = MEMORY[0x277D82BE0](identifier);
      v27 = v13;
      operationType = selfCopy->_operationType;
      if (operationType)
      {
        if (operationType == 1)
        {
          v34 = MEMORY[0x277D82BE0](@"F");
        }

        else if (operationType == 2)
        {
          v34 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v34 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v34 = MEMORY[0x277D82BE0](@"N");
      }

      v8 = v34;
      v4 = v34;
      v9 = v8;
      v26 = MEMORY[0x277D82BE0](v9);
      __os_log_helper_16_2_3_8_32_8_66_8_66(v35, "[SUUIMobileScanOperation scanForDeviceEligibleBetaPrograms:withReplyHandler:]", v13, v26);
      _os_log_impl(&dword_26B0B9000, log, type, "%s [%{public}@|%{public}@]: Tried to scan for beta programs without a seeding device.", v35, 0x20u);
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](identifier);
      objc_storeStrong(&v26, 0);
      objc_storeStrong(&v27, 0);
    }

    objc_storeStrong(&oslog, 0);
    (*(v30 + 2))(v30, 0, 0);
    v25 = 1;
  }

  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);
}

void __78__SUUIMobileScanOperation_scanForDeviceEligibleBetaPrograms_withReplyHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v52 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v44 = a3;
  v43[1] = a1;
  if (a3)
  {
    [*(a1 + 32) setBetaPrograms:MEMORY[0x277CBEBF8]];
    v23 = [MEMORY[0x277D64B58] scanOperationLogger];
    v43[0] = [v23 oslog];
    MEMORY[0x277D82BD8](v23);
    v42 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v43[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v43[0];
      type = v42;
      v21 = [*(a1 + 40) identifier];
      v22 = MEMORY[0x277D82BE0](v21);
      v41 = v22;
      v48 = *(*(a1 + 40) + 144);
      if (v48)
      {
        if (v48 == 1)
        {
          v49 = MEMORY[0x277D82BE0](@"F");
        }

        else if (v48 == 2)
        {
          v49 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v49 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v49 = MEMORY[0x277D82BE0](@"N");
      }

      v17 = v49;
      v3 = v49;
      v18 = v17;
      v40 = MEMORY[0x277D82BE0](v18);
      __os_log_helper_16_2_4_8_32_8_66_8_66_8_0(v51, "[SUUIMobileScanOperation scanForDeviceEligibleBetaPrograms:withReplyHandler:]_block_invoke", v22, v40, v44);
      _os_log_impl(&dword_26B0B9000, log, type, "%s [%{public}@|%{public}@]: Could not fetch new beta programs: %ld", v51, 0x2Au);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v21);
      objc_storeStrong(&v40, 0);
      objc_storeStrong(&v41, 0);
    }

    objc_storeStrong(v43, 0);
    (*(*(a1 + 48) + 16))();
    v39 = 1;
  }

  else
  {
    [*(a1 + 32) setBetaPrograms:location[0]];
    v16 = [MEMORY[0x277D64B58] scanOperationLogger];
    v38 = [v16 oslog];
    MEMORY[0x277D82BD8](v16);
    v37 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v38;
      v13 = v37;
      v14 = [*(a1 + 40) identifier];
      v15 = MEMORY[0x277D82BE0](v14);
      v36 = v15;
      v46 = *(*(a1 + 40) + 144);
      if (v46)
      {
        if (v46 == 1)
        {
          v47 = MEMORY[0x277D82BE0](@"F");
        }

        else if (v46 == 2)
        {
          v47 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v47 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v47 = MEMORY[0x277D82BE0](@"N");
      }

      v7 = v47;
      v4 = v47;
      v11 = v7;
      v8 = MEMORY[0x277D82BE0](v11);
      v35 = v8;
      v9 = [location[0] count];
      v10 = [location[0] valueForKey:@"programID"];
      v34 = MEMORY[0x277D82BE0](v10);
      __os_log_helper_16_2_5_8_32_8_66_8_66_8_0_8_64(v50, "[SUUIMobileScanOperation scanForDeviceEligibleBetaPrograms:withReplyHandler:]_block_invoke", v15, v8, v9, v34);
      _os_log_impl(&dword_26B0B9000, v12, v13, "%s [%{public}@|%{public}@]: Got the device available Beta Programs (count: %ld): %@", v50, 0x34u);
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v14);
      objc_storeStrong(&v34, 0);
      objc_storeStrong(&v35, 0);
      objc_storeStrong(&v36, 0);
    }

    objc_storeStrong(&v38, 0);
    v6 = [*(a1 + 40) seedingBetaManager];
    v5 = [*(a1 + 32) currentSeedingDevice];
    v26 = MEMORY[0x277D85DD0];
    v27 = -1073741824;
    v28 = 0;
    v29 = __78__SUUIMobileScanOperation_scanForDeviceEligibleBetaPrograms_withReplyHandler___block_invoke_415;
    v30 = &unk_279CCCE98;
    v31 = MEMORY[0x277D82BE0](*(a1 + 32));
    v32 = MEMORY[0x277D82BE0](*(a1 + 40));
    v33 = MEMORY[0x277D82BE0](*(a1 + 48));
    [v6 enrolledBetaProgramForDevice:v5 completion:&v26];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v31, 0);
    v39 = 0;
  }

  objc_storeStrong(location, 0);
}

void __78__SUUIMobileScanOperation_scanForDeviceEligibleBetaPrograms_withReplyHandler___block_invoke_415(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17[1] = a1;
  [*(a1 + 32) setEnrolledBetaProgram:location[0]];
  v10 = [MEMORY[0x277D64B58] scanOperationLogger];
  v17[0] = [v10 oslog];
  MEMORY[0x277D82BD8](v10);
  v16 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v17[0], OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 40) identifier];
    v9 = MEMORY[0x277D82BE0](v8);
    v15 = v9;
    v19 = *(*(a1 + 40) + 144);
    if (v19)
    {
      if (v19 == 1)
      {
        v20 = MEMORY[0x277D82BE0](@"F");
      }

      else if (v19 == 2)
      {
        v20 = MEMORY[0x277D82BE0](@"R");
      }

      else
      {
        v20 = MEMORY[0x277D82BE0](@"N/A");
      }
    }

    else
    {
      v20 = MEMORY[0x277D82BE0](@"N");
    }

    v4 = v20;
    v2 = v20;
    v5 = v4;
    v6 = MEMORY[0x277D82BE0](v5);
    v14 = v6;
    v7 = location[0];
    v12 = 0;
    if (location[0])
    {
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(location[0], "programID")}];
      v12 = 1;
      v3 = v13;
    }

    else
    {
      v3 = @"(null)";
    }

    __os_log_helper_16_2_5_8_32_8_66_8_66_8_64_8_66(v21, "[SUUIMobileScanOperation scanForDeviceEligibleBetaPrograms:withReplyHandler:]_block_invoke", v9, v6, v7, v3);
    _os_log_impl(&dword_26B0B9000, v17[0], v16, "%s [%{public}@|%{public}@]: Refreshed current beta program: %@ (program ID: %{public}@", v21, 0x34u);
    if (v12)
    {
      MEMORY[0x277D82BD8](v13);
    }

    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v8);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(v17, 0);
  (*(*(a1 + 48) + 16))();
  objc_storeStrong(location, 0);
}

- (void)queryRollbackStatus:(id)status withReplyHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, status);
  v14 = 0;
  objc_storeStrong(&v14, handler);
  suClient = [(SUUIMobileScanOperation *)selfCopy suClient];
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __64__SUUIMobileScanOperation_queryRollbackStatus_withReplyHandler___block_invoke;
  v10 = &unk_279CCCF10;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v13 = MEMORY[0x277D82BE0](v14);
  v12 = MEMORY[0x277D82BE0](location[0]);
  [(SUManagerClient *)suClient isRollingBack:?];
  MEMORY[0x277D82BD8](suClient);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void __64__SUUIMobileScanOperation_queryRollbackStatus_withReplyHandler___block_invoke(uint64_t a1, char a2, id obj, void *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v32 = a1;
  v31 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v29 = 0;
  objc_storeStrong(&v29, a4);
  v28[1] = a1;
  v12 = [MEMORY[0x277D64B58] scanOperationLogger];
  v28[0] = [v12 oslog];
  MEMORY[0x277D82BD8](v12);
  v27 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v28[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v28[0];
    type = v27;
    v10 = [*(a1 + 32) identifier];
    v11 = MEMORY[0x277D82BE0](v10);
    v26 = v11;
    v33 = *(*(a1 + 32) + 144);
    if (v33)
    {
      if (v33 == 1)
      {
        v34 = MEMORY[0x277D82BE0](@"F");
      }

      else if (v33 == 2)
      {
        v34 = MEMORY[0x277D82BE0](@"R");
      }

      else
      {
        v34 = MEMORY[0x277D82BE0](@"N/A");
      }
    }

    else
    {
      v34 = MEMORY[0x277D82BE0](@"N");
    }

    v6 = v34;
    v4 = v34;
    v7 = v6;
    v25 = MEMORY[0x277D82BE0](v7);
    __os_log_helper_16_2_6_8_32_8_66_8_66_4_0_8_66_8_64(v35, "[SUUIMobileScanOperation queryRollbackStatus:withReplyHandler:]_block_invoke", v11, v25, v31 & 1, location, v29);
    _os_log_impl(&dword_26B0B9000, log, type, "%s [%{public}@|%{public}@]: Is rolling back? %d; error: %{public}@; rollback descriptor: %@", v35, 0x3Au);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v10);
    objc_storeStrong(&v25, 0);
    objc_storeStrong(&v26, 0);
  }

  objc_storeStrong(v28, 0);
  if (v29)
  {
    (*(*(a1 + 48) + 16))();
    v24 = 1;
  }

  else
  {
    [*(a1 + 40) setRollingBackSplatUpdate:v31 & 1];
    queue = [*(a1 + 32) concurrentQueue];
    v15 = MEMORY[0x277D85DD0];
    v16 = -1073741824;
    v17 = 0;
    v18 = __64__SUUIMobileScanOperation_queryRollbackStatus_withReplyHandler___block_invoke_421;
    v19 = &unk_279CCCEE8;
    v20 = MEMORY[0x277D82BE0](location);
    v21 = MEMORY[0x277D82BE0](*(a1 + 32));
    v22 = MEMORY[0x277D82BE0](*(a1 + 40));
    v23 = MEMORY[0x277D82BE0](*(a1 + 48));
    dispatch_barrier_async(queue, &v15);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
    v24 = 0;
  }

  objc_storeStrong(&v29, 0);
  objc_storeStrong(&location, 0);
}

uint64_t __64__SUUIMobileScanOperation_queryRollbackStatus_withReplyHandler___block_invoke_421(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v17[2] = a1;
  v17[1] = a1;
  if (*(a1 + 32))
  {
    v12 = [MEMORY[0x277D64B58] scanOperationLogger];
    v17[0] = [v12 oslog];
    MEMORY[0x277D82BD8](v12);
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v17[0];
      type = v16;
      v10 = [*(a1 + 40) identifier];
      v11 = MEMORY[0x277D82BE0](v10);
      v15 = v11;
      v18 = *(*(a1 + 40) + 144);
      if (v18)
      {
        if (v18 == 1)
        {
          v19 = MEMORY[0x277D82BE0](@"F");
        }

        else if (v18 == 2)
        {
          v19 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v19 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v19 = MEMORY[0x277D82BE0](@"N");
      }

      v1 = v19;
      v7 = v19;
      v3 = MEMORY[0x277D82BE0](v7);
      v14 = v3;
      v4 = *(a1 + 32);
      v6 = [*(a1 + 48) rollbackDescriptor];
      v5 = [*(a1 + 48) rollbackDescriptor];
      __os_log_helper_16_2_7_8_32_8_66_8_66_8_64_8_0_8_64_8_0(v20, "[SUUIMobileScanOperation queryRollbackStatus:withReplyHandler:]_block_invoke", v11, v3, v4, v4, v6, v5);
      _os_log_impl(&dword_26B0B9000, log, type, "%s [%{public}@|%{public}@]: Assigning rollback descriptor %@ (%p) instead of %@ (%p)", v20, 0x48u);
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v10);
      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v15, 0);
    }

    objc_storeStrong(v17, 0);
    [*(a1 + 48) setRollbackDescriptor:*(a1 + 32)];
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)checkIsEligibleForRollback:(id)rollback withReplyHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, rollback);
  v14 = 0;
  objc_storeStrong(&v14, handler);
  suClient = [(SUUIMobileScanOperation *)selfCopy suClient];
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __71__SUUIMobileScanOperation_checkIsEligibleForRollback_withReplyHandler___block_invoke;
  v10 = &unk_279CCCF38;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v13 = MEMORY[0x277D82BE0](v14);
  v12 = MEMORY[0x277D82BE0](location[0]);
  [(SUManagerClient *)suClient eligibleRollbackWithOptions:0 withResult:?];
  MEMORY[0x277D82BD8](suClient);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void __71__SUUIMobileScanOperation_checkIsEligibleForRollback_withReplyHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v28 = 0;
  objc_storeStrong(&v28, a3);
  v27[1] = a1;
  v11 = [MEMORY[0x277D64B58] scanOperationLogger];
  v27[0] = [v11 oslog];
  MEMORY[0x277D82BD8](v11);
  v26 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v27[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v27[0];
    type = v26;
    v9 = [*(a1 + 32) identifier];
    v10 = MEMORY[0x277D82BE0](v9);
    v25 = v10;
    v30 = *(*(a1 + 32) + 144);
    if (v30)
    {
      if (v30 == 1)
      {
        v31 = MEMORY[0x277D82BE0](@"F");
      }

      else if (v30 == 2)
      {
        v31 = MEMORY[0x277D82BE0](@"R");
      }

      else
      {
        v31 = MEMORY[0x277D82BE0](@"N/A");
      }
    }

    else
    {
      v31 = MEMORY[0x277D82BE0](@"N");
    }

    v5 = v31;
    v3 = v31;
    v6 = v5;
    v24 = MEMORY[0x277D82BE0](v6);
    __os_log_helper_16_2_5_8_32_8_66_8_66_8_66_8_64(v32, "[SUUIMobileScanOperation checkIsEligibleForRollback:withReplyHandler:]_block_invoke", v10, v24, v28, location[0]);
    _os_log_impl(&dword_26B0B9000, log, type, "%s [%{public}@|%{public}@]: error: %{public}@; eligible rollback descriptor: %@", v32, 0x34u);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v25, 0);
  }

  objc_storeStrong(v27, 0);
  if (v28)
  {
    (*(*(a1 + 48) + 16))();
    v23 = 1;
  }

  else
  {
    queue = [*(a1 + 32) concurrentQueue];
    v14 = MEMORY[0x277D85DD0];
    v15 = -1073741824;
    v16 = 0;
    v17 = __71__SUUIMobileScanOperation_checkIsEligibleForRollback_withReplyHandler___block_invoke_423;
    v18 = &unk_279CCCEE8;
    v19 = MEMORY[0x277D82BE0](location[0]);
    v20 = MEMORY[0x277D82BE0](*(a1 + 32));
    v21 = MEMORY[0x277D82BE0](*(a1 + 40));
    v22 = MEMORY[0x277D82BE0](*(a1 + 48));
    dispatch_barrier_async(queue, &v14);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v19, 0);
    v23 = 0;
  }

  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

uint64_t __71__SUUIMobileScanOperation_checkIsEligibleForRollback_withReplyHandler___block_invoke_423(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v17[2] = a1;
  v17[1] = a1;
  if (*(a1 + 32))
  {
    v12 = [MEMORY[0x277D64B58] scanOperationLogger];
    v17[0] = [v12 oslog];
    MEMORY[0x277D82BD8](v12);
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v17[0];
      type = v16;
      v10 = [*(a1 + 40) identifier];
      v11 = MEMORY[0x277D82BE0](v10);
      v15 = v11;
      v18 = *(*(a1 + 40) + 144);
      if (v18)
      {
        if (v18 == 1)
        {
          v19 = MEMORY[0x277D82BE0](@"F");
        }

        else if (v18 == 2)
        {
          v19 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v19 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v19 = MEMORY[0x277D82BE0](@"N");
      }

      v1 = v19;
      v7 = v19;
      v3 = MEMORY[0x277D82BE0](v7);
      v14 = v3;
      v4 = *(a1 + 32);
      v6 = [*(a1 + 48) rollbackDescriptor];
      v5 = [*(a1 + 48) rollbackDescriptor];
      __os_log_helper_16_2_7_8_32_8_66_8_66_8_64_8_0_8_64_8_0(v20, "[SUUIMobileScanOperation checkIsEligibleForRollback:withReplyHandler:]_block_invoke", v11, v3, v4, v4, v6, v5);
      _os_log_impl(&dword_26B0B9000, log, type, "%s [%{public}@|%{public}@]: Assigning rollback descriptor %@ (%p) instead of %@ (%p)", v20, 0x48u);
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v10);
      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v15, 0);
    }

    objc_storeStrong(v17, 0);
    [*(a1 + 48) setRollbackDescriptor:*(a1 + 32)];
  }

  return (*(*(a1 + 56) + 16))();
}

- (void)checkIfAutoUpdateScheduled:(id)scheduled withReplyHandler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scheduled);
  v14 = 0;
  objc_storeStrong(&v14, handler);
  suClient = [(SUUIMobileScanOperation *)selfCopy suClient];
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __71__SUUIMobileScanOperation_checkIfAutoUpdateScheduled_withReplyHandler___block_invoke;
  v10 = &unk_279CCCF88;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v13 = MEMORY[0x277D82BE0](v14);
  v12 = MEMORY[0x277D82BE0](location[0]);
  [(SUManagerClient *)suClient isAutoUpdateScheduled:?];
  MEMORY[0x277D82BD8](suClient);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

void __71__SUUIMobileScanOperation_checkIfAutoUpdateScheduled_withReplyHandler___block_invoke(uint64_t a1, char a2, id obj)
{
  v33 = *MEMORY[0x277D85DE8];
  v29 = a1;
  v28 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v26[1] = a1;
  v11 = [MEMORY[0x277D64B58] scanOperationLogger];
  v26[0] = [v11 oslog];
  MEMORY[0x277D82BD8](v11);
  v25 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v26[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v26[0];
    type = v25;
    v9 = [*(a1 + 32) identifier];
    v10 = MEMORY[0x277D82BE0](v9);
    v24 = v10;
    v30 = *(*(a1 + 32) + 144);
    if (v30)
    {
      if (v30 == 1)
      {
        v31 = MEMORY[0x277D82BE0](@"F");
      }

      else if (v30 == 2)
      {
        v31 = MEMORY[0x277D82BE0](@"R");
      }

      else
      {
        v31 = MEMORY[0x277D82BE0](@"N/A");
      }
    }

    else
    {
      v31 = MEMORY[0x277D82BE0](@"N");
    }

    v5 = v31;
    v3 = v31;
    v6 = v5;
    v23 = MEMORY[0x277D82BE0](v6);
    __os_log_helper_16_2_5_8_32_8_66_8_66_4_0_8_66(v32, "[SUUIMobileScanOperation checkIfAutoUpdateScheduled:withReplyHandler:]_block_invoke", v10, v23, v28 & 1, location);
    _os_log_impl(&dword_26B0B9000, log, type, "%s [%{public}@|%{public}@]: isAutoUpdateScheduled - result: %d, error: %{public}@", v32, 0x30u);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
  }

  objc_storeStrong(v26, 0);
  if (location || ([*(a1 + 40) setIsAutoUpdateScheduled:v28 & 1], (v28 & 1) == 0))
  {
    (*(*(a1 + 48) + 16))();
    v22 = 1;
  }

  else
  {
    v4 = [*(a1 + 32) suClient];
    v13 = MEMORY[0x277D85DD0];
    v14 = -1073741824;
    v15 = 0;
    v16 = __71__SUUIMobileScanOperation_checkIfAutoUpdateScheduled_withReplyHandler___block_invoke_425;
    v17 = &unk_279CCCF60;
    v18 = MEMORY[0x277D82BE0](*(a1 + 32));
    v21 = v28 & 1;
    v20 = MEMORY[0x277D82BE0](*(a1 + 48));
    v19 = MEMORY[0x277D82BE0](*(a1 + 40));
    [v4 currentAutoInstallOperation:0 withResult:&v13];
    MEMORY[0x277D82BD8](v4);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v18, 0);
    v22 = 0;
  }

  objc_storeStrong(&location, 0);
}

void __71__SUUIMobileScanOperation_checkIfAutoUpdateScheduled_withReplyHandler___block_invoke_425(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = 0;
  objc_storeStrong(&v17, a3);
  v16[1] = a1;
  v10 = [MEMORY[0x277D64B58] scanOperationLogger];
  v16[0] = [v10 oslog];
  MEMORY[0x277D82BD8](v10);
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v16[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v16[0];
    type = v15;
    v8 = [*(a1 + 32) identifier];
    v9 = MEMORY[0x277D82BE0](v8);
    v14 = v9;
    v19 = *(*(a1 + 32) + 144);
    if (v19)
    {
      if (v19 == 1)
      {
        v20 = MEMORY[0x277D82BE0](@"F");
      }

      else if (v19 == 2)
      {
        v20 = MEMORY[0x277D82BE0](@"R");
      }

      else
      {
        v20 = MEMORY[0x277D82BE0](@"N/A");
      }
    }

    else
    {
      v20 = MEMORY[0x277D82BE0](@"N");
    }

    v4 = v20;
    v3 = v20;
    v5 = v4;
    v13 = MEMORY[0x277D82BE0](v5);
    __os_log_helper_16_2_6_8_32_8_66_8_66_8_66_8_66_4_0(v21, "[SUUIMobileScanOperation checkIfAutoUpdateScheduled:withReplyHandler:]_block_invoke", v9, v13, location[0], v17, *(a1 + 56) & 1);
    _os_log_impl(&dword_26B0B9000, log, type, "%s [%{public}@|%{public}@]: currentAutoInstallOperation - result: %{public}@, error: %{public}@; was scheduled: %d", v21, 0x3Au);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v8);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(v16, 0);
  if (!v17)
  {
    [*(a1 + 40) setCurrentAutoInstallOperation:location[0]];
  }

  (*(*(a1 + 48) + 16))();
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)handleDiscoveredScanResults:(id)results withError:(id)error usingEventInfo:(id)info isCachedResults:(BOOL)cachedResults activity:(suui_activity_s *)activity
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  v12 = 0;
  objc_storeStrong(&v12, error);
  v11 = 0;
  objc_storeStrong(&v11, info);
  [(SUUIMobileScanOperation *)selfCopy handleDiscoveredScanResults:location[0] withError:v12 usingEventInfo:v11 isCachedResults:cachedResults activity:activity beforePostEvent:0];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)handleDiscoveredScanResults:(id)results withError:(id)error usingEventInfo:(id)info isCachedResults:(BOOL)cachedResults activity:(suui_activity_s *)activity beforePostEvent:(id)event
{
  v87 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  v76 = 0;
  objc_storeStrong(&v76, error);
  v75 = 0;
  objc_storeStrong(&v75, info);
  cachedResultsCopy = cachedResults;
  activityCopy = activity;
  v72 = 0;
  objc_storeStrong(&v72, event);
  if (selfCopy->_canceled)
  {
    scanOperationLogger = [MEMORY[0x277D64B58] scanOperationLogger];
    oslog = [scanOperationLogger oslog];
    MEMORY[0x277D82BD8](scanOperationLogger);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      v43 = type;
      identifier = [(SUUIMobileScanOperation *)selfCopy identifier];
      v45 = MEMORY[0x277D82BE0](identifier);
      v69 = v45;
      operationType = selfCopy->_operationType;
      if (operationType)
      {
        if (operationType == 1)
        {
          v82 = MEMORY[0x277D82BE0](@"F");
        }

        else if (operationType == 2)
        {
          v82 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v82 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v82 = MEMORY[0x277D82BE0](@"N");
      }

      v40 = v82;
      v8 = v82;
      v41 = v40;
      v68 = MEMORY[0x277D82BE0](v41);
      __os_log_helper_16_2_3_8_32_8_66_8_66(v86, "[SUUIMobileScanOperation handleDiscoveredScanResults:withError:usingEventInfo:isCachedResults:activity:beforePostEvent:]", v45, v68);
      _os_log_impl(&dword_26B0B9000, log, v43, "%s [%{public}@|%{public}@]: The task has already been canceled. Stopping.", v86, 0x20u);
      MEMORY[0x277D82BD8](v41);
      MEMORY[0x277D82BD8](identifier);
      objc_storeStrong(&v68, 0);
      objc_storeStrong(&v69, 0);
    }

    objc_storeStrong(&oslog, 0);
    v67 = 1;
  }

  else
  {
    scanOperationLogger2 = [MEMORY[0x277D64B58] scanOperationLogger];
    oslog = [scanOperationLogger2 oslog];
    MEMORY[0x277D82BD8](scanOperationLogger2);
    v65 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v35 = oslog;
      v36 = v65;
      identifier2 = [(SUUIMobileScanOperation *)selfCopy identifier];
      v38 = MEMORY[0x277D82BE0](identifier2);
      v64 = v38;
      v79 = selfCopy->_operationType;
      if (v79)
      {
        if (v79 == 1)
        {
          v80 = MEMORY[0x277D82BE0](@"F");
        }

        else if (v79 == 2)
        {
          v80 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v80 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v80 = MEMORY[0x277D82BE0](@"N");
      }

      v26 = v80;
      v9 = v80;
      v34 = v26;
      v29 = MEMORY[0x277D82BE0](v34);
      v63 = v29;
      v30 = v76;
      v84 = cachedResultsCopy;
      if (cachedResultsCopy)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v27 = v10;
      v11 = v10;
      v33 = v27;
      v31 = MEMORY[0x277D82BE0](v33);
      v62 = v31;
      forceReloadScanResults = [v75 forceReloadScanResults];
      if (forceReloadScanResults)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v28 = v12;
      v13 = v12;
      v32 = v28;
      v61 = MEMORY[0x277D82BE0](v32);
      __os_log_helper_16_2_7_8_32_8_66_8_66_8_66_8_66_8_66_8_64(v85, "[SUUIMobileScanOperation handleDiscoveredScanResults:withError:usingEventInfo:isCachedResults:activity:beforePostEvent:]", v38, v29, v30, v31, v61, location[0]);
      _os_log_impl(&dword_26B0B9000, v35, v36, "%s [%{public}@|%{public}@]: scanForUpdates results: error: %{public}@; isCachedResults: %{public}@; forcedReload: %{public}@; SUScanResults: %@", v85, 0x48u);
      MEMORY[0x277D82BD8](v32);
      MEMORY[0x277D82BD8](v33);
      MEMORY[0x277D82BD8](v34);
      MEMORY[0x277D82BD8](identifier2);
      objc_storeStrong(&v61, 0);
      objc_storeStrong(&v62, 0);
      objc_storeStrong(&v63, 0);
      objc_storeStrong(&v64, 0);
    }

    objc_storeStrong(&oslog, 0);
    [v75 setScanError:v76];
    if (v76 && ![(SUUIMobileScanOperation *)selfCopy shouldConsiderErrorAsSuccessfulCase:v76])
    {
      v60 = MEMORY[0x26D66ED00](v72);
      if (v60)
      {
        (*(v60 + 2))();
        v59 = 0;
      }

      else
      {
        v58 = 0;
      }

      objc_storeStrong(&v60, 0);
      scanFSM = selfCopy->_scanFSM;
      v23 = *MEMORY[0x277D64D20];
      v14 = [SUUIMobileScanOperationParam alloc];
      v25 = [(SUUIMobileScanOperationParam *)v14 initWithError:v76];
      [SUCoreFSM postEvent:"postEvent:withInfo:endingActivity:" withInfo:v23 endingActivity:?];
      MEMORY[0x277D82BD8](v25);
      v67 = 1;
      goto LABEL_52;
    }

    options = [(SUUIMobileScanOperation *)selfCopy options];
    v22 = 0;
    if ([(SUUIMobileScanOperationOptions *)options supportScanResultsCaching])
    {
      v22 = !cachedResultsCopy;
    }

    MEMORY[0x277D82BD8](options);
    if (v22)
    {
      [(SUUIMobileScanOperation *)selfCopy cacheDiscoveredScanResults:location[0]];
    }

    if (location[0])
    {
      [v75 setEmptyScanResults:0];
      v15 = v75;
      preferredDescriptor = [location[0] preferredDescriptor];
      [v15 setPreferredDescriptor:?];
      MEMORY[0x277D82BD8](preferredDescriptor);
      v17 = v75;
      alternateDescriptor = [location[0] alternateDescriptor];
      [v17 setAlternateDescriptor:?];
      MEMORY[0x277D82BD8](alternateDescriptor);
      preferredDescriptor2 = [location[0] preferredDescriptor];
      v56 = 0;
      v20 = 1;
      if (!preferredDescriptor2)
      {
        alternateDescriptor2 = [location[0] alternateDescriptor];
        v56 = 1;
        v20 = alternateDescriptor2 != 0;
      }

      if (v56)
      {
        MEMORY[0x277D82BD8](alternateDescriptor2);
      }

      MEMORY[0x277D82BD8](preferredDescriptor2);
      if (v20)
      {
        v55 = MEMORY[0x26D66ED00](v72);
        if (v55)
        {
          (*(v55 + 2))();
          v54 = 0;
        }

        else
        {
          v53 = 0;
        }

        objc_storeStrong(&v55, 0);
        [(SUCoreFSM *)selfCopy->_scanFSM postEvent:*MEMORY[0x277D64E70] withInfo:v75 endingActivity:&activityCopy];
        v67 = 1;
        goto LABEL_52;
      }
    }

    else
    {
      [v75 setEmptyScanResults:1];
    }

    v52 = MEMORY[0x26D66ED00](v72);
    if (v52)
    {
      (*(v52 + 2))();
    }

    objc_storeStrong(&v52, 0);
    [(SUCoreFSM *)selfCopy->_scanFSM postEvent:*MEMORY[0x277D64D80] withInfo:v75 endingActivity:&activityCopy];
    v67 = 0;
  }

LABEL_52:
  objc_storeStrong(&v72, 0);
  objc_storeStrong(&v75, 0);
  objc_storeStrong(&v76, 0);
  objc_storeStrong(location, 0);
}

- (id)cachedScanResults
{
  selfCopy = self;
  v4 = a2;
  v3 = 0;
  return [(SUUIMobileScanOperation *)self cachedScanResults:&v3];
}

- (id)cachedScanResults:(BOOL *)results
{
  v168 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v138 = a2;
  resultsCopy = results;
  *results = 0;
  if (_os_feature_enabled_impl())
  {
    scanOperationLogger = [MEMORY[0x277D64B58] scanOperationLogger];
    oslog = [scanOperationLogger oslog];
    MEMORY[0x277D82BD8](scanOperationLogger);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      v82 = type;
      identifier = [(SUUIMobileScanOperation *)selfCopy identifier];
      v84 = MEMORY[0x277D82BE0](identifier);
      v134 = v84;
      operationType = selfCopy->_operationType;
      if (operationType)
      {
        if (operationType == 1)
        {
          v158 = MEMORY[0x277D82BE0](@"F");
        }

        else if (operationType == 2)
        {
          v158 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v158 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v158 = MEMORY[0x277D82BE0](@"N");
      }

      v3 = v158;
      v80 = v158;
      v133 = MEMORY[0x277D82BE0](v80);
      __os_log_helper_16_2_3_8_32_8_66_8_66(v167, "[SUUIMobileScanOperation cachedScanResults:]", v84, v133);
      _os_log_impl(&dword_26B0B9000, log, v82, "%s [%{public}@|%{public}@]: Looking for a previously cached version of SUScanResults", v167, 0x20u);
      MEMORY[0x277D82BD8](v80);
      MEMORY[0x277D82BD8](identifier);
      objc_storeStrong(&v133, 0);
      objc_storeStrong(&v134, 0);
    }

    objc_storeStrong(&oslog, 0);
    mEMORY[0x277D64BD8] = [MEMORY[0x277D64BD8] sharedDefaults];
    v4 = [mEMORY[0x277D64BD8] defaultsContainsKey:*MEMORY[0x277D64C68]];
    v131 = 0;
    v129 = 0;
    v79 = 0;
    if (v4)
    {
      mEMORY[0x277D64BD8]2 = [MEMORY[0x277D64BD8] sharedDefaults];
      v131 = 1;
      scanResultsCachingDuration = [mEMORY[0x277D64BD8]2 scanResultsCachingDuration];
      v129 = 1;
      v79 = [scanResultsCachingDuration intValue] == 0;
    }

    if (v129)
    {
      MEMORY[0x277D82BD8](scanResultsCachingDuration);
    }

    if (v131)
    {
      MEMORY[0x277D82BD8](mEMORY[0x277D64BD8]2);
    }

    MEMORY[0x277D82BD8](mEMORY[0x277D64BD8]);
    if (v79)
    {
      v140 = 0;
    }

    else
    {
      v128 = [(NSUserDefaults *)selfCopy->_userDefaultsSuite objectForKey:@"SUCachedScanResults"];
      v127 = [(NSUserDefaults *)selfCopy->_userDefaultsSuite objectForKey:@"SUCachedScanResultsTTL"];
      v126 = [(NSUserDefaults *)selfCopy->_userDefaultsSuite stringForKey:@"SUCachedAudience"];
      v125 = [(NSUserDefaults *)selfCopy->_userDefaultsSuite stringForKey:@"SUCachedOSVersion"];
      if (v127 || v126 || v125)
      {
        if (v127 && v126 && v125)
        {
          date = [MEMORY[0x277CBEAA8] date];
          v63 = [date compare:v127];
          MEMORY[0x277D82BD8](date);
          if (v63 == 1)
          {
            scanOperationLogger2 = [MEMORY[0x277D64B58] scanOperationLogger];
            oslog = [scanOperationLogger2 oslog];
            MEMORY[0x277D82BD8](scanOperationLogger2);
            v114 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
            {
              v57 = oslog;
              v58 = v114;
              identifier2 = [(SUUIMobileScanOperation *)selfCopy identifier];
              v60 = MEMORY[0x277D82BE0](identifier2);
              v113 = v60;
              v151 = selfCopy->_operationType;
              if (v151)
              {
                if (v151 == 1)
                {
                  v152 = MEMORY[0x277D82BE0](@"F");
                }

                else if (v151 == 2)
                {
                  v152 = MEMORY[0x277D82BE0](@"R");
                }

                else
                {
                  v152 = MEMORY[0x277D82BE0](@"N/A");
                }
              }

              else
              {
                v152 = MEMORY[0x277D82BE0](@"N");
              }

              v53 = v152;
              v7 = v152;
              v56 = v53;
              v54 = MEMORY[0x277D82BE0](v56);
              v112 = v54;
              date2 = [MEMORY[0x277CBEAA8] date];
              v111 = MEMORY[0x277D82BE0](date2);
              __os_log_helper_16_2_5_8_32_8_66_8_66_8_66_8_66(v164, "[SUUIMobileScanOperation cachedScanResults:]", v60, v54, v111, v127);
              _os_log_impl(&dword_26B0B9000, v57, v58, "%s [%{public}@|%{public}@]: The cached version of SUScanResults has been expired. Skipping.\n\t- Now: %{public}@\n\t- TTL: %{public}@", v164, 0x34u);
              MEMORY[0x277D82BD8](date2);
              MEMORY[0x277D82BD8](v56);
              MEMORY[0x277D82BD8](identifier2);
              objc_storeStrong(&v111, 0);
              objc_storeStrong(&v112, 0);
              objc_storeStrong(&v113, 0);
            }

            objc_storeStrong(&oslog, 0);
            [(SUUIMobileScanOperation *)selfCopy removeCachedScanResults];
            v140 = 0;
            v120 = 1;
          }

          else
          {
            pallasAudience = [(SUUIMobileScanOperation *)selfCopy pallasAudience];
            if ([pallasAudience isEqualToString:v126])
            {
              currentOSVersionIdentifier = [(SUUIMobileScanOperation *)selfCopy currentOSVersionIdentifier];
              if ([currentOSVersionIdentifier isEqualToString:v125])
              {
                if (v128)
                {
                  v96 = 0;
                  v30 = MEMORY[0x277CCAAC8];
                  v11 = objc_opt_class();
                  v94 = v96;
                  v31 = [v30 unarchivedObjectOfClass:v11 fromData:v128 error:&v94];
                  objc_storeStrong(&v96, v94);
                  v95 = v31;
                  if (v96)
                  {
                    scanOperationLogger3 = [MEMORY[0x277D64B58] scanOperationLogger];
                    oslog2 = [scanOperationLogger3 oslog];
                    MEMORY[0x277D82BD8](scanOperationLogger3);
                    v92 = OS_LOG_TYPE_ERROR;
                    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
                    {
                      v25 = oslog2;
                      v26 = v92;
                      identifier3 = [(SUUIMobileScanOperation *)selfCopy identifier];
                      v28 = MEMORY[0x277D82BE0](identifier3);
                      v91 = v28;
                      v143 = selfCopy->_operationType;
                      if (v143)
                      {
                        if (v143 == 1)
                        {
                          v144 = MEMORY[0x277D82BE0](@"F");
                        }

                        else if (v143 == 2)
                        {
                          v144 = MEMORY[0x277D82BE0](@"R");
                        }

                        else
                        {
                          v144 = MEMORY[0x277D82BE0](@"N/A");
                        }
                      }

                      else
                      {
                        v144 = MEMORY[0x277D82BE0](@"N");
                      }

                      v23 = v144;
                      v12 = v144;
                      v24 = v23;
                      v90 = MEMORY[0x277D82BE0](v24);
                      __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v160, "[SUUIMobileScanOperation cachedScanResults:]", v28, v90, v96);
                      _os_log_error_impl(&dword_26B0B9000, v25, v26, "%s [%{public}@|%{public}@]: Failed to unarchive SUScanResults: %{public}@", v160, 0x2Au);
                      MEMORY[0x277D82BD8](v24);
                      MEMORY[0x277D82BD8](identifier3);
                      objc_storeStrong(&v90, 0);
                      objc_storeStrong(&v91, 0);
                    }

                    objc_storeStrong(&oslog2, 0);
                    [(SUUIMobileScanOperation *)selfCopy removeCachedScanResults];
                    v140 = 0;
                    v120 = 1;
                  }

                  else
                  {
                    scanOperationLogger4 = [MEMORY[0x277D64B58] scanOperationLogger];
                    oslog3 = [scanOperationLogger4 oslog];
                    MEMORY[0x277D82BD8](scanOperationLogger4);
                    v88 = OS_LOG_TYPE_DEFAULT;
                    if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
                    {
                      v18 = oslog3;
                      v19 = v88;
                      identifier4 = [(SUUIMobileScanOperation *)selfCopy identifier];
                      v21 = MEMORY[0x277D82BE0](identifier4);
                      v87 = v21;
                      v141 = selfCopy->_operationType;
                      if (v141)
                      {
                        if (v141 == 1)
                        {
                          v142 = MEMORY[0x277D82BE0](@"F");
                        }

                        else if (v141 == 2)
                        {
                          v142 = MEMORY[0x277D82BE0](@"R");
                        }

                        else
                        {
                          v142 = MEMORY[0x277D82BE0](@"N/A");
                        }
                      }

                      else
                      {
                        v142 = MEMORY[0x277D82BE0](@"N");
                      }

                      v16 = v142;
                      v13 = v142;
                      v17 = v16;
                      v86 = MEMORY[0x277D82BE0](v17);
                      __os_log_helper_16_2_5_8_32_8_66_8_66_8_2_8_66(v159, "[SUUIMobileScanOperation cachedScanResults:]", v21, v86, v95, v127);
                      _os_log_impl(&dword_26B0B9000, v18, v19, "%s [%{public}@|%{public}@]: Found cached version of SUScanResults. Using them.\n\t- SUScanResults: %{public}p\n\t- TTL: %{public}@", v159, 0x34u);
                      MEMORY[0x277D82BD8](v17);
                      MEMORY[0x277D82BD8](identifier4);
                      objc_storeStrong(&v86, 0);
                      objc_storeStrong(&v87, 0);
                    }

                    objc_storeStrong(&oslog3, 0);
                    v140 = MEMORY[0x277D82BE0](v95);
                    v120 = 1;
                  }

                  objc_storeStrong(&v95, 0);
                  objc_storeStrong(&v96, 0);
                }

                else
                {
                  *resultsCopy = 1;
                  scanOperationLogger5 = [MEMORY[0x277D64B58] scanOperationLogger];
                  oslog4 = [scanOperationLogger5 oslog];
                  MEMORY[0x277D82BD8](scanOperationLogger5);
                  v99 = OS_LOG_TYPE_DEFAULT;
                  if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
                  {
                    v34 = oslog4;
                    v35 = v99;
                    identifier5 = [(SUUIMobileScanOperation *)selfCopy identifier];
                    v37 = MEMORY[0x277D82BE0](identifier5);
                    v98 = v37;
                    v145 = selfCopy->_operationType;
                    if (v145)
                    {
                      if (v145 == 1)
                      {
                        v146 = MEMORY[0x277D82BE0](@"F");
                      }

                      else if (v145 == 2)
                      {
                        v146 = MEMORY[0x277D82BE0](@"R");
                      }

                      else
                      {
                        v146 = MEMORY[0x277D82BE0](@"N/A");
                      }
                    }

                    else
                    {
                      v146 = MEMORY[0x277D82BE0](@"N");
                    }

                    v32 = v146;
                    v10 = v146;
                    v33 = v32;
                    v97 = MEMORY[0x277D82BE0](v33);
                    __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v161, "[SUUIMobileScanOperation cachedScanResults:]", v37, v97, v127);
                    _os_log_impl(&dword_26B0B9000, v34, v35, "%s [%{public}@|%{public}@]: Found cached version of nil SUScanResults - OS is up to date. Using them.\n\t- TTL: %{public}@", v161, 0x2Au);
                    MEMORY[0x277D82BD8](v33);
                    MEMORY[0x277D82BD8](identifier5);
                    objc_storeStrong(&v97, 0);
                    objc_storeStrong(&v98, 0);
                  }

                  objc_storeStrong(&oslog4, 0);
                  v140 = 0;
                  v120 = 1;
                }
              }

              else
              {
                scanOperationLogger6 = [MEMORY[0x277D64B58] scanOperationLogger];
                oslog5 = [scanOperationLogger6 oslog];
                MEMORY[0x277D82BD8](scanOperationLogger6);
                v103 = OS_LOG_TYPE_DEFAULT;
                if (os_log_type_enabled(oslog5, OS_LOG_TYPE_DEFAULT))
                {
                  v41 = oslog5;
                  v42 = v103;
                  identifier6 = [(SUUIMobileScanOperation *)selfCopy identifier];
                  v44 = MEMORY[0x277D82BE0](identifier6);
                  v102 = v44;
                  v147 = selfCopy->_operationType;
                  if (v147)
                  {
                    if (v147 == 1)
                    {
                      v148 = MEMORY[0x277D82BE0](@"F");
                    }

                    else if (v147 == 2)
                    {
                      v148 = MEMORY[0x277D82BE0](@"R");
                    }

                    else
                    {
                      v148 = MEMORY[0x277D82BE0](@"N/A");
                    }
                  }

                  else
                  {
                    v148 = MEMORY[0x277D82BE0](@"N");
                  }

                  v39 = v148;
                  v9 = v148;
                  v40 = v39;
                  v101 = MEMORY[0x277D82BE0](v40);
                  __os_log_helper_16_2_5_8_32_8_66_8_66_8_66_8_66(v162, "[SUUIMobileScanOperation cachedScanResults:]", v44, v101, currentOSVersionIdentifier, v125);
                  _os_log_impl(&dword_26B0B9000, v41, v42, "%s [%{public}@|%{public}@]: The cached SUScanResults OS Version is different than the current one. Skipping.\n\t- Now: %{public}@\n\t- OS Version: %{public}@", v162, 0x34u);
                  MEMORY[0x277D82BD8](v40);
                  MEMORY[0x277D82BD8](identifier6);
                  objc_storeStrong(&v101, 0);
                  objc_storeStrong(&v102, 0);
                }

                objc_storeStrong(&oslog5, 0);
                [(SUUIMobileScanOperation *)selfCopy removeCachedScanResults];
                v140 = 0;
                v120 = 1;
              }

              objc_storeStrong(&currentOSVersionIdentifier, 0);
            }

            else
            {
              scanOperationLogger7 = [MEMORY[0x277D64B58] scanOperationLogger];
              oslog6 = [scanOperationLogger7 oslog];
              MEMORY[0x277D82BD8](scanOperationLogger7);
              v108 = OS_LOG_TYPE_DEFAULT;
              if (os_log_type_enabled(oslog6, OS_LOG_TYPE_DEFAULT))
              {
                v48 = oslog6;
                v49 = v108;
                identifier7 = [(SUUIMobileScanOperation *)selfCopy identifier];
                v51 = MEMORY[0x277D82BE0](identifier7);
                v107 = v51;
                v149 = selfCopy->_operationType;
                if (v149)
                {
                  if (v149 == 1)
                  {
                    v150 = MEMORY[0x277D82BE0](@"F");
                  }

                  else if (v149 == 2)
                  {
                    v150 = MEMORY[0x277D82BE0](@"R");
                  }

                  else
                  {
                    v150 = MEMORY[0x277D82BE0](@"N/A");
                  }
                }

                else
                {
                  v150 = MEMORY[0x277D82BE0](@"N");
                }

                v46 = v150;
                v8 = v150;
                v47 = v46;
                v106 = MEMORY[0x277D82BE0](v47);
                __os_log_helper_16_2_5_8_32_8_66_8_66_8_66_8_66(v163, "[SUUIMobileScanOperation cachedScanResults:]", v51, v106, pallasAudience, v126);
                _os_log_impl(&dword_26B0B9000, v48, v49, "%s [%{public}@|%{public}@]: The cached SUScanResults audience is different than the current one. Skipping.\n\t- Now: %{public}@\n\t- Audience: %{public}@", v163, 0x34u);
                MEMORY[0x277D82BD8](v47);
                MEMORY[0x277D82BD8](identifier7);
                objc_storeStrong(&v106, 0);
                objc_storeStrong(&v107, 0);
              }

              objc_storeStrong(&oslog6, 0);
              [(SUUIMobileScanOperation *)selfCopy removeCachedScanResults];
              v140 = 0;
              v120 = 1;
            }

            objc_storeStrong(&pallasAudience, 0);
          }
        }

        else
        {
          scanOperationLogger8 = [MEMORY[0x277D64B58] scanOperationLogger];
          oslog7 = [scanOperationLogger8 oslog];
          MEMORY[0x277D82BD8](scanOperationLogger8);
          v118 = OS_LOG_TYPE_ERROR;
          if (os_log_type_enabled(oslog7, OS_LOG_TYPE_ERROR))
          {
            v66 = oslog7;
            v67 = v118;
            identifier8 = [(SUUIMobileScanOperation *)selfCopy identifier];
            v69 = MEMORY[0x277D82BE0](identifier8);
            v117 = v69;
            v153 = selfCopy->_operationType;
            if (v153)
            {
              if (v153 == 1)
              {
                v154 = MEMORY[0x277D82BE0](@"F");
              }

              else if (v153 == 2)
              {
                v154 = MEMORY[0x277D82BE0](@"R");
              }

              else
              {
                v154 = MEMORY[0x277D82BE0](@"N/A");
              }
            }

            else
            {
              v154 = MEMORY[0x277D82BE0](@"N");
            }

            v64 = v154;
            v6 = v154;
            v65 = v64;
            v116 = MEMORY[0x277D82BE0](v65);
            __os_log_helper_16_2_6_8_32_8_66_8_66_8_66_8_66_8_66(v165, "[SUUIMobileScanOperation cachedScanResults:]", v69, v116, v127, v126, v125);
            _os_log_error_impl(&dword_26B0B9000, v66, v67, "%s [%{public}@|%{public}@]: One of the required cached fields is/are missing. Skipping on using the cached SUScanResults version.\n\t- TTL: %{public}@\n\t- Audience: %{public}@\n\t- OS Version: %{public}@", v165, 0x3Eu);
            MEMORY[0x277D82BD8](v65);
            MEMORY[0x277D82BD8](identifier8);
            objc_storeStrong(&v116, 0);
            objc_storeStrong(&v117, 0);
          }

          objc_storeStrong(&oslog7, 0);
          [(SUUIMobileScanOperation *)selfCopy removeCachedScanResults];
          v140 = 0;
          v120 = 1;
        }
      }

      else
      {
        scanOperationLogger9 = [MEMORY[0x277D64B58] scanOperationLogger];
        oslog8 = [scanOperationLogger9 oslog];
        MEMORY[0x277D82BD8](scanOperationLogger9);
        v123 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog8, OS_LOG_TYPE_DEFAULT))
        {
          v73 = oslog8;
          v74 = v123;
          identifier9 = [(SUUIMobileScanOperation *)selfCopy identifier];
          v76 = MEMORY[0x277D82BE0](identifier9);
          v122 = v76;
          v155 = selfCopy->_operationType;
          if (v155)
          {
            if (v155 == 1)
            {
              v156 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v155 == 2)
            {
              v156 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v156 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v156 = MEMORY[0x277D82BE0](@"N");
          }

          v71 = v156;
          v5 = v156;
          v72 = v71;
          v121 = MEMORY[0x277D82BE0](v72);
          __os_log_helper_16_2_3_8_32_8_66_8_66(v166, "[SUUIMobileScanOperation cachedScanResults:]", v76, v121);
          _os_log_impl(&dword_26B0B9000, v73, v74, "%s [%{public}@|%{public}@]: No cached version of SUScanResults has been found.", v166, 0x20u);
          MEMORY[0x277D82BD8](v72);
          MEMORY[0x277D82BD8](identifier9);
          objc_storeStrong(&v121, 0);
          objc_storeStrong(&v122, 0);
        }

        objc_storeStrong(&oslog8, 0);
        v140 = 0;
        v120 = 1;
      }

      objc_storeStrong(&v125, 0);
      objc_storeStrong(&v126, 0);
      objc_storeStrong(&v127, 0);
      objc_storeStrong(&v128, 0);
    }
  }

  else
  {
    v140 = 0;
  }

  v14 = v140;

  return v14;
}

- (void)cacheDiscoveredScanResults:(id)results
{
  v74 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  if (_os_feature_enabled_impl())
  {
    v61 = 0;
    mEMORY[0x277D64BD8] = [MEMORY[0x277D64BD8] sharedDefaults];
    scanResultsCachingDuration = [mEMORY[0x277D64BD8] scanResultsCachingDuration];
    MEMORY[0x277D82BD8](mEMORY[0x277D64BD8]);
    if (scanResultsCachingDuration)
    {
      date = [MEMORY[0x277CBEAA8] date];
      v3 = [date dateByAddingTimeInterval:{(60 * objc_msgSend(scanResultsCachingDuration, "intValue"))}];
      v4 = v61;
      v61 = v3;
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](date);
    }

    else if (os_variant_has_internal_content())
    {
      date2 = [MEMORY[0x277CBEAA8] date];
      v5 = [date2 dateByAddingTimeInterval:(60 * *MEMORY[0x277D64C50])];
      v6 = v61;
      v61 = v5;
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](date2);
    }

    else
    {
      date3 = [MEMORY[0x277CBEAA8] date];
      v7 = [date3 dateByAddingTimeInterval:(60 * *MEMORY[0x277D64C58])];
      v8 = v61;
      v61 = v7;
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](date3);
    }

    [(NSUserDefaults *)selfCopy->_userDefaultsSuite setObject:v61 forKey:@"SUCachedScanResultsTTL"];
    userDefaultsSuite = selfCopy->_userDefaultsSuite;
    pallasAudience = [(SUUIMobileScanOperation *)selfCopy pallasAudience];
    [NSUserDefaults setObject:"setObject:forKey:" forKey:?];
    MEMORY[0x277D82BD8](pallasAudience);
    v39 = selfCopy->_userDefaultsSuite;
    currentOSVersionIdentifier = [(SUUIMobileScanOperation *)selfCopy currentOSVersionIdentifier];
    [NSUserDefaults setObject:v39 forKey:"setObject:forKey:"];
    MEMORY[0x277D82BD8](currentOSVersionIdentifier);
    if (location[0])
    {
      v59 = 0;
      obj = 0;
      v36 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:location[0] requiringSecureCoding:1 error:&obj];
      objc_storeStrong(&v59, obj);
      v58 = v36;
      if (!v59 && v58)
      {
        [(NSUserDefaults *)selfCopy->_userDefaultsSuite setObject:v58 forKey:@"SUCachedScanResults"];
        scanOperationLogger = [MEMORY[0x277D64B58] scanOperationLogger];
        oslog = [scanOperationLogger oslog];
        MEMORY[0x277D82BD8](scanOperationLogger);
        v51 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v24 = oslog;
          v25 = v51;
          identifier = [(SUUIMobileScanOperation *)selfCopy identifier];
          v27 = MEMORY[0x277D82BE0](identifier);
          v50 = v27;
          operationType = selfCopy->_operationType;
          if (operationType)
          {
            if (operationType == 1)
            {
              v68 = MEMORY[0x277D82BE0](@"F");
            }

            else if (operationType == 2)
            {
              v68 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v68 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v68 = MEMORY[0x277D82BE0](@"N");
          }

          v20 = v68;
          v10 = v68;
          v23 = v20;
          v21 = MEMORY[0x277D82BE0](v23);
          v49 = v21;
          v22 = location[0];
          v11 = [v58 length];
          __os_log_helper_16_2_6_8_32_8_66_8_66_8_2_8_2_8_66(v72, "[SUUIMobileScanOperation cacheDiscoveredScanResults:]", v27, v21, v22, v11, v61);
          _os_log_impl(&dword_26B0B9000, v24, v25, "%s [%{public}@|%{public}@]: Caching the discovered SUScanResults %{public}p (data length: %{public}lu) with TTL: %{public}@", v72, 0x3Eu);
          MEMORY[0x277D82BD8](v23);
          MEMORY[0x277D82BD8](identifier);
          objc_storeStrong(&v49, 0);
          objc_storeStrong(&v50, 0);
        }

        objc_storeStrong(&oslog, 0);
        v62 = 0;
      }

      else
      {
        scanOperationLogger2 = [MEMORY[0x277D64B58] scanOperationLogger];
        oslog = [scanOperationLogger2 oslog];
        MEMORY[0x277D82BD8](scanOperationLogger2);
        type = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          log = oslog;
          v32 = type;
          identifier2 = [(SUUIMobileScanOperation *)selfCopy identifier];
          v34 = MEMORY[0x277D82BE0](identifier2);
          v54 = v34;
          v69 = selfCopy->_operationType;
          if (v69)
          {
            if (v69 == 1)
            {
              v70 = MEMORY[0x277D82BE0](@"F");
            }

            else if (v69 == 2)
            {
              v70 = MEMORY[0x277D82BE0](@"R");
            }

            else
            {
              v70 = MEMORY[0x277D82BE0](@"N/A");
            }
          }

          else
          {
            v70 = MEMORY[0x277D82BE0](@"N");
          }

          v29 = v70;
          v9 = v70;
          v30 = v29;
          v53 = MEMORY[0x277D82BE0](v30);
          __os_log_helper_16_2_5_8_32_8_66_8_66_8_2_8_66(v73, "[SUUIMobileScanOperation cacheDiscoveredScanResults:]", v34, v53, location[0], v59);
          _os_log_error_impl(&dword_26B0B9000, log, v32, "%s [%{public}@|%{public}@]: Failed to archive SUScanResults (%{public}p): %{public}@", v73, 0x34u);
          MEMORY[0x277D82BD8](v30);
          MEMORY[0x277D82BD8](identifier2);
          objc_storeStrong(&v53, 0);
          objc_storeStrong(&v54, 0);
        }

        objc_storeStrong(&oslog, 0);
        [(SUUIMobileScanOperation *)selfCopy removeCachedScanResults];
        v62 = 1;
      }

      objc_storeStrong(&v58, 0);
      objc_storeStrong(&v59, 0);
      if (v62)
      {
        goto LABEL_44;
      }
    }

    else
    {
      scanOperationLogger3 = [MEMORY[0x277D64B58] scanOperationLogger];
      oslog2 = [scanOperationLogger3 oslog];
      MEMORY[0x277D82BD8](scanOperationLogger3);
      v47 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
      {
        v15 = oslog2;
        v16 = v47;
        identifier3 = [(SUUIMobileScanOperation *)selfCopy identifier];
        v18 = MEMORY[0x277D82BE0](identifier3);
        v46 = v18;
        v65 = selfCopy->_operationType;
        if (v65)
        {
          if (v65 == 1)
          {
            v66 = MEMORY[0x277D82BE0](@"F");
          }

          else if (v65 == 2)
          {
            v66 = MEMORY[0x277D82BE0](@"R");
          }

          else
          {
            v66 = MEMORY[0x277D82BE0](@"N/A");
          }
        }

        else
        {
          v66 = MEMORY[0x277D82BE0](@"N");
        }

        v13 = v66;
        v12 = v66;
        v14 = v13;
        v45 = MEMORY[0x277D82BE0](v14);
        __os_log_helper_16_2_4_8_32_8_66_8_66_8_66(v71, "[SUUIMobileScanOperation cacheDiscoveredScanResults:]", v18, v45, v61);
        _os_log_impl(&dword_26B0B9000, v15, v16, "%s [%{public}@|%{public}@]: Caching an up-to-date SUScanResults with TTL: %{public}@", v71, 0x2Au);
        MEMORY[0x277D82BD8](v14);
        MEMORY[0x277D82BD8](identifier3);
        objc_storeStrong(&v45, 0);
        objc_storeStrong(&v46, 0);
      }

      objc_storeStrong(&oslog2, 0);
    }

    v62 = 0;
LABEL_44:
    objc_storeStrong(&scanResultsCachingDuration, 0);
    objc_storeStrong(&v61, 0);
    goto LABEL_45;
  }

  v62 = 1;
LABEL_45:
  objc_storeStrong(location, 0);
}

- (void)removeCachedScanResults
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v12[1] = a2;
  if (_os_feature_enabled_impl())
  {
    scanOperationLogger = [MEMORY[0x277D64B58] scanOperationLogger];
    v12[0] = [scanOperationLogger oslog];
    MEMORY[0x277D82BD8](scanOperationLogger);
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v12[0], OS_LOG_TYPE_DEFAULT))
    {
      log = v12[0];
      type = v11;
      identifier = [(SUUIMobileScanOperation *)selfCopy identifier];
      v7 = MEMORY[0x277D82BE0](identifier);
      v10 = v7;
      operationType = selfCopy->_operationType;
      if (operationType)
      {
        if (operationType == 1)
        {
          v15 = MEMORY[0x277D82BE0](@"F");
        }

        else if (operationType == 2)
        {
          v15 = MEMORY[0x277D82BE0](@"R");
        }

        else
        {
          v15 = MEMORY[0x277D82BE0](@"N/A");
        }
      }

      else
      {
        v15 = MEMORY[0x277D82BE0](@"N");
      }

      v2 = v15;
      v3 = v15;
      v9 = MEMORY[0x277D82BE0](v3);
      __os_log_helper_16_2_3_8_32_8_66_8_66(v16, "[SUUIMobileScanOperation removeCachedScanResults]", v7, v9);
      _os_log_impl(&dword_26B0B9000, log, type, "%s [%{public}@|%{public}@]: Removing the currently stored cached SUScanResults", v16, 0x20u);
      MEMORY[0x277D82BD8](v3);
      MEMORY[0x277D82BD8](identifier);
      objc_storeStrong(&v9, 0);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(v12, 0);
    [(NSUserDefaults *)selfCopy->_userDefaultsSuite removeObjectForKey:@"SUCachedScanResults"];
    [(NSUserDefaults *)selfCopy->_userDefaultsSuite removeObjectForKey:@"SUCachedScanResultsTTL"];
    [(NSUserDefaults *)selfCopy->_userDefaultsSuite removeObjectForKey:@"SUCachedAudience"];
    [(NSUserDefaults *)selfCopy->_userDefaultsSuite removeObjectForKey:@"SUCachedOSVersion"];
  }
}

- (id)currentOSVersionIdentifier
{
  v13[2] = self;
  v13[1] = a2;
  v13[0] = _CFCopySupplementalVersionDictionary();
  if (v13[0])
  {
    v11 = [v13[0] objectForKeyedSubscript:*MEMORY[0x277CBEC70]];
    v10 = [v13[0] objectForKeyedSubscript:*MEMORY[0x277CBEC88]];
    v9 = [v13[0] objectForKeyedSubscript:*MEMORY[0x277CBEC80]];
    array = [MEMORY[0x277CBEB18] array];
    if (v11)
    {
      [array addObject:v11];
    }

    if (v10)
    {
      [array addObject:v10];
    }

    if (v9)
    {
      [array addObject:v9];
    }

    if (os_variant_has_internal_content())
    {
      [array addObject:@"Internal"];
    }

    v14 = [array componentsJoinedByString:@"|"];
    v12 = 1;
    objc_storeStrong(&array, 0);
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v11, 0);
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    v6 = CFCopySystemVersionString();
    has_internal_content = os_variant_has_internal_content();
    v3 = @"Internal";
    if ((has_internal_content & 1) == 0)
    {
      v3 = @"Release";
    }

    v14 = [v7 stringWithFormat:@"%@|%@", v6, v3];
    v12 = 1;
  }

  objc_storeStrong(v13, 0);
  v4 = v14;

  return v4;
}

- (BOOL)shouldConsiderErrorAsSuccessfulCase:(id)case
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, case);
  if (location[0])
  {
    domain = [location[0] domain];
    v6 = [domain isEqualToString:*MEMORY[0x277D64910]];
    MEMORY[0x277D82BD8](domain);
    if (v6)
    {
      code = [location[0] code];
      v4 = 1;
      if (code != 3)
      {
        v4 = 1;
        if (code != 55)
        {
          v4 = 1;
          if (code != 13)
          {
            v4 = 1;
            if (code != 11)
            {
              v4 = code == 14;
            }
          }
        }
      }

      v9 = v4;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  objc_storeStrong(location, 0);
  return v9 & 1;
}

- (void)invalidateMachine
{
  if (self->_activity)
  {
    if (self->_activity->var2)
    {
      os_activity_scope_leave(&self->_activity->var0);
    }

    free(self->_activity);
    self->_activity = 0;
  }

  fullScanCompletionHandler = self->_fullScanCompletionHandler;
  self->_fullScanCompletionHandler = 0;
  MEMORY[0x277D82BD8](fullScanCompletionHandler);
  refreshScanCompletionHandler = self->_refreshScanCompletionHandler;
  self->_refreshScanCompletionHandler = 0;
  MEMORY[0x277D82BD8](refreshScanCompletionHandler);
  cancelHandler = self->_cancelHandler;
  self->_cancelHandler = 0;
  MEMORY[0x277D82BD8](cancelHandler);
  self->_operationType = 0;
}

- (id)baseDomain
{
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [v2 initWithFormat:@"%@.stateful-ui.scan.%@", *MEMORY[0x277D64C30], self->_identifier];

  return v3;
}

@end