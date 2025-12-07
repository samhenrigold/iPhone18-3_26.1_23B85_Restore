@interface SUUIStatefulUIManager
+ (id)_generateStateTable;
- (BOOL)assignScanResults:(id)results;
- (BOOL)doesTargetedUpdateMatchDescriptor:(id)descriptor;
- (BOOL)doesTargetedUpdateMatchDescriptorRole:(unint64_t)role;
- (BOOL)getEnrollInBetaUpdatesStatus;
- (BOOL)hasHiddenDescriptors;
- (BOOL)isDelayingUpdate;
- (BOOL)isPerformingFullScan;
- (BOOL)isPerformingRefresh;
- (BOOL)isPerformingUpdate;
- (BOOL)isPreferredUpdatePromotedAsAlternate;
- (BOOL)updateOperationShouldPerformUnattendedPurge:(id)purge;
- (SUUIDownload)currentDownload;
- (SUUIStatefulUIEnvironment)environment;
- (SUUIStatefulUIManager)initWithEnvironment:(id)environment;
- (SUUIStatefulUIManagerDelegate)delegate;
- (id)contextForDownloadAndInstallUpdateOperation:(id)operation;
- (id)contextForDownloadAndScheduleUpdateOperation:(id)operation;
- (id)contextForDownloadUpdateOperation:(id)operation;
- (id)contextForFullScanOperation:(id)operation withThirdPartyScanResults:(id)results scanError:(id)error forceReloadScanResults:(BOOL)scanResults;
- (id)contextForInstallUpdateOperation:(id)operation;
- (id)contextForPurgeUpdateOperation:(id)operation forUserRequestedOperation:(BOOL)requestedOperation notifyUser:(BOOL)user;
- (id)contextForRefreshScanOperation:(id)operation withPreviouslyDiscoveredDownload:(id)download encounteredError:(id)error;
- (id)contextForScheduleUpdateOperation:(id)operation;
- (id)contextForUserPromotionUpdateOperation:(id)operation;
- (id)contextForUserUnscheduleUpdateOperation:(id)operation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)currentInstalledNeRDInfo;
- (id)latestUpdateStatefulDescriptor;
- (id)targetedUpdateForDownload:(id)download;
- (id)targetedUpdateMatchingDescriptor:(id)descriptor;
- (id)targetedUpdateStatefulDescriptor;
- (int64_t)convertFSMStateToUIState:(id)state;
- (int64_t)fsmAction_CheckForAvailableUpdate:(id)update error:(id *)error;
- (int64_t)fsmAction_RefreshScanResults:(id)results error:(id *)error;
- (int64_t)fsmAction_ReportNoUpdateFound:(id)found error:(id *)error;
- (int64_t)fsmAction_ReportRefreshScanResults:(id)results error:(id *)error;
- (int64_t)fsmAction_ReportRefreshScanResultsFailed:(id)failed error:(id *)error;
- (int64_t)fsmAction_ReportScanFailed:(id)failed error:(id *)error;
- (int64_t)fsmAction_ReportUpdatesAvailable:(id)available error:(id *)error;
- (int64_t)fsmAction_actionUnknownAction:(id)action error:(id *)error;
- (int64_t)performAction:(id)action onEvent:(id)event inState:(id)state withInfo:(id)info nextState:(id)nextState error:(id *)error;
- (void)assignDescriptorOfType:(unint64_t)type fromSearchResults:(id)results;
- (void)assignDownloadAndScheduleUpdateResults:(id)results;
- (void)assignDownloadUpdateResults:(id)results;
- (void)assignFullScanResults:(id)results;
- (void)assignInstallUpdateResults:(id)results;
- (void)assignScheduleUpdateResults:(id)results;
- (void)assignUnscheduleUpdateResults:(id)results;
- (void)assignUserPromotionUpdateResults:(id)results;
- (void)checkForAvailableUpdates:(BOOL)updates forceScan:(BOOL)scan;
- (void)checkForAvailableUpdatesWithCompletion:(id)completion;
- (void)checkForAvailableUpdatesWithForcedReload:(BOOL)reload completion:(id)completion;
- (void)checkForAvailableUpdatesWithRetriesCount:(unsigned __int8)count;
- (void)checkForUpdatesInBackground:(BOOL)background forceScan:(BOOL)scan;
- (void)checkForUpdatesInBackgroundWithCompletion:(id)completion;
- (void)checkForUpdatesInBackgroundWithForcedReload:(BOOL)reload completion:(id)completion;
- (void)clearPastDownload:(id)download;
- (void)clearPastScanResults;
- (void)doEnrollInBetaUpdatesProgram:(id)program activity:(suui_activity_s *)activity completionHandler:(id)handler;
- (void)doEnrollInBetaUpdatesProgram:(id)program afterPurgeConfirmation:(int64_t)confirmation activity:(suui_activity_s *)activity completionHandler:(id)handler;
- (void)doUnenrollFromBetaUpdates:(suui_activity_s *)updates completionHandler:(id)handler;
- (void)doUnenrollFromBetaUpdatesAfterPurgeConfirmation:(int64_t)confirmation activity:(suui_activity_s *)activity completionHandler:(id)handler;
- (void)downloadAndInstall:(id)install operationDelegate:(id)delegate delegateCallbackQueue:(id)queue completionHandler:(id)handler;
- (void)downloadAndScheduleUpdate:(id)update operationDelegate:(id)delegate delegateCallbackQueue:(id)queue completionHandler:(id)handler;
- (void)downloadUpdate:(id)update operationDelegate:(id)delegate delegateCallbackQueue:(id)queue completionHandler:(id)handler;
- (void)enrollInBetaUpdatesProgram:(id)program completionHandler:(id)handler;
- (void)executeOperationOnDelegate:(SEL)delegate usingBlock:(id)block;
- (void)handleFailedFullScan:(id)scan;
- (void)handleFullScanResults:(id)results;
- (void)handleRefreshScanResults:(id)results;
- (void)hideAlternateUpdate;
- (void)hideNonTargetedUpdateDescriptors;
- (void)hidePreferredUpdate;
- (void)installUpdate:(id)update operationDelegate:(id)delegate delegateCallbackQueue:(id)queue completionHandler:(id)handler;
- (void)notifyFullScanResultsDelegates:(id)delegates andError:(id)error;
- (void)notifyRefreshScanResultsDelegates:(id)delegates andError:(id)error;
- (void)performFullScan:(id)scan;
- (void)performFullScanWithScanResults:(id)results andScanError:(id)error;
- (void)performPostUpdateOperationRefreshWithDownload:(id)download error:(id)error completionHandler:(id)handler;
- (void)performRefreshScan:(id)scan;
- (void)performSelector:(SEL)selector onTarget:(id)target withObject:(id)object withObject:(id)withObject withObject:(id)a7 withObject:(id)a8;
- (void)performUpdateOnDownloadByApplyingSelector:(SEL)selector context:(id)context description:(id)description delegate:(id)delegate delegateCallbackQueue:(id)queue resultsValidation:(id)validation resultsAssignment:(id)assignment completion:(id)self0;
- (void)performUpdateOperation:(int64_t)operation withDescriptor:(id)descriptor byApplyingSelector:(SEL)selector context:(id)context auxiliaryOperation:(BOOL)auxiliaryOperation delegate:(id)delegate delegateCallbackQueue:(id)queue resultsValidation:(id)self0 resultsAssignment:(id)self1 completion:(id)self2;
- (void)promoteTargetedUpdateToUserInitiatedStatus:(id)status delegateCallbackQueue:(id)queue completionHandler:(id)handler;
- (void)refreshBetaUpdates:(id)updates;
- (void)refreshBetaUpdates:(id)updates withRecheckForAvailableUpdates:(BOOL)availableUpdates;
- (void)refreshStateWithCompletion:(id)completion;
- (void)refreshStateWithCompletion:(id)completion forced:(BOOL)forced;
- (void)revealHiddenAlteranteUpdate;
- (void)revealHiddenPreferredUpdate;
- (void)scheduleUpdate:(id)update operationDelegate:(id)delegate delegateCallbackQueue:(id)queue completionHandler:(id)handler;
- (void)setCurrentDownload:(id)download;
- (void)setupFSM;
- (void)unenrollFromBetaUpdatesWithCompletion:(id)completion;
- (void)unscheduleTargetedUpdateAutomaticInstallation:(id)installation delegateCallbackQueue:(id)queue completionHandler:(id)handler;
- (void)updateDescriptorsUsingScanResults:(id)results andWithConcreteError:(id)error;
- (void)updateNeRDVersionWithOptions:(id)options;
@end

@implementation SUUIStatefulUIManager

- (SUUIDownload)currentDownload
{
  selfCopy = self;
  v4[2] = a2;
  v4[0] = 3;
  p_lock = &self->_lock;
  v7 = 0;
  os_unfair_recursive_lock_lock_with_options();
  v4[1] = p_lock;
  v6 = MEMORY[0x277D82BE0](selfCopy->_currentDownload);
  v9 = v4;
  os_unfair_recursive_lock_unlock();
  v2 = v6;

  return v2;
}

- (void)setCurrentDownload:(id)download
{
  v29 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, download);
  currentDownload = [(SUUIStatefulUIManager *)selfCopy currentDownload];
  if (location[0] != currentDownload || ([currentDownload isUninitialized] & 1) != 0)
  {
    v6 = +[SUUILoggingContext statefulUILogger];
    oslog = [v6 oslog];
    MEMORY[0x277D82BD8](v6);
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = selfCopy;
      v18 = 0;
      v16 = 0;
      v14 = 0;
      if (currentDownload && (v19 = [currentDownload descriptor], v18 = 1, v19))
      {
        descriptor = [currentDownload descriptor];
        v16 = 1;
        updateName = [descriptor updateName];
        v14 = 1;
        v4 = updateName;
      }

      else
      {
        v4 = @"N/A";
      }

      v12 = 0;
      v10 = 0;
      v8 = 0;
      if (location[0] && (v13 = [location[0] descriptor], v12 = 1, v13))
      {
        descriptor2 = [location[0] descriptor];
        v10 = 1;
        updateName2 = [descriptor2 updateName];
        v8 = 1;
        v3 = updateName2;
      }

      else
      {
        v3 = @"N/A";
      }

      __os_log_helper_16_2_7_8_32_8_0_8_32_8_66_8_0_8_66_8_0(v28, "[SUUIStatefulUIManager setCurrentDownload:]", v5, "[SUUIStatefulUIManager setCurrentDownload:]", v4, currentDownload, v3, location[0]);
      _os_log_impl(&dword_26ADE5000, oslog, v20, "%s [%p]: %s: Replacing the current download object with a new one.\n\tCurrent: %{public}@ (%p)\n\tNew: %{public}@ (%p)\n", v28, 0x48u);
      if (v8)
      {
        MEMORY[0x277D82BD8](updateName2);
      }

      if (v10)
      {
        MEMORY[0x277D82BD8](descriptor2);
      }

      if (v12)
      {
        MEMORY[0x277D82BD8](v13);
      }

      if (v14)
      {
        MEMORY[0x277D82BD8](updateName);
      }

      if (v16)
      {
        MEMORY[0x277D82BD8](descriptor);
      }

      if (v18)
      {
        MEMORY[0x277D82BD8](v19);
      }
    }

    objc_storeStrong(&oslog, 0);
    v7[0] = 3;
    p_lock = &selfCopy->_lock;
    v25 = 0;
    os_unfair_recursive_lock_lock_with_options();
    v7[1] = p_lock;
    objc_storeStrong(&selfCopy->_currentDownload, location[0]);
    v27 = v7;
    os_unfair_recursive_lock_unlock();
  }

  objc_storeStrong(&currentDownload, 0);
  objc_storeStrong(location, 0);
}

- (SUUIStatefulUIManager)initWithEnvironment:(id)environment
{
  v32 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, environment);
  v3 = selfCopy;
  selfCopy = 0;
  v26.receiver = v3;
  v26.super_class = SUUIStatefulUIManager;
  v21 = [(SUUIStatefulUIManager *)&v26 init];
  selfCopy = v21;
  objc_storeStrong(&selfCopy, v21);
  if (!v21)
  {
LABEL_9:
    v29 = MEMORY[0x277D82BE0](selfCopy);
    v23 = 1;
    goto LABEL_10;
  }

  objc_storeWeak(selfCopy + 3, location[0]);
  *(selfCopy + 5) = 0;
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = *(selfCopy + 24);
  *(selfCopy + 24) = v4;
  MEMORY[0x277D82BD8](v5);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = *(selfCopy + 29);
  *(selfCopy + 29) = v6;
  MEMORY[0x277D82BD8](v7);
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = *(selfCopy + 30);
  *(selfCopy + 30) = v8;
  MEMORY[0x277D82BD8](v9);
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.stateful-ui.manager.operations-queue", @"com.apple.SoftwareUpdateUI"];
  v10 = v19;
  v11 = dispatch_queue_create([v19 UTF8String], 0);
  v12 = *(selfCopy + 26);
  *(selfCopy + 26) = v11;
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v19);
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.stateful-ui.manager.mutation-queue", @"com.apple.SoftwareUpdateUI"];
  v13 = v20;
  v14 = dispatch_queue_create([v20 UTF8String], 0);
  v15 = *(selfCopy + 27);
  *(selfCopy + 27) = v14;
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v20);
  v25[1] = 0;
  *(selfCopy + 28) = 0;
  [selfCopy setupFSM];
  if (*(selfCopy + 25))
  {
    v17 = +[SUUILoggingContext statefulUILogger];
    oslog = [v17 oslog];
    MEMORY[0x277D82BD8](v17);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_32_8_0(v30, "[SUUIStatefulUIManager initWithEnvironment:]", selfCopy);
      _os_log_impl(&dword_26ADE5000, oslog, OS_LOG_TYPE_DEFAULT, "%s [%p]: Initialized the Stateful UI Manager", v30, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    goto LABEL_9;
  }

  v18 = +[SUUILoggingContext statefulUILogger];
  v25[0] = [v18 oslog];
  MEMORY[0x277D82BD8](v18);
  v24 = OS_LOG_TYPE_FAULT;
  if (os_log_type_enabled(v25[0], OS_LOG_TYPE_FAULT))
  {
    __os_log_helper_16_2_2_8_32_8_0(v31, "[SUUIStatefulUIManager initWithEnvironment:]", selfCopy);
    _os_log_fault_impl(&dword_26ADE5000, v25[0], v24, "%s [%p]: Failed creating the manager FSM", v31, 0x16u);
  }

  objc_storeStrong(v25, 0);
  v29 = 0;
  v23 = 1;
LABEL_10:
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v29;
}

- (void)checkForAvailableUpdates:(BOOL)updates forceScan:(BOOL)scan
{
  selfCopy = self;
  v7 = a2;
  updatesCopy = updates;
  scanCopy = scan;
  v4 = objc_alloc_init(SUUIStatefulUIManagerFSMParam);
  [(SUUIStatefulUIManagerFSMParam *)v4 setForceReload:updatesCopy];
  [(SUUIStatefulUIManagerFSMParam *)v4 setForceScan:scanCopy];
  [(SUCoreFSM *)selfCopy->_managerFSM postEvent:@"CheckForAvailableUpdate" withInfo:v4];
  objc_storeStrong(&v4, 0);
}

- (void)checkForAvailableUpdatesWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  [(SUUIStatefulUIManager *)selfCopy checkForAvailableUpdatesWithForcedReload:0 completion:location[0]];
  objc_storeStrong(location, 0);
}

- (void)checkForAvailableUpdatesWithForcedReload:(BOOL)reload completion:(id)completion
{
  selfCopy = self;
  v16 = a2;
  reloadCopy = reload;
  location = 0;
  objc_storeStrong(&location, completion);
  objc_initWeak(&v13, selfCopy);
  queue = selfCopy->_operationsQueue;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __77__SUUIStatefulUIManager_checkForAvailableUpdatesWithForcedReload_completion___block_invoke;
  v9 = &unk_279CC6208;
  objc_copyWeak(v11, &v13);
  v11[1] = v16;
  v10 = MEMORY[0x277D82BE0](location);
  v12 = reloadCopy;
  dispatch_async(queue, &v5);
  objc_storeStrong(&v10, 0);
  objc_destroyWeak(v11);
  objc_destroyWeak(&v13);
  objc_storeStrong(&location, 0);
}

void __77__SUUIStatefulUIManager_checkForAvailableUpdatesWithForcedReload_completion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v22[2] = a1;
  v22[1] = a1;
  v22[0] = objc_loadWeakRetained((a1 + 40));
  v10 = 0;
  if (!v22[0])
  {
    v9 = +[SUUILoggingContext softwareUpdateUILogger];
    v21 = [v9 oslog];
    MEMORY[0x277D82BD8](v9);
    v20 = 16;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      log = v21;
      type = v20;
      v8 = NSStringFromSelector(*(a1 + 48));
      v19 = MEMORY[0x277D82BE0](v8);
      __os_log_helper_16_2_2_8_32_8_66(v23, "[SUUIStatefulUIManager checkForAvailableUpdatesWithForcedReload:completion:]_block_invoke", v19);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v23, 0x16u);
      MEMORY[0x277D82BD8](v8);
      objc_storeStrong(&v19, 0);
    }

    objc_storeStrong(&v21, 0);
    v18 = 1;
    v10 = 1;
  }

  if (v10)
  {
    v4 = MEMORY[0x277D85CD0];
    v1 = MEMORY[0x277D85CD0];
    queue = v4;
    v12 = MEMORY[0x277D85DD0];
    v13 = -1073741824;
    v14 = 0;
    v15 = __77__SUUIStatefulUIManager_checkForAvailableUpdatesWithForcedReload_completion___block_invoke_317;
    v16 = &unk_279CC61E0;
    v17 = MEMORY[0x277D82BE0](*(a1 + 32));
    dispatch_async(queue, &v12);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v17, 0);
  }

  else
  {
    v2 = *(v22[0] + 29);
    v3 = MEMORY[0x26D66ADC0](*(a1 + 32));
    [v2 addObject:?];
    MEMORY[0x277D82BD8](v3);
    [v22[0] checkForAvailableUpdates:*(a1 + 56) & 1];
  }

  objc_storeStrong(v22, 0);
}

void __77__SUUIStatefulUIManager_checkForAvailableUpdatesWithForcedReload_completion___block_invoke_317(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:?];
    v1 = 1;
    (*(location[0] + 2))(location[0], 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

- (void)refreshStateWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  [(SUUIStatefulUIManager *)selfCopy refreshStateWithCompletion:location[0] forced:0];
  objc_storeStrong(location, 0);
}

- (void)refreshStateWithCompletion:(id)completion forced:(BOOL)forced
{
  selfCopy = self;
  v17 = a2;
  location = 0;
  objc_storeStrong(&location, completion);
  forcedCopy = forced;
  objc_initWeak(&v14, selfCopy);
  queue = selfCopy->_operationsQueue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __59__SUUIStatefulUIManager_refreshStateWithCompletion_forced___block_invoke;
  v10 = &unk_279CC6208;
  objc_copyWeak(v12, &v14);
  v12[1] = v17;
  v11 = MEMORY[0x277D82BE0](location);
  v13 = forcedCopy;
  dispatch_async(queue, &v6);
  objc_storeStrong(&v11, 0);
  objc_destroyWeak(v12);
  objc_destroyWeak(&v14);
  objc_storeStrong(&location, 0);
}

void __59__SUUIStatefulUIManager_refreshStateWithCompletion_forced___block_invoke(id *a1)
{
  v151 = a1;
  v152 = "[SUUIStatefulUIManager refreshStateWithCompletion:forced:]_block_invoke";
  v153 = "[SUUIStatefulUIManager refreshStateWithCompletion:forced:]_block_invoke_2";
  v224 = *MEMORY[0x277D85DE8];
  v212[2] = a1;
  v212[1] = a1;
  v212[0] = objc_loadWeakRetained(a1 + 5);
  v150 = 0;
  if (!v212[0])
  {
    v149 = +[SUUILoggingContext softwareUpdateUILogger];
    oslog = [v149 oslog];
    MEMORY[0x277D82BD8](v149);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v145 = type;
      v147 = NSStringFromSelector(v151[6]);
      location = &v209;
      v209 = MEMORY[0x277D82BE0](v147);
      buf = v223;
      __os_log_helper_16_2_2_8_32_8_66(v223, v152, v209);
      _os_log_error_impl(&dword_26ADE5000, log, v145[0], "%s: Self is nil in %{public}@. Stopping.", v223, 0x16u);
      MEMORY[0x277D82BD8](v147);
      objc_storeStrong(&v209, 0);
    }

    objc_storeStrong(&oslog, 0);
    v208 = 1;
    v150 = 1;
  }

  if (v150)
  {
    v140 = MEMORY[0x277D85CD0];
    v1 = MEMORY[0x277D85CD0];
    queue = v140;
    block = &v202;
    v202 = MEMORY[0x277D85DD0];
    v203 = -1073741824;
    v204 = 0;
    v205 = __59__SUUIStatefulUIManager_refreshStateWithCompletion_forced___block_invoke_320;
    v206 = &unk_279CC61E0;
    v143 = &v207;
    v207 = MEMORY[0x277D82BE0](v151[4]);
    dispatch_async(queue, &v202);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v207, 0);
    v201 = 1;
  }

  else
  {
    if (v151[4])
    {
      v138 = *(v212[0] + 30);
      v139 = MEMORY[0x26D66ADC0](v151[4]);
      [v138 addObject:?];
      MEMORY[0x277D82BD8](v139);
    }

    v137 = [v212[0] currentRefreshScanOperation];
    MEMORY[0x277D82BD8](v137);
    if (v137)
    {
      v136 = +[SUUILoggingContext statefulUILogger];
      v200 = [v136 oslog];
      MEMORY[0x277D82BD8](v136);
      v199 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT))
      {
        v127 = v200;
        *v128 = v199;
        v129 = v212[0];
        v2 = objc_opt_class();
        v130 = NSStringFromClass(v2);
        v131 = MEMORY[0x277D82BE0](v130);
        v198 = v131;
        v132 = SUUIStatefulUIStateToString(*(v212[0] + 5));
        v133 = MEMORY[0x277D82BE0](v132);
        v197 = v133;
        v134 = [v212[0] currentState];
        v135 = [v212[0] delegate];
        v195 = 0;
        v193 = 0;
        if (v135)
        {
          v196 = [v212[0] delegate];
          v125 = 1;
          v195 = 1;
          v3 = objc_opt_class();
          v194 = NSStringFromClass(v3);
          v193 = 1;
          v126 = v194;
        }

        else
        {
          v126 = @"(null)";
        }

        v119 = v126;
        v120 = [v212[0] delegate];
        v121 = [v212[0] scanError];
        v122 = [v212[0] preferredStatefulDescriptor];
        v123 = [v212[0] alternateStatefulDescriptor];
        v124 = [v212[0] currentDownload];
        v191 = 0;
        v189 = 0;
        v187 = 0;
        if (v124)
        {
          v192 = [v212[0] currentDownload];
          v117 = 1;
          v191 = 1;
          v190 = [v192 descriptor];
          v189 = 1;
          v188 = [v190 updateName];
          v187 = 1;
          v118 = v188;
        }

        else
        {
          v118 = @"(null)";
        }

        v94 = v118;
        v95 = [v212[0] currentDownload];
        v96 = SUUIUpdateContinuousOperationTypeToString([v212[0] currentUpdateOperationType]);
        v97 = MEMORY[0x277D82BE0](v96);
        v186 = v97;
        v220 = [v212[0] isTargetedUpdateScheduledForAutoInstall];
        v107 = @"NO";
        v108 = @"YES";
        v115 = 1;
        if (v220)
        {
          v4 = @"YES";
        }

        else
        {
          v4 = @"NO";
        }

        v98 = v4;
        v5 = v4;
        v99 = v98;
        v100 = MEMORY[0x277D82BE0](v99);
        v185 = v100;
        v219 = [v212[0] hidingPreferredDescriptor];
        if (v219)
        {
          v6 = v108;
        }

        else
        {
          v6 = v107;
        }

        v101 = v6;
        v7 = v6;
        v102 = v101;
        v103 = MEMORY[0x277D82BE0](v102);
        v184 = v103;
        v104 = [v212[0] hiddenPreferredStatefulDescriptor];
        v105 = [v104 updateName];
        v106 = MEMORY[0x277D82BE0](v105);
        v183 = v106;
        v218 = [v212[0] hidingAlternateDescriptor];
        if (v218)
        {
          v8 = v108;
        }

        else
        {
          v8 = v107;
        }

        v109 = v8;
        v9 = v8;
        v110 = v109;
        v111 = MEMORY[0x277D82BE0](v110);
        v182 = v111;
        v112 = [v212[0] hiddenAlternateStatefulDescriptor];
        v113 = [v112 updateName];
        v114 = MEMORY[0x277D82BE0](v113);
        v181 = v114;
        v116 = [v212[0] enrolledBetaProgram];
        v179 = 0;
        if (v116)
        {
          v180 = [v212[0] enrolledBetaProgram];
          v179 = 1;
          v93 = [v180 programID];
        }

        else
        {
          v93 = 0;
        }

        v84 = v93;
        v85 = [*(v212[0] + 15) count];
        v217 = [v212[0] canEnrollInBetaUpdates];
        if (v217)
        {
          v10 = @"YES";
        }

        else
        {
          v10 = @"NO";
        }

        v83 = v10;
        v11 = v10;
        v92 = v83;
        v86 = MEMORY[0x277D82BE0](v92);
        v178 = v86;
        v87 = *(v212[0] + 21);
        v88 = *(v212[0] + 22);
        v89 = *(v212[0] + 23);
        v12 = [*(v212[0] + 24) count];
        v90 = v25;
        v91 = v222;
        __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v222, v153, v129, v131, v133, v134, v119, v120, v121, v122, v123, v94, v95, v97, v100, v103, v106, v111, v114, v84, v85, v86, v87, v88, v89, v12);
        _os_log_impl(&dword_26ADE5000, v127, v128[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA refresh operation is already running. Skipping on this refresh request without transitioning to the RefreshingScanResults state.", v91, 0xFCu);
        MEMORY[0x277D82BD8](v92);
        if (v179)
        {
          MEMORY[0x277D82BD8](v180);
        }

        MEMORY[0x277D82BD8](v116);
        MEMORY[0x277D82BD8](v113);
        MEMORY[0x277D82BD8](v112);
        MEMORY[0x277D82BD8](v110);
        MEMORY[0x277D82BD8](v105);
        MEMORY[0x277D82BD8](v104);
        MEMORY[0x277D82BD8](v102);
        MEMORY[0x277D82BD8](v99);
        MEMORY[0x277D82BD8](v96);
        MEMORY[0x277D82BD8](v95);
        if (v187)
        {
          MEMORY[0x277D82BD8](v188);
        }

        if (v189)
        {
          MEMORY[0x277D82BD8](v190);
        }

        if (v191)
        {
          MEMORY[0x277D82BD8](v192);
        }

        MEMORY[0x277D82BD8](v124);
        MEMORY[0x277D82BD8](v123);
        MEMORY[0x277D82BD8](v122);
        MEMORY[0x277D82BD8](v121);
        MEMORY[0x277D82BD8](v120);
        if (v193)
        {
          MEMORY[0x277D82BD8](v194);
        }

        if (v195)
        {
          MEMORY[0x277D82BD8](v196);
        }

        MEMORY[0x277D82BD8](v135);
        MEMORY[0x277D82BD8](v132);
        MEMORY[0x277D82BD8](v130);
        obj = 0;
        objc_storeStrong(&v178, 0);
        objc_storeStrong(&v181, obj);
        objc_storeStrong(&v182, obj);
        objc_storeStrong(&v183, obj);
        objc_storeStrong(&v184, obj);
        objc_storeStrong(&v185, obj);
        objc_storeStrong(&v186, obj);
        objc_storeStrong(&v197, obj);
        objc_storeStrong(&v198, obj);
      }

      objc_storeStrong(&v200, 0);
      v201 = 1;
    }

    else
    {
      v81 = [v212[0] currentFullScanOperation];
      MEMORY[0x277D82BD8](v81);
      if (v81)
      {
        v80 = +[SUUILoggingContext statefulUILogger];
        v177 = [v80 oslog];
        MEMORY[0x277D82BD8](v80);
        v176 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v177, OS_LOG_TYPE_DEFAULT))
        {
          v71 = v177;
          *v72 = v176;
          v73 = v212[0];
          v13 = objc_opt_class();
          v74 = NSStringFromClass(v13);
          v75 = MEMORY[0x277D82BE0](v74);
          v175 = v75;
          v76 = SUUIStatefulUIStateToString(*(v212[0] + 5));
          v77 = MEMORY[0x277D82BE0](v76);
          v174 = v77;
          v78 = [v212[0] currentState];
          v79 = [v212[0] delegate];
          v172 = 0;
          v170 = 0;
          if (v79)
          {
            v173 = [v212[0] delegate];
            v69 = 1;
            v172 = 1;
            v14 = objc_opt_class();
            v171 = NSStringFromClass(v14);
            v170 = 1;
            v70 = v171;
          }

          else
          {
            v70 = @"(null)";
          }

          v63 = v70;
          v64 = [v212[0] delegate];
          v65 = [v212[0] scanError];
          v66 = [v212[0] preferredStatefulDescriptor];
          v67 = [v212[0] alternateStatefulDescriptor];
          v68 = [v212[0] currentDownload];
          v168 = 0;
          v166 = 0;
          v164 = 0;
          if (v68)
          {
            v169 = [v212[0] currentDownload];
            v61 = 1;
            v168 = 1;
            v167 = [v169 descriptor];
            v166 = 1;
            v165 = [v167 updateName];
            v164 = 1;
            v62 = v165;
          }

          else
          {
            v62 = @"(null)";
          }

          v38 = v62;
          v39 = [v212[0] currentDownload];
          v40 = SUUIUpdateContinuousOperationTypeToString([v212[0] currentUpdateOperationType]);
          v41 = MEMORY[0x277D82BE0](v40);
          v163 = v41;
          v216 = [v212[0] isTargetedUpdateScheduledForAutoInstall];
          v51 = @"NO";
          v52 = @"YES";
          v59 = 1;
          if (v216)
          {
            v15 = @"YES";
          }

          else
          {
            v15 = @"NO";
          }

          v42 = v15;
          v16 = v15;
          v43 = v42;
          v44 = MEMORY[0x277D82BE0](v43);
          v162 = v44;
          v215 = [v212[0] hidingPreferredDescriptor];
          if (v215)
          {
            v17 = v52;
          }

          else
          {
            v17 = v51;
          }

          v45 = v17;
          v18 = v17;
          v46 = v45;
          v47 = MEMORY[0x277D82BE0](v46);
          v161 = v47;
          v48 = [v212[0] hiddenPreferredStatefulDescriptor];
          v49 = [v48 updateName];
          v50 = MEMORY[0x277D82BE0](v49);
          v160 = v50;
          v214 = [v212[0] hidingAlternateDescriptor];
          if (v214)
          {
            v19 = v52;
          }

          else
          {
            v19 = v51;
          }

          v53 = v19;
          v20 = v19;
          v54 = v53;
          v55 = MEMORY[0x277D82BE0](v54);
          v159 = v55;
          v56 = [v212[0] hiddenAlternateStatefulDescriptor];
          v57 = [v56 updateName];
          v58 = MEMORY[0x277D82BE0](v57);
          v158 = v58;
          v60 = [v212[0] enrolledBetaProgram];
          v156 = 0;
          if (v60)
          {
            v157 = [v212[0] enrolledBetaProgram];
            v156 = 1;
            v37 = [v157 programID];
          }

          else
          {
            v37 = 0;
          }

          v28 = v37;
          v29 = [*(v212[0] + 15) count];
          v213 = [v212[0] canEnrollInBetaUpdates];
          if (v213)
          {
            v21 = @"YES";
          }

          else
          {
            v21 = @"NO";
          }

          v27 = v21;
          v22 = v21;
          v36 = v27;
          v30 = MEMORY[0x277D82BE0](v36);
          v155 = v30;
          v31 = *(v212[0] + 21);
          v32 = *(v212[0] + 22);
          v33 = *(v212[0] + 23);
          v23 = [*(v212[0] + 24) count];
          v34 = v25;
          v35 = v221;
          __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v221, v152, v73, v75, v77, v78, v63, v64, v65, v66, v67, v38, v39, v41, v44, v47, v50, v55, v58, v28, v29, v30, v31, v32, v33, v23);
          _os_log_impl(&dword_26ADE5000, v71, v72[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA full scan operation is already running. Skipping on this refresh requestwithout transitioning to the RefreshingScanResults state.", v35, 0xFCu);
          MEMORY[0x277D82BD8](v36);
          if (v156)
          {
            MEMORY[0x277D82BD8](v157);
          }

          MEMORY[0x277D82BD8](v60);
          MEMORY[0x277D82BD8](v57);
          MEMORY[0x277D82BD8](v56);
          MEMORY[0x277D82BD8](v54);
          MEMORY[0x277D82BD8](v49);
          MEMORY[0x277D82BD8](v48);
          MEMORY[0x277D82BD8](v46);
          MEMORY[0x277D82BD8](v43);
          MEMORY[0x277D82BD8](v40);
          MEMORY[0x277D82BD8](v39);
          if (v164)
          {
            MEMORY[0x277D82BD8](v165);
          }

          if (v166)
          {
            MEMORY[0x277D82BD8](v167);
          }

          if (v168)
          {
            MEMORY[0x277D82BD8](v169);
          }

          MEMORY[0x277D82BD8](v68);
          MEMORY[0x277D82BD8](v67);
          MEMORY[0x277D82BD8](v66);
          MEMORY[0x277D82BD8](v65);
          MEMORY[0x277D82BD8](v64);
          if (v170)
          {
            MEMORY[0x277D82BD8](v171);
          }

          if (v172)
          {
            MEMORY[0x277D82BD8](v173);
          }

          MEMORY[0x277D82BD8](v79);
          MEMORY[0x277D82BD8](v76);
          MEMORY[0x277D82BD8](v74);
          v26 = 0;
          objc_storeStrong(&v155, 0);
          objc_storeStrong(&v158, v26);
          objc_storeStrong(&v159, v26);
          objc_storeStrong(&v160, v26);
          objc_storeStrong(&v161, v26);
          objc_storeStrong(&v162, v26);
          objc_storeStrong(&v163, v26);
          objc_storeStrong(&v174, v26);
          objc_storeStrong(&v175, v26);
        }

        objc_storeStrong(&v177, 0);
        v201 = 1;
      }

      else
      {
        v25[19] = &v154;
        v154 = objc_alloc_init(SUUIStatefulUIManagerFSMParam);
        [(SUUIStatefulUIManagerFSMParam *)v154 setForceReload:v151[7] & 1];
        [(SUUIStatefulUIManagerFSMParam *)v154 setRefreshHasAnyChanges:0];
        v24 = [v212[0] currentState];
        [(SUUIStatefulUIManagerFSMParam *)v154 setRefreshPreviousState:v24];
        [*(v212[0] + 25) postEvent:@"RefreshScanResults" withInfo:v154];
        objc_storeStrong(&v154, 0);
        v201 = 0;
      }
    }
  }

  objc_storeStrong(v212, 0);
}

void __59__SUUIStatefulUIManager_refreshStateWithCompletion_forced___block_invoke_320(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:?];
    v1 = 1;
    (*(location[0] + 2))(location[0], 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

- (void)checkForUpdatesInBackground:(BOOL)background forceScan:(BOOL)scan
{
  selfCopy = self;
  v7 = a2;
  backgroundCopy = background;
  scanCopy = scan;
  v4 = objc_alloc_init(SUUIStatefulUIManagerFSMParam);
  [(SUUIStatefulUIManagerFSMParam *)v4 setForceReload:backgroundCopy];
  [(SUUIStatefulUIManagerFSMParam *)v4 setForceScan:scanCopy];
  [(SUUIStatefulUIManager *)selfCopy performFullScan:v4];
  objc_storeStrong(&v4, 0);
}

- (void)checkForUpdatesInBackgroundWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  [(SUUIStatefulUIManager *)selfCopy checkForUpdatesInBackgroundWithForcedReload:0 completion:location[0]];
  objc_storeStrong(location, 0);
}

- (void)checkForUpdatesInBackgroundWithForcedReload:(BOOL)reload completion:(id)completion
{
  selfCopy = self;
  v16 = a2;
  reloadCopy = reload;
  location = 0;
  objc_storeStrong(&location, completion);
  objc_initWeak(&v13, selfCopy);
  queue = selfCopy->_operationsQueue;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __80__SUUIStatefulUIManager_checkForUpdatesInBackgroundWithForcedReload_completion___block_invoke;
  v9 = &unk_279CC6208;
  objc_copyWeak(v11, &v13);
  v11[1] = v16;
  v10 = MEMORY[0x277D82BE0](location);
  v12 = reloadCopy;
  dispatch_async(queue, &v5);
  objc_storeStrong(&v10, 0);
  objc_destroyWeak(v11);
  objc_destroyWeak(&v13);
  objc_storeStrong(&location, 0);
}

void __80__SUUIStatefulUIManager_checkForUpdatesInBackgroundWithForcedReload_completion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v22[2] = a1;
  v22[1] = a1;
  v22[0] = objc_loadWeakRetained((a1 + 40));
  v10 = 0;
  if (!v22[0])
  {
    v9 = +[SUUILoggingContext softwareUpdateUILogger];
    v21 = [v9 oslog];
    MEMORY[0x277D82BD8](v9);
    v20 = 16;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      log = v21;
      type = v20;
      v8 = NSStringFromSelector(*(a1 + 48));
      v19 = MEMORY[0x277D82BE0](v8);
      __os_log_helper_16_2_2_8_32_8_66(v23, "[SUUIStatefulUIManager checkForUpdatesInBackgroundWithForcedReload:completion:]_block_invoke", v19);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v23, 0x16u);
      MEMORY[0x277D82BD8](v8);
      objc_storeStrong(&v19, 0);
    }

    objc_storeStrong(&v21, 0);
    v18 = 1;
    v10 = 1;
  }

  if (v10)
  {
    v4 = MEMORY[0x277D85CD0];
    v1 = MEMORY[0x277D85CD0];
    queue = v4;
    v12 = MEMORY[0x277D85DD0];
    v13 = -1073741824;
    v14 = 0;
    v15 = __80__SUUIStatefulUIManager_checkForUpdatesInBackgroundWithForcedReload_completion___block_invoke_325;
    v16 = &unk_279CC61E0;
    v17 = MEMORY[0x277D82BE0](*(a1 + 32));
    dispatch_async(queue, &v12);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v17, 0);
  }

  else
  {
    v2 = *(v22[0] + 29);
    v3 = MEMORY[0x26D66ADC0](*(a1 + 32));
    [v2 addObject:?];
    MEMORY[0x277D82BD8](v3);
    [v22[0] checkForUpdatesInBackground:*(a1 + 56) & 1];
  }

  objc_storeStrong(v22, 0);
}

void __80__SUUIStatefulUIManager_checkForUpdatesInBackgroundWithForcedReload_completion___block_invoke_325(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:?];
    v1 = 1;
    (*(location[0] + 2))(location[0], 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

- (BOOL)doesTargetedUpdateMatchDescriptorRole:(unint64_t)role
{
  v84 = &v104;
  v85 = "[SUUIStatefulUIManager doesTargetedUpdateMatchDescriptorRole:]";
  v118 = *MEMORY[0x277D85DE8];
  v111[3] = self;
  v111[2] = a2;
  v111[1] = role;
  if (!role || *(v84 + 11) == 1)
  {
    v23 = *(v84 + 11);
    v88 = 0;
    v86 = 0;
    if (v23)
    {
      alternateStatefulDescriptor = [*(v84 + 13) alternateStatefulDescriptor];
      v86 = 1;
      v26 = alternateStatefulDescriptor;
    }

    else
    {
      preferredStatefulDescriptor = [*(v84 + 13) preferredStatefulDescriptor];
      v88 = 1;
      v26 = preferredStatefulDescriptor;
    }

    v90 = MEMORY[0x277D82BE0](v26);
    if (v86)
    {
      MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    }

    if (v88)
    {
      MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    }

    v112 = [*(v84 + 13) doesTargetedUpdateMatchDescriptor:v90] & 1;
    objc_storeStrong(&v90, 0);
  }

  else
  {
    v83 = +[SUUILoggingContext statefulUILogger];
    oslog = [v83 oslog];
    v4 = v83;
    *(v84 + 10) = oslog;
    MEMORY[0x277D82BD8](v4);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(*(v84 + 10), OS_LOG_TYPE_DEFAULT))
    {
      log = *(v84 + 10);
      *v75 = type;
      v76 = *(v84 + 13);
      v5 = objc_opt_class();
      v77 = NSStringFromClass(v5);
      v6 = MEMORY[0x277D82BE0](v77);
      v7 = v84;
      v78 = v6;
      *(v84 + 8) = v6;
      v79 = SUUIStatefulUIStateToString(*(*(v7 + 13) + 40));
      v8 = MEMORY[0x277D82BE0](v79);
      v9 = v84;
      v80 = v8;
      *(v84 + 7) = v8;
      currentState = [v9[13] currentState];
      delegate = [*(v84 + 13) delegate];
      v107 = 0;
      v106 = 0;
      if (delegate)
      {
        *(v84 + 6) = [*(v84 + 13) delegate];
        v72 = 1;
        v107 = 1;
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        *(v84 + 4) = v11;
        v106 = 1;
        v73 = v11;
      }

      else
      {
        v73 = @"(null)";
      }

      v66 = v73;
      delegate2 = [*(v84 + 13) delegate];
      scanError = [*(v84 + 13) scanError];
      preferredStatefulDescriptor2 = [*(v84 + 13) preferredStatefulDescriptor];
      alternateStatefulDescriptor2 = [*(v84 + 13) alternateStatefulDescriptor];
      currentDownload = [*(v84 + 13) currentDownload];
      v105 = 0;
      v103 = 0;
      v101 = 0;
      if (currentDownload)
      {
        currentDownload2 = [*(v84 + 13) currentDownload];
        *(v84 + 2) = currentDownload2;
        v64 = 1;
        v105 = 1;
        descriptor = [currentDownload2 descriptor];
        *v84 = descriptor;
        v103 = 1;
        updateName = [descriptor updateName];
        v101 = v64 & 1;
        v65 = updateName;
      }

      else
      {
        v65 = @"(null)";
      }

      v41 = v65;
      currentDownload3 = [*(v84 + 13) currentDownload];
      v43 = SUUIUpdateContinuousOperationTypeToString([*(v84 + 13) currentUpdateOperationType]);
      v44 = MEMORY[0x277D82BE0](v43);
      v100 = v44;
      isTargetedUpdateScheduledForAutoInstall = [*(v84 + 13) isTargetedUpdateScheduledForAutoInstall];
      v54 = @"NO";
      v55 = @"YES";
      v62 = 1;
      if (isTargetedUpdateScheduledForAutoInstall)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      v45 = v14;
      v15 = v14;
      v46 = v45;
      v47 = MEMORY[0x277D82BE0](v46);
      v99 = v47;
      hidingPreferredDescriptor = [*(v84 + 13) hidingPreferredDescriptor];
      if (hidingPreferredDescriptor)
      {
        v16 = v55;
      }

      else
      {
        v16 = v54;
      }

      v48 = v16;
      v17 = v16;
      v49 = v48;
      v50 = MEMORY[0x277D82BE0](v49);
      v98 = v50;
      hiddenPreferredStatefulDescriptor = [*(v84 + 13) hiddenPreferredStatefulDescriptor];
      updateName2 = [hiddenPreferredStatefulDescriptor updateName];
      v53 = MEMORY[0x277D82BE0](updateName2);
      v97 = v53;
      hidingAlternateDescriptor = [*(v84 + 13) hidingAlternateDescriptor];
      if (hidingAlternateDescriptor)
      {
        v18 = v55;
      }

      else
      {
        v18 = v54;
      }

      v56 = v18;
      v19 = v18;
      v57 = v56;
      v58 = MEMORY[0x277D82BE0](v57);
      v96 = v58;
      hiddenAlternateStatefulDescriptor = [*(v84 + 13) hiddenAlternateStatefulDescriptor];
      updateName3 = [hiddenAlternateStatefulDescriptor updateName];
      v61 = MEMORY[0x277D82BE0](updateName3);
      v95 = v61;
      enrolledBetaProgram = [*(v84 + 13) enrolledBetaProgram];
      v93 = 0;
      if (enrolledBetaProgram)
      {
        enrolledBetaProgram2 = [*(v84 + 13) enrolledBetaProgram];
        v93 = 1;
        programID = [enrolledBetaProgram2 programID];
      }

      else
      {
        programID = 0;
      }

      v29 = programID;
      v30 = [*(*(v84 + 13) + 120) count];
      canEnrollInBetaUpdates = [*(v84 + 13) canEnrollInBetaUpdates];
      if (canEnrollInBetaUpdates)
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      v28 = v20;
      v21 = v20;
      v39 = v28;
      v31 = MEMORY[0x277D82BE0](v39);
      v92 = v31;
      v32 = *(*(v84 + 13) + 168);
      v33 = *(*(v84 + 13) + 176);
      v34 = *(*(v84 + 13) + 184);
      v35 = [*(*(v84 + 13) + 192) count];
      v38 = SUUIStatefulDescriptorRoleToString(*(v84 + 11));
      location = MEMORY[0x277D82BE0](v38);
      v22 = *(v84 + 11);
      v36 = &v25;
      buf = v117;
      __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_64_8_0(v117, v85, v76, v78, v80, currentState, v66, delegate2, scanError, preferredStatefulDescriptor2, alternateStatefulDescriptor2, v41, currentDownload3, v44, v47, v50, v53, v58, v61, v29, v30, v31, v32, v33, v34, v35, location, v22);
      _os_log_impl(&dword_26ADE5000, log, v75[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nThe given descriptor role, %@ (%ld), is invalid.", buf, 0x110u);
      MEMORY[0x277D82BD8](v38);
      MEMORY[0x277D82BD8](v39);
      if (v93)
      {
        MEMORY[0x277D82BD8](enrolledBetaProgram2);
      }

      MEMORY[0x277D82BD8](enrolledBetaProgram);
      MEMORY[0x277D82BD8](updateName3);
      MEMORY[0x277D82BD8](hiddenAlternateStatefulDescriptor);
      MEMORY[0x277D82BD8](v57);
      MEMORY[0x277D82BD8](updateName2);
      MEMORY[0x277D82BD8](hiddenPreferredStatefulDescriptor);
      MEMORY[0x277D82BD8](v49);
      MEMORY[0x277D82BD8](v46);
      MEMORY[0x277D82BD8](v43);
      MEMORY[0x277D82BD8](currentDownload3);
      if (v101)
      {
        MEMORY[0x277D82BD8](updateName);
      }

      if (v103)
      {
        MEMORY[0x277D82BD8](*v84);
      }

      if (v105)
      {
        MEMORY[0x277D82BD8](*(v84 + 2));
      }

      MEMORY[0x277D82BD8](currentDownload);
      MEMORY[0x277D82BD8](alternateStatefulDescriptor2);
      MEMORY[0x277D82BD8](preferredStatefulDescriptor2);
      MEMORY[0x277D82BD8](scanError);
      MEMORY[0x277D82BD8](delegate2);
      if (v106)
      {
        MEMORY[0x277D82BD8](*(v84 + 4));
      }

      if (v107)
      {
        MEMORY[0x277D82BD8](*(v84 + 6));
      }

      MEMORY[0x277D82BD8](delegate);
      MEMORY[0x277D82BD8](v79);
      MEMORY[0x277D82BD8](v77);
      obj = 0;
      objc_storeStrong(&location, 0);
      objc_storeStrong(&v92, obj);
      objc_storeStrong(&v95, obj);
      objc_storeStrong(&v96, obj);
      objc_storeStrong(&v97, obj);
      objc_storeStrong(&v98, obj);
      objc_storeStrong(&v99, obj);
      objc_storeStrong(&v100, obj);
      objc_storeStrong(&v108, obj);
      objc_storeStrong(&v109, obj);
    }

    objc_storeStrong(v111, 0);
    v112 = 0;
  }

  return v112 & 1;
}

- (BOOL)doesTargetedUpdateMatchDescriptor:(id)descriptor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  currentDownload = [(SUUIStatefulUIManager *)selfCopy currentDownload];
  v7 = 0;
  v5 = 0;
  v4 = 0;
  if (currentDownload)
  {
    descriptor = [currentDownload descriptor];
    v7 = 1;
    descriptor2 = [location[0] descriptor];
    v5 = 1;
    v4 = [descriptor isEqual:?];
  }

  v12 = v4 & 1;
  if (v5)
  {
    MEMORY[0x277D82BD8](descriptor2);
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](descriptor);
  }

  objc_storeStrong(&currentDownload, 0);
  objc_storeStrong(location, 0);
  return v12 & 1;
}

- (id)targetedUpdateStatefulDescriptor
{
  selfCopy = self;
  v4[1] = a2;
  v4[0] = [(SUUIStatefulUIManager *)self currentDownload];
  v3 = [(SUUIStatefulUIManager *)selfCopy targetedUpdateForDownload:v4[0]];
  objc_storeStrong(v4, 0);

  return v3;
}

- (id)latestUpdateStatefulDescriptor
{
  selfCopy = self;
  v11[1] = a2;
  v11[0] = [(SUUIStatefulUIManager *)self preferredStatefulDescriptor];
  alternateStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy alternateStatefulDescriptor];
  location = MEMORY[0x277D82BE0](v11[0]);
  if (location || !alternateStatefulDescriptor)
  {
    if (v11[0] && alternateStatefulDescriptor)
    {
      descriptor = [v11[0] descriptor];
      productBuildVersion = [descriptor productBuildVersion];
      MEMORY[0x277D82BD8](descriptor);
      descriptor2 = [alternateStatefulDescriptor descriptor];
      productBuildVersion2 = [descriptor2 productBuildVersion];
      MEMORY[0x277D82BD8](descriptor2);
      if ([productBuildVersion compare:productBuildVersion2 options:64] == -1)
      {
        objc_storeStrong(&location, alternateStatefulDescriptor);
      }

      else
      {
        objc_storeStrong(&location, v11[0]);
      }

      objc_storeStrong(&productBuildVersion2, 0);
      objc_storeStrong(&productBuildVersion, 0);
    }

    v13 = MEMORY[0x277D82BE0](location);
    v8 = 1;
  }

  else
  {
    v13 = MEMORY[0x277D82BE0](alternateStatefulDescriptor);
    v8 = 1;
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&alternateStatefulDescriptor, 0);
  objc_storeStrong(v11, 0);
  v2 = v13;

  return v2;
}

- (void)downloadUpdate:(id)update operationDelegate:(id)delegate delegateCallbackQueue:(id)queue completionHandler:(id)handler
{
  selfCopy = self;
  v45 = a2;
  location = 0;
  objc_storeStrong(&location, update);
  v43 = 0;
  objc_storeStrong(&v43, delegate);
  v42 = 0;
  objc_storeStrong(&v42, queue);
  v41 = 0;
  objc_storeStrong(&v41, handler);
  objc_initWeak(&v40, selfCopy);
  v33 = MEMORY[0x277D85DD0];
  v34 = -1073741824;
  v35 = 0;
  v36 = __98__SUUIStatefulUIManager_downloadUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke;
  v37 = &unk_279CC6230;
  v38 = MEMORY[0x277D82BE0](selfCopy);
  v39 = MEMORY[0x26D66ADC0](&v33);
  v32 = MEMORY[0x26D66ADC0](&__block_literal_global);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __98__SUUIStatefulUIManager_downloadUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_3;
  v29[3] = &unk_279CC6278;
  v30 = MEMORY[0x277D82BE0](selfCopy);
  v31 = MEMORY[0x26D66ADC0](v29);
  v20 = MEMORY[0x277D85DD0];
  v21 = -1073741824;
  v22 = 0;
  v23 = __98__SUUIStatefulUIManager_downloadUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_4;
  v24 = &unk_279CC62C8;
  objc_copyWeak(v27, &v40);
  v27[1] = v45;
  v26 = MEMORY[0x277D82BE0](v41);
  v25 = MEMORY[0x277D82BE0](location);
  v28 = MEMORY[0x26D66ADC0](&v20);
  v17 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
  if (v17)
  {
    v16 = _os_activity_create(&dword_26ADE5000, "com.apple.SoftwareUpdateUI.StatefulUI.Manager.DownloadOnly", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    v6 = v17[1].opaque[0];
    v17[1].opaque[0] = v16;
    MEMORY[0x277D82BD8](v6);
  }

  else
  {
    v9 = +[SUUILoggingContext softwareUpdateUILogger];
    oslog = [v9 oslog];
    MEMORY[0x277D82BD8](v9);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v8 = type;
      __os_log_helper_16_0_0(v13);
      _os_log_error_impl(&dword_26ADE5000, log, v8, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.Manager.DownloadOnly", v13, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  state = v17;
  if (v17)
  {
    os_activity_scope_enter(state[1].opaque[0], state);
    LOBYTE(state[1].opaque[1]) = 1;
  }

  v19 = state;
  [(SUUIStatefulUIManager *)selfCopy performUpdateOperation:1 withDescriptor:location byApplyingSelector:sel_downloadUpdate_withContext_delegate_completionHandler_ context:v39 auxiliaryOperation:0 delegate:v43 delegateCallbackQueue:v42 resultsValidation:&__block_literal_global resultsAssignment:v31 completion:v28];
  _SUUIActivityCleanup(&v19);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_destroyWeak(v27);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v38, 0);
  objc_destroyWeak(&v40);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&location, 0);
}

id __98__SUUIStatefulUIManager_downloadUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [a1[4] contextForDownloadUpdateOperation:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

uint64_t __98__SUUIStatefulUIManager_downloadUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7[1] = a1;
  v7[0] = MEMORY[0x277D82BE0](location[0]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = MEMORY[0x277D82BE0](v7[0]);
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](0);
  }

  v6 = v2;
  objc_storeStrong(v7, 0);
  v4 = [v6 isSuccess];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);
  return v4;
}

void __98__SUUIStatefulUIManager_downloadUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_3(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] assignDownloadUpdateResults:location[0]];
  objc_storeStrong(location, 0);
}

void __98__SUUIStatefulUIManager_downloadUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_4(uint64_t a1, char a2, id obj, void *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v40 = a1;
  v39 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v37 = 0;
  objc_storeStrong(&v37, a4);
  v36[1] = a1;
  v36[0] = objc_loadWeakRetained((a1 + 48));
  v11 = 0;
  if (!v36[0])
  {
    v10 = +[SUUILoggingContext softwareUpdateUILogger];
    v35 = [v10 oslog];
    MEMORY[0x277D82BD8](v10);
    v34 = 16;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      log = v35;
      type = v34;
      v7 = NSStringFromSelector(*(a1 + 56));
      v33 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v41, "[SUUIStatefulUIManager downloadUpdate:operationDelegate:delegateCallbackQueue:completionHandler:]_block_invoke_4", v33);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v41, 0x16u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v33, 0);
    }

    objc_storeStrong(&v35, 0);
    v32 = 1;
    v11 = 1;
  }

  if (v11)
  {
    v4 = MEMORY[0x277D85CD0];
    queue = MEMORY[0x277D85CD0];
    v26 = MEMORY[0x277D85DD0];
    v27 = -1073741824;
    v28 = 0;
    v29 = __98__SUUIStatefulUIManager_downloadUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_330;
    v30 = &unk_279CC61E0;
    v31 = MEMORY[0x277D82BE0](*(a1 + 40));
    dispatch_async(queue, &v26);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v31, 0);
    v25 = 1;
  }

  else
  {
    v24 = MEMORY[0x26D66ADC0](*(a1 + 40));
    if (v24)
    {
      (*(v24 + 2))(v24, location, v37);
      v23 = 0;
    }

    else
    {
      v22 = 0;
    }

    objc_storeStrong(&v24, 0);
    if (v39)
    {
      v5 = v36[0];
      v14 = MEMORY[0x277D85DD0];
      v15 = -1073741824;
      v16 = 0;
      v17 = __98__SUUIStatefulUIManager_downloadUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_2_333;
      v18 = &unk_279CC62A0;
      objc_copyWeak(v21, (a1 + 48));
      v21[1] = *(a1 + 56);
      v19 = MEMORY[0x277D82BE0](*(a1 + 32));
      v20 = MEMORY[0x277D82BE0](location);
      [v5 executeOperationOnDelegate:sel_statefulUIManager_didStartDownloadForDescriptor_withDownload_ usingBlock:&v14];
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v19, 0);
      objc_destroyWeak(v21);
    }

    v25 = 0;
  }

  objc_storeStrong(v36, 0);
  if (!v25)
  {
    v25 = 0;
  }

  objc_storeStrong(&v37, 0);
  objc_storeStrong(&location, 0);
}

void __98__SUUIStatefulUIManager_downloadUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_330(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0);
  }

  objc_storeStrong(location, 0);
}

void __98__SUUIStatefulUIManager_downloadUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_2_333(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v19[2] = a1;
  v19[1] = a1;
  v19[0] = objc_loadWeakRetained((a1 + 48));
  v10 = 0;
  if (!v19[0])
  {
    v9 = +[SUUILoggingContext softwareUpdateUILogger];
    v18 = [v9 oslog];
    MEMORY[0x277D82BD8](v9);
    v17 = 16;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      log = v18;
      type = v17;
      v8 = NSStringFromSelector(*(a1 + 56));
      v16 = MEMORY[0x277D82BE0](v8);
      __os_log_helper_16_2_2_8_32_8_66(v20, "[SUUIStatefulUIManager downloadUpdate:operationDelegate:delegateCallbackQueue:completionHandler:]_block_invoke_2", v16);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v20, 0x16u);
      MEMORY[0x277D82BD8](v8);
      objc_storeStrong(&v16, 0);
    }

    objc_storeStrong(&v18, 0);
    v15 = 1;
    v10 = 1;
  }

  if (v10)
  {
    v14 = 1;
  }

  else
  {
    v3 = [v19[0] delegate];
    v4 = v19[0];
    v5 = *(a1 + 32);
    v13 = MEMORY[0x277D82BE0](*(a1 + 40));
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v1 = MEMORY[0x277D82BE0](v13);
    }

    else
    {
      v1 = MEMORY[0x277D82BE0](0);
    }

    v12 = v1;
    objc_storeStrong(&v13, 0);
    v2 = [v12 download];
    [v3 statefulUIManager:v4 didStartDownloadForDescriptor:v5 withDownload:?];
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v3);
    v14 = 0;
  }

  objc_storeStrong(v19, 0);
}

- (void)downloadAndInstall:(id)install operationDelegate:(id)delegate delegateCallbackQueue:(id)queue completionHandler:(id)handler
{
  selfCopy = self;
  v45 = a2;
  location = 0;
  objc_storeStrong(&location, install);
  v43 = 0;
  objc_storeStrong(&v43, delegate);
  v42 = 0;
  objc_storeStrong(&v42, queue);
  v41 = 0;
  objc_storeStrong(&v41, handler);
  objc_initWeak(&v40, selfCopy);
  v33 = MEMORY[0x277D85DD0];
  v34 = -1073741824;
  v35 = 0;
  v36 = __102__SUUIStatefulUIManager_downloadAndInstall_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke;
  v37 = &unk_279CC62F0;
  v38 = MEMORY[0x277D82BE0](selfCopy);
  v39 = MEMORY[0x26D66ADC0](&v33);
  v32 = MEMORY[0x26D66ADC0](&__block_literal_global_339);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __102__SUUIStatefulUIManager_downloadAndInstall_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_3;
  v29[3] = &unk_279CC6278;
  v30 = MEMORY[0x277D82BE0](selfCopy);
  v31 = MEMORY[0x26D66ADC0](v29);
  v20 = MEMORY[0x277D85DD0];
  v21 = -1073741824;
  v22 = 0;
  v23 = __102__SUUIStatefulUIManager_downloadAndInstall_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_4;
  v24 = &unk_279CC62C8;
  objc_copyWeak(v27, &v40);
  v27[1] = v45;
  v26 = MEMORY[0x277D82BE0](v41);
  v25 = MEMORY[0x277D82BE0](location);
  v28 = MEMORY[0x26D66ADC0](&v20);
  v17 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
  if (v17)
  {
    v16 = _os_activity_create(&dword_26ADE5000, "com.apple.SoftwareUpdateUI.StatefulUI.Manager.UpdateNow", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    v6 = v17[1].opaque[0];
    v17[1].opaque[0] = v16;
    MEMORY[0x277D82BD8](v6);
  }

  else
  {
    v9 = +[SUUILoggingContext softwareUpdateUILogger];
    oslog = [v9 oslog];
    MEMORY[0x277D82BD8](v9);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v8 = type;
      __os_log_helper_16_0_0(v13);
      _os_log_error_impl(&dword_26ADE5000, log, v8, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.Manager.UpdateNow", v13, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  state = v17;
  if (v17)
  {
    os_activity_scope_enter(state[1].opaque[0], state);
    LOBYTE(state[1].opaque[1]) = 1;
  }

  v19 = state;
  [(SUUIStatefulUIManager *)selfCopy performUpdateOperation:2 withDescriptor:location byApplyingSelector:sel_downloadAndInstallUpdate_withContext_delegate_completionHandler_ context:v39 auxiliaryOperation:0 delegate:v43 delegateCallbackQueue:v42 resultsValidation:&__block_literal_global_339 resultsAssignment:v31 completion:v28];
  _SUUIActivityCleanup(&v19);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_destroyWeak(v27);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v38, 0);
  objc_destroyWeak(&v40);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&location, 0);
}

id __102__SUUIStatefulUIManager_downloadAndInstall_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [a1[4] contextForDownloadAndInstallUpdateOperation:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

uint64_t __102__SUUIStatefulUIManager_downloadAndInstall_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7[1] = a1;
  v7[0] = MEMORY[0x277D82BE0](location[0]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = MEMORY[0x277D82BE0](v7[0]);
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](0);
  }

  v6 = v2;
  objc_storeStrong(v7, 0);
  v4 = [v6 isSuccess];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);
  return v4;
}

void __102__SUUIStatefulUIManager_downloadAndInstall_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_3(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] assignDownloadUpdateResults:location[0]];
  objc_storeStrong(location, 0);
}

void __102__SUUIStatefulUIManager_downloadAndInstall_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_4(uint64_t a1, char a2, id obj, void *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v40 = a1;
  v39 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v37 = 0;
  objc_storeStrong(&v37, a4);
  v36[1] = a1;
  v36[0] = objc_loadWeakRetained((a1 + 48));
  v11 = 0;
  if (!v36[0])
  {
    v10 = +[SUUILoggingContext softwareUpdateUILogger];
    v35 = [v10 oslog];
    MEMORY[0x277D82BD8](v10);
    v34 = 16;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      log = v35;
      type = v34;
      v7 = NSStringFromSelector(*(a1 + 56));
      v33 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v41, "[SUUIStatefulUIManager downloadAndInstall:operationDelegate:delegateCallbackQueue:completionHandler:]_block_invoke_4", v33);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v41, 0x16u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v33, 0);
    }

    objc_storeStrong(&v35, 0);
    v32 = 1;
    v11 = 1;
  }

  if (v11)
  {
    v4 = MEMORY[0x277D85CD0];
    queue = MEMORY[0x277D85CD0];
    v26 = MEMORY[0x277D85DD0];
    v27 = -1073741824;
    v28 = 0;
    v29 = __102__SUUIStatefulUIManager_downloadAndInstall_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_340;
    v30 = &unk_279CC61E0;
    v31 = MEMORY[0x277D82BE0](*(a1 + 40));
    dispatch_async(queue, &v26);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v31, 0);
    v25 = 1;
  }

  else
  {
    v24 = MEMORY[0x26D66ADC0](*(a1 + 40));
    if (v24)
    {
      (*(v24 + 2))(v24, location, v37);
      v23 = 0;
    }

    else
    {
      v22 = 0;
    }

    objc_storeStrong(&v24, 0);
    if (v39)
    {
      v5 = v36[0];
      v14 = MEMORY[0x277D85DD0];
      v15 = -1073741824;
      v16 = 0;
      v17 = __102__SUUIStatefulUIManager_downloadAndInstall_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_2_341;
      v18 = &unk_279CC62A0;
      objc_copyWeak(v21, (a1 + 48));
      v21[1] = *(a1 + 56);
      v19 = MEMORY[0x277D82BE0](*(a1 + 32));
      v20 = MEMORY[0x277D82BE0](location);
      [v5 executeOperationOnDelegate:sel_statefulUIManager_didStartDownloadForDescriptor_withDownload_ usingBlock:&v14];
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v19, 0);
      objc_destroyWeak(v21);
    }

    v25 = 0;
  }

  objc_storeStrong(v36, 0);
  if (!v25)
  {
    v25 = 0;
  }

  objc_storeStrong(&v37, 0);
  objc_storeStrong(&location, 0);
}

void __102__SUUIStatefulUIManager_downloadAndInstall_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_340(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0);
  }

  objc_storeStrong(location, 0);
}

void __102__SUUIStatefulUIManager_downloadAndInstall_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_2_341(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v19[2] = a1;
  v19[1] = a1;
  v19[0] = objc_loadWeakRetained((a1 + 48));
  v10 = 0;
  if (!v19[0])
  {
    v9 = +[SUUILoggingContext softwareUpdateUILogger];
    v18 = [v9 oslog];
    MEMORY[0x277D82BD8](v9);
    v17 = 16;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      log = v18;
      type = v17;
      v8 = NSStringFromSelector(*(a1 + 56));
      v16 = MEMORY[0x277D82BE0](v8);
      __os_log_helper_16_2_2_8_32_8_66(v20, "[SUUIStatefulUIManager downloadAndInstall:operationDelegate:delegateCallbackQueue:completionHandler:]_block_invoke_2", v16);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v20, 0x16u);
      MEMORY[0x277D82BD8](v8);
      objc_storeStrong(&v16, 0);
    }

    objc_storeStrong(&v18, 0);
    v15 = 1;
    v10 = 1;
  }

  if (v10)
  {
    v14 = 1;
  }

  else
  {
    v3 = [v19[0] delegate];
    v4 = v19[0];
    v5 = *(a1 + 32);
    v13 = MEMORY[0x277D82BE0](*(a1 + 40));
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v1 = MEMORY[0x277D82BE0](v13);
    }

    else
    {
      v1 = MEMORY[0x277D82BE0](0);
    }

    v12 = v1;
    objc_storeStrong(&v13, 0);
    v2 = [v12 download];
    [v3 statefulUIManager:v4 didStartDownloadForDescriptor:v5 withDownload:?];
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v3);
    v14 = 0;
  }

  objc_storeStrong(v19, 0);
}

- (void)downloadAndScheduleUpdate:(id)update operationDelegate:(id)delegate delegateCallbackQueue:(id)queue completionHandler:(id)handler
{
  selfCopy = self;
  v45 = a2;
  location = 0;
  objc_storeStrong(&location, update);
  v43 = 0;
  objc_storeStrong(&v43, delegate);
  v42 = 0;
  objc_storeStrong(&v42, queue);
  v41 = 0;
  objc_storeStrong(&v41, handler);
  objc_initWeak(&v40, selfCopy);
  v33 = MEMORY[0x277D85DD0];
  v34 = -1073741824;
  v35 = 0;
  v36 = __109__SUUIStatefulUIManager_downloadAndScheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke;
  v37 = &unk_279CC6318;
  v38 = MEMORY[0x277D82BE0](selfCopy);
  v39 = MEMORY[0x26D66ADC0](&v33);
  v32 = MEMORY[0x26D66ADC0](&__block_literal_global_346);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __109__SUUIStatefulUIManager_downloadAndScheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_3;
  v29[3] = &unk_279CC6278;
  v30 = MEMORY[0x277D82BE0](selfCopy);
  v31 = MEMORY[0x26D66ADC0](v29);
  v20 = MEMORY[0x277D85DD0];
  v21 = -1073741824;
  v22 = 0;
  v23 = __109__SUUIStatefulUIManager_downloadAndScheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_4;
  v24 = &unk_279CC62C8;
  objc_copyWeak(v27, &v40);
  v27[1] = v45;
  v26 = MEMORY[0x277D82BE0](v41);
  v25 = MEMORY[0x277D82BE0](location);
  v28 = MEMORY[0x26D66ADC0](&v20);
  v17 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
  if (v17)
  {
    v16 = _os_activity_create(&dword_26ADE5000, "com.apple.SoftwareUpdateUI.StatefulUI.Manager.UpdateTonight", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    v6 = v17[1].opaque[0];
    v17[1].opaque[0] = v16;
    MEMORY[0x277D82BD8](v6);
  }

  else
  {
    v9 = +[SUUILoggingContext softwareUpdateUILogger];
    oslog = [v9 oslog];
    MEMORY[0x277D82BD8](v9);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v8 = type;
      __os_log_helper_16_0_0(v13);
      _os_log_error_impl(&dword_26ADE5000, log, v8, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.Manager.UpdateTonight", v13, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  state = v17;
  if (v17)
  {
    os_activity_scope_enter(state[1].opaque[0], state);
    LOBYTE(state[1].opaque[1]) = 1;
  }

  v19 = state;
  [(SUUIStatefulUIManager *)selfCopy performUpdateOperation:3 withDescriptor:location byApplyingSelector:sel_downloadAndScheduleUpdate_forInstallationTonightWithContext_delegate_completionHandler_ context:v39 auxiliaryOperation:0 delegate:v43 delegateCallbackQueue:v42 resultsValidation:&__block_literal_global_346 resultsAssignment:v31 completion:v28];
  _SUUIActivityCleanup(&v19);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_destroyWeak(v27);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v38, 0);
  objc_destroyWeak(&v40);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&location, 0);
}

id __109__SUUIStatefulUIManager_downloadAndScheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [a1[4] contextForDownloadAndScheduleUpdateOperation:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

uint64_t __109__SUUIStatefulUIManager_downloadAndScheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8[1] = a1;
  v7 = MEMORY[0x277D82BE0](location[0]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = MEMORY[0x277D82BE0](v7);
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](0);
  }

  v6 = v2;
  objc_storeStrong(&v7, 0);
  v8[0] = v6;
  v4 = 0;
  if ([v6 isSuccess])
  {
    v4 = [v8[0] isScheduled];
  }

  objc_storeStrong(v8, 0);
  objc_storeStrong(location, 0);
  return v4 & 1;
}

void __109__SUUIStatefulUIManager_downloadAndScheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_3(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] assignDownloadAndScheduleUpdateResults:location[0]];
  objc_storeStrong(location, 0);
}

void __109__SUUIStatefulUIManager_downloadAndScheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_4(uint64_t a1, char a2, id obj, void *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v40 = a1;
  v39 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v37 = 0;
  objc_storeStrong(&v37, a4);
  v36[1] = a1;
  v36[0] = objc_loadWeakRetained((a1 + 48));
  v11 = 0;
  if (!v36[0])
  {
    v10 = +[SUUILoggingContext softwareUpdateUILogger];
    v35 = [v10 oslog];
    MEMORY[0x277D82BD8](v10);
    v34 = 16;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      log = v35;
      type = v34;
      v7 = NSStringFromSelector(*(a1 + 56));
      v33 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v41, "[SUUIStatefulUIManager downloadAndScheduleUpdate:operationDelegate:delegateCallbackQueue:completionHandler:]_block_invoke_4", v33);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v41, 0x16u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v33, 0);
    }

    objc_storeStrong(&v35, 0);
    v32 = 1;
    v11 = 1;
  }

  if (v11)
  {
    v4 = MEMORY[0x277D85CD0];
    queue = MEMORY[0x277D85CD0];
    v26 = MEMORY[0x277D85DD0];
    v27 = -1073741824;
    v28 = 0;
    v29 = __109__SUUIStatefulUIManager_downloadAndScheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_348;
    v30 = &unk_279CC61E0;
    v31 = MEMORY[0x277D82BE0](*(a1 + 40));
    dispatch_async(queue, &v26);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v31, 0);
    v25 = 1;
  }

  else
  {
    v24 = MEMORY[0x26D66ADC0](*(a1 + 40));
    if (v24)
    {
      (*(v24 + 2))(v24, location, v37);
      v23 = 0;
    }

    else
    {
      v22 = 0;
    }

    objc_storeStrong(&v24, 0);
    if (v39)
    {
      v5 = v36[0];
      v14 = MEMORY[0x277D85DD0];
      v15 = -1073741824;
      v16 = 0;
      v17 = __109__SUUIStatefulUIManager_downloadAndScheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_2_349;
      v18 = &unk_279CC62A0;
      objc_copyWeak(v21, (a1 + 48));
      v21[1] = *(a1 + 56);
      v19 = MEMORY[0x277D82BE0](*(a1 + 32));
      v20 = MEMORY[0x277D82BE0](location);
      [v5 executeOperationOnDelegate:sel_statefulUIManager_didStartDownloadForDescriptor_withDownload_ usingBlock:&v14];
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v19, 0);
      objc_destroyWeak(v21);
    }

    v25 = 0;
  }

  objc_storeStrong(v36, 0);
  if (!v25)
  {
    v25 = 0;
  }

  objc_storeStrong(&v37, 0);
  objc_storeStrong(&location, 0);
}

void __109__SUUIStatefulUIManager_downloadAndScheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_348(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0);
  }

  objc_storeStrong(location, 0);
}

void __109__SUUIStatefulUIManager_downloadAndScheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_2_349(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v19[2] = a1;
  v19[1] = a1;
  v19[0] = objc_loadWeakRetained((a1 + 48));
  v10 = 0;
  if (!v19[0])
  {
    v9 = +[SUUILoggingContext softwareUpdateUILogger];
    v18 = [v9 oslog];
    MEMORY[0x277D82BD8](v9);
    v17 = 16;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      log = v18;
      type = v17;
      v8 = NSStringFromSelector(*(a1 + 56));
      v16 = MEMORY[0x277D82BE0](v8);
      __os_log_helper_16_2_2_8_32_8_66(v20, "[SUUIStatefulUIManager downloadAndScheduleUpdate:operationDelegate:delegateCallbackQueue:completionHandler:]_block_invoke_2", v16);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v20, 0x16u);
      MEMORY[0x277D82BD8](v8);
      objc_storeStrong(&v16, 0);
    }

    objc_storeStrong(&v18, 0);
    v15 = 1;
    v10 = 1;
  }

  if (v10)
  {
    v14 = 1;
  }

  else
  {
    v3 = [v19[0] delegate];
    v4 = v19[0];
    v5 = *(a1 + 32);
    v13 = MEMORY[0x277D82BE0](*(a1 + 40));
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v1 = MEMORY[0x277D82BE0](v13);
    }

    else
    {
      v1 = MEMORY[0x277D82BE0](0);
    }

    v12 = v1;
    objc_storeStrong(&v13, 0);
    v2 = [v12 download];
    [v3 statefulUIManager:v4 didStartDownloadForDescriptor:v5 withDownload:?];
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v3);
    v14 = 0;
  }

  objc_storeStrong(v19, 0);
}

- (void)installUpdate:(id)update operationDelegate:(id)delegate delegateCallbackQueue:(id)queue completionHandler:(id)handler
{
  selfCopy = self;
  v45 = a2;
  location = 0;
  objc_storeStrong(&location, update);
  v43 = 0;
  objc_storeStrong(&v43, delegate);
  v42 = 0;
  objc_storeStrong(&v42, queue);
  v41 = 0;
  objc_storeStrong(&v41, handler);
  objc_initWeak(&v40, selfCopy);
  v33 = MEMORY[0x277D85DD0];
  v34 = -1073741824;
  v35 = 0;
  v36 = __97__SUUIStatefulUIManager_installUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke;
  v37 = &unk_279CC6340;
  v38 = MEMORY[0x277D82BE0](selfCopy);
  v39 = MEMORY[0x26D66ADC0](&v33);
  v32 = MEMORY[0x26D66ADC0](&__block_literal_global_354);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __97__SUUIStatefulUIManager_installUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_3;
  v29[3] = &unk_279CC6278;
  v30 = MEMORY[0x277D82BE0](selfCopy);
  v31 = MEMORY[0x26D66ADC0](v29);
  v20 = MEMORY[0x277D85DD0];
  v21 = -1073741824;
  v22 = 0;
  v23 = __97__SUUIStatefulUIManager_installUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_4;
  v24 = &unk_279CC62C8;
  objc_copyWeak(v27, &v40);
  v27[1] = v45;
  v26 = MEMORY[0x277D82BE0](v41);
  v25 = MEMORY[0x277D82BE0](location);
  v28 = MEMORY[0x26D66ADC0](&v20);
  v17 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
  if (v17)
  {
    v16 = _os_activity_create(&dword_26ADE5000, "com.apple.SoftwareUpdateUI.StatefulUI.Manager.InstallNow", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    v6 = v17[1].opaque[0];
    v17[1].opaque[0] = v16;
    MEMORY[0x277D82BD8](v6);
  }

  else
  {
    v9 = +[SUUILoggingContext softwareUpdateUILogger];
    oslog = [v9 oslog];
    MEMORY[0x277D82BD8](v9);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v8 = type;
      __os_log_helper_16_0_0(v13);
      _os_log_error_impl(&dword_26ADE5000, log, v8, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.Manager.InstallNow", v13, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  state = v17;
  if (v17)
  {
    os_activity_scope_enter(state[1].opaque[0], state);
    LOBYTE(state[1].opaque[1]) = 1;
  }

  v19 = state;
  [(SUUIStatefulUIManager *)selfCopy performUpdateOperation:5 withDescriptor:location byApplyingSelector:sel_installUpdate_withContext_delegate_completionHandler_ context:v39 auxiliaryOperation:0 delegate:v43 delegateCallbackQueue:v42 resultsValidation:&__block_literal_global_354 resultsAssignment:v31 completion:v28];
  _SUUIActivityCleanup(&v19);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_destroyWeak(v27);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v38, 0);
  objc_destroyWeak(&v40);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&location, 0);
}

id __97__SUUIStatefulUIManager_installUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [a1[4] contextForInstallUpdateOperation:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

uint64_t __97__SUUIStatefulUIManager_installUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7[1] = a1;
  v7[0] = MEMORY[0x277D82BE0](location[0]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = MEMORY[0x277D82BE0](v7[0]);
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](0);
  }

  v6 = v2;
  objc_storeStrong(v7, 0);
  v4 = [v6 isSuccess];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);
  return v4;
}

void __97__SUUIStatefulUIManager_installUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_3(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] assignInstallUpdateResults:location[0]];
  objc_storeStrong(location, 0);
}

void __97__SUUIStatefulUIManager_installUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_4(uint64_t a1, char a2, id obj, void *a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v50 = a1;
  v49 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v47 = 0;
  objc_storeStrong(&v47, a4);
  v46[1] = a1;
  v46[0] = objc_loadWeakRetained((a1 + 48));
  v14 = 0;
  if (!v46[0])
  {
    v13 = +[SUUILoggingContext softwareUpdateUILogger];
    v45 = [v13 oslog];
    MEMORY[0x277D82BD8](v13);
    v44 = 16;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      log = v45;
      type = v44;
      v10 = NSStringFromSelector(*(a1 + 56));
      v43 = MEMORY[0x277D82BE0](v10);
      __os_log_helper_16_2_2_8_32_8_66(v51, "[SUUIStatefulUIManager installUpdate:operationDelegate:delegateCallbackQueue:completionHandler:]_block_invoke_4", v43);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v51, 0x16u);
      MEMORY[0x277D82BD8](v10);
      objc_storeStrong(&v43, 0);
    }

    objc_storeStrong(&v45, 0);
    v42 = 1;
    v14 = 1;
  }

  if (v14)
  {
    v4 = MEMORY[0x277D85CD0];
    queue = MEMORY[0x277D85CD0];
    v36 = MEMORY[0x277D85DD0];
    v37 = -1073741824;
    v38 = 0;
    v39 = __97__SUUIStatefulUIManager_installUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_356;
    v40 = &unk_279CC61E0;
    v41 = MEMORY[0x277D82BE0](*(a1 + 40));
    dispatch_async(queue, &v36);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v41, 0);
    v35 = 1;
  }

  else
  {
    v34 = MEMORY[0x277D82BE0](v47);
    v33 = [v46[0] targetedUpdateStatefulDescriptor];
    v7 = [v46[0] currentDownload];
    v8 = [v33 isDownloadable];
    v6 = [v33 updateDownloadError];
    v31 = 0;
    v29 = 0;
    v27 = 0;
    if (v34)
    {
      [v33 updateStateFromConcreteDownload:v7 downloadable:v8 downloadError:v6 isUpdateReadyForInstallation:0 updateInstallationError:v34 error:v34];
    }

    else
    {
      v32 = [v46[0] environment];
      v31 = 1;
      v30 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:4 userInfo:0];
      v29 = 1;
      v28 = [v32 statefulErrorWithError:?];
      v27 = 1;
      [v33 updateStateFromConcreteDownload:v7 downloadable:v8 downloadError:v6 isUpdateReadyForInstallation:0 updateInstallationError:v28 error:0];
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

    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    v26 = MEMORY[0x26D66ADC0](*(a1 + 40));
    if (v26)
    {
      (*(v26 + 2))(v26, location, v47);
      v25 = 0;
    }

    else
    {
      v24 = 0;
    }

    objc_storeStrong(&v26, 0);
    if (v49)
    {
      v5 = v46[0];
      v17 = MEMORY[0x277D85DD0];
      v18 = -1073741824;
      v19 = 0;
      v20 = __97__SUUIStatefulUIManager_installUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_2_359;
      v21 = &unk_279CC6368;
      objc_copyWeak(v23, (a1 + 48));
      v23[1] = *(a1 + 56);
      v22 = MEMORY[0x277D82BE0](*(a1 + 32));
      [v5 executeOperationOnDelegate:sel_statefulUIManager_didStartInstallingUpdateWithDescriptor_ usingBlock:&v17];
      objc_storeStrong(&v22, 0);
      objc_destroyWeak(v23);
    }

    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v34, 0);
    v35 = 0;
  }

  objc_storeStrong(v46, 0);
  if (!v35)
  {
    v35 = 0;
  }

  objc_storeStrong(&v47, 0);
  objc_storeStrong(&location, 0);
}

void __97__SUUIStatefulUIManager_installUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_356(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0);
  }

  objc_storeStrong(location, 0);
}

void __97__SUUIStatefulUIManager_installUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_2_359(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[2] = a1;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 40));
  v6 = 0;
  if (!v11[0])
  {
    v5 = +[SUUILoggingContext softwareUpdateUILogger];
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 48));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v12, "[SUUIStatefulUIManager installUpdate:operationDelegate:delegateCallbackQueue:completionHandler:]_block_invoke_2", v8);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v12, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v10, 0);
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    v1 = [v11[0] delegate];
    [v1 statefulUIManager:v11[0] didStartInstallingUpdateWithDescriptor:*(a1 + 32)];
    MEMORY[0x277D82BD8](v1);
  }

  objc_storeStrong(v11, 0);
}

- (void)scheduleUpdate:(id)update operationDelegate:(id)delegate delegateCallbackQueue:(id)queue completionHandler:(id)handler
{
  selfCopy = self;
  v44 = a2;
  location = 0;
  objc_storeStrong(&location, update);
  v42 = 0;
  objc_storeStrong(&v42, delegate);
  v41 = 0;
  objc_storeStrong(&v41, queue);
  v40 = 0;
  objc_storeStrong(&v40, handler);
  objc_initWeak(&v39, selfCopy);
  v32 = MEMORY[0x277D85DD0];
  v33 = -1073741824;
  v34 = 0;
  v35 = __98__SUUIStatefulUIManager_scheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke;
  v36 = &unk_279CC6390;
  v37 = MEMORY[0x277D82BE0](selfCopy);
  v38 = MEMORY[0x26D66ADC0](&v32);
  v31 = MEMORY[0x26D66ADC0](&__block_literal_global_364);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __98__SUUIStatefulUIManager_scheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_3;
  v28[3] = &unk_279CC6278;
  v29 = MEMORY[0x277D82BE0](selfCopy);
  v30 = MEMORY[0x26D66ADC0](v28);
  v20 = MEMORY[0x277D85DD0];
  v21 = -1073741824;
  v22 = 0;
  v23 = __98__SUUIStatefulUIManager_scheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_4;
  v24 = &unk_279CC63E0;
  objc_copyWeak(v26, &v39);
  v26[1] = v44;
  v25 = MEMORY[0x277D82BE0](v40);
  v27 = MEMORY[0x26D66ADC0](&v20);
  v17 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
  if (v17)
  {
    v16 = _os_activity_create(&dword_26ADE5000, "com.apple.SoftwareUpdateUI.StatefulUI.Manager.Schedule", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    v6 = v17[1].opaque[0];
    v17[1].opaque[0] = v16;
    MEMORY[0x277D82BD8](v6);
  }

  else
  {
    v9 = +[SUUILoggingContext softwareUpdateUILogger];
    oslog = [v9 oslog];
    MEMORY[0x277D82BD8](v9);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v8 = type;
      __os_log_helper_16_0_0(v13);
      _os_log_error_impl(&dword_26ADE5000, log, v8, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.Manager.Schedule", v13, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  state = v17;
  if (v17)
  {
    os_activity_scope_enter(state[1].opaque[0], state);
    LOBYTE(state[1].opaque[1]) = 1;
  }

  v19 = state;
  [(SUUIStatefulUIManager *)selfCopy performUpdateOperation:4 withDescriptor:location byApplyingSelector:sel_scheduleUpdate_forInstallationTonightWithContext_delegate_completionHandler_ context:v38 auxiliaryOperation:1 delegate:v42 delegateCallbackQueue:v41 resultsValidation:&__block_literal_global_364 resultsAssignment:v30 completion:v27];
  _SUUIActivityCleanup(&v19);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v25, 0);
  objc_destroyWeak(v26);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v37, 0);
  objc_destroyWeak(&v39);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&location, 0);
}

id __98__SUUIStatefulUIManager_scheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [a1[4] contextForScheduleUpdateOperation:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

uint64_t __98__SUUIStatefulUIManager_scheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7[1] = a1;
  v7[0] = MEMORY[0x277D82BE0](location[0]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = MEMORY[0x277D82BE0](v7[0]);
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](0);
  }

  v6 = v2;
  objc_storeStrong(v7, 0);
  v4 = [v6 isSuccess];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);
  return v4;
}

void __98__SUUIStatefulUIManager_scheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_3(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] assignScheduleUpdateResults:location[0]];
  objc_storeStrong(location, 0);
}

void __98__SUUIStatefulUIManager_scheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_4(uint64_t a1, char a2, id obj, void *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v38 = a1;
  v37 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v35 = 0;
  objc_storeStrong(&v35, a4);
  v34[1] = a1;
  v34[0] = objc_loadWeakRetained((a1 + 40));
  v11 = 0;
  if (!v34[0])
  {
    v10 = +[SUUILoggingContext softwareUpdateUILogger];
    v33 = [v10 oslog];
    MEMORY[0x277D82BD8](v10);
    v32 = 16;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      log = v33;
      type = v32;
      v7 = NSStringFromSelector(*(a1 + 48));
      v31 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v39, "[SUUIStatefulUIManager scheduleUpdate:operationDelegate:delegateCallbackQueue:completionHandler:]_block_invoke_4", v31);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v39, 0x16u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v31, 0);
    }

    objc_storeStrong(&v33, 0);
    v30 = 1;
    v11 = 1;
  }

  if (v11)
  {
    v4 = MEMORY[0x277D85CD0];
    queue = MEMORY[0x277D85CD0];
    v24 = MEMORY[0x277D85DD0];
    v25 = -1073741824;
    v26 = 0;
    v27 = __98__SUUIStatefulUIManager_scheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_366;
    v28 = &unk_279CC61E0;
    v29 = MEMORY[0x277D82BE0](*(a1 + 32));
    dispatch_async(queue, &v24);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v29, 0);
    v23 = 1;
  }

  else
  {
    v22 = MEMORY[0x26D66ADC0](*(a1 + 32));
    if (v22)
    {
      (*(v22 + 2))(v22, location, v35);
      v21 = 0;
    }

    else
    {
      v20 = 0;
    }

    objc_storeStrong(&v22, 0);
    if (v37)
    {
      v5 = v34[0];
      v14 = MEMORY[0x277D85DD0];
      v15 = -1073741824;
      v16 = 0;
      v17 = __98__SUUIStatefulUIManager_scheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_2_369;
      v18 = &unk_279CC63B8;
      objc_copyWeak(v19, (a1 + 40));
      v19[1] = *(a1 + 48);
      [v5 executeOperationOnDelegate:sel_statefulUIManagerDidRefreshState_ usingBlock:&v14];
      objc_destroyWeak(v19);
    }

    v23 = 0;
  }

  objc_storeStrong(v34, 0);
  if (!v23)
  {
    v23 = 0;
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(&location, 0);
}

void __98__SUUIStatefulUIManager_scheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_366(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0);
  }

  objc_storeStrong(location, 0);
}

void __98__SUUIStatefulUIManager_scheduleUpdate_operationDelegate_delegateCallbackQueue_completionHandler___block_invoke_2_369(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[2] = a1;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 32));
  v6 = 0;
  if (!v11[0])
  {
    v5 = +[SUUILoggingContext softwareUpdateUILogger];
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 40));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v12, "[SUUIStatefulUIManager scheduleUpdate:operationDelegate:delegateCallbackQueue:completionHandler:]_block_invoke_2", v8);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v12, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v10, 0);
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    v1 = [v11[0] delegate];
    [v1 statefulUIManagerDidRefreshState:v11[0]];
    MEMORY[0x277D82BD8](v1);
  }

  objc_storeStrong(v11, 0);
}

- (void)promoteTargetedUpdateToUserInitiatedStatus:(id)status delegateCallbackQueue:(id)queue completionHandler:(id)handler
{
  selfCopy = self;
  v42 = a2;
  location = 0;
  objc_storeStrong(&location, status);
  v40 = 0;
  objc_storeStrong(&v40, queue);
  v39 = 0;
  objc_storeStrong(&v39, handler);
  objc_initWeak(&v38, selfCopy);
  v31 = MEMORY[0x277D85DD0];
  v32 = -1073741824;
  v33 = 0;
  v34 = __108__SUUIStatefulUIManager_promoteTargetedUpdateToUserInitiatedStatus_delegateCallbackQueue_completionHandler___block_invoke;
  v35 = &unk_279CC6408;
  v36 = MEMORY[0x277D82BE0](selfCopy);
  v37 = MEMORY[0x26D66ADC0](&v31);
  v30 = MEMORY[0x26D66ADC0](&__block_literal_global_374);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __108__SUUIStatefulUIManager_promoteTargetedUpdateToUserInitiatedStatus_delegateCallbackQueue_completionHandler___block_invoke_3;
  v27[3] = &unk_279CC6278;
  v28 = MEMORY[0x277D82BE0](selfCopy);
  v29 = MEMORY[0x26D66ADC0](v27);
  v19 = MEMORY[0x277D85DD0];
  v20 = -1073741824;
  v21 = 0;
  v22 = __108__SUUIStatefulUIManager_promoteTargetedUpdateToUserInitiatedStatus_delegateCallbackQueue_completionHandler___block_invoke_4;
  v23 = &unk_279CC63E0;
  objc_copyWeak(v25, &v38);
  v25[1] = v42;
  v24 = MEMORY[0x277D82BE0](v39);
  v26 = MEMORY[0x26D66ADC0](&v19);
  v16 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
  if (v16)
  {
    v15 = _os_activity_create(&dword_26ADE5000, "com.apple.SoftwareUpdateUI.StatefulUI.Manager.PromoteToUserInitiated", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    v5 = v16[1].opaque[0];
    v16[1].opaque[0] = v15;
    MEMORY[0x277D82BD8](v5);
  }

  else
  {
    v9 = +[SUUILoggingContext softwareUpdateUILogger];
    oslog = [v9 oslog];
    MEMORY[0x277D82BD8](v9);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v8 = type;
      __os_log_helper_16_0_0(v12);
      _os_log_error_impl(&dword_26ADE5000, log, v8, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.Manager.PromoteToUserInitiated", v12, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  v17 = v16;
  if (v16)
  {
    os_activity_scope_enter(v17[1].opaque[0], v17);
    LOBYTE(v17[1].opaque[1]) = 1;
  }

  v18 = v17;
  if (v40)
  {
    operationsQueue = v40;
  }

  else
  {
    operationsQueue = selfCopy->_operationsQueue;
  }

  [(SUUIStatefulUIManager *)selfCopy performUpdateOnDownloadByApplyingSelector:sel_promoteDownloadToUserInitiated_withContext_delegate_completionHandler_ context:v37 description:@"Promote to User Initiated Status" delegate:location delegateCallbackQueue:operationsQueue resultsValidation:&__block_literal_global_374 resultsAssignment:v29 completion:v26];
  _SUUIActivityCleanup(&v18);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v24, 0);
  objc_destroyWeak(v25);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v36, 0);
  objc_destroyWeak(&v38);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&location, 0);
}

id __108__SUUIStatefulUIManager_promoteTargetedUpdateToUserInitiatedStatus_delegateCallbackQueue_completionHandler___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [a1[4] contextForUserPromotionUpdateOperation:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

uint64_t __108__SUUIStatefulUIManager_promoteTargetedUpdateToUserInitiatedStatus_delegateCallbackQueue_completionHandler___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7[1] = a1;
  v7[0] = MEMORY[0x277D82BE0](location[0]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = MEMORY[0x277D82BE0](v7[0]);
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](0);
  }

  v6 = v2;
  objc_storeStrong(v7, 0);
  v4 = [v6 isSuccess];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);
  return v4;
}

void __108__SUUIStatefulUIManager_promoteTargetedUpdateToUserInitiatedStatus_delegateCallbackQueue_completionHandler___block_invoke_3(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] assignUserPromotionUpdateResults:location[0]];
  objc_storeStrong(location, 0);
}

void __108__SUUIStatefulUIManager_promoteTargetedUpdateToUserInitiatedStatus_delegateCallbackQueue_completionHandler___block_invoke_4(uint64_t a1, char a2, id obj, void *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v38 = a1;
  v37 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v35 = 0;
  objc_storeStrong(&v35, a4);
  v34[1] = a1;
  v34[0] = objc_loadWeakRetained((a1 + 40));
  v11 = 0;
  if (!v34[0])
  {
    v10 = +[SUUILoggingContext softwareUpdateUILogger];
    v33 = [v10 oslog];
    MEMORY[0x277D82BD8](v10);
    v32 = 16;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      log = v33;
      type = v32;
      v7 = NSStringFromSelector(*(a1 + 48));
      v31 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v39, "[SUUIStatefulUIManager promoteTargetedUpdateToUserInitiatedStatus:delegateCallbackQueue:completionHandler:]_block_invoke_4", v31);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v39, 0x16u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v31, 0);
    }

    objc_storeStrong(&v33, 0);
    v30 = 1;
    v11 = 1;
  }

  if (v11)
  {
    v4 = MEMORY[0x277D85CD0];
    queue = MEMORY[0x277D85CD0];
    v24 = MEMORY[0x277D85DD0];
    v25 = -1073741824;
    v26 = 0;
    v27 = __108__SUUIStatefulUIManager_promoteTargetedUpdateToUserInitiatedStatus_delegateCallbackQueue_completionHandler___block_invoke_376;
    v28 = &unk_279CC61E0;
    v29 = MEMORY[0x277D82BE0](*(a1 + 32));
    dispatch_async(queue, &v24);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v29, 0);
    v23 = 1;
  }

  else
  {
    v22 = MEMORY[0x26D66ADC0](*(a1 + 32));
    if (v22)
    {
      (*(v22 + 2))(v22, v37 & 1, v35);
      v21 = 0;
    }

    else
    {
      v20 = 0;
    }

    objc_storeStrong(&v22, 0);
    v5 = v34[0];
    v14 = MEMORY[0x277D85DD0];
    v15 = -1073741824;
    v16 = 0;
    v17 = __108__SUUIStatefulUIManager_promoteTargetedUpdateToUserInitiatedStatus_delegateCallbackQueue_completionHandler___block_invoke_2_377;
    v18 = &unk_279CC63B8;
    objc_copyWeak(v19, (a1 + 40));
    v19[1] = *(a1 + 48);
    [v5 executeOperationOnDelegate:sel_statefulUIManagerDidRefreshState_ usingBlock:&v14];
    objc_destroyWeak(v19);
    v23 = 0;
  }

  objc_storeStrong(v34, 0);
  if (!v23)
  {
    v23 = 0;
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(&location, 0);
}

void __108__SUUIStatefulUIManager_promoteTargetedUpdateToUserInitiatedStatus_delegateCallbackQueue_completionHandler___block_invoke_376(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0, 0);
  }

  objc_storeStrong(location, 0);
}

void __108__SUUIStatefulUIManager_promoteTargetedUpdateToUserInitiatedStatus_delegateCallbackQueue_completionHandler___block_invoke_2_377(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[2] = a1;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 32));
  v6 = 0;
  if (!v11[0])
  {
    v5 = +[SUUILoggingContext softwareUpdateUILogger];
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 40));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v12, "[SUUIStatefulUIManager promoteTargetedUpdateToUserInitiatedStatus:delegateCallbackQueue:completionHandler:]_block_invoke_2", v8);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v12, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v10, 0);
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    v1 = [v11[0] delegate];
    [v1 statefulUIManagerDidRefreshState:v11[0]];
    MEMORY[0x277D82BD8](v1);
  }

  objc_storeStrong(v11, 0);
}

- (void)unscheduleTargetedUpdateAutomaticInstallation:(id)installation delegateCallbackQueue:(id)queue completionHandler:(id)handler
{
  selfCopy = self;
  v44 = a2;
  location = 0;
  objc_storeStrong(&location, installation);
  v42 = 0;
  objc_storeStrong(&v42, queue);
  v41 = 0;
  objc_storeStrong(&v41, handler);
  objc_initWeak(&v40, selfCopy);
  v33 = MEMORY[0x277D85DD0];
  v34 = -1073741824;
  v35 = 0;
  v36 = __111__SUUIStatefulUIManager_unscheduleTargetedUpdateAutomaticInstallation_delegateCallbackQueue_completionHandler___block_invoke;
  v37 = &unk_279CC6430;
  v38 = MEMORY[0x277D82BE0](selfCopy);
  v39 = MEMORY[0x26D66ADC0](&v33);
  v32 = MEMORY[0x26D66ADC0](&__block_literal_global_385);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __111__SUUIStatefulUIManager_unscheduleTargetedUpdateAutomaticInstallation_delegateCallbackQueue_completionHandler___block_invoke_3;
  v29[3] = &unk_279CC6278;
  v30 = MEMORY[0x277D82BE0](selfCopy);
  v31 = MEMORY[0x26D66ADC0](v29);
  v21 = MEMORY[0x277D85DD0];
  v22 = -1073741824;
  v23 = 0;
  v24 = __111__SUUIStatefulUIManager_unscheduleTargetedUpdateAutomaticInstallation_delegateCallbackQueue_completionHandler___block_invoke_4;
  v25 = &unk_279CC63E0;
  objc_copyWeak(v27, &v40);
  v27[1] = v44;
  v26 = MEMORY[0x277D82BE0](v41);
  v28 = MEMORY[0x26D66ADC0](&v21);
  v18 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
  if (v18)
  {
    v17 = _os_activity_create(&dword_26ADE5000, "com.apple.SoftwareUpdateUI.StatefulUI.Manager.Unschedule", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    v5 = v18[1].opaque[0];
    v18[1].opaque[0] = v17;
    MEMORY[0x277D82BD8](v5);
  }

  else
  {
    v11 = +[SUUILoggingContext softwareUpdateUILogger];
    oslog = [v11 oslog];
    MEMORY[0x277D82BD8](v11);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v10 = type;
      __os_log_helper_16_0_0(v14);
      _os_log_error_impl(&dword_26ADE5000, log, v10, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.Manager.Unschedule", v14, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  v19 = v18;
  if (v18)
  {
    os_activity_scope_enter(v19[1].opaque[0], v19);
    LOBYTE(v19[1].opaque[1]) = 1;
  }

  v20 = v19;
  v8 = selfCopy;
  targetedUpdateStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy targetedUpdateStatefulDescriptor];
  if (v42)
  {
    operationsQueue = v42;
  }

  else
  {
    operationsQueue = selfCopy->_operationsQueue;
  }

  [(SUUIStatefulUIManager *)v8 performUpdateOperation:6 withDescriptor:targetedUpdateStatefulDescriptor byApplyingSelector:sel_unscheduleUpdate_forInstallationTonightWithContext_delegate_completionHandler_ context:v39 auxiliaryOperation:1 delegate:location delegateCallbackQueue:operationsQueue resultsValidation:&__block_literal_global_385 resultsAssignment:v31 completion:v28];
  MEMORY[0x277D82BD8](targetedUpdateStatefulDescriptor);
  _SUUIActivityCleanup(&v20);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v26, 0);
  objc_destroyWeak(v27);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v38, 0);
  objc_destroyWeak(&v40);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&location, 0);
}

id __111__SUUIStatefulUIManager_unscheduleTargetedUpdateAutomaticInstallation_delegateCallbackQueue_completionHandler___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = [a1[4] contextForUserUnscheduleUpdateOperation:location[0]];
  objc_storeStrong(location, 0);

  return v4;
}

uint64_t __111__SUUIStatefulUIManager_unscheduleTargetedUpdateAutomaticInstallation_delegateCallbackQueue_completionHandler___block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v7[1] = a1;
  v7[0] = MEMORY[0x277D82BE0](location[0]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = MEMORY[0x277D82BE0](v7[0]);
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](0);
  }

  v6 = v2;
  objc_storeStrong(v7, 0);
  v4 = [v6 isSuccess];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);
  return v4;
}

void __111__SUUIStatefulUIManager_unscheduleTargetedUpdateAutomaticInstallation_delegateCallbackQueue_completionHandler___block_invoke_3(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  [a1[4] assignUnscheduleUpdateResults:location[0]];
  objc_storeStrong(location, 0);
}

void __111__SUUIStatefulUIManager_unscheduleTargetedUpdateAutomaticInstallation_delegateCallbackQueue_completionHandler___block_invoke_4(uint64_t a1, char a2, id obj, void *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v38 = a1;
  v37 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v35 = 0;
  objc_storeStrong(&v35, a4);
  v34[1] = a1;
  v34[0] = objc_loadWeakRetained((a1 + 40));
  v11 = 0;
  if (!v34[0])
  {
    v10 = +[SUUILoggingContext softwareUpdateUILogger];
    v33 = [v10 oslog];
    MEMORY[0x277D82BD8](v10);
    v32 = 16;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      log = v33;
      type = v32;
      v7 = NSStringFromSelector(*(a1 + 48));
      v31 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v39, "[SUUIStatefulUIManager unscheduleTargetedUpdateAutomaticInstallation:delegateCallbackQueue:completionHandler:]_block_invoke_4", v31);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v39, 0x16u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v31, 0);
    }

    objc_storeStrong(&v33, 0);
    v30 = 1;
    v11 = 1;
  }

  if (v11)
  {
    v4 = MEMORY[0x277D85CD0];
    queue = MEMORY[0x277D85CD0];
    v24 = MEMORY[0x277D85DD0];
    v25 = -1073741824;
    v26 = 0;
    v27 = __111__SUUIStatefulUIManager_unscheduleTargetedUpdateAutomaticInstallation_delegateCallbackQueue_completionHandler___block_invoke_387;
    v28 = &unk_279CC61E0;
    v29 = MEMORY[0x277D82BE0](*(a1 + 32));
    dispatch_async(queue, &v24);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v29, 0);
    v23 = 1;
  }

  else
  {
    v22 = MEMORY[0x26D66ADC0](*(a1 + 32));
    if (v22)
    {
      (*(v22 + 2))(v22, v37 & 1, v35);
      v21 = 0;
    }

    else
    {
      v20 = 0;
    }

    objc_storeStrong(&v22, 0);
    v5 = v34[0];
    v14 = MEMORY[0x277D85DD0];
    v15 = -1073741824;
    v16 = 0;
    v17 = __111__SUUIStatefulUIManager_unscheduleTargetedUpdateAutomaticInstallation_delegateCallbackQueue_completionHandler___block_invoke_2_388;
    v18 = &unk_279CC63B8;
    objc_copyWeak(v19, (a1 + 40));
    v19[1] = *(a1 + 48);
    [v5 executeOperationOnDelegate:sel_statefulUIManagerDidRefreshState_ usingBlock:&v14];
    objc_destroyWeak(v19);
    v23 = 0;
  }

  objc_storeStrong(v34, 0);
  if (!v23)
  {
    v23 = 0;
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(&location, 0);
}

void __111__SUUIStatefulUIManager_unscheduleTargetedUpdateAutomaticInstallation_delegateCallbackQueue_completionHandler___block_invoke_387(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0, 0);
  }

  objc_storeStrong(location, 0);
}

void __111__SUUIStatefulUIManager_unscheduleTargetedUpdateAutomaticInstallation_delegateCallbackQueue_completionHandler___block_invoke_2_388(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[2] = a1;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 32));
  v6 = 0;
  if (!v11[0])
  {
    v5 = +[SUUILoggingContext softwareUpdateUILogger];
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 40));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v12, "[SUUIStatefulUIManager unscheduleTargetedUpdateAutomaticInstallation:delegateCallbackQueue:completionHandler:]_block_invoke_2", v8);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v12, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v10, 0);
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    v1 = [v11[0] delegate];
    [v1 statefulUIManagerDidRefreshState:v11[0]];
    MEMORY[0x277D82BD8](v1);
  }

  objc_storeStrong(v11, 0);
}

- (BOOL)isPerformingFullScan
{
  currentFullScanOperation = [(SUUIStatefulUIManager *)self currentFullScanOperation];
  v4 = currentFullScanOperation != 0;
  MEMORY[0x277D82BD8](currentFullScanOperation);
  return v4;
}

- (BOOL)isPerformingRefresh
{
  currentRefreshScanOperation = [(SUUIStatefulUIManager *)self currentRefreshScanOperation];
  v4 = currentRefreshScanOperation != 0;
  MEMORY[0x277D82BD8](currentRefreshScanOperation);
  return v4;
}

- (BOOL)isPerformingUpdate
{
  currentUpdateOperation = [(SUUIStatefulUIManager *)self currentUpdateOperation];
  v4 = 1;
  if (!currentUpdateOperation)
  {
    v4 = [(SUUIStatefulUIManager *)self currentUpdateOperationType]!= 0;
  }

  MEMORY[0x277D82BD8](currentUpdateOperation);
  return v4;
}

- (BOOL)hasHiddenDescriptors
{
  v3 = 1;
  if (![(SUUIStatefulUIManager *)self hidingPreferredDescriptor])
  {
    return [(SUUIStatefulUIManager *)self hidingAlternateDescriptor];
  }

  return v3;
}

- (void)enrollInBetaUpdatesProgram:(id)program completionHandler:(id)handler
{
  selfCopy = self;
  v17 = a2;
  location = 0;
  objc_storeStrong(&location, program);
  v15 = 0;
  objc_storeStrong(&v15, handler);
  objc_initWeak(&v14, selfCopy);
  queue = selfCopy->_operationsQueue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __70__SUUIStatefulUIManager_enrollInBetaUpdatesProgram_completionHandler___block_invoke;
  v10 = &unk_279CC64D0;
  objc_copyWeak(v13, &v14);
  v13[1] = v17;
  v12 = MEMORY[0x277D82BE0](v15);
  v11 = MEMORY[0x277D82BE0](location);
  dispatch_async(queue, &v6);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_destroyWeak(v13);
  objc_destroyWeak(&v14);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&location, 0);
}

void __70__SUUIStatefulUIManager_enrollInBetaUpdatesProgram_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v342 = MEMORY[0x28223BE20](a1, a2, a3);
  v343 = "[SUUIStatefulUIManager enrollInBetaUpdatesProgram:completionHandler:]_block_invoke";
  v344 = "[SUUIStatefulUIManager enrollInBetaUpdatesProgram:completionHandler:]_block_invoke_2";
  v488 = *MEMORY[0x277D85DE8];
  v471[2] = v342;
  v471[1] = v342;
  WeakRetained = objc_loadWeakRetained((v342 + 48));
  v471[0] = WeakRetained;
  v341 = 0;
  if (!WeakRetained)
  {
    v340 = +[SUUILoggingContext softwareUpdateUILogger];
    v338 = v340;
    v339 = [v338 oslog];
    oslog = v339;
    MEMORY[0x277D82BD8](v338);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v336 = type;
      v337 = NSStringFromSelector(*(v342 + 56));
      v334 = v337;
      location = MEMORY[0x277D82BE0](v334);
      buf = v487;
      __os_log_helper_16_2_2_8_32_8_66(v487, v343, location);
      _os_log_error_impl(&dword_26ADE5000, oslog, type, "%s: Self is nil in %{public}@. Stopping.", v487, 0x16u);
      MEMORY[0x277D82BD8](v334);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&oslog, 0);
    v467 = 1;
    v341 = 1;
  }

  if (v341)
  {
    v3 = MEMORY[0x277D85CD0];
    queue = MEMORY[0x277D85CD0];
    block = &v461;
    v461 = MEMORY[0x277D85DD0];
    v462 = -1073741824;
    v463 = 0;
    v464 = __70__SUUIStatefulUIManager_enrollInBetaUpdatesProgram_completionHandler___block_invoke_391;
    v465 = &unk_279CC61E0;
    v330 = &v466;
    v466 = MEMORY[0x277D82BE0](*(v342 + 40));
    dispatch_async(queue, &v461);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v466, 0);
    v460 = 1;
  }

  else
  {
    v329 = _os_feature_enabled_impl();
    if (v329)
    {
      v455 = 0;
      v456 = &v455;
      v457 = 0x20000000;
      v458 = 32;
      v459 = 0;
      v324 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
      v453 = v324;
      if (v324)
      {
        v452 = _os_activity_create(&dword_26ADE5000, "com.apple.SoftwareUpdateUI.StatefulUI.Manager.EnrollInBetaProgram", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
        v4 = v453[1].opaque[0];
        v453[1].opaque[0] = v452;
        MEMORY[0x277D82BD8](v4);
      }

      else
      {
        v323 = +[SUUILoggingContext softwareUpdateUILogger];
        v321 = v323;
        v322 = [v321 oslog];
        v451 = v322;
        MEMORY[0x277D82BD8](v321);
        v450 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v451, OS_LOG_TYPE_ERROR))
        {
          v318 = v451;
          *v319 = v450;
          v320 = v449;
          __os_log_helper_16_0_0(v449);
          _os_log_error_impl(&dword_26ADE5000, v318, v319[0], "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.Manager.EnrollInBetaProgram", v449, 2u);
        }

        objc_storeStrong(&v451, 0);
      }

      v448[2] = v453;
      state = v453;
      if (v453)
      {
        os_activity_scope_enter(state[1].opaque[0], state);
        LOBYTE(state[1].opaque[1]) = 1;
      }

      v448[1] = state;
      v456[3] = state;
      v317 = [v471[0] betaPrograms];
      v448[0] = v317;
      v316 = [v471[0] delegateCallbackQueue];
      v447 = v316;
      v315 = [v471[0] currentDownload];
      v446 = v315;
      v314 = [v471[0] delegate];
      v313 = v314;
      objc_initWeak(&from, v313);
      MEMORY[0x277D82BD8](v313);
      v312 = [v471[0] currentSeedingDevice];
      v311 = v312;
      MEMORY[0x277D82BD8](v311);
      if (v311)
      {
        if (v448[0] && (v223 = [v448[0] count]) != 0)
        {
          v133 = *(v342 + 32);
          v384 = 0;
          if (v133)
          {
            v132 = v133;
          }

          else
          {
            v131 = [v448[0] firstObject];
            v385 = v131;
            v384 = 1;
            v132 = v385;
          }

          v386 = MEMORY[0x277D82BE0](v132);
          if (v384)
          {
            MEMORY[0x277D82BD8](v385);
          }

          if (v446)
          {
            v130 = +[SUUILoggingContext statefulUILogger];
            v128 = v130;
            v129 = [v128 oslog];
            v383 = v129;
            MEMORY[0x277D82BD8](v128);
            v382 = OS_LOG_TYPE_DEFAULT;
            if (os_log_type_enabled(v383, OS_LOG_TYPE_DEFAULT))
            {
              v124 = v383;
              *v125 = v382;
              v126 = v471[0];
              v127 = objc_opt_class();
              v123 = NSStringFromClass(v127);
              v120 = v123;
              v121 = MEMORY[0x277D82BE0](v120);
              v381 = v121;
              v122 = SUUIStatefulUIStateToString(*(v471[0] + 5));
              v117 = v122;
              v118 = MEMORY[0x277D82BE0](v117);
              v380 = v118;
              v119 = [v471[0] currentState];
              v378 = 0;
              v376 = 0;
              v116 = [v471[0] delegate];
              v115 = v116;
              if (v115)
              {
                v114 = [v471[0] delegate];
                v379 = v114;
                v378 = 1;
                v113 = objc_opt_class();
                v112 = NSStringFromClass(v113);
                v377 = v112;
                v376 = 1;
                v111 = v377;
              }

              else
              {
                v111 = @"(null)";
              }

              v109 = v111;
              v110 = [v471[0] delegate];
              v107 = v110;
              v108 = [v471[0] scanError];
              v105 = v108;
              v106 = [v471[0] preferredStatefulDescriptor];
              v103 = v106;
              v104 = [v471[0] alternateStatefulDescriptor];
              v101 = v104;
              v374 = 0;
              v372 = 0;
              v370 = 0;
              v102 = [v471[0] currentDownload];
              v100 = v102;
              if (v100)
              {
                v99 = [v471[0] currentDownload];
                v375 = v99;
                v374 = 1;
                v98 = [v375 descriptor];
                v373 = v98;
                v372 = 1;
                v97 = [v373 updateName];
                v371 = v97;
                v370 = 1;
                v96 = v371;
              }

              else
              {
                v96 = @"(null)";
              }

              v94 = v96;
              v95 = [v471[0] currentDownload];
              v92 = v95;
              v93 = [v471[0] currentUpdateOperationType];
              v91 = SUUIUpdateContinuousOperationTypeToString(v93);
              v88 = v91;
              v89 = MEMORY[0x277D82BE0](v88);
              v369 = v89;
              v90 = [v471[0] isTargetedUpdateScheduledForAutoInstall];
              v475 = v90;
              if (v90)
              {
                v22 = @"YES";
              }

              else
              {
                v22 = @"NO";
              }

              v87 = v22;
              v23 = v22;
              v84 = v87;
              v85 = MEMORY[0x277D82BE0](v84);
              v368 = v85;
              v86 = [v471[0] hidingPreferredDescriptor];
              v474 = v86;
              if (v86)
              {
                v24 = @"YES";
              }

              else
              {
                v24 = @"NO";
              }

              v83 = v24;
              v25 = v24;
              v80 = v83;
              v81 = MEMORY[0x277D82BE0](v80);
              v367 = v81;
              v82 = [v471[0] hiddenPreferredStatefulDescriptor];
              v78 = v82;
              v79 = [v78 updateName];
              v75 = v79;
              v76 = MEMORY[0x277D82BE0](v75);
              v366 = v76;
              v77 = [v471[0] hidingAlternateDescriptor];
              v473 = v77;
              if (v77)
              {
                v26 = @"YES";
              }

              else
              {
                v26 = @"NO";
              }

              v74 = v26;
              v27 = v26;
              v71 = v74;
              v72 = MEMORY[0x277D82BE0](v71);
              v365 = v72;
              v73 = [v471[0] hiddenAlternateStatefulDescriptor];
              v69 = v73;
              v70 = [v69 updateName];
              v66 = v70;
              v67 = MEMORY[0x277D82BE0](v66);
              v364 = v67;
              v362 = 0;
              v68 = [v471[0] enrolledBetaProgram];
              v65 = v68;
              if (v65)
              {
                v64 = [v471[0] enrolledBetaProgram];
                v363 = v64;
                v362 = 1;
                v63 = [v363 programID];
                v62 = v63;
              }

              else
              {
                v62 = 0;
              }

              v60 = v62;
              v61 = [*(v471[0] + 15) count];
              v59 = [v471[0] canEnrollInBetaUpdates];
              v472 = v59;
              if (v59)
              {
                v28 = @"YES";
              }

              else
              {
                v28 = @"NO";
              }

              v58 = v28;
              v29 = v28;
              v52 = v58;
              v53 = MEMORY[0x277D82BE0](v52);
              v361 = v53;
              v54 = *(v471[0] + 21);
              v55 = *(v471[0] + 22);
              v56 = *(v471[0] + 23);
              v57 = [*(v471[0] + 24) count];
              v51 = [*(v342 + 32) programID];
              v30 = *(v342 + 32);
              v49 = &v31;
              v50 = v484;
              __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v484, v344, v126, v121, v118, v119, v109, v107, v105, v103, v101, v94, v92, v89, v85, v81, v76, v72, v67, v60, v61, v53, v54, v55, v56, v57, v51, v30);
              _os_log_impl(&dword_26ADE5000, v124, v125[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA targeted update exists when attempting to enroll in beta program: %ld (%p). Asking to purge the targeted update.", v50, 0x110u);
              MEMORY[0x277D82BD8](v52);
              if (v362)
              {
                MEMORY[0x277D82BD8](v363);
              }

              MEMORY[0x277D82BD8](v65);
              MEMORY[0x277D82BD8](v66);
              MEMORY[0x277D82BD8](v69);
              MEMORY[0x277D82BD8](v71);
              MEMORY[0x277D82BD8](v75);
              MEMORY[0x277D82BD8](v78);
              MEMORY[0x277D82BD8](v80);
              MEMORY[0x277D82BD8](v84);
              MEMORY[0x277D82BD8](v88);
              MEMORY[0x277D82BD8](v92);
              if (v370)
              {
                MEMORY[0x277D82BD8](v371);
              }

              if (v372)
              {
                MEMORY[0x277D82BD8](v373);
              }

              if (v374)
              {
                MEMORY[0x277D82BD8](v375);
              }

              MEMORY[0x277D82BD8](v100);
              MEMORY[0x277D82BD8](v101);
              MEMORY[0x277D82BD8](v103);
              MEMORY[0x277D82BD8](v105);
              MEMORY[0x277D82BD8](v107);
              if (v376)
              {
                MEMORY[0x277D82BD8](v377);
              }

              if (v378)
              {
                MEMORY[0x277D82BD8](v379);
              }

              MEMORY[0x277D82BD8](v115);
              MEMORY[0x277D82BD8](v117);
              MEMORY[0x277D82BD8](v120);
              objc_storeStrong(&v361, 0);
              objc_storeStrong(&v364, 0);
              objc_storeStrong(&v365, 0);
              objc_storeStrong(&v366, 0);
              objc_storeStrong(&v367, 0);
              objc_storeStrong(&v368, 0);
              objc_storeStrong(&v369, 0);
              objc_storeStrong(&v380, 0);
              objc_storeStrong(&v381, 0);
            }

            objc_storeStrong(&v383, 0);
            v47 = &v354;
            v354 = MEMORY[0x277D85DD0];
            v355 = -1073741824;
            v356 = 0;
            v357 = __70__SUUIStatefulUIManager_enrollInBetaUpdatesProgram_completionHandler___block_invoke_398;
            v358 = &unk_279CC6480;
            v44 = v359;
            v359[0] = MEMORY[0x277D82BE0](v471[0]);
            v45 = (v47 + 5);
            v359[1] = MEMORY[0x277D82BE0](v386);
            v359[3] = &v455;
            v46 = (v47 + 6);
            v359[2] = MEMORY[0x277D82BE0](*(v342 + 40));
            v48 = MEMORY[0x26D66ADC0](v47);
            v360 = v48;
            v43 = [MEMORY[0x277D643F8] sharedCore];
            v41 = v43;
            v42 = [v41 selectDelegateCallbackQueue:v447];
            v39 = v42;
            v346 = MEMORY[0x277D85DD0];
            v347 = -1073741824;
            v348 = 0;
            v349 = __70__SUUIStatefulUIManager_enrollInBetaUpdatesProgram_completionHandler___block_invoke_2;
            v350 = &unk_279CC64A8;
            v40 = v353;
            objc_copyWeak(v353, (v342 + 48));
            v37 = &v346;
            v353[2] = *(v342 + 56);
            v36 = v352;
            v352[0] = MEMORY[0x277D82BE0](*(v342 + 40));
            v38 = v37 + 9;
            objc_copyWeak(v37 + 9, &from);
            v35 = &v346;
            v32 = v351;
            v351[0] = MEMORY[0x277D82BE0](v446);
            v33 = (v35 + 40);
            v351[1] = MEMORY[0x277D82BE0](v386);
            v34 = (v35 + 56);
            v352[1] = MEMORY[0x277D82BE0](v360);
            dispatch_async(v39, v35);
            MEMORY[0x277D82BD8](v39);
            MEMORY[0x277D82BD8](v41);
            objc_storeStrong(v34, 0);
            objc_storeStrong(v33, 0);
            objc_storeStrong(v32, 0);
            objc_destroyWeak(v38);
            objc_storeStrong(v36, 0);
            objc_destroyWeak(v40);
            objc_storeStrong(&v360, 0);
            objc_storeStrong(v46, 0);
            objc_storeStrong(v45, 0);
            objc_storeStrong(v44, 0);
            v460 = 0;
          }

          else
          {
            [v471[0] doEnrollInBetaUpdatesProgram:v386 activity:v456 + 3 completionHandler:*(v342 + 40)];
            v460 = 1;
          }

          objc_storeStrong(&v386, 0);
        }

        else
        {
          v222 = +[SUUILoggingContext statefulUILogger];
          v220 = v222;
          v221 = [v220 oslog];
          v415 = v221;
          MEMORY[0x277D82BD8](v220);
          v414 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v415, OS_LOG_TYPE_DEFAULT))
          {
            v216 = v415;
            *v217 = v414;
            v218 = v471[0];
            v219 = objc_opt_class();
            v215 = NSStringFromClass(v219);
            v212 = v215;
            v213 = MEMORY[0x277D82BE0](v212);
            v413 = v213;
            v214 = SUUIStatefulUIStateToString(*(v471[0] + 5));
            v209 = v214;
            v210 = MEMORY[0x277D82BE0](v209);
            v412 = v210;
            v211 = [v471[0] currentState];
            v410 = 0;
            v408 = 0;
            v208 = [v471[0] delegate];
            v207 = v208;
            if (v207)
            {
              v206 = [v471[0] delegate];
              v411 = v206;
              v410 = 1;
              v205 = objc_opt_class();
              v204 = NSStringFromClass(v205);
              v409 = v204;
              v408 = 1;
              v203 = v409;
            }

            else
            {
              v203 = @"(null)";
            }

            v201 = v203;
            v202 = [v471[0] delegate];
            v199 = v202;
            v200 = [v471[0] scanError];
            v197 = v200;
            v198 = [v471[0] preferredStatefulDescriptor];
            v195 = v198;
            v196 = [v471[0] alternateStatefulDescriptor];
            v193 = v196;
            v406 = 0;
            v404 = 0;
            v402 = 0;
            v194 = [v471[0] currentDownload];
            v192 = v194;
            if (v192)
            {
              v191 = [v471[0] currentDownload];
              v407 = v191;
              v406 = 1;
              v190 = [v407 descriptor];
              v405 = v190;
              v404 = 1;
              v189 = [v405 updateName];
              v403 = v189;
              v402 = 1;
              v188 = v403;
            }

            else
            {
              v188 = @"(null)";
            }

            v186 = v188;
            v187 = [v471[0] currentDownload];
            v184 = v187;
            v185 = [v471[0] currentUpdateOperationType];
            v183 = SUUIUpdateContinuousOperationTypeToString(v185);
            v180 = v183;
            v181 = MEMORY[0x277D82BE0](v180);
            v401 = v181;
            v182 = [v471[0] isTargetedUpdateScheduledForAutoInstall];
            v479 = v182;
            if (v182)
            {
              v13 = @"YES";
            }

            else
            {
              v13 = @"NO";
            }

            v179 = v13;
            v14 = v13;
            v176 = v179;
            v177 = MEMORY[0x277D82BE0](v176);
            v400 = v177;
            v178 = [v471[0] hidingPreferredDescriptor];
            v478 = v178;
            if (v178)
            {
              v15 = @"YES";
            }

            else
            {
              v15 = @"NO";
            }

            v175 = v15;
            v16 = v15;
            v172 = v175;
            v173 = MEMORY[0x277D82BE0](v172);
            v399 = v173;
            v174 = [v471[0] hiddenPreferredStatefulDescriptor];
            v170 = v174;
            v171 = [v170 updateName];
            v167 = v171;
            v168 = MEMORY[0x277D82BE0](v167);
            v398 = v168;
            v169 = [v471[0] hidingAlternateDescriptor];
            v477 = v169;
            if (v169)
            {
              v17 = @"YES";
            }

            else
            {
              v17 = @"NO";
            }

            v166 = v17;
            v18 = v17;
            v163 = v166;
            v164 = MEMORY[0x277D82BE0](v163);
            v397 = v164;
            v165 = [v471[0] hiddenAlternateStatefulDescriptor];
            v161 = v165;
            v162 = [v161 updateName];
            v158 = v162;
            v159 = MEMORY[0x277D82BE0](v158);
            v396 = v159;
            v394 = 0;
            v160 = [v471[0] enrolledBetaProgram];
            v157 = v160;
            if (v157)
            {
              v156 = [v471[0] enrolledBetaProgram];
              v395 = v156;
              v394 = 1;
              v155 = [v395 programID];
              v154 = v155;
            }

            else
            {
              v154 = 0;
            }

            v152 = v154;
            v153 = [*(v471[0] + 15) count];
            v151 = [v471[0] canEnrollInBetaUpdates];
            v476 = v151;
            if (v151)
            {
              v19 = @"YES";
            }

            else
            {
              v19 = @"NO";
            }

            v150 = v19;
            v20 = v19;
            v144 = v150;
            v145 = MEMORY[0x277D82BE0](v144);
            v393 = v145;
            v146 = *(v471[0] + 21);
            v147 = *(v471[0] + 22);
            v148 = *(v471[0] + 23);
            v149 = [*(v471[0] + 24) count];
            v143 = [*(v342 + 32) programID];
            v21 = *(v342 + 32);
            v141 = &v31;
            v142 = v485;
            __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v485, v344, v218, v213, v210, v211, v201, v199, v197, v195, v193, v186, v184, v181, v177, v173, v168, v164, v159, v152, v153, v145, v146, v147, v148, v149, v143, v21);
            _os_log_impl(&dword_26ADE5000, v216, v217[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCan not register to the beta progra %ld (%p) as no beta programs have been discovered by the Stateful UI. Attempts to perform a full re-scan.", v142, 0x110u);
            MEMORY[0x277D82BD8](v144);
            if (v394)
            {
              MEMORY[0x277D82BD8](v395);
            }

            MEMORY[0x277D82BD8](v157);
            MEMORY[0x277D82BD8](v158);
            MEMORY[0x277D82BD8](v161);
            MEMORY[0x277D82BD8](v163);
            MEMORY[0x277D82BD8](v167);
            MEMORY[0x277D82BD8](v170);
            MEMORY[0x277D82BD8](v172);
            MEMORY[0x277D82BD8](v176);
            MEMORY[0x277D82BD8](v180);
            MEMORY[0x277D82BD8](v184);
            if (v402)
            {
              MEMORY[0x277D82BD8](v403);
            }

            if (v404)
            {
              MEMORY[0x277D82BD8](v405);
            }

            if (v406)
            {
              MEMORY[0x277D82BD8](v407);
            }

            MEMORY[0x277D82BD8](v192);
            MEMORY[0x277D82BD8](v193);
            MEMORY[0x277D82BD8](v195);
            MEMORY[0x277D82BD8](v197);
            MEMORY[0x277D82BD8](v199);
            if (v408)
            {
              MEMORY[0x277D82BD8](v409);
            }

            if (v410)
            {
              MEMORY[0x277D82BD8](v411);
            }

            MEMORY[0x277D82BD8](v207);
            MEMORY[0x277D82BD8](v209);
            MEMORY[0x277D82BD8](v212);
            objc_storeStrong(&v393, 0);
            objc_storeStrong(&v396, 0);
            objc_storeStrong(&v397, 0);
            objc_storeStrong(&v398, 0);
            objc_storeStrong(&v399, 0);
            objc_storeStrong(&v400, 0);
            objc_storeStrong(&v401, 0);
            objc_storeStrong(&v412, 0);
            objc_storeStrong(&v413, 0);
          }

          objc_storeStrong(&v415, 0);
          if (v456[3])
          {
            if (*(v456[3] + 24))
            {
              os_activity_scope_leave(v456[3]);
            }

            free(v456[3]);
            v456[3] = 0;
          }

          v140 = [MEMORY[0x277D643F8] sharedCore];
          v138 = v140;
          v139 = [v138 selectDelegateCallbackQueue:v447];
          v137 = v139;
          v136 = &v387;
          v387 = MEMORY[0x277D85DD0];
          v388 = -1073741824;
          v389 = 0;
          v390 = __70__SUUIStatefulUIManager_enrollInBetaUpdatesProgram_completionHandler___block_invoke_397;
          v391 = &unk_279CC6458;
          v134 = v392;
          v392[0] = MEMORY[0x277D82BE0](v471[0]);
          v135 = (v136 + 40);
          v392[1] = MEMORY[0x277D82BE0](*(v342 + 40));
          dispatch_async(v137, v136);
          MEMORY[0x277D82BD8](v137);
          MEMORY[0x277D82BD8](v138);
          v460 = 1;
          objc_storeStrong(v135, 0);
          objc_storeStrong(v134, 0);
        }
      }

      else
      {
        v310 = +[SUUILoggingContext statefulUILogger];
        v308 = v310;
        v309 = [v308 oslog];
        v444 = v309;
        MEMORY[0x277D82BD8](v308);
        v443 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v444, OS_LOG_TYPE_DEFAULT))
        {
          v304 = v444;
          *v305 = v443;
          v306 = v471[0];
          aClass = objc_opt_class();
          v303 = NSStringFromClass(aClass);
          v300 = v303;
          v301 = MEMORY[0x277D82BE0](v300);
          v442 = v301;
          v302 = SUUIStatefulUIStateToString(*(v471[0] + 5));
          v297 = v302;
          v298 = MEMORY[0x277D82BE0](v297);
          v441 = v298;
          v299 = [v471[0] currentState];
          v439 = 0;
          v437 = 0;
          v296 = [v471[0] delegate];
          v295 = v296;
          if (v295)
          {
            v294 = [v471[0] delegate];
            v440 = v294;
            v439 = 1;
            v293 = objc_opt_class();
            v292 = NSStringFromClass(v293);
            v438 = v292;
            v437 = 1;
            v291 = v438;
          }

          else
          {
            v291 = @"(null)";
          }

          v289 = v291;
          v290 = [v471[0] delegate];
          v287 = v290;
          v288 = [v471[0] scanError];
          v285 = v288;
          v286 = [v471[0] preferredStatefulDescriptor];
          v283 = v286;
          v284 = [v471[0] alternateStatefulDescriptor];
          v281 = v284;
          v435 = 0;
          v433 = 0;
          v431 = 0;
          v282 = [v471[0] currentDownload];
          v280 = v282;
          if (v280)
          {
            v279 = [v471[0] currentDownload];
            v436 = v279;
            v435 = 1;
            v278 = [v436 descriptor];
            v434 = v278;
            v433 = 1;
            v277 = [v434 updateName];
            v432 = v277;
            v431 = 1;
            v276 = v432;
          }

          else
          {
            v276 = @"(null)";
          }

          v274 = v276;
          v275 = [v471[0] currentDownload];
          v272 = v275;
          v273 = [v471[0] currentUpdateOperationType];
          v271 = SUUIUpdateContinuousOperationTypeToString(v273);
          v268 = v271;
          v269 = MEMORY[0x277D82BE0](v268);
          v430 = v269;
          v270 = [v471[0] isTargetedUpdateScheduledForAutoInstall];
          v483 = v270;
          if (v270)
          {
            v5 = @"YES";
          }

          else
          {
            v5 = @"NO";
          }

          v267 = v5;
          v6 = v5;
          v264 = v267;
          v265 = MEMORY[0x277D82BE0](v264);
          v429 = v265;
          v266 = [v471[0] hidingPreferredDescriptor];
          v482 = v266;
          if (v266)
          {
            v7 = @"YES";
          }

          else
          {
            v7 = @"NO";
          }

          v263 = v7;
          v8 = v7;
          v260 = v263;
          v261 = MEMORY[0x277D82BE0](v260);
          v428 = v261;
          v262 = [v471[0] hiddenPreferredStatefulDescriptor];
          v258 = v262;
          v259 = [v258 updateName];
          v255 = v259;
          v256 = MEMORY[0x277D82BE0](v255);
          v427 = v256;
          v257 = [v471[0] hidingAlternateDescriptor];
          v481 = v257;
          if (v257)
          {
            v9 = @"YES";
          }

          else
          {
            v9 = @"NO";
          }

          v254 = v9;
          v10 = v9;
          v251 = v254;
          v252 = MEMORY[0x277D82BE0](v251);
          v426 = v252;
          v253 = [v471[0] hiddenAlternateStatefulDescriptor];
          v249 = v253;
          v250 = [v249 updateName];
          v246 = v250;
          v247 = MEMORY[0x277D82BE0](v246);
          v425 = v247;
          v423 = 0;
          v248 = [v471[0] enrolledBetaProgram];
          v245 = v248;
          if (v245)
          {
            v244 = [v471[0] enrolledBetaProgram];
            v424 = v244;
            v423 = 1;
            v243 = [v424 programID];
            v242 = v243;
          }

          else
          {
            v242 = 0;
          }

          v240 = v242;
          v241 = [*(v471[0] + 15) count];
          v239 = [v471[0] canEnrollInBetaUpdates];
          v480 = v239;
          if (v239)
          {
            v11 = @"YES";
          }

          else
          {
            v11 = @"NO";
          }

          v238 = v11;
          v12 = v11;
          v232 = v238;
          v233 = MEMORY[0x277D82BE0](v232);
          v422 = v233;
          v234 = *(v471[0] + 21);
          v235 = *(v471[0] + 22);
          v236 = *(v471[0] + 23);
          v237 = [*(v471[0] + 24) count];
          v230 = &v31;
          v231 = v486;
          __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v486, v343, v306, v301, v298, v299, v289, v287, v285, v283, v281, v274, v272, v269, v265, v261, v256, v252, v247, v240, v241, v233, v234, v235, v236, v237);
          _os_log_impl(&dword_26ADE5000, v304, v305[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCan not enroll in beta updates as we have not discovered a seeding device.", v231, 0xFCu);
          MEMORY[0x277D82BD8](v232);
          if (v423)
          {
            MEMORY[0x277D82BD8](v424);
          }

          MEMORY[0x277D82BD8](v245);
          MEMORY[0x277D82BD8](v246);
          MEMORY[0x277D82BD8](v249);
          MEMORY[0x277D82BD8](v251);
          MEMORY[0x277D82BD8](v255);
          MEMORY[0x277D82BD8](v258);
          MEMORY[0x277D82BD8](v260);
          MEMORY[0x277D82BD8](v264);
          MEMORY[0x277D82BD8](v268);
          MEMORY[0x277D82BD8](v272);
          if (v431)
          {
            MEMORY[0x277D82BD8](v432);
          }

          if (v433)
          {
            MEMORY[0x277D82BD8](v434);
          }

          if (v435)
          {
            MEMORY[0x277D82BD8](v436);
          }

          MEMORY[0x277D82BD8](v280);
          MEMORY[0x277D82BD8](v281);
          MEMORY[0x277D82BD8](v283);
          MEMORY[0x277D82BD8](v285);
          MEMORY[0x277D82BD8](v287);
          if (v437)
          {
            MEMORY[0x277D82BD8](v438);
          }

          if (v439)
          {
            MEMORY[0x277D82BD8](v440);
          }

          MEMORY[0x277D82BD8](v295);
          MEMORY[0x277D82BD8](v297);
          MEMORY[0x277D82BD8](v300);
          objc_storeStrong(&v422, 0);
          objc_storeStrong(&v425, 0);
          objc_storeStrong(&v426, 0);
          objc_storeStrong(&v427, 0);
          objc_storeStrong(&v428, 0);
          objc_storeStrong(&v429, 0);
          objc_storeStrong(&v430, 0);
          objc_storeStrong(&v441, 0);
          objc_storeStrong(&v442, 0);
        }

        objc_storeStrong(&v444, 0);
        if (v456[3])
        {
          if (*(v456[3] + 24))
          {
            os_activity_scope_leave(v456[3]);
          }

          free(v456[3]);
          v456[3] = 0;
        }

        v229 = [MEMORY[0x277D643F8] sharedCore];
        v227 = v229;
        v228 = [v227 selectDelegateCallbackQueue:v447];
        v226 = v228;
        v225 = &v416;
        v416 = MEMORY[0x277D85DD0];
        v417 = -1073741824;
        v418 = 0;
        v419 = __70__SUUIStatefulUIManager_enrollInBetaUpdatesProgram_completionHandler___block_invoke_395;
        v420 = &unk_279CC61E0;
        v224 = &v421;
        v421 = MEMORY[0x277D82BE0](*(v342 + 40));
        dispatch_async(v226, v225);
        MEMORY[0x277D82BD8](v226);
        MEMORY[0x277D82BD8](v227);
        v460 = 1;
        objc_storeStrong(v224, 0);
      }

      objc_destroyWeak(&from);
      objc_storeStrong(&v446, 0);
      objc_storeStrong(&v447, 0);
      objc_storeStrong(v448, 0);
      _Block_object_dispose(&v455, 8);
    }

    else
    {
      v326 = *(v342 + 40);
      v327 = v326 + 16;
      v328 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:2 userInfo:0];
      v325 = v328;
      (*(v326 + 16))(v326, 0);
      MEMORY[0x277D82BD8](v325);
      v460 = 1;
    }
  }

  objc_storeStrong(v471, 0);
}

void __70__SUUIStatefulUIManager_enrollInBetaUpdatesProgram_completionHandler___block_invoke_391(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:?];
    v1 = 1;
    (*(location[0] + 2))(location[0], 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __70__SUUIStatefulUIManager_enrollInBetaUpdatesProgram_completionHandler___block_invoke_395(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:2 userInfo:?];
    v1 = 1;
    (*(location[0] + 2))(location[0], 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __70__SUUIStatefulUIManager_enrollInBetaUpdatesProgram_completionHandler___block_invoke_397(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  [*(a1 + 32) checkForAvailableUpdates:1];
  location[0] = MEMORY[0x26D66ADC0](*(a1 + 40));
  v2 = 0;
  if (location[0])
  {
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:2 userInfo:?];
    v2 = 1;
    (*(location[0] + 2))(location[0], 0);
  }

  if (v2)
  {
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(location, 0);
}

void __70__SUUIStatefulUIManager_enrollInBetaUpdatesProgram_completionHandler___block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v28[2] = a1;
  v28[1] = a1;
  v28[0] = objc_loadWeakRetained((a1 + 64));
  v12 = 0;
  if (!v28[0])
  {
    v11 = +[SUUILoggingContext softwareUpdateUILogger];
    v27 = [v11 oslog];
    MEMORY[0x277D82BD8](v11);
    v26 = 16;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      log = v27;
      type = v26;
      v10 = NSStringFromSelector(*(a1 + 80));
      v25 = MEMORY[0x277D82BE0](v10);
      __os_log_helper_16_2_2_8_32_8_66(v30, "[SUUIStatefulUIManager enrollInBetaUpdatesProgram:completionHandler:]_block_invoke_2", v25);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v30, 0x16u);
      MEMORY[0x277D82BD8](v10);
      objc_storeStrong(&v25, 0);
    }

    objc_storeStrong(&v27, 0);
    v24 = 1;
    v12 = 1;
  }

  if (v12)
  {
    v6 = MEMORY[0x277D85CD0];
    v1 = MEMORY[0x277D85CD0];
    queue = v6;
    v18 = MEMORY[0x277D85DD0];
    v19 = -1073741824;
    v20 = 0;
    v21 = __70__SUUIStatefulUIManager_enrollInBetaUpdatesProgram_completionHandler___block_invoke_400;
    v22 = &unk_279CC61E0;
    v23 = MEMORY[0x277D82BE0](*(a1 + 48));
    dispatch_async(queue, &v18);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v23, 0);
    v17 = 1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 72));
    v15 = 0;
    v5 = 0;
    if (WeakRetained)
    {
      v16 = objc_loadWeakRetained((a1 + 72));
      v15 = 1;
      v5 = objc_opt_respondsToSelector();
    }

    if (v15)
    {
      MEMORY[0x277D82BD8](v16);
    }

    MEMORY[0x277D82BD8](WeakRetained);
    if (v5)
    {
      v3 = objc_loadWeakRetained((a1 + 72));
      [v3 statefulUIManager:v28[0] requestPurgeConfirmationOfActiveDownload:*(a1 + 32) toSwitchSelectedBetaProgram:*(a1 + 40) completionHandler:*(a1 + 56)];
      MEMORY[0x277D82BD8](v3);
    }

    else
    {
      v2 = +[SUUILoggingContext statefulUILogger];
      oslog = [v2 oslog];
      MEMORY[0x277D82BD8](v2);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_0(v29, "[SUUIStatefulUIManager enrollInBetaUpdatesProgram:completionHandler:]_block_invoke_2", v28[0]);
        _os_log_error_impl(&dword_26ADE5000, oslog, OS_LOG_TYPE_ERROR, "%s [%p]: The Stateful UI delegate doesn't implement the purge confirmation dialog.Approving without user consent. This is not recommended.", v29, 0x16u);
      }

      objc_storeStrong(&oslog, 0);
      (*(*(a1 + 56) + 16))();
    }

    v17 = 0;
  }

  objc_storeStrong(v28, 0);
}

void __70__SUUIStatefulUIManager_enrollInBetaUpdatesProgram_completionHandler___block_invoke_400(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:?];
    v1 = 1;
    (*(location[0] + 2))(location[0], 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

- (void)unenrollFromBetaUpdatesWithCompletion:(id)completion
{
  selfCopy = self;
  v13 = a2;
  location = 0;
  objc_storeStrong(&location, completion);
  objc_initWeak(&v11, selfCopy);
  queue = selfCopy->_operationsQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __63__SUUIStatefulUIManager_unenrollFromBetaUpdatesWithCompletion___block_invoke;
  v8 = &unk_279CC6548;
  objc_copyWeak(v10, &v11);
  v10[1] = v13;
  v9 = MEMORY[0x277D82BE0](location);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v9, 0);
  objc_destroyWeak(v10);
  objc_destroyWeak(&v11);
  objc_storeStrong(&location, 0);
}

void __63__SUUIStatefulUIManager_unenrollFromBetaUpdatesWithCompletion___block_invoke(id *a1)
{
  v234 = a1;
  v235 = "[SUUIStatefulUIManager unenrollFromBetaUpdatesWithCompletion:]_block_invoke";
  v236 = "[SUUIStatefulUIManager unenrollFromBetaUpdatesWithCompletion:]_block_invoke_2";
  v349 = *MEMORY[0x277D85DE8];
  v337[2] = a1;
  v337[1] = a1;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v337[0] = WeakRetained;
  v233 = 0;
  if (!WeakRetained)
  {
    v232 = +[SUUILoggingContext softwareUpdateUILogger];
    v230 = v232;
    v231 = [v230 oslog];
    oslog = v231;
    MEMORY[0x277D82BD8](v230);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v228 = type;
      v229 = NSStringFromSelector(v234[6]);
      v226 = v229;
      location = MEMORY[0x277D82BE0](v226);
      buf = v348;
      __os_log_helper_16_2_2_8_32_8_66(v348, v235, location);
      _os_log_error_impl(&dword_26ADE5000, oslog, type, "%s: Self is nil in %{public}@. Stopping.", v348, 0x16u);
      MEMORY[0x277D82BD8](v226);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&oslog, 0);
    v333 = 1;
    v233 = 1;
  }

  if (v233)
  {
    v1 = MEMORY[0x277D85CD0];
    queue = MEMORY[0x277D85CD0];
    block = &v327;
    v327 = MEMORY[0x277D85DD0];
    v328 = -1073741824;
    v329 = 0;
    v330 = __63__SUUIStatefulUIManager_unenrollFromBetaUpdatesWithCompletion___block_invoke_403;
    v331 = &unk_279CC61E0;
    v222 = &v332;
    v332 = MEMORY[0x277D82BE0](v234[4]);
    dispatch_async(queue, &v327);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v332, 0);
    v326 = 1;
  }

  else
  {
    v221 = _os_feature_enabled_impl();
    if (v221)
    {
      v315 = 0;
      v316 = &v315;
      v317 = 0x20000000;
      v318 = 32;
      v319 = 0;
      v214 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
      v313 = v214;
      if (v214)
      {
        v312 = _os_activity_create(&dword_26ADE5000, "com.apple.SoftwareUpdateUI.StatefulUI.Manager.UnenrollFromBetaUpdates", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
        v2 = v313[1].opaque[0];
        v313[1].opaque[0] = v312;
        MEMORY[0x277D82BD8](v2);
      }

      else
      {
        v213 = +[SUUILoggingContext softwareUpdateUILogger];
        v211 = v213;
        v212 = [v211 oslog];
        v311 = v212;
        MEMORY[0x277D82BD8](v211);
        v310 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(v311, OS_LOG_TYPE_ERROR))
        {
          v208 = v311;
          *v209 = v310;
          v210 = v309;
          __os_log_helper_16_0_0(v309);
          _os_log_error_impl(&dword_26ADE5000, v208, v209[0], "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.Manager.UnenrollFromBetaUpdates", v309, 2u);
        }

        objc_storeStrong(&v311, 0);
      }

      v308[2] = v313;
      state = v313;
      if (v313)
      {
        os_activity_scope_enter(state[1].opaque[0], state);
        LOBYTE(state[1].opaque[1]) = 1;
      }

      v308[1] = state;
      v316[3] = state;
      v207 = [v337[0] currentSeedingDevice];
      v308[0] = v207;
      v206 = [v337[0] delegateCallbackQueue];
      v307 = v206;
      v205 = [v337[0] currentDownload];
      v306 = v205;
      v204 = [v337[0] delegate];
      v203 = v204;
      objc_initWeak(&from, v203);
      MEMORY[0x277D82BD8](v203);
      if (v308[0])
      {
        if (v306)
        {
          v115 = +[SUUILoggingContext statefulUILogger];
          v113 = v115;
          v114 = [v113 oslog];
          v275 = v114;
          MEMORY[0x277D82BD8](v113);
          v274 = OS_LOG_TYPE_DEFAULT;
          if (os_log_type_enabled(v275, OS_LOG_TYPE_DEFAULT))
          {
            v109 = v275;
            *v110 = v274;
            v111 = v337[0];
            v112 = objc_opt_class();
            v108 = NSStringFromClass(v112);
            v105 = v108;
            v106 = MEMORY[0x277D82BE0](v105);
            v273 = v106;
            v107 = SUUIStatefulUIStateToString(*(v337[0] + 5));
            v102 = v107;
            v103 = MEMORY[0x277D82BE0](v102);
            v272 = v103;
            v104 = [v337[0] currentState];
            v270 = 0;
            v268 = 0;
            v101 = [v337[0] delegate];
            v100 = v101;
            if (v100)
            {
              v99 = [v337[0] delegate];
              v271 = v99;
              v270 = 1;
              v98 = objc_opt_class();
              v97 = NSStringFromClass(v98);
              v269 = v97;
              v268 = 1;
              v96 = v269;
            }

            else
            {
              v96 = @"(null)";
            }

            v94 = v96;
            v95 = [v337[0] delegate];
            v92 = v95;
            v93 = [v337[0] scanError];
            v90 = v93;
            v91 = [v337[0] preferredStatefulDescriptor];
            v88 = v91;
            v89 = [v337[0] alternateStatefulDescriptor];
            v86 = v89;
            v266 = 0;
            v264 = 0;
            v262 = 0;
            v87 = [v337[0] currentDownload];
            v85 = v87;
            if (v85)
            {
              v84 = [v337[0] currentDownload];
              v267 = v84;
              v266 = 1;
              v83 = [v267 descriptor];
              v265 = v83;
              v264 = 1;
              v82 = [v265 updateName];
              v263 = v82;
              v262 = 1;
              v81 = v263;
            }

            else
            {
              v81 = @"(null)";
            }

            v79 = v81;
            v80 = [v337[0] currentDownload];
            v77 = v80;
            v78 = [v337[0] currentUpdateOperationType];
            v76 = SUUIUpdateContinuousOperationTypeToString(v78);
            v73 = v76;
            v74 = MEMORY[0x277D82BE0](v73);
            v261 = v74;
            v75 = [v337[0] isTargetedUpdateScheduledForAutoInstall];
            v341 = v75;
            if (v75)
            {
              v11 = @"YES";
            }

            else
            {
              v11 = @"NO";
            }

            v72 = v11;
            v12 = v11;
            v69 = v72;
            v70 = MEMORY[0x277D82BE0](v69);
            v260 = v70;
            v71 = [v337[0] hidingPreferredDescriptor];
            v340 = v71;
            if (v71)
            {
              v13 = @"YES";
            }

            else
            {
              v13 = @"NO";
            }

            v68 = v13;
            v14 = v13;
            v65 = v68;
            v66 = MEMORY[0x277D82BE0](v65);
            v259 = v66;
            v67 = [v337[0] hiddenPreferredStatefulDescriptor];
            v63 = v67;
            v64 = [v63 updateName];
            v60 = v64;
            v61 = MEMORY[0x277D82BE0](v60);
            v258 = v61;
            v62 = [v337[0] hidingAlternateDescriptor];
            v339 = v62;
            if (v62)
            {
              v15 = @"YES";
            }

            else
            {
              v15 = @"NO";
            }

            v59 = v15;
            v16 = v15;
            v56 = v59;
            v57 = MEMORY[0x277D82BE0](v56);
            v257 = v57;
            v58 = [v337[0] hiddenAlternateStatefulDescriptor];
            v54 = v58;
            v55 = [v54 updateName];
            v51 = v55;
            v52 = MEMORY[0x277D82BE0](v51);
            v256 = v52;
            v254 = 0;
            v53 = [v337[0] enrolledBetaProgram];
            v50 = v53;
            if (v50)
            {
              v49 = [v337[0] enrolledBetaProgram];
              v255 = v49;
              v254 = 1;
              v48 = [v255 programID];
              v47 = v48;
            }

            else
            {
              v47 = 0;
            }

            v45 = v47;
            v46 = [*(v337[0] + 15) count];
            v44 = [v337[0] canEnrollInBetaUpdates];
            v338 = v44;
            if (v44)
            {
              v17 = @"YES";
            }

            else
            {
              v17 = @"NO";
            }

            v43 = v17;
            v18 = v17;
            v37 = v43;
            v38 = MEMORY[0x277D82BE0](v37);
            v253 = v38;
            v39 = *(v337[0] + 21);
            v40 = *(v337[0] + 22);
            v41 = *(v337[0] + 23);
            v42 = [*(v337[0] + 24) count];
            v35 = &v19;
            v36 = v346;
            __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v346, v236, v111, v106, v103, v104, v94, v92, v90, v88, v86, v79, v77, v74, v70, v66, v61, v57, v52, v45, v46, v38, v39, v40, v41, v42);
            _os_log_impl(&dword_26ADE5000, v109, v110[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA targeted update exists when attempting to unenroll from beta updates. Asking to purge the targeted update.", v36, 0xFCu);
            MEMORY[0x277D82BD8](v37);
            if (v254)
            {
              MEMORY[0x277D82BD8](v255);
            }

            MEMORY[0x277D82BD8](v50);
            MEMORY[0x277D82BD8](v51);
            MEMORY[0x277D82BD8](v54);
            MEMORY[0x277D82BD8](v56);
            MEMORY[0x277D82BD8](v60);
            MEMORY[0x277D82BD8](v63);
            MEMORY[0x277D82BD8](v65);
            MEMORY[0x277D82BD8](v69);
            MEMORY[0x277D82BD8](v73);
            MEMORY[0x277D82BD8](v77);
            if (v262)
            {
              MEMORY[0x277D82BD8](v263);
            }

            if (v264)
            {
              MEMORY[0x277D82BD8](v265);
            }

            if (v266)
            {
              MEMORY[0x277D82BD8](v267);
            }

            MEMORY[0x277D82BD8](v85);
            MEMORY[0x277D82BD8](v86);
            MEMORY[0x277D82BD8](v88);
            MEMORY[0x277D82BD8](v90);
            MEMORY[0x277D82BD8](v92);
            if (v268)
            {
              MEMORY[0x277D82BD8](v269);
            }

            if (v270)
            {
              MEMORY[0x277D82BD8](v271);
            }

            MEMORY[0x277D82BD8](v100);
            MEMORY[0x277D82BD8](v102);
            MEMORY[0x277D82BD8](v105);
            objc_storeStrong(&v253, 0);
            objc_storeStrong(&v256, 0);
            objc_storeStrong(&v257, 0);
            objc_storeStrong(&v258, 0);
            objc_storeStrong(&v259, 0);
            objc_storeStrong(&v260, 0);
            objc_storeStrong(&v261, 0);
            objc_storeStrong(&v272, 0);
            objc_storeStrong(&v273, 0);
          }

          objc_storeStrong(&v275, 0);
          v33 = &v246;
          v246 = MEMORY[0x277D85DD0];
          v247 = -1073741824;
          v248 = 0;
          v249 = __63__SUUIStatefulUIManager_unenrollFromBetaUpdatesWithCompletion___block_invoke_406;
          v250 = &unk_279CC64F8;
          v31 = v251;
          v251[0] = MEMORY[0x277D82BE0](v337[0]);
          v251[2] = &v315;
          v32 = (v33 + 5);
          v251[1] = MEMORY[0x277D82BE0](v234[4]);
          v34 = MEMORY[0x26D66ADC0](v33);
          v252 = v34;
          v30 = [MEMORY[0x277D643F8] sharedCore];
          v28 = v30;
          v29 = [v28 selectDelegateCallbackQueue:v307];
          v26 = v29;
          v238 = MEMORY[0x277D85DD0];
          v239 = -1073741824;
          v240 = 0;
          v241 = __63__SUUIStatefulUIManager_unenrollFromBetaUpdatesWithCompletion___block_invoke_2_407;
          v242 = &unk_279CC6520;
          v27 = v245;
          objc_copyWeak(v245, v234 + 5);
          v24 = &v238;
          v245[2] = v234[6];
          v23 = v244;
          v244[0] = MEMORY[0x277D82BE0](v234[4]);
          v25 = v24 + 8;
          objc_copyWeak(v24 + 8, &from);
          v22 = &v238;
          v20 = &v243;
          v243 = MEMORY[0x277D82BE0](v306);
          v21 = (v22 + 48);
          v244[1] = MEMORY[0x277D82BE0](v252);
          dispatch_async(v26, v22);
          MEMORY[0x277D82BD8](v26);
          MEMORY[0x277D82BD8](v28);
          objc_storeStrong(v21, 0);
          objc_storeStrong(v20, 0);
          objc_destroyWeak(v25);
          objc_storeStrong(v23, 0);
          objc_destroyWeak(v27);
          objc_storeStrong(&v252, 0);
          objc_storeStrong(v32, 0);
          objc_storeStrong(v31, 0);
          v326 = 0;
        }

        else
        {
          [v337[0] doUnenrollFromBetaUpdates:v316 + 3 completionHandler:v234[4]];
          v326 = 1;
        }
      }

      else
      {
        v202 = +[SUUILoggingContext statefulUILogger];
        v200 = v202;
        v201 = [v200 oslog];
        v304 = v201;
        MEMORY[0x277D82BD8](v200);
        v303 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v304, OS_LOG_TYPE_DEFAULT))
        {
          v196 = v304;
          *v197 = v303;
          v198 = v337[0];
          aClass = objc_opt_class();
          v195 = NSStringFromClass(aClass);
          v192 = v195;
          v193 = MEMORY[0x277D82BE0](v192);
          v302 = v193;
          v194 = SUUIStatefulUIStateToString(*(v337[0] + 5));
          v189 = v194;
          v190 = MEMORY[0x277D82BE0](v189);
          v301 = v190;
          v191 = [v337[0] currentState];
          v299 = 0;
          v297 = 0;
          v188 = [v337[0] delegate];
          v187 = v188;
          if (v187)
          {
            v186 = [v337[0] delegate];
            v300 = v186;
            v299 = 1;
            v185 = objc_opt_class();
            v184 = NSStringFromClass(v185);
            v298 = v184;
            v297 = 1;
            v183 = v298;
          }

          else
          {
            v183 = @"(null)";
          }

          v181 = v183;
          v182 = [v337[0] delegate];
          v179 = v182;
          v180 = [v337[0] scanError];
          v177 = v180;
          v178 = [v337[0] preferredStatefulDescriptor];
          v175 = v178;
          v176 = [v337[0] alternateStatefulDescriptor];
          v173 = v176;
          v295 = 0;
          v293 = 0;
          v291 = 0;
          v174 = [v337[0] currentDownload];
          v172 = v174;
          if (v172)
          {
            v171 = [v337[0] currentDownload];
            v296 = v171;
            v295 = 1;
            v170 = [v296 descriptor];
            v294 = v170;
            v293 = 1;
            v169 = [v294 updateName];
            v292 = v169;
            v291 = 1;
            v168 = v292;
          }

          else
          {
            v168 = @"(null)";
          }

          v166 = v168;
          v167 = [v337[0] currentDownload];
          v164 = v167;
          v165 = [v337[0] currentUpdateOperationType];
          v163 = SUUIUpdateContinuousOperationTypeToString(v165);
          v160 = v163;
          v161 = MEMORY[0x277D82BE0](v160);
          v290 = v161;
          v162 = [v337[0] isTargetedUpdateScheduledForAutoInstall];
          v345 = v162;
          if (v162)
          {
            v3 = @"YES";
          }

          else
          {
            v3 = @"NO";
          }

          v159 = v3;
          v4 = v3;
          v156 = v159;
          v157 = MEMORY[0x277D82BE0](v156);
          v289 = v157;
          v158 = [v337[0] hidingPreferredDescriptor];
          v344 = v158;
          if (v158)
          {
            v5 = @"YES";
          }

          else
          {
            v5 = @"NO";
          }

          v155 = v5;
          v6 = v5;
          v152 = v155;
          v153 = MEMORY[0x277D82BE0](v152);
          v288 = v153;
          v154 = [v337[0] hiddenPreferredStatefulDescriptor];
          v150 = v154;
          v151 = [v150 updateName];
          v147 = v151;
          v148 = MEMORY[0x277D82BE0](v147);
          v287 = v148;
          v149 = [v337[0] hidingAlternateDescriptor];
          v343 = v149;
          if (v149)
          {
            v7 = @"YES";
          }

          else
          {
            v7 = @"NO";
          }

          v146 = v7;
          v8 = v7;
          v143 = v146;
          v144 = MEMORY[0x277D82BE0](v143);
          v286 = v144;
          v145 = [v337[0] hiddenAlternateStatefulDescriptor];
          v141 = v145;
          v142 = [v141 updateName];
          v138 = v142;
          v139 = MEMORY[0x277D82BE0](v138);
          v285 = v139;
          v283 = 0;
          v140 = [v337[0] enrolledBetaProgram];
          v137 = v140;
          if (v137)
          {
            v136 = [v337[0] enrolledBetaProgram];
            v284 = v136;
            v283 = 1;
            v135 = [v284 programID];
            v134 = v135;
          }

          else
          {
            v134 = 0;
          }

          v132 = v134;
          v133 = [*(v337[0] + 15) count];
          v131 = [v337[0] canEnrollInBetaUpdates];
          v342 = v131;
          if (v131)
          {
            v9 = @"YES";
          }

          else
          {
            v9 = @"NO";
          }

          v130 = v9;
          v10 = v9;
          v124 = v130;
          v125 = MEMORY[0x277D82BE0](v124);
          v282 = v125;
          v126 = *(v337[0] + 21);
          v127 = *(v337[0] + 22);
          v128 = *(v337[0] + 23);
          v129 = [*(v337[0] + 24) count];
          v122 = &v19;
          v123 = v347;
          __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v347, v235, v198, v193, v190, v191, v181, v179, v177, v175, v173, v166, v164, v161, v157, v153, v148, v144, v139, v132, v133, v125, v126, v127, v128, v129);
          _os_log_impl(&dword_26ADE5000, v196, v197[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCan not unenroll from beta updates as we have not discovered a seeding device.", v123, 0xFCu);
          MEMORY[0x277D82BD8](v124);
          if (v283)
          {
            MEMORY[0x277D82BD8](v284);
          }

          MEMORY[0x277D82BD8](v137);
          MEMORY[0x277D82BD8](v138);
          MEMORY[0x277D82BD8](v141);
          MEMORY[0x277D82BD8](v143);
          MEMORY[0x277D82BD8](v147);
          MEMORY[0x277D82BD8](v150);
          MEMORY[0x277D82BD8](v152);
          MEMORY[0x277D82BD8](v156);
          MEMORY[0x277D82BD8](v160);
          MEMORY[0x277D82BD8](v164);
          if (v291)
          {
            MEMORY[0x277D82BD8](v292);
          }

          if (v293)
          {
            MEMORY[0x277D82BD8](v294);
          }

          if (v295)
          {
            MEMORY[0x277D82BD8](v296);
          }

          MEMORY[0x277D82BD8](v172);
          MEMORY[0x277D82BD8](v173);
          MEMORY[0x277D82BD8](v175);
          MEMORY[0x277D82BD8](v177);
          MEMORY[0x277D82BD8](v179);
          if (v297)
          {
            MEMORY[0x277D82BD8](v298);
          }

          if (v299)
          {
            MEMORY[0x277D82BD8](v300);
          }

          MEMORY[0x277D82BD8](v187);
          MEMORY[0x277D82BD8](v189);
          MEMORY[0x277D82BD8](v192);
          objc_storeStrong(&v282, 0);
          objc_storeStrong(&v285, 0);
          objc_storeStrong(&v286, 0);
          objc_storeStrong(&v287, 0);
          objc_storeStrong(&v288, 0);
          objc_storeStrong(&v289, 0);
          objc_storeStrong(&v290, 0);
          objc_storeStrong(&v301, 0);
          objc_storeStrong(&v302, 0);
        }

        objc_storeStrong(&v304, 0);
        if (v316[3])
        {
          if (*(v316[3] + 24))
          {
            os_activity_scope_leave(v316[3]);
          }

          free(v316[3]);
          v316[3] = 0;
        }

        v121 = [MEMORY[0x277D643F8] sharedCore];
        v119 = v121;
        v120 = [v119 selectDelegateCallbackQueue:v307];
        v118 = v120;
        v117 = &v276;
        v276 = MEMORY[0x277D85DD0];
        v277 = -1073741824;
        v278 = 0;
        v279 = __63__SUUIStatefulUIManager_unenrollFromBetaUpdatesWithCompletion___block_invoke_404;
        v280 = &unk_279CC61E0;
        v116 = &v281;
        v281 = MEMORY[0x277D82BE0](v234[4]);
        dispatch_async(v118, v117);
        MEMORY[0x277D82BD8](v118);
        MEMORY[0x277D82BD8](v119);
        v326 = 1;
        objc_storeStrong(v116, 0);
      }

      objc_destroyWeak(&from);
      objc_storeStrong(&v306, 0);
      objc_storeStrong(&v307, 0);
      objc_storeStrong(v308, 0);
      _Block_object_dispose(&v315, 8);
    }

    else
    {
      v220 = [MEMORY[0x277D643F8] sharedCore];
      v218 = v220;
      v219 = [v218 selectDelegateCallbackQueue:*(v337[0] + 2)];
      v217 = v219;
      v216 = &v320;
      v320 = MEMORY[0x277D85DD0];
      v321 = -1073741824;
      v322 = 0;
      v323 = __63__SUUIStatefulUIManager_unenrollFromBetaUpdatesWithCompletion___block_invoke_2;
      v324 = &unk_279CC61E0;
      v215 = &v325;
      v325 = MEMORY[0x277D82BE0](v234[4]);
      dispatch_async(v217, &v320);
      MEMORY[0x277D82BD8](v217);
      MEMORY[0x277D82BD8](v218);
      v326 = 1;
      objc_storeStrong(&v325, 0);
    }
  }

  objc_storeStrong(v337, 0);
}

void __63__SUUIStatefulUIManager_unenrollFromBetaUpdatesWithCompletion___block_invoke_403(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:0];
    v1 = 1;
    (*(location[0] + 2))(location[0], v2 != 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __63__SUUIStatefulUIManager_unenrollFromBetaUpdatesWithCompletion___block_invoke_2(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0);
  }

  objc_storeStrong(location, 0);
}

void __63__SUUIStatefulUIManager_unenrollFromBetaUpdatesWithCompletion___block_invoke_404(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0);
  }

  objc_storeStrong(location, 0);
}

void __63__SUUIStatefulUIManager_unenrollFromBetaUpdatesWithCompletion___block_invoke_2_407(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v28[2] = a1;
  v28[1] = a1;
  v28[0] = objc_loadWeakRetained((a1 + 56));
  v12 = 0;
  if (!v28[0])
  {
    v11 = +[SUUILoggingContext softwareUpdateUILogger];
    v27 = [v11 oslog];
    MEMORY[0x277D82BD8](v11);
    v26 = 16;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      log = v27;
      type = v26;
      v10 = NSStringFromSelector(*(a1 + 72));
      v25 = MEMORY[0x277D82BE0](v10);
      __os_log_helper_16_2_2_8_32_8_66(v30, "[SUUIStatefulUIManager unenrollFromBetaUpdatesWithCompletion:]_block_invoke_2", v25);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v30, 0x16u);
      MEMORY[0x277D82BD8](v10);
      objc_storeStrong(&v25, 0);
    }

    objc_storeStrong(&v27, 0);
    v24 = 1;
    v12 = 1;
  }

  if (v12)
  {
    v6 = MEMORY[0x277D85CD0];
    v1 = MEMORY[0x277D85CD0];
    queue = v6;
    v18 = MEMORY[0x277D85DD0];
    v19 = -1073741824;
    v20 = 0;
    v21 = __63__SUUIStatefulUIManager_unenrollFromBetaUpdatesWithCompletion___block_invoke_408;
    v22 = &unk_279CC61E0;
    v23 = MEMORY[0x277D82BE0](*(a1 + 40));
    dispatch_async(queue, &v18);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v23, 0);
    v17 = 1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v15 = 0;
    v5 = 0;
    if (WeakRetained)
    {
      v16 = objc_loadWeakRetained((a1 + 64));
      v15 = 1;
      v5 = objc_opt_respondsToSelector();
    }

    if (v15)
    {
      MEMORY[0x277D82BD8](v16);
    }

    MEMORY[0x277D82BD8](WeakRetained);
    if (v5)
    {
      v3 = objc_loadWeakRetained((a1 + 64));
      [v3 statefulUIManager:v28[0] requestPurgeConfirmationOfActiveDownload:*(a1 + 32) toSwitchSelectedBetaProgram:0 completionHandler:*(a1 + 48)];
      MEMORY[0x277D82BD8](v3);
    }

    else
    {
      v2 = +[SUUILoggingContext statefulUILogger];
      oslog = [v2 oslog];
      MEMORY[0x277D82BD8](v2);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_0(v29, "[SUUIStatefulUIManager unenrollFromBetaUpdatesWithCompletion:]_block_invoke_2", v28[0]);
        _os_log_error_impl(&dword_26ADE5000, oslog, OS_LOG_TYPE_ERROR, "%s [%p]: The Stateful UI delegate doesn't implement the purge confirmation dialog.Approving without user consent. This is not recommended.", v29, 0x16u);
      }

      objc_storeStrong(&oslog, 0);
      (*(*(a1 + 48) + 16))();
    }

    v17 = 0;
  }

  objc_storeStrong(v28, 0);
}

void __63__SUUIStatefulUIManager_unenrollFromBetaUpdatesWithCompletion___block_invoke_408(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:0];
    v1 = 1;
    (*(location[0] + 2))(location[0], v2 != 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

- (void)refreshBetaUpdates:(id)updates
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, updates);
  [(SUUIStatefulUIManager *)selfCopy refreshBetaUpdates:location[0] withRecheckForAvailableUpdates:1];
  objc_storeStrong(location, 0);
}

- (void)refreshBetaUpdates:(id)updates withRecheckForAvailableUpdates:(BOOL)availableUpdates
{
  selfCopy = self;
  v17 = a2;
  location = 0;
  objc_storeStrong(&location, updates);
  availableUpdatesCopy = availableUpdates;
  objc_initWeak(&v14, selfCopy);
  queue = selfCopy->_operationsQueue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke;
  v10 = &unk_279CC6208;
  objc_copyWeak(v12, &v14);
  v12[1] = v17;
  v11 = MEMORY[0x277D82BE0](location);
  v13 = availableUpdatesCopy;
  dispatch_async(queue, &v6);
  objc_storeStrong(&v11, 0);
  objc_destroyWeak(v12);
  objc_destroyWeak(&v14);
  objc_storeStrong(&location, 0);
}

void __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke(id *a1)
{
  v147 = &v167;
  v148 = a1;
  v149 = "[SUUIStatefulUIManager refreshBetaUpdates:withRecheckForAvailableUpdates:]_block_invoke";
  v150 = "[SUUIStatefulUIManager refreshBetaUpdates:withRecheckForAvailableUpdates:]_block_invoke_2";
  v228 = *MEMORY[0x277D85DE8];
  v219[2] = a1;
  v219[1] = a1;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v219[0] = WeakRetained;
  v146 = 0;
  if (!WeakRetained)
  {
    v145 = +[SUUILoggingContext softwareUpdateUILogger];
    v143 = v145;
    v144 = [v143 oslog];
    oslog = v144;
    MEMORY[0x277D82BD8](v143);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v141 = type;
      v142 = NSStringFromSelector(v148[6]);
      v139 = v142;
      location = MEMORY[0x277D82BE0](v139);
      buf = v227;
      __os_log_helper_16_2_2_8_32_8_66(v227, v149, location);
      _os_log_error_impl(&dword_26ADE5000, log, v141[0], "%s: Self is nil in %{public}@. Stopping.", v227, 0x16u);
      MEMORY[0x277D82BD8](v139);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&oslog, 0);
    v215 = 1;
    v146 = 1;
  }

  if (v146)
  {
    v1 = MEMORY[0x277D85CD0];
    queue = MEMORY[0x277D85CD0];
    block = &v209;
    v209 = MEMORY[0x277D85DD0];
    v210 = -1073741824;
    v211 = 0;
    v212 = __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke_409;
    v213 = &unk_279CC61E0;
    v135 = &v214;
    v214 = MEMORY[0x277D82BE0](v148[4]);
    dispatch_async(queue, &v209);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v214, 0);
    v208 = 1;
  }

  else
  {
    v134 = [MEMORY[0x277CCAD78] UUID];
    v132 = v134;
    v133 = [v132 UUIDString];
    v207 = v133;
    MEMORY[0x277D82BD8](v132);
    v131 = +[SUUILoggingContext statefulUILogger];
    v129 = v131;
    v130 = [v129 oslog];
    v206 = v130;
    MEMORY[0x277D82BD8](v129);
    v205 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v206, OS_LOG_TYPE_DEFAULT))
    {
      v125 = v206;
      *v126 = v205;
      v127 = v219[0];
      aClass = objc_opt_class();
      v124 = NSStringFromClass(aClass);
      v121 = v124;
      v122 = MEMORY[0x277D82BE0](v121);
      v204 = v122;
      v123 = SUUIStatefulUIStateToString(*(v219[0] + 5));
      v118 = v123;
      v119 = MEMORY[0x277D82BE0](v118);
      v203 = v119;
      v120 = [v219[0] currentState];
      v117 = [v219[0] delegate];
      v116 = v117;
      v201 = 0;
      v199 = 0;
      if (v116)
      {
        v115 = [v219[0] delegate];
        v202 = v115;
        v201 = 1;
        v114 = objc_opt_class();
        v113 = NSStringFromClass(v114);
        v200 = v113;
        v199 = 1;
        v112 = v200;
      }

      else
      {
        v112 = @"(null)";
      }

      v110 = v112;
      v111 = [v219[0] delegate];
      v108 = v111;
      v109 = [v219[0] scanError];
      v106 = v109;
      v107 = [v219[0] preferredStatefulDescriptor];
      v104 = v107;
      v105 = [v219[0] alternateStatefulDescriptor];
      v102 = v105;
      v103 = [v219[0] currentDownload];
      v101 = v103;
      v197 = 0;
      v195 = 0;
      v193 = 0;
      if (v101)
      {
        v100 = [v219[0] currentDownload];
        v198 = v100;
        v197 = 1;
        v99 = [v198 descriptor];
        v196 = v99;
        v195 = 1;
        v98 = [v196 updateName];
        v194 = v98;
        v193 = 1;
        v97 = v194;
      }

      else
      {
        v97 = @"(null)";
      }

      v95 = v97;
      v96 = [v219[0] currentDownload];
      v93 = v96;
      v94 = [v219[0] currentUpdateOperationType];
      v92 = SUUIUpdateContinuousOperationTypeToString(v94);
      v89 = v92;
      v90 = MEMORY[0x277D82BE0](v89);
      v192 = v90;
      v91 = [v219[0] isTargetedUpdateScheduledForAutoInstall];
      v223 = v91;
      if (v91)
      {
        v2 = @"YES";
      }

      else
      {
        v2 = @"NO";
      }

      v88 = v2;
      v3 = v2;
      v85 = v88;
      v86 = MEMORY[0x277D82BE0](v85);
      v191 = v86;
      v87 = [v219[0] hidingPreferredDescriptor];
      v222 = v87;
      if (v87)
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      v84 = v4;
      v5 = v4;
      v81 = v84;
      v82 = MEMORY[0x277D82BE0](v81);
      v190 = v82;
      v83 = [v219[0] hiddenPreferredStatefulDescriptor];
      v79 = v83;
      v80 = [v79 updateName];
      v76 = v80;
      v77 = MEMORY[0x277D82BE0](v76);
      v189 = v77;
      v78 = [v219[0] hidingAlternateDescriptor];
      v221 = v78;
      if (v78)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v75 = v6;
      v7 = v6;
      v72 = v75;
      v73 = MEMORY[0x277D82BE0](v72);
      v188 = v73;
      v74 = [v219[0] hiddenAlternateStatefulDescriptor];
      v70 = v74;
      v71 = [v70 updateName];
      v67 = v71;
      v68 = MEMORY[0x277D82BE0](v67);
      v187 = v68;
      v69 = [v219[0] enrolledBetaProgram];
      v66 = v69;
      v185 = 0;
      if (v66)
      {
        v65 = [v219[0] enrolledBetaProgram];
        v186 = v65;
        v185 = 1;
        v64 = [v186 programID];
        v63 = v64;
      }

      else
      {
        v63 = 0;
      }

      v61 = v63;
      v62 = [*(v219[0] + 15) count];
      v60 = [v219[0] canEnrollInBetaUpdates];
      v220 = v60;
      if (v60)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v59 = v8;
      v9 = v8;
      v53 = v59;
      v54 = MEMORY[0x277D82BE0](v53);
      v184 = v54;
      v55 = *(v219[0] + 21);
      v56 = *(v219[0] + 22);
      v57 = *(v219[0] + 23);
      v58 = [*(v219[0] + 24) count];
      v51 = v207;
      v52 = [v219[0] currentFullScanOperation];
      v49 = v52;
      v50 = [v219[0] currentRefreshScanOperation];
      v48 = v50;
      v46 = &v12;
      v47 = v226;
      __os_log_helper_16_2_28_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_0_8_0(v226, v150, v127, v122, v119, v120, v110, v108, v106, v104, v102, v95, v93, v90, v86, v82, v77, v73, v68, v61, v62, v54, v55, v56, v57, v58, v51, v49, v48);
      _os_log_impl(&dword_26ADE5000, v125, v126[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nBeginning a beta updates scan operation with operation ID: %{public}@ (full scan FSM: %p, refresh scan FSM: %p)", v47, 0x11Au);
      MEMORY[0x277D82BD8](v48);
      MEMORY[0x277D82BD8](v49);
      MEMORY[0x277D82BD8](v53);
      if (v185)
      {
        MEMORY[0x277D82BD8](v186);
      }

      MEMORY[0x277D82BD8](v66);
      MEMORY[0x277D82BD8](v67);
      MEMORY[0x277D82BD8](v70);
      MEMORY[0x277D82BD8](v72);
      MEMORY[0x277D82BD8](v76);
      MEMORY[0x277D82BD8](v79);
      MEMORY[0x277D82BD8](v81);
      MEMORY[0x277D82BD8](v85);
      MEMORY[0x277D82BD8](v89);
      MEMORY[0x277D82BD8](v93);
      if (v193)
      {
        MEMORY[0x277D82BD8](v194);
      }

      if (v195)
      {
        MEMORY[0x277D82BD8](v196);
      }

      if (v197)
      {
        MEMORY[0x277D82BD8](v198);
      }

      MEMORY[0x277D82BD8](v101);
      MEMORY[0x277D82BD8](v102);
      MEMORY[0x277D82BD8](v104);
      MEMORY[0x277D82BD8](v106);
      MEMORY[0x277D82BD8](v108);
      if (v199)
      {
        MEMORY[0x277D82BD8](v200);
      }

      if (v201)
      {
        MEMORY[0x277D82BD8](v202);
      }

      MEMORY[0x277D82BD8](v116);
      MEMORY[0x277D82BD8](v118);
      MEMORY[0x277D82BD8](v121);
      objc_storeStrong(&v184, 0);
      objc_storeStrong(&v187, 0);
      objc_storeStrong(&v188, 0);
      objc_storeStrong(&v189, 0);
      objc_storeStrong(&v190, 0);
      objc_storeStrong(&v191, 0);
      objc_storeStrong(&v192, 0);
      objc_storeStrong(&v203, 0);
      objc_storeStrong(&v204, 0);
    }

    objc_storeStrong(&v206, 0);
    v179 = 0;
    v180 = &v179;
    v181 = 0x20000000;
    v182 = 32;
    v183 = 0;
    v45 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
    v177 = v45;
    if (v45)
    {
      v176 = _os_activity_create(&dword_26ADE5000, "com.apple.SoftwareUpdateUI.StatefulUI.Manager.RefreshBetaUpdates", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      v10 = v177[1].opaque[0];
      v177[1].opaque[0] = v176;
      MEMORY[0x277D82BD8](v10);
    }

    else
    {
      v44 = +[SUUILoggingContext softwareUpdateUILogger];
      v42 = v44;
      v43 = [v42 oslog];
      v175 = v43;
      MEMORY[0x277D82BD8](v42);
      v174 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v175, OS_LOG_TYPE_ERROR))
      {
        v39 = v175;
        *v40 = v174;
        v41 = v173;
        __os_log_helper_16_0_0(v173);
        _os_log_error_impl(&dword_26ADE5000, v39, v40[0], "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.Manager.RefreshBetaUpdates", v41, 2u);
      }

      objc_storeStrong(&v175, 0);
    }

    v172 = v177;
    state = v177;
    if (v177)
    {
      os_activity_scope_enter(state[1].opaque[0], state);
      LOBYTE(state[1].opaque[1]) = 1;
    }

    v171 = state;
    v180[3] = state;
    v169 = 0;
    v170 = 0;
    v167 = 0;
    v168 = 0;
    v38 = +[SUUILoggingContext statefulUILogger];
    v36 = v38;
    v37 = [v36 oslog];
    v33 = v37;
    v34 = _SUUISignpostCreate(v33);
    v35 = v11;
    v167 = v34;
    v168 = v11;
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v36);
    if (v167)
    {
      v32 = +[SUUILoggingContext statefulUILogger];
      v30 = v32;
      v31 = [v30 oslog];
      v166 = v31;
      MEMORY[0x277D82BD8](v30);
      v165 = 1;
      v164 = v167;
      if (v167 && v164 != -1 && os_signpost_enabled(v166))
      {
        v26 = v166;
        *v27 = v165;
        spid = v164;
        v29 = v225;
        __os_log_helper_16_2_1_8_66(v225, v207);
        _os_signpost_emit_with_name_impl(&dword_26ADE5000, v26, v27[0], spid, "RefreshBetaUpdates", "Refreshing beta updates  ScanIdentifier=%{public,signpost.telemetry:string1,name=ScanIdentifier}@  enableTelemetry=YES ", v29, 0xCu);
      }

      objc_storeStrong(&v166, 0);
      v25 = +[SUUILoggingContext statefulUILogger];
      v23 = v25;
      v24 = [v23 oslog];
      v163 = v24;
      MEMORY[0x277D82BD8](v23);
      v162 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v163;
        *v21 = v162;
        v22 = v224;
        __os_log_helper_16_2_2_8_0_8_66(v224, v167, v207);
        _os_log_impl(&dword_26ADE5000, v20, v21[0], "BEGIN [%lld]: RefreshBetaUpdates Refreshing beta updates  ScanIdentifier=%{public,signpost.telemetry:string1,name=ScanIdentifier}@  enableTelemetry=YES ", v22, 0x16u);
      }

      objc_storeStrong(&v163, 0);
    }

    *(v147 + 1) = *v147;
    v19 = [v219[0] environment];
    v17 = v19;
    v18 = [v17 betaUpdatesOperationWithManager:v219[0] identifier:v207 completionQueue:*(v219[0] + 26)];
    v161 = v18;
    MEMORY[0x277D82BD8](v17);
    v15 = v161;
    v152 = MEMORY[0x277D85DD0];
    v153 = -1073741824;
    v154 = 0;
    v155 = __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke_412;
    v156 = &unk_279CC65C0;
    v16 = v158;
    objc_copyWeak(v158, v148 + 5);
    v14 = &v152;
    v158[1] = v148[6];
    v13 = v157;
    v157[0] = MEMORY[0x277D82BE0](v148[4]);
    v160 = v148[7] & 1;
    v159 = *(v147 + 1);
    v157[1] = &v179;
    [v15 checkForAvailableBetaProgramsWithCompletionHandler:v14];
    objc_storeStrong(v13, 0);
    objc_destroyWeak(v16);
    objc_storeStrong(&v161, 0);
    _Block_object_dispose(&v179, 8);
    objc_storeStrong(&v207, 0);
    v208 = 0;
  }

  objc_storeStrong(v219, 0);
}

void __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke_409(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:?];
    v1 = 1;
    (*(location[0] + 2))(location[0], 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke_412(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v37 = 0;
  objc_storeStrong(&v37, a3);
  v36[1] = a1;
  v36[0] = objc_loadWeakRetained((a1 + 48));
  v11 = 0;
  if (!v36[0])
  {
    v10 = +[SUUILoggingContext softwareUpdateUILogger];
    v35 = [v10 oslog];
    MEMORY[0x277D82BD8](v10);
    v34 = 16;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      log = v35;
      type = v34;
      v9 = NSStringFromSelector(*(a1 + 56));
      v33 = MEMORY[0x277D82BE0](v9);
      __os_log_helper_16_2_2_8_32_8_66(v39, "[SUUIStatefulUIManager refreshBetaUpdates:withRecheckForAvailableUpdates:]_block_invoke", v33);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v39, 0x16u);
      MEMORY[0x277D82BD8](v9);
      objc_storeStrong(&v33, 0);
    }

    objc_storeStrong(&v35, 0);
    v32 = 1;
    v11 = 1;
  }

  if (v11)
  {
    v5 = MEMORY[0x277D85CD0];
    v3 = MEMORY[0x277D85CD0];
    queue = v5;
    v26 = MEMORY[0x277D85DD0];
    v27 = -1073741824;
    v28 = 0;
    v29 = __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke_413;
    v30 = &unk_279CC61E0;
    v31 = MEMORY[0x277D82BE0](*(a1 + 32));
    dispatch_async(queue, &v26);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v31, 0);
    v25 = 1;
  }

  else
  {
    v4 = *(v36[0] + 26);
    v14 = MEMORY[0x277D85DD0];
    v15 = -1073741824;
    v16 = 0;
    v17 = __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke_2;
    v18 = &unk_279CC6598;
    objc_copyWeak(v22, (a1 + 48));
    v22[1] = *(a1 + 56);
    v21[0] = MEMORY[0x277D82BE0](*(a1 + 32));
    v19 = MEMORY[0x277D82BE0](v37);
    v20 = MEMORY[0x277D82BE0](location[0]);
    v24 = *(a1 + 80) & 1;
    v23 = *(a1 + 64);
    v21[1] = *(a1 + 40);
    dispatch_async(v4, &v14);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(v21, 0);
    objc_destroyWeak(v22);
    v25 = 0;
  }

  objc_storeStrong(v36, 0);
  if (!v25)
  {
    v25 = 0;
  }

  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
}

void __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke_413(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:?];
    v1 = 1;
    (*(location[0] + 2))(location[0], 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke_2(id *a1)
{
  v180 = a1;
  v181 = "[SUUIStatefulUIManager refreshBetaUpdates:withRecheckForAvailableUpdates:]_block_invoke_2";
  v259 = *MEMORY[0x277D85DE8];
  v249[2] = a1;
  v249[1] = a1;
  WeakRetained = objc_loadWeakRetained(a1 + 8);
  v249[0] = WeakRetained;
  v179 = 0;
  if (!WeakRetained)
  {
    v178 = +[SUUILoggingContext softwareUpdateUILogger];
    v176 = v178;
    v177 = [v176 oslog];
    oslog = v177;
    MEMORY[0x277D82BD8](v176);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v174 = type;
      v175 = NSStringFromSelector(v180[9]);
      v172 = v175;
      location = MEMORY[0x277D82BE0](v172);
      buf = v258;
      __os_log_helper_16_2_2_8_32_8_66(v258, v181, location);
      _os_log_error_impl(&dword_26ADE5000, oslog, type, "%s: Self is nil in %{public}@. Stopping.", v258, 0x16u);
      MEMORY[0x277D82BD8](v172);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&oslog, 0);
    v245 = 1;
    v179 = 1;
  }

  if (v179)
  {
    v1 = MEMORY[0x277D85CD0];
    queue = MEMORY[0x277D85CD0];
    block = &v239;
    v239 = MEMORY[0x277D85DD0];
    v240 = -1073741824;
    v241 = 0;
    v242 = __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke_414;
    v243 = &unk_279CC61E0;
    v168 = &v244;
    v244 = MEMORY[0x277D82BE0](v180[6]);
    dispatch_async(queue, &v239);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v244, 0);
    v238 = 1;
  }

  else
  {
    v2 = v180[4];
    v235 = 0;
    v233 = 0;
    v167 = 1;
    if (!v2)
    {
      v166 = [v249[0] enrolledBetaProgram];
      v164 = v166;
      v236 = v164;
      v235 = 1;
      v165 = [v180[5] enrolledBetaProgram];
      v234 = v165;
      v233 = 1;
      v163 = [v164 isEqual:?];
      v167 = v163 ^ 1;
    }

    v162 = v167;
    if (v233)
    {
      MEMORY[0x277D82BD8](v234);
    }

    if (v235)
    {
      MEMORY[0x277D82BD8](v236);
    }

    v237 = v162 & 1;
    v161 = 0;
    if (v162)
    {
      v161 = *(v180 + 96);
    }

    v232 = v161 & 1;
    v160 = +[SUUILoggingContext statefulUILogger];
    v158 = v160;
    v159 = [v158 oslog];
    v231 = v159;
    MEMORY[0x277D82BD8](v158);
    v230 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
    {
      v154 = v231;
      *v155 = v230;
      v156 = v249[0];
      aClass = objc_opt_class();
      v153 = NSStringFromClass(aClass);
      v150 = v153;
      v151 = MEMORY[0x277D82BE0](v150);
      v229 = v151;
      v152 = SUUIStatefulUIStateToString(*(v249[0] + 5));
      v147 = v152;
      v148 = MEMORY[0x277D82BE0](v147);
      v228 = v148;
      v149 = [v249[0] currentState];
      v146 = [v249[0] delegate];
      v145 = v146;
      v226 = 0;
      v224 = 0;
      if (v145)
      {
        v144 = [v249[0] delegate];
        v227 = v144;
        v226 = 1;
        v143 = objc_opt_class();
        v142 = NSStringFromClass(v143);
        v225 = v142;
        v224 = 1;
        v141 = v225;
      }

      else
      {
        v141 = @"(null)";
      }

      v139 = v141;
      v140 = [v249[0] delegate];
      v137 = v140;
      v138 = [v249[0] scanError];
      v135 = v138;
      v136 = [v249[0] preferredStatefulDescriptor];
      v133 = v136;
      v134 = [v249[0] alternateStatefulDescriptor];
      v131 = v134;
      v132 = [v249[0] currentDownload];
      v130 = v132;
      v222 = 0;
      v220 = 0;
      v218 = 0;
      if (v130)
      {
        v129 = [v249[0] currentDownload];
        v223 = v129;
        v222 = 1;
        v128 = [v223 descriptor];
        v221 = v128;
        v220 = 1;
        v127 = [v221 updateName];
        v219 = v127;
        v218 = 1;
        v126 = v219;
      }

      else
      {
        v126 = @"(null)";
      }

      v124 = v126;
      v125 = [v249[0] currentDownload];
      v122 = v125;
      v123 = [v249[0] currentUpdateOperationType];
      v121 = SUUIUpdateContinuousOperationTypeToString(v123);
      v118 = v121;
      v119 = MEMORY[0x277D82BE0](v118);
      v217 = v119;
      v120 = [v249[0] isTargetedUpdateScheduledForAutoInstall];
      v254 = v120;
      if (v120)
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      v117 = v3;
      v4 = v3;
      v114 = v117;
      v115 = MEMORY[0x277D82BE0](v114);
      v216 = v115;
      v116 = [v249[0] hidingPreferredDescriptor];
      v253 = v116;
      if (v116)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v113 = v5;
      v6 = v5;
      v110 = v113;
      v111 = MEMORY[0x277D82BE0](v110);
      v215 = v111;
      v112 = [v249[0] hiddenPreferredStatefulDescriptor];
      v108 = v112;
      v109 = [v108 updateName];
      v105 = v109;
      v106 = MEMORY[0x277D82BE0](v105);
      v214 = v106;
      v107 = [v249[0] hidingAlternateDescriptor];
      v252 = v107;
      if (v107)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      v104 = v7;
      v8 = v7;
      v101 = v104;
      v102 = MEMORY[0x277D82BE0](v101);
      v213 = v102;
      v103 = [v249[0] hiddenAlternateStatefulDescriptor];
      v99 = v103;
      v100 = [v99 updateName];
      v96 = v100;
      v97 = MEMORY[0x277D82BE0](v96);
      v212 = v97;
      v98 = [v249[0] enrolledBetaProgram];
      v95 = v98;
      v210 = 0;
      if (v95)
      {
        v94 = [v249[0] enrolledBetaProgram];
        v211 = v94;
        v210 = 1;
        v93 = [v211 programID];
        v92 = v93;
      }

      else
      {
        v92 = 0;
      }

      v90 = v92;
      v91 = [*(v249[0] + 15) count];
      v89 = [v249[0] canEnrollInBetaUpdates];
      v251 = v89;
      if (v89)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      v88 = v9;
      v10 = v9;
      v82 = v88;
      v83 = MEMORY[0x277D82BE0](v82);
      v209 = v83;
      v84 = *(v249[0] + 21);
      v85 = *(v249[0] + 22);
      v86 = *(v249[0] + 23);
      v87 = [*(v249[0] + 24) count];
      v81 = [v180[5] identifier];
      v78 = v81;
      v79 = v180[4];
      v80 = [v249[0] enrolledBetaProgram];
      v77 = v80;
      v207 = 0;
      if (v77)
      {
        v76 = [v249[0] enrolledBetaProgram];
        v208 = v76;
        v207 = 1;
        v75 = [v208 programID];
        v74 = v75;
      }

      else
      {
        v74 = -1;
      }

      v72 = v74;
      v73 = [v180[5] enrolledBetaProgram];
      v71 = v73;
      v205 = 0;
      if (v71)
      {
        v70 = [v180[5] enrolledBetaProgram];
        v206 = v70;
        v205 = 1;
        v69 = [v206 programID];
        v68 = v69;
      }

      else
      {
        v68 = -1;
      }

      v66 = v68;
      v250 = v232 & 1;
      if (v232)
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v67 = v11;
      v12 = v11;
      v65 = v67;
      v204 = MEMORY[0x277D82BE0](v65);
      v13 = v180[5];
      v63 = &v14;
      v64 = v257;
      __os_log_helper_16_2_31_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66_8_2_8_2_8_66_8_66(v257, v181, v156, v151, v148, v149, v139, v137, v135, v133, v131, v124, v122, v119, v115, v111, v106, v102, v97, v90, v91, v83, v84, v85, v86, v87, v78, v79, v72, v66, v204, v13);
      _os_log_impl(&dword_26ADE5000, v154, v155[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFinished to perform a beta updates scan with ID: %{public}@.\nResults: %{public}@\nCurrent: %{public}zd; Discovered: %{public}zd\nTrigger: %{public}@\nError: %{public}@", v64, 0x138u);
      MEMORY[0x277D82BD8](v65);
      if (v205)
      {
        MEMORY[0x277D82BD8](v206);
      }

      MEMORY[0x277D82BD8](v71);
      if (v207)
      {
        MEMORY[0x277D82BD8](v208);
      }

      MEMORY[0x277D82BD8](v77);
      MEMORY[0x277D82BD8](v78);
      MEMORY[0x277D82BD8](v82);
      if (v210)
      {
        MEMORY[0x277D82BD8](v211);
      }

      MEMORY[0x277D82BD8](v95);
      MEMORY[0x277D82BD8](v96);
      MEMORY[0x277D82BD8](v99);
      MEMORY[0x277D82BD8](v101);
      MEMORY[0x277D82BD8](v105);
      MEMORY[0x277D82BD8](v108);
      MEMORY[0x277D82BD8](v110);
      MEMORY[0x277D82BD8](v114);
      MEMORY[0x277D82BD8](v118);
      MEMORY[0x277D82BD8](v122);
      if (v218)
      {
        MEMORY[0x277D82BD8](v219);
      }

      if (v220)
      {
        MEMORY[0x277D82BD8](v221);
      }

      if (v222)
      {
        MEMORY[0x277D82BD8](v223);
      }

      MEMORY[0x277D82BD8](v130);
      MEMORY[0x277D82BD8](v131);
      MEMORY[0x277D82BD8](v133);
      MEMORY[0x277D82BD8](v135);
      MEMORY[0x277D82BD8](v137);
      if (v224)
      {
        MEMORY[0x277D82BD8](v225);
      }

      if (v226)
      {
        MEMORY[0x277D82BD8](v227);
      }

      MEMORY[0x277D82BD8](v145);
      MEMORY[0x277D82BD8](v147);
      MEMORY[0x277D82BD8](v150);
      objc_storeStrong(&v204, 0);
      objc_storeStrong(&v209, 0);
      objc_storeStrong(&v212, 0);
      objc_storeStrong(&v213, 0);
      objc_storeStrong(&v214, 0);
      objc_storeStrong(&v215, 0);
      objc_storeStrong(&v216, 0);
      objc_storeStrong(&v217, 0);
      objc_storeStrong(&v228, 0);
      objc_storeStrong(&v229, 0);
    }

    objc_storeStrong(&v231, 0);
    if (v180[4])
    {
      [v249[0] setCurrentSeedingDevice:0];
      [v249[0] setBetaPrograms:0];
      [v249[0] setEnrolledBetaProgram:0];
    }

    else
    {
      v62 = [v180[5] currentSeedingDevice];
      v61 = v62;
      [v249[0] setCurrentSeedingDevice:?];
      MEMORY[0x277D82BD8](v61);
      v60 = [v180[5] betaPrograms];
      v59 = v60;
      [v249[0] setBetaPrograms:?];
      MEMORY[0x277D82BD8](v59);
      v58 = [v180[5] enrolledBetaProgram];
      v57 = v58;
      [v249[0] setEnrolledBetaProgram:?];
      MEMORY[0x277D82BD8](v57);
      v56 = [v249[0] getEnrollInBetaUpdatesStatus];
      [v249[0] setCanEnrollInBetaUpdates:v56];
    }

    if (v180[10])
    {
      Nanoseconds = _SUUISignpostGetNanoseconds(v180[10], v180[11]);
      v203 = Nanoseconds / 1000000000.0;
      v54 = +[SUUILoggingContext statefulUILogger];
      v52 = v54;
      v53 = [v52 oslog];
      v202 = v53;
      MEMORY[0x277D82BD8](v52);
      v201 = 2;
      v200 = v180[10];
      if (v200 && v200 != -1 && os_signpost_enabled(v202))
      {
        v49 = v202;
        *v50 = v201;
        spid = v200;
        if (v180[4])
        {
          v48 = [v180[4] code];
          v47 = v48;
        }

        else
        {
          v47 = 0;
        }

        v45 = v47;
        v46 = [v180[5] betaPrograms];
        v43 = v46;
        v44 = [v43 count];
        v42 = v256;
        __os_log_helper_16_0_2_4_2_4_2(v256, v45, v44);
        _os_signpost_emit_with_name_impl(&dword_26ADE5000, v49, v50[0], spid, "RefreshBetaUpdates", "Finished to refresh the beta updates programs  Error=%{public,signpost.telemetry:number1,name=Error}d  BetaPrograms=%{public,signpost.telemetry:number2,name=BetaPrograms}d ", v42, 0xEu);
        MEMORY[0x277D82BD8](v43);
      }

      objc_storeStrong(&v202, 0);
      v41 = +[SUUILoggingContext statefulUILogger];
      v39 = v41;
      v40 = [v39 oslog];
      v199 = v40;
      MEMORY[0x277D82BD8](v39);
      v198 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
      {
        v35 = v199;
        *v36 = v198;
        v37 = v180[10];
        v38 = *&v203;
        if (v180[4])
        {
          v34 = [v180[4] code];
          v33 = v34;
        }

        else
        {
          v33 = 0;
        }

        v31 = v33;
        v32 = [v180[5] betaPrograms];
        v29 = v32;
        v30 = [v29 count];
        v28 = v255;
        __os_log_helper_16_0_4_8_0_8_0_4_2_4_2(v255, v37, v38, v31, v30);
        _os_log_impl(&dword_26ADE5000, v35, v36[0], "END [%lld] %fs: RefreshBetaUpdates Finished to refresh the beta updates programs  Error=%{public,signpost.telemetry:number1,name=Error}d  BetaPrograms=%{public,signpost.telemetry:number2,name=BetaPrograms}d ", v28, 0x22u);
        MEMORY[0x277D82BD8](v29);
      }

      objc_storeStrong(&v199, 0);
    }

    if (*(*(v180[7] + 1) + 24))
    {
      if (*(*(*(v180[7] + 1) + 24) + 24))
      {
        os_activity_scope_leave(*(*(v180[7] + 1) + 24));
      }

      free(*(*(v180[7] + 1) + 24));
      *(*(v180[7] + 1) + 24) = 0;
    }

    v25 = v249[0];
    v26 = sel_statefulUIManagerDidRefreshBetaUpdates_;
    v191 = MEMORY[0x277D85DD0];
    v192 = -1073741824;
    v193 = 0;
    v194 = __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke_417;
    v195 = &unk_279CC6548;
    v27 = v197;
    objc_copyWeak(v197, v180 + 8);
    v24 = &v191;
    v197[1] = v180[9];
    v23 = &v196;
    v196 = MEMORY[0x277D82BE0](v180[6]);
    [v25 executeOperationOnDelegate:v26 usingBlock:v24];
    v22 = [MEMORY[0x277D643F8] sharedCore];
    v20 = v22;
    v21 = [v20 selectDelegateCallbackQueue:*(v249[0] + 2)];
    v19 = v21;
    v18 = &v183;
    v183 = MEMORY[0x277D85DD0];
    v184 = -1073741824;
    v185 = 0;
    v186 = __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke_2_419;
    v187 = &unk_279CC6570;
    v15 = &v190;
    v190 = MEMORY[0x277D82BE0](v180[6]);
    v16 = (v18 + 32);
    v188 = MEMORY[0x277D82BE0](v180[5]);
    v17 = (v18 + 40);
    v189 = MEMORY[0x277D82BE0](v180[4]);
    dispatch_async(v19, v18);
    MEMORY[0x277D82BD8](v19);
    MEMORY[0x277D82BD8](v20);
    if (v232)
    {
      [v249[0] checkForAvailableUpdates:1];
    }

    objc_storeStrong(v17, 0);
    objc_storeStrong(v16, 0);
    objc_storeStrong(v15, 0);
    objc_storeStrong(v23, 0);
    objc_destroyWeak(v27);
    v238 = 0;
  }

  objc_storeStrong(v249, 0);
}

void __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke_414(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:?];
    v1 = 1;
    (*(location[0] + 2))(location[0], 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke_417(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v21[2] = a1;
  v21[1] = a1;
  v21[0] = objc_loadWeakRetained((a1 + 40));
  v9 = 0;
  if (!v21[0])
  {
    v8 = +[SUUILoggingContext softwareUpdateUILogger];
    v20 = [v8 oslog];
    MEMORY[0x277D82BD8](v8);
    v19 = 16;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      log = v20;
      type = v19;
      v7 = NSStringFromSelector(*(a1 + 48));
      v18 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v22, "[SUUIStatefulUIManager refreshBetaUpdates:withRecheckForAvailableUpdates:]_block_invoke", v18);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v22, 0x16u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v18, 0);
    }

    objc_storeStrong(&v20, 0);
    v17 = 1;
    v9 = 1;
  }

  if (v9)
  {
    v3 = MEMORY[0x277D85CD0];
    v1 = MEMORY[0x277D85CD0];
    queue = v3;
    v11 = MEMORY[0x277D85DD0];
    v12 = -1073741824;
    v13 = 0;
    v14 = __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke_418;
    v15 = &unk_279CC61E0;
    v16 = MEMORY[0x277D82BE0](*(a1 + 32));
    dispatch_async(queue, &v11);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v16, 0);
  }

  else
  {
    v2 = [v21[0] delegate];
    [v2 statefulUIManagerDidRefreshBetaUpdates:v21[0]];
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(v21, 0);
}

void __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke_418(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:?];
    v1 = 1;
    (*(location[0] + 2))(location[0], 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __75__SUUIStatefulUIManager_refreshBetaUpdates_withRecheckForAvailableUpdates___block_invoke_2_419(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[6]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], a1[4], a1[5]);
  }

  objc_storeStrong(location, 0);
}

- (BOOL)isDelayingUpdate
{
  v6 = 0;
  v4 = 0;
  isDelayingUpdate = 1;
  if (!self->_delayingUpdate)
  {
    scanError = [(SUUIStatefulUIManager *)self scanError];
    v6 = 1;
    traits = [(SUUIStatefulError *)scanError traits];
    v4 = 1;
    isDelayingUpdate = [(SUUIErrorTraits *)traits isDelayingUpdate];
  }

  if (v4)
  {
    MEMORY[0x277D82BD8](traits);
  }

  if (v6)
  {
    MEMORY[0x277D82BD8](scanError);
  }

  return isDelayingUpdate & 1;
}

- (id)currentInstalledNeRDInfo
{
  v109 = "[SUUIStatefulUIManager currentInstalledNeRDInfo]";
  v149 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v142[1] = a2;
  v110 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
  v140 = v110;
  if (v110)
  {
    v139 = _os_activity_create(&dword_26ADE5000, "com.apple.SoftwareUpdateUI.StatefulUI.Manager.NeRDInfo", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    v2 = v140[1].opaque[0];
    v140[1].opaque[0] = v139;
    MEMORY[0x277D82BD8](v2);
  }

  else
  {
    v108 = +[SUUILoggingContext softwareUpdateUILogger];
    v106 = v108;
    oslog = [v106 oslog];
    oslog = oslog;
    MEMORY[0x277D82BD8](v106);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v104 = type;
      buf = v136;
      __os_log_helper_16_0_0(v136);
      _os_log_error_impl(&dword_26ADE5000, log, v104[0], "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.Manager.NeRDInfo", v136, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  v135[2] = v140;
  state = v140;
  if (v140)
  {
    os_activity_scope_enter(state[1].opaque[0], state);
    LOBYTE(state[1].opaque[1]) = 1;
  }

  v135[1] = state;
  v142[0] = state;
  uUID = [MEMORY[0x277CCAD78] UUID];
  v100 = uUID;
  uUIDString = [v100 UUIDString];
  v135[0] = uUIDString;
  MEMORY[0x277D82BD8](v100);
  v99 = +[SUUILoggingContext statefulUILogger];
  v97 = v99;
  oslog2 = [v97 oslog];
  v134 = oslog2;
  MEMORY[0x277D82BD8](v97);
  v133 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
  {
    v93 = v134;
    *v94 = v133;
    v95 = selfCopy;
    aClass = objc_opt_class();
    v92 = NSStringFromClass(aClass);
    v89 = v92;
    v90 = MEMORY[0x277D82BE0](v89);
    v132 = v90;
    v91 = SUUIStatefulUIStateToString(selfCopy->_currentState);
    v86 = v91;
    v87 = MEMORY[0x277D82BE0](v86);
    v131 = v87;
    currentState = [(SUUIStatefulUIManager *)selfCopy currentState];
    v129 = 0;
    v127 = 0;
    delegate = [(SUUIStatefulUIManager *)selfCopy delegate];
    v84 = delegate;
    if (v84)
    {
      delegate2 = [(SUUIStatefulUIManager *)selfCopy delegate];
      v130 = delegate2;
      v129 = 1;
      v82 = objc_opt_class();
      v81 = NSStringFromClass(v82);
      v128 = v81;
      v127 = 1;
      v80 = v128;
    }

    else
    {
      v80 = @"(null)";
    }

    v78 = v80;
    delegate3 = [(SUUIStatefulUIManager *)selfCopy delegate];
    v76 = delegate3;
    scanError = [(SUUIStatefulUIManager *)selfCopy scanError];
    v74 = scanError;
    preferredStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy preferredStatefulDescriptor];
    v72 = preferredStatefulDescriptor;
    alternateStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy alternateStatefulDescriptor];
    v70 = alternateStatefulDescriptor;
    v125 = 0;
    v123 = 0;
    v121 = 0;
    currentDownload = [(SUUIStatefulUIManager *)selfCopy currentDownload];
    v69 = currentDownload;
    if (v69)
    {
      currentDownload2 = [(SUUIStatefulUIManager *)selfCopy currentDownload];
      v126 = currentDownload2;
      v125 = 1;
      descriptor = [v126 descriptor];
      v124 = descriptor;
      v123 = 1;
      updateName = [v124 updateName];
      v122 = updateName;
      v121 = 1;
      v65 = v122;
    }

    else
    {
      v65 = @"(null)";
    }

    v63 = v65;
    currentDownload3 = [(SUUIStatefulUIManager *)selfCopy currentDownload];
    v61 = currentDownload3;
    currentUpdateOperationType = [(SUUIStatefulUIManager *)selfCopy currentUpdateOperationType];
    v60 = SUUIUpdateContinuousOperationTypeToString(currentUpdateOperationType);
    v57 = v60;
    v58 = MEMORY[0x277D82BE0](v57);
    v120 = v58;
    isTargetedUpdateScheduledForAutoInstall = [(SUUIStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
    v147 = isTargetedUpdateScheduledForAutoInstall;
    if (isTargetedUpdateScheduledForAutoInstall)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v56 = v3;
    v4 = v3;
    v53 = v56;
    v54 = MEMORY[0x277D82BE0](v53);
    v119 = v54;
    hidingPreferredDescriptor = [(SUUIStatefulUIManager *)selfCopy hidingPreferredDescriptor];
    v146 = hidingPreferredDescriptor;
    if (hidingPreferredDescriptor)
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    v52 = v5;
    v6 = v5;
    v49 = v52;
    v50 = MEMORY[0x277D82BE0](v49);
    v118 = v50;
    hiddenPreferredStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy hiddenPreferredStatefulDescriptor];
    v47 = hiddenPreferredStatefulDescriptor;
    updateName2 = [v47 updateName];
    v44 = updateName2;
    v45 = MEMORY[0x277D82BE0](v44);
    v117 = v45;
    hidingAlternateDescriptor = [(SUUIStatefulUIManager *)selfCopy hidingAlternateDescriptor];
    v145 = hidingAlternateDescriptor;
    if (hidingAlternateDescriptor)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v43 = v7;
    v8 = v7;
    v40 = v43;
    v41 = MEMORY[0x277D82BE0](v40);
    v116 = v41;
    hiddenAlternateStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy hiddenAlternateStatefulDescriptor];
    v38 = hiddenAlternateStatefulDescriptor;
    updateName3 = [v38 updateName];
    v35 = updateName3;
    v36 = MEMORY[0x277D82BE0](v35);
    v115 = v36;
    v113 = 0;
    enrolledBetaProgram = [(SUUIStatefulUIManager *)selfCopy enrolledBetaProgram];
    v34 = enrolledBetaProgram;
    if (v34)
    {
      enrolledBetaProgram2 = [(SUUIStatefulUIManager *)selfCopy enrolledBetaProgram];
      v114 = enrolledBetaProgram2;
      v113 = 1;
      programID = [v114 programID];
      v31 = programID;
    }

    else
    {
      v31 = 0;
    }

    v29 = v31;
    v30 = [(NSArray *)selfCopy->_betaPrograms count];
    canEnrollInBetaUpdates = [(SUUIStatefulUIManager *)selfCopy canEnrollInBetaUpdates];
    v144 = canEnrollInBetaUpdates;
    if (canEnrollInBetaUpdates)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v27 = v9;
    v10 = v9;
    v21 = v27;
    v22 = MEMORY[0x277D82BE0](v21);
    location = v22;
    currentFullScanOperation = selfCopy->_currentFullScanOperation;
    currentRefreshScanOperation = selfCopy->_currentRefreshScanOperation;
    currentUpdateOperation = selfCopy->_currentUpdateOperation;
    v26 = [(NSMutableSet *)selfCopy->_auxiliaryOperations count];
    v19 = &v13;
    v20 = v148;
    __os_log_helper_16_2_26_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66(v148, v109, v95, v90, v87, currentState, v78, v76, v74, v72, v70, v63, v61, v58, v54, v50, v45, v41, v36, v29, v30, v22, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, v26, v135[0]);
    _os_log_impl(&dword_26ADE5000, v93, v94[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nBeginning a NeRD Info operation with ID: %{public}@ ", v20, 0x106u);
    MEMORY[0x277D82BD8](v21);
    if (v113)
    {
      MEMORY[0x277D82BD8](v114);
    }

    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](v61);
    if (v121)
    {
      MEMORY[0x277D82BD8](v122);
    }

    if (v123)
    {
      MEMORY[0x277D82BD8](v124);
    }

    if (v125)
    {
      MEMORY[0x277D82BD8](v126);
    }

    MEMORY[0x277D82BD8](v69);
    MEMORY[0x277D82BD8](v70);
    MEMORY[0x277D82BD8](v72);
    MEMORY[0x277D82BD8](v74);
    MEMORY[0x277D82BD8](v76);
    if (v127)
    {
      MEMORY[0x277D82BD8](v128);
    }

    if (v129)
    {
      MEMORY[0x277D82BD8](v130);
    }

    MEMORY[0x277D82BD8](v84);
    MEMORY[0x277D82BD8](v86);
    MEMORY[0x277D82BD8](v89);
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v115, 0);
    objc_storeStrong(&v116, 0);
    objc_storeStrong(&v117, 0);
    objc_storeStrong(&v118, 0);
    objc_storeStrong(&v119, 0);
    objc_storeStrong(&v120, 0);
    objc_storeStrong(&v131, 0);
    objc_storeStrong(&v132, 0);
  }

  objc_storeStrong(&v134, 0);
  environment = [(SUUIStatefulUIManager *)selfCopy environment];
  v16 = environment;
  v17 = [v16 nerdOperationWithManager:selfCopy identifier:v135[0] completionQueue:selfCopy->_operationsQueue];
  v111 = v17;
  MEMORY[0x277D82BD8](v16);
  currentInstalledNeRDInfo = [v111 currentInstalledNeRDInfo];
  v14 = currentInstalledNeRDInfo;
  objc_storeStrong(&v111, 0);
  objc_storeStrong(v135, 0);
  _SUUIActivityCleanup(v142);
  v11 = v14;

  return v11;
}

- (void)updateNeRDVersionWithOptions:(id)options
{
  selfCopy = self;
  v24 = a2;
  location = 0;
  objc_storeStrong(&location, options);
  v20 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
  if (v20)
  {
    v19 = _os_activity_create(&dword_26ADE5000, "com.apple.SoftwareUpdateUI.StatefulUI.Manager.UpdateNeRD", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    v3 = v20[1].opaque[0];
    v20[1].opaque[0] = v19;
    MEMORY[0x277D82BD8](v3);
  }

  else
  {
    v7 = +[SUUILoggingContext softwareUpdateUILogger];
    oslog = [v7 oslog];
    MEMORY[0x277D82BD8](v7);
    v17 = 16;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      type = v17;
      __os_log_helper_16_0_0(v16);
      _os_log_error_impl(&dword_26ADE5000, log, type, "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.Manager.UpdateNeRD", v16, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  v15[2] = v20;
  v21 = v20;
  if (v20)
  {
    os_activity_scope_enter(v21[1].opaque[0], v21);
    LOBYTE(v21[1].opaque[1]) = 1;
  }

  v15[1] = v21;
  v22 = v21;
  objc_initWeak(v15, selfCopy);
  queue = selfCopy->_operationsQueue;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __54__SUUIStatefulUIManager_updateNeRDVersionWithOptions___block_invoke;
  v12 = &unk_279CC6368;
  objc_copyWeak(v14, v15);
  v14[1] = v24;
  v13 = MEMORY[0x277D82BE0](location);
  dispatch_async(queue, &v8);
  objc_storeStrong(&v13, 0);
  objc_destroyWeak(v14);
  objc_destroyWeak(v15);
  _SUUIActivityCleanup(&v22);
  objc_storeStrong(&location, 0);
}

void __54__SUUIStatefulUIManager_updateNeRDVersionWithOptions___block_invoke(id *a1)
{
  v81 = a1;
  v82 = "[SUUIStatefulUIManager updateNeRDVersionWithOptions:]_block_invoke";
  v120 = *MEMORY[0x277D85DE8];
  v113[2] = a1;
  v113[1] = a1;
  v113[0] = objc_loadWeakRetained(a1 + 5);
  v80 = 0;
  if (!v113[0])
  {
    v79 = +[SUUILoggingContext softwareUpdateUILogger];
    oslog = [v79 oslog];
    MEMORY[0x277D82BD8](v79);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v75 = type;
      v77 = NSStringFromSelector(v81[6]);
      location = &v110;
      v110 = MEMORY[0x277D82BE0](v77);
      buf = v119;
      __os_log_helper_16_2_2_8_32_8_66(v119, v82, v110);
      _os_log_error_impl(&dword_26ADE5000, log, v75[0], "%s: Self is nil in %{public}@. Stopping.", v119, 0x16u);
      MEMORY[0x277D82BD8](v77);
      objc_storeStrong(&v110, 0);
    }

    objc_storeStrong(&oslog, 0);
    v109 = 1;
    v80 = 1;
  }

  if (v80)
  {
    v108 = 1;
  }

  else
  {
    v73 = [MEMORY[0x277CCAD78] UUID];
    v107 = [v73 UUIDString];
    MEMORY[0x277D82BD8](v73);
    v72 = +[SUUILoggingContext statefulUILogger];
    v106 = [v72 oslog];
    MEMORY[0x277D82BD8](v72);
    v105 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
    {
      v63 = v106;
      *v64 = v105;
      v65 = v113[0];
      v1 = objc_opt_class();
      v66 = NSStringFromClass(v1);
      v67 = MEMORY[0x277D82BE0](v66);
      v104 = v67;
      v68 = SUUIStatefulUIStateToString(*(v113[0] + 5));
      v69 = MEMORY[0x277D82BE0](v68);
      v103 = v69;
      v70 = [v113[0] currentState];
      v71 = [v113[0] delegate];
      v101 = 0;
      v99 = 0;
      if (v71)
      {
        v102 = [v113[0] delegate];
        v61 = 1;
        v101 = 1;
        v2 = objc_opt_class();
        v100 = NSStringFromClass(v2);
        v99 = 1;
        v62 = v100;
      }

      else
      {
        v62 = @"(null)";
      }

      v55 = v62;
      v56 = [v113[0] delegate];
      v57 = [v113[0] scanError];
      v58 = [v113[0] preferredStatefulDescriptor];
      v59 = [v113[0] alternateStatefulDescriptor];
      v60 = [v113[0] currentDownload];
      v97 = 0;
      v95 = 0;
      v93 = 0;
      if (v60)
      {
        v98 = [v113[0] currentDownload];
        v53 = 1;
        v97 = 1;
        v96 = [v98 descriptor];
        v95 = 1;
        v94 = [v96 updateName];
        v93 = 1;
        v54 = v94;
      }

      else
      {
        v54 = @"(null)";
      }

      v30 = v54;
      v31 = [v113[0] currentDownload];
      v32 = SUUIUpdateContinuousOperationTypeToString([v113[0] currentUpdateOperationType]);
      v33 = MEMORY[0x277D82BE0](v32);
      v92 = v33;
      v117 = [v113[0] isTargetedUpdateScheduledForAutoInstall];
      v43 = @"NO";
      v44 = @"YES";
      v51 = 1;
      if (v117)
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      v34 = v3;
      v4 = v3;
      v35 = v34;
      v36 = MEMORY[0x277D82BE0](v35);
      v91 = v36;
      v116 = [v113[0] hidingPreferredDescriptor];
      if (v116)
      {
        v5 = v44;
      }

      else
      {
        v5 = v43;
      }

      v37 = v5;
      v6 = v5;
      v38 = v37;
      v39 = MEMORY[0x277D82BE0](v38);
      v90 = v39;
      v40 = [v113[0] hiddenPreferredStatefulDescriptor];
      v41 = [v40 updateName];
      v42 = MEMORY[0x277D82BE0](v41);
      v89 = v42;
      v115 = [v113[0] hidingAlternateDescriptor];
      if (v115)
      {
        v7 = v44;
      }

      else
      {
        v7 = v43;
      }

      v45 = v7;
      v8 = v7;
      v46 = v45;
      v47 = MEMORY[0x277D82BE0](v46);
      v88 = v47;
      v48 = [v113[0] hiddenAlternateStatefulDescriptor];
      v49 = [v48 updateName];
      v50 = MEMORY[0x277D82BE0](v49);
      v87 = v50;
      v52 = [v113[0] enrolledBetaProgram];
      v85 = 0;
      if (v52)
      {
        v86 = [v113[0] enrolledBetaProgram];
        v85 = 1;
        v29 = [v86 programID];
      }

      else
      {
        v29 = 0;
      }

      v20 = v29;
      v21 = [*(v113[0] + 15) count];
      v114 = [v113[0] canEnrollInBetaUpdates];
      if (v114)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      v19 = v9;
      v10 = v9;
      v28 = v19;
      v22 = MEMORY[0x277D82BE0](v28);
      v84 = v22;
      v23 = *(v113[0] + 21);
      v24 = *(v113[0] + 22);
      v25 = *(v113[0] + 23);
      v11 = [*(v113[0] + 24) count];
      v26 = &v13;
      v27 = v118;
      __os_log_helper_16_2_26_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66(v118, v82, v65, v67, v69, v70, v55, v56, v57, v58, v59, v30, v31, v33, v36, v39, v42, v47, v50, v20, v21, v22, v23, v24, v25, v11, v107);
      _os_log_impl(&dword_26ADE5000, v63, v64[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nBeginning a NeRD Info operation with ID: %{public}@ ", v27, 0x106u);
      MEMORY[0x277D82BD8](v28);
      if (v85)
      {
        MEMORY[0x277D82BD8](v86);
      }

      MEMORY[0x277D82BD8](v52);
      MEMORY[0x277D82BD8](v49);
      MEMORY[0x277D82BD8](v48);
      MEMORY[0x277D82BD8](v46);
      MEMORY[0x277D82BD8](v41);
      MEMORY[0x277D82BD8](v40);
      MEMORY[0x277D82BD8](v38);
      MEMORY[0x277D82BD8](v35);
      MEMORY[0x277D82BD8](v32);
      MEMORY[0x277D82BD8](v31);
      if (v93)
      {
        MEMORY[0x277D82BD8](v94);
      }

      if (v95)
      {
        MEMORY[0x277D82BD8](v96);
      }

      if (v97)
      {
        MEMORY[0x277D82BD8](v98);
      }

      MEMORY[0x277D82BD8](v60);
      MEMORY[0x277D82BD8](v59);
      MEMORY[0x277D82BD8](v58);
      MEMORY[0x277D82BD8](v57);
      MEMORY[0x277D82BD8](v56);
      if (v99)
      {
        MEMORY[0x277D82BD8](v100);
      }

      if (v101)
      {
        MEMORY[0x277D82BD8](v102);
      }

      MEMORY[0x277D82BD8](v71);
      MEMORY[0x277D82BD8](v68);
      MEMORY[0x277D82BD8](v66);
      obj = 0;
      objc_storeStrong(&v84, 0);
      objc_storeStrong(&v87, obj);
      objc_storeStrong(&v88, obj);
      objc_storeStrong(&v89, obj);
      objc_storeStrong(&v90, obj);
      objc_storeStrong(&v91, obj);
      objc_storeStrong(&v92, obj);
      objc_storeStrong(&v103, obj);
      objc_storeStrong(&v104, obj);
    }

    objc_storeStrong(&v106, 0);
    v14 = [v113[0] environment];
    v16 = &v107;
    v12 = [v14 nerdOperationWithManager:v113[0] identifier:v107 completionQueue:*(v113[0] + 26)];
    v15 = &v83;
    v83 = v12;
    MEMORY[0x277D82BD8](v14);
    [v83 updateNeRDVersionWithOptions:v81[4]];
    v17 = 0;
    objc_storeStrong(v15, 0);
    objc_storeStrong(v16, v17);
    v108 = 0;
  }

  objc_storeStrong(v113, 0);
}

- (BOOL)isPreferredUpdatePromotedAsAlternate
{
  selfCopy = self;
  v8[1] = a2;
  v8[0] = [(SUUIStatefulUIManager *)self preferredStatefulDescriptor];
  location = [(SUUIStatefulUIManager *)selfCopy alternateStatefulDescriptor];
  if (v8[0])
  {
    v5 = 0;
    LOBYTE(v4) = 0;
    if (!location)
    {
      descriptor = [v8[0] descriptor];
      v5 = 1;
      LOBYTE(v4) = 0;
      if ([descriptor audienceType] == 1)
      {
        v4 = ![(SUUIStatefulUIManager *)selfCopy hidingPreferredDescriptor];
      }
    }

    if (v5)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v4)
    {
      descriptor2 = [v8[0] descriptor];
      v10 = [descriptor2 promoteAlternateUpdate] & 1;
      MEMORY[0x277D82BD8](descriptor2);
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

  objc_storeStrong(&location, 0);
  objc_storeStrong(v8, 0);
  return v10 & 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v43 = a2;
  zoneCopy = zone;
  v29 = [objc_opt_class() allocWithZone:zone];
  environment = [(SUUIStatefulUIManager *)selfCopy environment];
  v41 = [v29 initWithEnvironment:?];
  MEMORY[0x277D82BD8](environment);
  delegate = [(SUUIStatefulUIManager *)selfCopy delegate];
  objc_storeWeak(v41 + 1, delegate);
  MEMORY[0x277D82BD8](delegate);
  delegateCallbackQueue = [(SUUIStatefulUIManager *)selfCopy delegateCallbackQueue];
  v4 = v41[2];
  v41[2] = delegateCallbackQueue;
  MEMORY[0x277D82BD8](v4);
  currentState = [(SUUIStatefulUIManager *)selfCopy currentState];
  v41[5] = currentState;
  preferredStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy preferredStatefulDescriptor];
  v6 = [(SUUIStatefulDescriptor *)preferredStatefulDescriptor copyWithZone:zoneCopy];
  v7 = v41[6];
  v41[6] = v6;
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](preferredStatefulDescriptor);
  alternateStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy alternateStatefulDescriptor];
  v8 = [(SUUIStatefulDescriptor *)alternateStatefulDescriptor copyWithZone:zoneCopy];
  v9 = v41[7];
  v41[7] = v8;
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](alternateStatefulDescriptor);
  scanError = [(SUUIStatefulUIManager *)selfCopy scanError];
  v10 = [(SUUIStatefulError *)scanError copyWithZone:zoneCopy];
  v11 = v41[8];
  v41[8] = v10;
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](scanError);
  currentDownload = [(SUUIStatefulUIManager *)selfCopy currentDownload];
  v12 = [(SUUIDownload *)currentDownload copyWithZone:zoneCopy];
  v13 = v41[9];
  v41[9] = v12;
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](currentDownload);
  isAutoUpdateScheduled = [(SUUIStatefulUIManager *)selfCopy isAutoUpdateScheduled];
  *(v41 + 80) = isAutoUpdateScheduled;
  hiddenPreferredStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy hiddenPreferredStatefulDescriptor];
  v15 = [(SUUIStatefulDescriptor *)hiddenPreferredStatefulDescriptor copyWithZone:zoneCopy];
  v16 = v41[11];
  v41[11] = v15;
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](hiddenPreferredStatefulDescriptor);
  hiddenAlternateStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy hiddenAlternateStatefulDescriptor];
  v17 = [(SUUIStatefulDescriptor *)hiddenAlternateStatefulDescriptor copyWithZone:zoneCopy];
  v18 = v41[12];
  v41[12] = v17;
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](hiddenAlternateStatefulDescriptor);
  hidingPreferredDescriptor = [(SUUIStatefulUIManager *)selfCopy hidingPreferredDescriptor];
  *(v41 + 104) = hidingPreferredDescriptor;
  hidingAlternateDescriptor = [(SUUIStatefulUIManager *)selfCopy hidingAlternateDescriptor];
  *(v41 + 105) = hidingAlternateDescriptor;
  mdmPathRestrictions = [(SUUIStatefulUIManager *)selfCopy mdmPathRestrictions];
  v41[18] = mdmPathRestrictions;
  *(v41 + 160) = selfCopy->_delayingUpdate;
  currentSeedingDevice = [(SUUIStatefulUIManager *)selfCopy currentSeedingDevice];
  v23 = v41[14];
  v41[14] = currentSeedingDevice;
  MEMORY[0x277D82BD8](v23);
  v38 = objc_alloc(MEMORY[0x277CBEA60]);
  betaPrograms = [(SUUIStatefulUIManager *)selfCopy betaPrograms];
  v24 = [v38 initWithArray:? copyItems:?];
  v25 = v41[15];
  v41[15] = v24;
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](betaPrograms);
  enrolledBetaProgram = [(SUUIStatefulUIManager *)selfCopy enrolledBetaProgram];
  v27 = v41[16];
  v41[16] = enrolledBetaProgram;
  MEMORY[0x277D82BD8](v27);
  v40 = MEMORY[0x277D82BE0](v41);
  objc_storeStrong(&v41, 0);
  return v40;
}

+ (id)_generateStateTable
{
  v173[6] = *MEMORY[0x277D85DE8];
  v63[2] = self;
  v63[1] = a2;
  v172[0] = @"Idle";
  v170[0] = @"CheckForAvailableUpdate";
  v4 = MEMORY[0x277D64800];
  v168[0] = *MEMORY[0x277D64800];
  v169[0] = @"CheckingForAvailableUpdate";
  v5 = MEMORY[0x277D644B8];
  v168[1] = *MEMORY[0x277D644B8];
  v169[1] = @"CheckForAvailableUpdate";
  v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v169 forKeys:v168 count:?];
  v171[0] = v60;
  v170[1] = @"FullScanUpdatesAvailable";
  v166[0] = *v4;
  v167[0] = @"UpdatesAvailable";
  v166[1] = *v5;
  v167[1] = @"ReportUpdatesAvailable";
  v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v167 forKeys:v166 count:2];
  v171[1] = v59;
  v170[2] = @"FullScanNoUpdateAvailable";
  v164[0] = *v4;
  v165[0] = @"NoUpdateFound";
  v164[1] = *v5;
  v165[1] = @"ReportNoUpdateFound";
  v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v165 forKeys:v164 count:2];
  v171[2] = v58;
  v170[3] = @"FullScanFailed";
  v162[0] = *v4;
  v163[0] = @"ScanFailed";
  v162[1] = *v5;
  v163[1] = @"ReportScanFailed";
  v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v163 forKeys:v162 count:2];
  v171[3] = v57;
  v170[4] = @"RefreshUpdatesAvailable";
  v160 = *v5;
  v6 = MEMORY[0x277D647D0];
  v161 = *MEMORY[0x277D647D0];
  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v161 forKeys:&v160 count:?];
  v171[4] = v56;
  v170[5] = @"RefreshNoUpdateAvailable";
  v158 = *v5;
  v159 = *v6;
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v159 forKeys:&v158 count:1];
  v171[5] = v55;
  v170[6] = @"RefreshScanResultsFailed";
  v156 = *v5;
  v157 = *v6;
  v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v157 forKeys:&v156 count:1];
  v171[6] = v54;
  v170[7] = @"RefreshScanResults";
  v154 = *v5;
  v155 = *v6;
  v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v155 forKeys:&v154 count:1];
  v171[7] = v53;
  v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v171 forKeys:v170 count:?];
  v173[0] = v52;
  v172[1] = @"CheckingForAvailableUpdate";
  v152[0] = @"FullScanUpdatesAvailable";
  v150[0] = *v4;
  v151[0] = @"UpdatesAvailable";
  v150[1] = *v5;
  v151[1] = @"ReportUpdatesAvailable";
  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v151 forKeys:v150 count:2];
  v153[0] = v51;
  v152[1] = @"FullScanNoUpdateAvailable";
  v148[0] = *v4;
  v149[0] = @"NoUpdateFound";
  v148[1] = *v5;
  v149[1] = @"ReportNoUpdateFound";
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v149 forKeys:v148 count:2];
  v153[1] = v50;
  v152[2] = @"FullScanFailed";
  v146[0] = *v4;
  v147[0] = @"ScanFailed";
  v146[1] = *v5;
  v147[1] = @"ReportScanFailed";
  v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v147 forKeys:v146 count:2];
  v153[2] = v49;
  v152[3] = @"CheckForAvailableUpdate";
  v144 = *v5;
  v145 = @"CheckForAvailableUpdate";
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v145 forKeys:&v144 count:1];
  v153[3] = v48;
  v152[4] = @"RefreshUpdatesAvailable";
  v142 = *v5;
  v143 = @"ReportRefreshScanResults";
  v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v143 forKeys:&v142 count:1];
  v153[4] = v47;
  v152[5] = @"RefreshNoUpdateAvailable";
  v140 = *v5;
  v141 = @"ReportRefreshScanResults";
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v141 forKeys:&v140 count:1];
  v153[5] = v46;
  v152[6] = @"RefreshScanResultsFailed";
  v138 = *v5;
  v139 = @"ReportRefreshScanResultsFailed";
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v139 forKeys:&v138 count:1];
  v153[6] = v45;
  v152[7] = @"RefreshScanResults";
  v136 = *v5;
  v137 = *v6;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
  v153[7] = v44;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v153 forKeys:v152 count:8];
  v173[1] = v43;
  v172[2] = @"NoUpdateFound";
  v134[0] = @"CheckForAvailableUpdate";
  v132[0] = *v4;
  v133[0] = @"CheckingForAvailableUpdate";
  v132[1] = *v5;
  v133[1] = @"CheckForAvailableUpdate";
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v133 forKeys:v132 count:2];
  v135[0] = v42;
  v134[1] = @"RefreshScanResults";
  v130[0] = *v4;
  v131[0] = @"RefreshingScanResults";
  v130[1] = *v5;
  v131[1] = @"RefreshScanResults";
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v131 forKeys:v130 count:2];
  v135[1] = v41;
  v134[2] = @"FullScanUpdatesAvailable";
  v128[0] = *v4;
  v129[0] = @"UpdatesAvailable";
  v128[1] = *v5;
  v129[1] = @"ReportUpdatesAvailable";
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v129 forKeys:v128 count:2];
  v135[2] = v40;
  v134[3] = @"FullScanNoUpdateAvailable";
  v126[0] = *v4;
  v127[0] = @"NoUpdateFound";
  v126[1] = *v5;
  v127[1] = @"ReportNoUpdateFound";
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v127 forKeys:v126 count:2];
  v135[3] = v39;
  v134[4] = @"FullScanFailed";
  v124[0] = *v4;
  v125[0] = @"ScanFailed";
  v124[1] = *v5;
  v125[1] = @"ReportScanFailed";
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v125 forKeys:v124 count:2];
  v135[4] = v38;
  v134[5] = @"RefreshUpdatesAvailable";
  v122[0] = *v4;
  v123[0] = @"UpdatesAvailable";
  v122[1] = *v5;
  v123[1] = @"ReportRefreshScanResults";
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v123 forKeys:v122 count:2];
  v135[5] = v37;
  v134[6] = @"RefreshNoUpdateAvailable";
  v120[0] = *v4;
  v121[0] = @"NoUpdateFound";
  v120[1] = *v5;
  v121[1] = @"ReportRefreshScanResults";
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v121 forKeys:v120 count:2];
  v135[6] = v36;
  v134[7] = @"RefreshScanResultsFailed";
  v118 = *v5;
  v119 = @"ReportRefreshScanResultsFailed";
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
  v135[7] = v35;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v135 forKeys:v134 count:8];
  v173[2] = v34;
  v172[3] = @"UpdatesAvailable";
  v116[0] = @"CheckForAvailableUpdate";
  v114[0] = *v4;
  v115[0] = @"CheckingForAvailableUpdate";
  v114[1] = *v5;
  v115[1] = @"CheckForAvailableUpdate";
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:v114 count:2];
  v117[0] = v33;
  v116[1] = @"RefreshScanResults";
  v112[0] = *v4;
  v113[0] = @"RefreshingScanResults";
  v112[1] = *v5;
  v113[1] = @"RefreshScanResults";
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:v112 count:2];
  v117[1] = v32;
  v116[2] = @"FullScanUpdatesAvailable";
  v110[0] = *v4;
  v111[0] = @"UpdatesAvailable";
  v110[1] = *v5;
  v111[1] = @"ReportUpdatesAvailable";
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:v110 count:2];
  v117[2] = v31;
  v116[3] = @"FullScanNoUpdateAvailable";
  v108[0] = *v4;
  v109[0] = @"NoUpdateFound";
  v108[1] = *v5;
  v109[1] = @"ReportNoUpdateFound";
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v108 count:2];
  v117[3] = v30;
  v116[4] = @"FullScanFailed";
  v106[0] = *v4;
  v107[0] = @"ScanFailed";
  v106[1] = *v5;
  v107[1] = @"ReportScanFailed";
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:v106 count:2];
  v117[4] = v29;
  v116[5] = @"RefreshUpdatesAvailable";
  v104[0] = *v4;
  v105[0] = @"UpdatesAvailable";
  v104[1] = *v5;
  v105[1] = @"ReportRefreshScanResults";
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:2];
  v117[5] = v28;
  v116[6] = @"RefreshNoUpdateAvailable";
  v102[0] = *v4;
  v103[0] = @"NoUpdateFound";
  v102[1] = *v5;
  v103[1] = @"ReportRefreshScanResults";
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:2];
  v117[6] = v27;
  v116[7] = @"RefreshScanResultsFailed";
  v100 = *v5;
  v101 = @"ReportRefreshScanResultsFailed";
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
  v117[7] = v26;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v117 forKeys:v116 count:8];
  v173[3] = v25;
  v172[4] = @"ScanFailed";
  v98[0] = @"CheckForAvailableUpdate";
  v96[0] = *v4;
  v97[0] = @"CheckingForAvailableUpdate";
  v96[1] = *v5;
  v97[1] = @"CheckForAvailableUpdate";
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:2];
  v99[0] = v24;
  v98[1] = @"RefreshScanResults";
  v94[0] = *v4;
  v95[0] = @"RefreshingScanResults";
  v94[1] = *v5;
  v95[1] = @"RefreshScanResults";
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:2];
  v99[1] = v23;
  v98[2] = @"FullScanUpdatesAvailable";
  v92[0] = *v4;
  v93[0] = @"UpdatesAvailable";
  v92[1] = *v5;
  v93[1] = @"ReportUpdatesAvailable";
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:2];
  v99[2] = v22;
  v98[3] = @"FullScanNoUpdateAvailable";
  v90[0] = *v4;
  v91[0] = @"NoUpdateFound";
  v90[1] = *v5;
  v91[1] = @"ReportNoUpdateFound";
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:2];
  v99[3] = v21;
  v98[4] = @"FullScanFailed";
  v88[0] = *v4;
  v89[0] = @"ScanFailed";
  v88[1] = *v5;
  v89[1] = @"ReportScanFailed";
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:2];
  v99[4] = v20;
  v98[5] = @"RefreshUpdatesAvailable";
  v86[0] = *v4;
  v87[0] = @"UpdatesAvailable";
  v86[1] = *v5;
  v87[1] = @"ReportRefreshScanResults";
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:2];
  v99[5] = v19;
  v98[6] = @"RefreshNoUpdateAvailable";
  v84[0] = *v4;
  v85[0] = @"NoUpdateFound";
  v84[1] = *v5;
  v85[1] = @"ReportRefreshScanResults";
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:2];
  v99[6] = v18;
  v98[7] = @"RefreshScanResultsFailed";
  v82 = *v5;
  v83 = @"ReportRefreshScanResultsFailed";
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
  v99[7] = v17;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v98 count:8];
  v173[4] = v16;
  v172[5] = @"RefreshingScanResults";
  v80[0] = @"CheckForAvailableUpdate";
  v78[0] = *v4;
  v79[0] = @"CheckingForAvailableUpdate";
  v78[1] = *v5;
  v79[1] = @"CheckForAvailableUpdate";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:2];
  v81[0] = v15;
  v80[1] = @"RefreshUpdatesAvailable";
  v76[0] = *v4;
  v77[0] = @"UpdatesAvailable";
  v76[1] = *v5;
  v77[1] = @"ReportRefreshScanResults";
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:2];
  v81[1] = v14;
  v80[2] = @"RefreshNoUpdateAvailable";
  v74[0] = *v4;
  v75[0] = @"NoUpdateFound";
  v74[1] = *v5;
  v75[1] = @"ReportRefreshScanResults";
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:2];
  v81[2] = v13;
  v80[3] = @"RefreshScanResultsFailed";
  v72 = *v5;
  v73 = @"ReportRefreshScanResultsFailed";
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
  v81[3] = v12;
  v80[4] = @"FullScanUpdatesAvailable";
  v70[0] = *v4;
  v71[0] = @"UpdatesAvailable";
  v70[1] = *v5;
  v71[1] = @"ReportUpdatesAvailable";
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:2];
  v81[4] = v11;
  v80[5] = @"FullScanNoUpdateAvailable";
  v68[0] = *v4;
  v69[0] = @"NoUpdateFound";
  v68[1] = *v5;
  v69[1] = @"ReportNoUpdateFound";
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:2];
  v81[5] = v10;
  v80[6] = @"FullScanFailed";
  v66[0] = *v4;
  v67[0] = @"ScanFailed";
  v66[1] = *v5;
  v67[1] = @"ReportScanFailed";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:2];
  v81[6] = v9;
  v80[7] = @"RefreshScanResults";
  v64 = *v5;
  v65 = *v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
  v81[7] = v8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:8];
  v173[5] = v7;
  v63[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v173 forKeys:v172 count:6];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
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
  MEMORY[0x277D82BD8](v48);
  MEMORY[0x277D82BD8](v49);
  MEMORY[0x277D82BD8](v50);
  MEMORY[0x277D82BD8](v51);
  MEMORY[0x277D82BD8](v52);
  MEMORY[0x277D82BD8](v53);
  MEMORY[0x277D82BD8](v54);
  MEMORY[0x277D82BD8](v55);
  MEMORY[0x277D82BD8](v56);
  MEMORY[0x277D82BD8](v57);
  MEMORY[0x277D82BD8](v58);
  MEMORY[0x277D82BD8](v59);
  MEMORY[0x277D82BD8](v60);
  v2 = objc_alloc(MEMORY[0x277CBEAC0]);
  v62 = [v2 initWithDictionary:v63[0] copyItems:1];
  v61 = MEMORY[0x277D82BE0](v62);
  objc_storeStrong(&v62, 0);
  objc_storeStrong(v63, 0);

  return v61;
}

- (int64_t)performAction:(id)action onEvent:(id)event inState:(id)state withInfo:(id)info nextState:(id)nextState error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, action);
  v29 = 0;
  objc_storeStrong(&v29, event);
  v28 = 0;
  objc_storeStrong(&v28, state);
  v27 = 0;
  objc_storeStrong(&v27, info);
  v26 = 0;
  objc_storeStrong(&v26, nextState);
  errorCopy = error;
  extendedStateQueue = [(SUCoreFSM *)selfCopy->_managerFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);
  MEMORY[0x277D82BD8](extendedStateQueue);
  if (v26)
  {
    v24 = [(SUUIStatefulUIManager *)selfCopy convertFSMStateToUIState:v26];
    currentState = [(SUUIStatefulUIManager *)selfCopy currentState];
    if (v24 != 0x7FFFFFFFFFFFFFFFLL && currentState != v24)
    {
      [(SUUIStatefulUIManager *)selfCopy setCurrentState:v24];
      v9 = selfCopy;
      v17 = MEMORY[0x277D85DD0];
      v18 = -1073741824;
      v19 = 0;
      v20 = __80__SUUIStatefulUIManager_performAction_onEvent_inState_withInfo_nextState_error___block_invoke;
      v21 = &unk_279CC65E8;
      v22[0] = MEMORY[0x277D82BE0](selfCopy);
      v22[1] = currentState;
      v22[2] = v24;
      [(SUUIStatefulUIManager *)v9 executeOperationOnDelegate:sel_statefulUIManager_didTransitionFromUIState_toState_ usingBlock:&v17];
      objc_storeStrong(v22, 0);
    }
  }

  if ([location[0] isEqualToString:*MEMORY[0x277D647D0]])
  {
    v16 = 0;
  }

  else if ([location[0] isEqualToString:@"CheckForAvailableUpdate"])
  {
    v16 = [(SUUIStatefulUIManager *)selfCopy fsmAction_CheckForAvailableUpdate:v27 error:errorCopy];
  }

  else if ([location[0] isEqualToString:@"ReportScanFailed"])
  {
    v16 = [(SUUIStatefulUIManager *)selfCopy fsmAction_ReportScanFailed:v27 error:errorCopy];
  }

  else if ([location[0] isEqualToString:@"ReportUpdatesAvailable"])
  {
    v16 = [(SUUIStatefulUIManager *)selfCopy fsmAction_ReportUpdatesAvailable:v27 error:errorCopy];
  }

  else if ([location[0] isEqualToString:@"ReportNoUpdateFound"])
  {
    v16 = [(SUUIStatefulUIManager *)selfCopy fsmAction_ReportNoUpdateFound:v27 error:errorCopy];
  }

  else if ([location[0] isEqualToString:@"RefreshScanResults"])
  {
    v16 = [(SUUIStatefulUIManager *)selfCopy fsmAction_RefreshScanResults:v27 error:errorCopy];
  }

  else if ([location[0] isEqualToString:@"ReportRefreshScanResults"])
  {
    v16 = [(SUUIStatefulUIManager *)selfCopy fsmAction_ReportRefreshScanResults:v27 error:errorCopy];
  }

  else if ([location[0] isEqualToString:@"ReportRefreshScanResultsFailed"])
  {
    v16 = [(SUUIStatefulUIManager *)selfCopy fsmAction_ReportRefreshScanResultsFailed:v27 error:errorCopy];
  }

  else
  {
    v16 = [(SUUIStatefulUIManager *)selfCopy fsmAction_actionUnknownAction:location[0] error:errorCopy];
  }

  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  return v16;
}

uint64_t __80__SUUIStatefulUIManager_performAction_onEvent_inState_withInfo_nextState_error___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  [v3 statefulUIManager:*(a1 + 32) didTransitionFromUIState:*(a1 + 40) toState:*(a1 + 48)];
  return MEMORY[0x277D82BD8](v3);
}

- (void)setupFSM
{
  selfCopy = self;
  v15[1] = a2;
  v18 = MGCopyAnswer();
  v2 = v18;
  v15[0] = v18;
  v17 = MGCopyAnswer();
  v9 = v17;
  v3 = v17;
  v14 = v9;
  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v11 = NSStringFromClass(v4);
  v13 = [v10 initWithFormat:@"%@:%@(%@)", v11, v15[0], v14];
  MEMORY[0x277D82BD8](v11);
  _generateStateTable = [objc_opt_class() _generateStateTable];
  stateTable = selfCopy->_stateTable;
  selfCopy->_stateTable = _generateStateTable;
  MEMORY[0x277D82BD8](stateTable);
  v12 = objc_alloc(MEMORY[0x277D64458]);
  v7 = [v12 initMachine:v13 withTable:selfCopy->_stateTable startingIn:@"Idle" usingDelegate:selfCopy registeringAllInfoClass:objc_opt_class()];
  managerFSM = selfCopy->_managerFSM;
  selfCopy->_managerFSM = v7;
  MEMORY[0x277D82BD8](managerFSM);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(v15, 0);
}

- (void)checkForAvailableUpdatesWithRetriesCount:(unsigned __int8)count
{
  managerFSM = self->_managerFSM;
  v4 = [[SUUIStatefulUIManagerFSMParam alloc] initWithRetriesCount:count];
  [(SUCoreFSM *)managerFSM postEvent:@"CheckForAvailableUpdate" withInfo:?];
  MEMORY[0x277D82BD8](v4);
}

- (void)performFullScan:(id)scan
{
  selfCopy = self;
  v13 = a2;
  location = 0;
  objc_storeStrong(&location, scan);
  objc_initWeak(&v11, selfCopy);
  queue = selfCopy->_operationsQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __41__SUUIStatefulUIManager_performFullScan___block_invoke;
  v8 = &unk_279CC6368;
  objc_copyWeak(v10, &v11);
  v10[1] = v13;
  v9 = MEMORY[0x277D82BE0](location);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v9, 0);
  objc_destroyWeak(v10);
  objc_destroyWeak(&v11);
  objc_storeStrong(&location, 0);
}

void __41__SUUIStatefulUIManager_performFullScan___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v418 = MEMORY[0x28223BE20](a1, a2, a3);
  v419 = "[SUUIStatefulUIManager performFullScan:]_block_invoke";
  v420 = "[SUUIStatefulUIManager performFullScan:]_block_invoke_2";
  v579 = *MEMORY[0x277D85DE8];
  v555[2] = v418;
  v555[1] = v418;
  WeakRetained = objc_loadWeakRetained((v418 + 40));
  v555[0] = WeakRetained;
  v417 = 0;
  if (!WeakRetained)
  {
    v416 = +[SUUILoggingContext softwareUpdateUILogger];
    v414 = v416;
    v415 = [v414 oslog];
    oslog = v415;
    MEMORY[0x277D82BD8](v414);
    v553 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *type = v553;
      v413 = NSStringFromSelector(*(v418 + 48));
      v410 = v413;
      v552 = MEMORY[0x277D82BE0](v410);
      buf = v578;
      __os_log_helper_16_2_2_8_32_8_66(v578, v419, v552);
      _os_log_error_impl(&dword_26ADE5000, oslog, v553, "%s: Self is nil in %{public}@. Stopping.", v578, 0x16u);
      MEMORY[0x277D82BD8](v410);
      objc_storeStrong(&v552, 0);
    }

    objc_storeStrong(&oslog, 0);
    v551 = 1;
    v417 = 1;
  }

  if ((v417 & 1) == 0)
  {
    v545 = 0;
    v546 = &v545;
    v547 = 0x20000000;
    v548 = 32;
    v549 = 0;
    v408 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
    v543 = v408;
    if (v408)
    {
      v542 = _os_activity_create(&dword_26ADE5000, "com.apple.SoftwareUpdateUI.StatefulUI.Manager.FullScan", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      v3 = v543[1].opaque[0];
      v543[1].opaque[0] = v542;
      MEMORY[0x277D82BD8](v3);
    }

    else
    {
      v407 = +[SUUILoggingContext softwareUpdateUILogger];
      v405 = v407;
      v406 = [v405 oslog];
      v541 = v406;
      MEMORY[0x277D82BD8](v405);
      v540 = 16;
      if (os_log_type_enabled(v541, OS_LOG_TYPE_ERROR))
      {
        v402 = v541;
        *v403 = v540;
        v404 = v539;
        __os_log_helper_16_0_0(v539);
        _os_log_error_impl(&dword_26ADE5000, v402, v403[0], "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.Manager.FullScan", v539, 2u);
      }

      objc_storeStrong(&v541, 0);
    }

    v538[2] = v543;
    state = v543;
    if (v543)
    {
      os_activity_scope_enter(state[1].opaque[0], state);
      LOBYTE(state[1].opaque[1]) = 1;
    }

    v538[1] = state;
    v546[3] = state;
    v401 = [v555[0] currentFullScanOperation];
    v538[0] = v401;
    v400 = [v555[0] currentRefreshScanOperation];
    v537 = v400;
    if (v537)
    {
      v399 = +[SUUILoggingContext statefulUILogger];
      v397 = v399;
      v398 = [v397 oslog];
      v536 = v398;
      MEMORY[0x277D82BD8](v397);
      v535 = 0;
      if (os_log_type_enabled(v536, OS_LOG_TYPE_DEFAULT))
      {
        v393 = v536;
        *v394 = v535;
        v395 = v555[0];
        aClass = objc_opt_class();
        v392 = NSStringFromClass(aClass);
        v389 = v392;
        v390 = MEMORY[0x277D82BE0](v389);
        v534 = v390;
        v391 = SUUIStatefulUIStateToString(*(v555[0] + 5));
        v386 = v391;
        v387 = MEMORY[0x277D82BE0](v386);
        v533 = v387;
        v388 = [v555[0] currentState];
        v531 = 0;
        v529 = 0;
        v385 = [v555[0] delegate];
        v384 = v385;
        if (v384)
        {
          v383 = [v555[0] delegate];
          v532 = v383;
          v531 = 1;
          v382 = objc_opt_class();
          v381 = NSStringFromClass(v382);
          v530 = v381;
          v529 = 1;
          v380 = v530;
        }

        else
        {
          v380 = @"(null)";
        }

        v378 = v380;
        v379 = [v555[0] delegate];
        v376 = v379;
        v377 = [v555[0] scanError];
        v374 = v377;
        v375 = [v555[0] preferredStatefulDescriptor];
        v372 = v375;
        v373 = [v555[0] alternateStatefulDescriptor];
        v370 = v373;
        v527 = 0;
        v525 = 0;
        v523 = 0;
        v371 = [v555[0] currentDownload];
        v369 = v371;
        if (v369)
        {
          v368 = [v555[0] currentDownload];
          v528 = v368;
          v527 = 1;
          v367 = [v528 descriptor];
          v526 = v367;
          v525 = 1;
          v366 = [v526 updateName];
          v524 = v366;
          v523 = 1;
          v365 = v524;
        }

        else
        {
          v365 = @"(null)";
        }

        v363 = v365;
        v364 = [v555[0] currentDownload];
        v361 = v364;
        v362 = [v555[0] currentUpdateOperationType];
        v360 = SUUIUpdateContinuousOperationTypeToString(v362);
        v357 = v360;
        v358 = MEMORY[0x277D82BE0](v357);
        v522 = v358;
        v359 = [v555[0] isTargetedUpdateScheduledForAutoInstall];
        v571 = v359;
        if (v359)
        {
          v4 = @"YES";
        }

        else
        {
          v4 = @"NO";
        }

        v356 = v4;
        v5 = v4;
        v353 = v356;
        v354 = MEMORY[0x277D82BE0](v353);
        v521 = v354;
        v355 = [v555[0] hidingPreferredDescriptor];
        v570 = v355;
        if (v355)
        {
          v6 = @"YES";
        }

        else
        {
          v6 = @"NO";
        }

        v352 = v6;
        v7 = v6;
        v349 = v352;
        v350 = MEMORY[0x277D82BE0](v349);
        v520 = v350;
        v351 = [v555[0] hiddenPreferredStatefulDescriptor];
        v347 = v351;
        v348 = [v347 updateName];
        v344 = v348;
        v345 = MEMORY[0x277D82BE0](v344);
        v519 = v345;
        v346 = [v555[0] hidingAlternateDescriptor];
        v569 = v346;
        if (v346)
        {
          v8 = @"YES";
        }

        else
        {
          v8 = @"NO";
        }

        v343 = v8;
        v9 = v8;
        v340 = v343;
        v341 = MEMORY[0x277D82BE0](v340);
        v518 = v341;
        v342 = [v555[0] hiddenAlternateStatefulDescriptor];
        v338 = v342;
        v339 = [v338 updateName];
        v335 = v339;
        v336 = MEMORY[0x277D82BE0](v335);
        v517 = v336;
        v515 = 0;
        v337 = [v555[0] enrolledBetaProgram];
        v334 = v337;
        if (v334)
        {
          v333 = [v555[0] enrolledBetaProgram];
          v516 = v333;
          v515 = 1;
          v332 = [v516 programID];
          v331 = v332;
        }

        else
        {
          v331 = 0;
        }

        v329 = v331;
        v330 = [*(v555[0] + 15) count];
        v328 = [v555[0] canEnrollInBetaUpdates];
        v568 = v328;
        if (v328)
        {
          v10 = @"YES";
        }

        else
        {
          v10 = @"NO";
        }

        v327 = v10;
        v11 = v10;
        v321 = v327;
        v322 = MEMORY[0x277D82BE0](v321);
        location = v322;
        v323 = *(v555[0] + 21);
        v324 = *(v555[0] + 22);
        v325 = *(v555[0] + 23);
        v326 = [*(v555[0] + 24) count];
        v319 = &v39;
        v320 = v577;
        __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v577, v419, v395, v390, v387, v388, v378, v376, v374, v372, v370, v363, v361, v358, v354, v350, v345, v341, v336, v329, v330, v322, v323, v324, v325, v326);
        _os_log_impl(&dword_26ADE5000, v393, v394[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA refresh operation is currently running. Canceling it as we start a full-scan.", v320, 0xFCu);
        MEMORY[0x277D82BD8](v321);
        if (v515)
        {
          MEMORY[0x277D82BD8](v516);
        }

        MEMORY[0x277D82BD8](v334);
        MEMORY[0x277D82BD8](v335);
        MEMORY[0x277D82BD8](v338);
        MEMORY[0x277D82BD8](v340);
        MEMORY[0x277D82BD8](v344);
        MEMORY[0x277D82BD8](v347);
        MEMORY[0x277D82BD8](v349);
        MEMORY[0x277D82BD8](v353);
        MEMORY[0x277D82BD8](v357);
        MEMORY[0x277D82BD8](v361);
        if (v523)
        {
          MEMORY[0x277D82BD8](v524);
        }

        if (v525)
        {
          MEMORY[0x277D82BD8](v526);
        }

        if (v527)
        {
          MEMORY[0x277D82BD8](v528);
        }

        MEMORY[0x277D82BD8](v369);
        MEMORY[0x277D82BD8](v370);
        MEMORY[0x277D82BD8](v372);
        MEMORY[0x277D82BD8](v374);
        MEMORY[0x277D82BD8](v376);
        if (v529)
        {
          MEMORY[0x277D82BD8](v530);
        }

        if (v531)
        {
          MEMORY[0x277D82BD8](v532);
        }

        MEMORY[0x277D82BD8](v384);
        MEMORY[0x277D82BD8](v386);
        MEMORY[0x277D82BD8](v389);
        objc_storeStrong(&location, 0);
        objc_storeStrong(&v517, 0);
        objc_storeStrong(&v518, 0);
        objc_storeStrong(&v519, 0);
        objc_storeStrong(&v520, 0);
        objc_storeStrong(&v521, 0);
        objc_storeStrong(&v522, 0);
        objc_storeStrong(&v533, 0);
        objc_storeStrong(&v534, 0);
      }

      objc_storeStrong(&v536, 0);
      v317 = v537;
      v508 = MEMORY[0x277D85DD0];
      v509 = -1073741824;
      v510 = 0;
      v511 = __41__SUUIStatefulUIManager_performFullScan___block_invoke_435;
      v512 = &unk_279CC6610;
      v318 = v513;
      objc_copyWeak(v513, (v418 + 40));
      v513[1] = *(v418 + 48);
      [v317 cancel:&v508];
      objc_destroyWeak(v318);
    }

    if (v538[0])
    {
      v316 = [*(v418 + 32) forceScan];
      if ((v316 & 1) == 0)
      {
        v315 = +[SUUILoggingContext statefulUILogger];
        v313 = v315;
        v314 = [v313 oslog];
        v507 = v314;
        MEMORY[0x277D82BD8](v313);
        v506 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v507, OS_LOG_TYPE_DEFAULT))
        {
          v309 = v507;
          *v310 = v506;
          v311 = v555[0];
          v312 = objc_opt_class();
          v308 = NSStringFromClass(v312);
          v305 = v308;
          v306 = MEMORY[0x277D82BE0](v305);
          v505 = v306;
          v307 = SUUIStatefulUIStateToString(*(v555[0] + 5));
          v302 = v307;
          v303 = MEMORY[0x277D82BE0](v302);
          v504 = v303;
          v304 = [v555[0] currentState];
          v502 = 0;
          v500 = 0;
          v301 = [v555[0] delegate];
          v300 = v301;
          if (v300)
          {
            v299 = [v555[0] delegate];
            v503 = v299;
            v502 = 1;
            v298 = objc_opt_class();
            v297 = NSStringFromClass(v298);
            v501 = v297;
            v500 = 1;
            v296 = v501;
          }

          else
          {
            v296 = @"(null)";
          }

          v294 = v296;
          v295 = [v555[0] delegate];
          v292 = v295;
          v293 = [v555[0] scanError];
          v290 = v293;
          v291 = [v555[0] preferredStatefulDescriptor];
          v288 = v291;
          v289 = [v555[0] alternateStatefulDescriptor];
          v286 = v289;
          v498 = 0;
          v496 = 0;
          v494 = 0;
          v287 = [v555[0] currentDownload];
          v285 = v287;
          if (v285)
          {
            v284 = [v555[0] currentDownload];
            v499 = v284;
            v498 = 1;
            v283 = [v499 descriptor];
            v497 = v283;
            v496 = 1;
            v282 = [v497 updateName];
            v495 = v282;
            v494 = 1;
            v281 = v495;
          }

          else
          {
            v281 = @"(null)";
          }

          v279 = v281;
          v280 = [v555[0] currentDownload];
          v277 = v280;
          v278 = [v555[0] currentUpdateOperationType];
          v276 = SUUIUpdateContinuousOperationTypeToString(v278);
          v273 = v276;
          v274 = MEMORY[0x277D82BE0](v273);
          v493 = v274;
          v275 = [v555[0] isTargetedUpdateScheduledForAutoInstall];
          v567 = v275;
          if (v275)
          {
            v12 = @"YES";
          }

          else
          {
            v12 = @"NO";
          }

          v272 = v12;
          v13 = v12;
          v269 = v272;
          v270 = MEMORY[0x277D82BE0](v269);
          v492 = v270;
          v271 = [v555[0] hidingPreferredDescriptor];
          v566 = v271;
          if (v271)
          {
            v14 = @"YES";
          }

          else
          {
            v14 = @"NO";
          }

          v268 = v14;
          v15 = v14;
          v265 = v268;
          v266 = MEMORY[0x277D82BE0](v265);
          v491 = v266;
          v267 = [v555[0] hiddenPreferredStatefulDescriptor];
          v263 = v267;
          v264 = [v263 updateName];
          v260 = v264;
          v261 = MEMORY[0x277D82BE0](v260);
          v490 = v261;
          v262 = [v555[0] hidingAlternateDescriptor];
          v565 = v262;
          if (v262)
          {
            v16 = @"YES";
          }

          else
          {
            v16 = @"NO";
          }

          v259 = v16;
          v17 = v16;
          v256 = v259;
          v257 = MEMORY[0x277D82BE0](v256);
          v489 = v257;
          v258 = [v555[0] hiddenAlternateStatefulDescriptor];
          v254 = v258;
          v255 = [v254 updateName];
          v251 = v255;
          v252 = MEMORY[0x277D82BE0](v251);
          v488 = v252;
          v486 = 0;
          v253 = [v555[0] enrolledBetaProgram];
          v250 = v253;
          if (v250)
          {
            v249 = [v555[0] enrolledBetaProgram];
            v487 = v249;
            v486 = 1;
            v248 = [v487 programID];
            v247 = v248;
          }

          else
          {
            v247 = 0;
          }

          v245 = v247;
          v246 = [*(v555[0] + 15) count];
          v244 = [v555[0] canEnrollInBetaUpdates];
          v564 = v244;
          if (v244)
          {
            v18 = @"YES";
          }

          else
          {
            v18 = @"NO";
          }

          v243 = v18;
          v19 = v18;
          v237 = v243;
          v238 = MEMORY[0x277D82BE0](v237);
          v485 = v238;
          v239 = *(v555[0] + 21);
          v240 = *(v555[0] + 22);
          v241 = *(v555[0] + 23);
          v242 = [*(v555[0] + 24) count];
          v235 = &v39;
          v236 = v576;
          __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v576, v419, v311, v306, v303, v304, v294, v292, v290, v288, v286, v279, v277, v274, v270, v266, v261, v257, v252, v245, v246, v238, v239, v240, v241, v242);
          _os_log_impl(&dword_26ADE5000, v309, v310[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA full-scan operation is already running. Skipping on this full-scan request.", v236, 0xFCu);
          MEMORY[0x277D82BD8](v237);
          if (v486)
          {
            MEMORY[0x277D82BD8](v487);
          }

          MEMORY[0x277D82BD8](v250);
          MEMORY[0x277D82BD8](v251);
          MEMORY[0x277D82BD8](v254);
          MEMORY[0x277D82BD8](v256);
          MEMORY[0x277D82BD8](v260);
          MEMORY[0x277D82BD8](v263);
          MEMORY[0x277D82BD8](v265);
          MEMORY[0x277D82BD8](v269);
          MEMORY[0x277D82BD8](v273);
          MEMORY[0x277D82BD8](v277);
          if (v494)
          {
            MEMORY[0x277D82BD8](v495);
          }

          if (v496)
          {
            MEMORY[0x277D82BD8](v497);
          }

          if (v498)
          {
            MEMORY[0x277D82BD8](v499);
          }

          MEMORY[0x277D82BD8](v285);
          MEMORY[0x277D82BD8](v286);
          MEMORY[0x277D82BD8](v288);
          MEMORY[0x277D82BD8](v290);
          MEMORY[0x277D82BD8](v292);
          if (v500)
          {
            MEMORY[0x277D82BD8](v501);
          }

          if (v502)
          {
            MEMORY[0x277D82BD8](v503);
          }

          MEMORY[0x277D82BD8](v300);
          MEMORY[0x277D82BD8](v302);
          MEMORY[0x277D82BD8](v305);
          objc_storeStrong(&v485, 0);
          objc_storeStrong(&v488, 0);
          objc_storeStrong(&v489, 0);
          objc_storeStrong(&v490, 0);
          objc_storeStrong(&v491, 0);
          objc_storeStrong(&v492, 0);
          objc_storeStrong(&v493, 0);
          objc_storeStrong(&v504, 0);
          objc_storeStrong(&v505, 0);
        }

        objc_storeStrong(&v507, 0);
        if (v546[3])
        {
          if (*(v546[3] + 24))
          {
            os_activity_scope_leave(v546[3]);
          }

          free(v546[3]);
          v546[3] = 0;
        }

        v550 = 1;
LABEL_173:
        objc_storeStrong(&v537, 0);
        objc_storeStrong(v538, 0);
        _Block_object_dispose(&v545, 8);
        goto LABEL_174;
      }

      v234 = +[SUUILoggingContext statefulUILogger];
      v232 = v234;
      v233 = [v232 oslog];
      v484 = v233;
      MEMORY[0x277D82BD8](v232);
      v483 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v484, OS_LOG_TYPE_DEFAULT))
      {
        v228 = v484;
        *v229 = v483;
        v230 = v555[0];
        v231 = objc_opt_class();
        v227 = NSStringFromClass(v231);
        v224 = v227;
        v225 = MEMORY[0x277D82BE0](v224);
        v482 = v225;
        v226 = SUUIStatefulUIStateToString(*(v555[0] + 5));
        v221 = v226;
        v222 = MEMORY[0x277D82BE0](v221);
        v481 = v222;
        v223 = [v555[0] currentState];
        v479 = 0;
        v477 = 0;
        v220 = [v555[0] delegate];
        v219 = v220;
        if (v219)
        {
          v218 = [v555[0] delegate];
          v480 = v218;
          v479 = 1;
          v217 = objc_opt_class();
          v216 = NSStringFromClass(v217);
          v478 = v216;
          v477 = 1;
          v215 = v478;
        }

        else
        {
          v215 = @"(null)";
        }

        v213 = v215;
        v214 = [v555[0] delegate];
        v211 = v214;
        v212 = [v555[0] scanError];
        v209 = v212;
        v210 = [v555[0] preferredStatefulDescriptor];
        v207 = v210;
        v208 = [v555[0] alternateStatefulDescriptor];
        v205 = v208;
        v475 = 0;
        v473 = 0;
        v471 = 0;
        v206 = [v555[0] currentDownload];
        v204 = v206;
        if (v204)
        {
          v203 = [v555[0] currentDownload];
          v476 = v203;
          v475 = 1;
          v202 = [v476 descriptor];
          v474 = v202;
          v473 = 1;
          v201 = [v474 updateName];
          v472 = v201;
          v471 = 1;
          v200 = v472;
        }

        else
        {
          v200 = @"(null)";
        }

        v198 = v200;
        v199 = [v555[0] currentDownload];
        v196 = v199;
        v197 = [v555[0] currentUpdateOperationType];
        v195 = SUUIUpdateContinuousOperationTypeToString(v197);
        v192 = v195;
        v193 = MEMORY[0x277D82BE0](v192);
        v470 = v193;
        v194 = [v555[0] isTargetedUpdateScheduledForAutoInstall];
        v563 = v194;
        if (v194)
        {
          v20 = @"YES";
        }

        else
        {
          v20 = @"NO";
        }

        v191 = v20;
        v21 = v20;
        v188 = v191;
        v189 = MEMORY[0x277D82BE0](v188);
        v469 = v189;
        v190 = [v555[0] hidingPreferredDescriptor];
        v562 = v190;
        if (v190)
        {
          v22 = @"YES";
        }

        else
        {
          v22 = @"NO";
        }

        v187 = v22;
        v23 = v22;
        v184 = v187;
        v185 = MEMORY[0x277D82BE0](v184);
        v468 = v185;
        v186 = [v555[0] hiddenPreferredStatefulDescriptor];
        v182 = v186;
        v183 = [v182 updateName];
        v179 = v183;
        v180 = MEMORY[0x277D82BE0](v179);
        v467 = v180;
        v181 = [v555[0] hidingAlternateDescriptor];
        v561 = v181;
        if (v181)
        {
          v24 = @"YES";
        }

        else
        {
          v24 = @"NO";
        }

        v178 = v24;
        v25 = v24;
        v175 = v178;
        v176 = MEMORY[0x277D82BE0](v175);
        v466 = v176;
        v177 = [v555[0] hiddenAlternateStatefulDescriptor];
        v173 = v177;
        v174 = [v173 updateName];
        v170 = v174;
        v171 = MEMORY[0x277D82BE0](v170);
        v465 = v171;
        v463 = 0;
        v172 = [v555[0] enrolledBetaProgram];
        v169 = v172;
        if (v169)
        {
          v168 = [v555[0] enrolledBetaProgram];
          v464 = v168;
          v463 = 1;
          v167 = [v464 programID];
          v166 = v167;
        }

        else
        {
          v166 = 0;
        }

        v164 = v166;
        v165 = [*(v555[0] + 15) count];
        v163 = [v555[0] canEnrollInBetaUpdates];
        v560 = v163;
        if (v163)
        {
          v26 = @"YES";
        }

        else
        {
          v26 = @"NO";
        }

        v162 = v26;
        v27 = v26;
        v156 = v162;
        v157 = MEMORY[0x277D82BE0](v156);
        v462 = v157;
        v158 = *(v555[0] + 21);
        v159 = *(v555[0] + 22);
        v160 = *(v555[0] + 23);
        v161 = [*(v555[0] + 24) count];
        v154 = &v39;
        v155 = v575;
        __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v575, v419, v230, v225, v222, v223, v213, v211, v209, v207, v205, v198, v196, v193, v189, v185, v180, v176, v171, v164, v165, v157, v158, v159, v160, v161);
        _os_log_impl(&dword_26ADE5000, v228, v229[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA full-scan operation is already running, but a force scan has been requested. Cancelling the previous full-scan request.", v155, 0xFCu);
        MEMORY[0x277D82BD8](v156);
        if (v463)
        {
          MEMORY[0x277D82BD8](v464);
        }

        MEMORY[0x277D82BD8](v169);
        MEMORY[0x277D82BD8](v170);
        MEMORY[0x277D82BD8](v173);
        MEMORY[0x277D82BD8](v175);
        MEMORY[0x277D82BD8](v179);
        MEMORY[0x277D82BD8](v182);
        MEMORY[0x277D82BD8](v184);
        MEMORY[0x277D82BD8](v188);
        MEMORY[0x277D82BD8](v192);
        MEMORY[0x277D82BD8](v196);
        if (v471)
        {
          MEMORY[0x277D82BD8](v472);
        }

        if (v473)
        {
          MEMORY[0x277D82BD8](v474);
        }

        if (v475)
        {
          MEMORY[0x277D82BD8](v476);
        }

        MEMORY[0x277D82BD8](v204);
        MEMORY[0x277D82BD8](v205);
        MEMORY[0x277D82BD8](v207);
        MEMORY[0x277D82BD8](v209);
        MEMORY[0x277D82BD8](v211);
        if (v477)
        {
          MEMORY[0x277D82BD8](v478);
        }

        if (v479)
        {
          MEMORY[0x277D82BD8](v480);
        }

        MEMORY[0x277D82BD8](v219);
        MEMORY[0x277D82BD8](v221);
        MEMORY[0x277D82BD8](v224);
        objc_storeStrong(&v462, 0);
        objc_storeStrong(&v465, 0);
        objc_storeStrong(&v466, 0);
        objc_storeStrong(&v467, 0);
        objc_storeStrong(&v468, 0);
        objc_storeStrong(&v469, 0);
        objc_storeStrong(&v470, 0);
        objc_storeStrong(&v481, 0);
        objc_storeStrong(&v482, 0);
      }

      objc_storeStrong(&v484, 0);
      [v555[0] setCurrentFullScanOperation:0];
      [v538[0] cancel:&__block_literal_global_439];
    }

    v153 = [MEMORY[0x277CCAD78] UUID];
    v151 = v153;
    v152 = [v151 UUIDString];
    v461 = v152;
    MEMORY[0x277D82BD8](v151);
    v150 = +[SUUILoggingContext statefulUILogger];
    v148 = v150;
    v149 = [v148 oslog];
    v460 = v149;
    MEMORY[0x277D82BD8](v148);
    v459 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v460, OS_LOG_TYPE_DEFAULT))
    {
      v144 = v460;
      *v145 = v459;
      v146 = v555[0];
      v147 = objc_opt_class();
      v143 = NSStringFromClass(v147);
      v140 = v143;
      v141 = MEMORY[0x277D82BE0](v140);
      v458 = v141;
      v142 = SUUIStatefulUIStateToString(*(v555[0] + 5));
      v137 = v142;
      v138 = MEMORY[0x277D82BE0](v137);
      v457 = v138;
      v139 = [v555[0] currentState];
      v455 = 0;
      v453 = 0;
      v136 = [v555[0] delegate];
      v135 = v136;
      if (v135)
      {
        v134 = [v555[0] delegate];
        v456 = v134;
        v455 = 1;
        v133 = objc_opt_class();
        v132 = NSStringFromClass(v133);
        v454 = v132;
        v453 = 1;
        v131 = v454;
      }

      else
      {
        v131 = @"(null)";
      }

      v129 = v131;
      v130 = [v555[0] delegate];
      v127 = v130;
      v128 = [v555[0] scanError];
      v125 = v128;
      v126 = [v555[0] preferredStatefulDescriptor];
      v123 = v126;
      v124 = [v555[0] alternateStatefulDescriptor];
      v121 = v124;
      v451 = 0;
      v449 = 0;
      v447 = 0;
      v122 = [v555[0] currentDownload];
      v120 = v122;
      if (v120)
      {
        v119 = [v555[0] currentDownload];
        v452 = v119;
        v451 = 1;
        v118 = [v452 descriptor];
        v450 = v118;
        v449 = 1;
        v117 = [v450 updateName];
        v448 = v117;
        v447 = 1;
        v116 = v448;
      }

      else
      {
        v116 = @"(null)";
      }

      v114 = v116;
      v115 = [v555[0] currentDownload];
      v112 = v115;
      v113 = [v555[0] currentUpdateOperationType];
      v111 = SUUIUpdateContinuousOperationTypeToString(v113);
      v108 = v111;
      v109 = MEMORY[0x277D82BE0](v108);
      v446 = v109;
      v110 = [v555[0] isTargetedUpdateScheduledForAutoInstall];
      v559 = v110;
      if (v110)
      {
        v28 = @"YES";
      }

      else
      {
        v28 = @"NO";
      }

      v107 = v28;
      v29 = v28;
      v104 = v107;
      v105 = MEMORY[0x277D82BE0](v104);
      v445 = v105;
      v106 = [v555[0] hidingPreferredDescriptor];
      v558 = v106;
      if (v106)
      {
        v30 = @"YES";
      }

      else
      {
        v30 = @"NO";
      }

      v103 = v30;
      v31 = v30;
      v100 = v103;
      v101 = MEMORY[0x277D82BE0](v100);
      v444 = v101;
      v102 = [v555[0] hiddenPreferredStatefulDescriptor];
      v98 = v102;
      v99 = [v98 updateName];
      v95 = v99;
      v96 = MEMORY[0x277D82BE0](v95);
      v443 = v96;
      v97 = [v555[0] hidingAlternateDescriptor];
      v557 = v97;
      if (v97)
      {
        v32 = @"YES";
      }

      else
      {
        v32 = @"NO";
      }

      v94 = v32;
      v33 = v32;
      v91 = v94;
      v92 = MEMORY[0x277D82BE0](v91);
      v442 = v92;
      v93 = [v555[0] hiddenAlternateStatefulDescriptor];
      v89 = v93;
      v90 = [v89 updateName];
      v86 = v90;
      v87 = MEMORY[0x277D82BE0](v86);
      v441 = v87;
      v439 = 0;
      v88 = [v555[0] enrolledBetaProgram];
      v85 = v88;
      if (v85)
      {
        v84 = [v555[0] enrolledBetaProgram];
        v440 = v84;
        v439 = 1;
        v83 = [v440 programID];
        v82 = v83;
      }

      else
      {
        v82 = 0;
      }

      v80 = v82;
      v81 = [*(v555[0] + 15) count];
      v79 = [v555[0] canEnrollInBetaUpdates];
      v556 = v79;
      if (v79)
      {
        v34 = @"YES";
      }

      else
      {
        v34 = @"NO";
      }

      v78 = v34;
      v35 = v34;
      v72 = v78;
      v73 = MEMORY[0x277D82BE0](v72);
      v438 = v73;
      v74 = *(v555[0] + 21);
      v75 = *(v555[0] + 22);
      v76 = *(v555[0] + 23);
      v77 = [*(v555[0] + 24) count];
      v70 = &v39;
      v71 = v574;
      __os_log_helper_16_2_28_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_0_8_0(v574, v420, v146, v141, v138, v139, v129, v127, v125, v123, v121, v114, v112, v109, v105, v101, v96, v92, v87, v80, v81, v73, v74, v75, v76, v77, v461, v538[0], v537);
      _os_log_impl(&dword_26ADE5000, v144, v145[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nBeginning a full scan operation with scan ID: %{public}@ (full scan FSM: %p, refresh scan FSM: %p)", v71, 0x11Au);
      MEMORY[0x277D82BD8](v72);
      if (v439)
      {
        MEMORY[0x277D82BD8](v440);
      }

      MEMORY[0x277D82BD8](v85);
      MEMORY[0x277D82BD8](v86);
      MEMORY[0x277D82BD8](v89);
      MEMORY[0x277D82BD8](v91);
      MEMORY[0x277D82BD8](v95);
      MEMORY[0x277D82BD8](v98);
      MEMORY[0x277D82BD8](v100);
      MEMORY[0x277D82BD8](v104);
      MEMORY[0x277D82BD8](v108);
      MEMORY[0x277D82BD8](v112);
      if (v447)
      {
        MEMORY[0x277D82BD8](v448);
      }

      if (v449)
      {
        MEMORY[0x277D82BD8](v450);
      }

      if (v451)
      {
        MEMORY[0x277D82BD8](v452);
      }

      MEMORY[0x277D82BD8](v120);
      MEMORY[0x277D82BD8](v121);
      MEMORY[0x277D82BD8](v123);
      MEMORY[0x277D82BD8](v125);
      MEMORY[0x277D82BD8](v127);
      if (v453)
      {
        MEMORY[0x277D82BD8](v454);
      }

      if (v455)
      {
        MEMORY[0x277D82BD8](v456);
      }

      MEMORY[0x277D82BD8](v135);
      MEMORY[0x277D82BD8](v137);
      MEMORY[0x277D82BD8](v140);
      objc_storeStrong(&v438, 0);
      objc_storeStrong(&v441, 0);
      objc_storeStrong(&v442, 0);
      objc_storeStrong(&v443, 0);
      objc_storeStrong(&v444, 0);
      objc_storeStrong(&v445, 0);
      objc_storeStrong(&v446, 0);
      objc_storeStrong(&v457, 0);
      objc_storeStrong(&v458, 0);
    }

    objc_storeStrong(&v460, 0);
    v437 = 0uLL;
    v436 = 0uLL;
    v69 = +[SUUILoggingContext statefulUILogger];
    v67 = v69;
    v68 = [v67 oslog];
    v65 = v68;
    *&v66 = _SUUISignpostCreate(v65);
    *(&v66 + 1) = v36;
    v436 = v66;
    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](v67);
    if (v436)
    {
      v64 = +[SUUILoggingContext statefulUILogger];
      v62 = v64;
      v63 = [v62 oslog];
      v435 = v63;
      MEMORY[0x277D82BD8](v62);
      v434 = 1;
      v433 = v436;
      if (v436 && v433 != -1 && os_signpost_enabled(v435))
      {
        v58 = v435;
        *v59 = v434;
        spid = v433;
        v61 = v573;
        __os_log_helper_16_2_1_8_66(v573, v461);
        _os_signpost_emit_with_name_impl(&dword_26ADE5000, v58, v59[0], spid, "FullScan", "Begins full scan  ScanIdentifier=%{public,signpost.telemetry:string1,name=ScanIdentifier}@  enableTelemetry=YES ", v61, 0xCu);
      }

      objc_storeStrong(&v435, 0);
      v57 = +[SUUILoggingContext statefulUILogger];
      v55 = v57;
      v56 = [v55 oslog];
      v432 = v56;
      MEMORY[0x277D82BD8](v55);
      v431 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v432, OS_LOG_TYPE_DEFAULT))
      {
        v52 = v432;
        *v53 = v431;
        v54 = v572;
        __os_log_helper_16_2_2_8_0_8_66(v572, v436, v461);
        _os_log_impl(&dword_26ADE5000, v52, v53[0], "BEGIN [%lld]: FullScan Begins full scan  ScanIdentifier=%{public,signpost.telemetry:string1,name=ScanIdentifier}@  enableTelemetry=YES ", v54, 0x16u);
      }

      objc_storeStrong(&v432, 0);
    }

    v437 = v436;
    v51 = [v555[0] environment];
    v49 = v51;
    v50 = [v49 scanOperationWithManager:v555[0] identifier:v461 completionQueue:*(v555[0] + 26)];
    v37 = v50;
    v38 = v538[0];
    v538[0] = v37;
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v49);
    [v555[0] setCurrentFullScanOperation:v538[0]];
    v46 = v555[0];
    v47 = v538[0];
    v48 = [*(v418 + 32) forceReload];
    v45 = [v46 contextForFullScanOperation:v47 withThirdPartyScanResults:0 scanError:0 forceReloadScanResults:v48];
    v430 = v45;
    v42 = *(v555[0] + 21);
    v43 = v430;
    v422 = MEMORY[0x277D85DD0];
    v423 = -1073741824;
    v424 = 0;
    v425 = __41__SUUIStatefulUIManager_performFullScan___block_invoke_441;
    v426 = &unk_279CC6658;
    v44 = v428;
    objc_copyWeak(v428, (v418 + 40));
    v41 = &v422;
    v428[1] = *(v418 + 48);
    v429 = v437;
    v40 = v427;
    v427[0] = MEMORY[0x277D82BE0](*(v418 + 32));
    v427[1] = &v545;
    [v42 checkForAvailableUpdatesWithContext:v43 completionHandler:v41];
    objc_storeStrong(v40, 0);
    objc_destroyWeak(v44);
    objc_storeStrong(&v430, 0);
    objc_storeStrong(&v461, 0);
    v550 = 0;
    goto LABEL_173;
  }

  v550 = 1;
LABEL_174:
  objc_storeStrong(v555, 0);
}

void __41__SUUIStatefulUIManager_performFullScan___block_invoke_435(uint64_t a1, char a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v12 = a2;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 32));
  v6 = 0;
  if (!v11[0])
  {
    v5 = +[SUUILoggingContext softwareUpdateUILogger];
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 40));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v14, "[SUUIStatefulUIManager performFullScan:]_block_invoke", v8);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v14, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v10, 0);
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    [v11[0] setCurrentRefreshScanOperation:0];
  }

  objc_storeStrong(v11, 0);
}

void __41__SUUIStatefulUIManager_performFullScan___block_invoke_441(uint64_t a1, void *a2, void *a3)
{
  v96 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v88 = 0;
  objc_storeStrong(&v88, a3);
  v87[1] = a1;
  v87[0] = objc_loadWeakRetained((a1 + 48));
  v30 = 0;
  if (!v87[0])
  {
    v29 = +[SUUILoggingContext softwareUpdateUILogger];
    v86 = [v29 oslog];
    MEMORY[0x277D82BD8](v29);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      log = v86;
      v27 = type;
      v28 = NSStringFromSelector(*(a1 + 56));
      v84 = MEMORY[0x277D82BE0](v28);
      __os_log_helper_16_2_2_8_32_8_66(v95, "[SUUIStatefulUIManager performFullScan:]_block_invoke", v84);
      _os_log_error_impl(&dword_26ADE5000, log, v27, "%s: Self is nil in %{public}@. Stopping.", v95, 0x16u);
      MEMORY[0x277D82BD8](v28);
      objc_storeStrong(&v84, 0);
    }

    objc_storeStrong(&v86, 0);
    v83 = 1;
    v30 = 1;
  }

  if (v30)
  {
    v82 = 1;
  }

  else
  {
    dispatch_assert_queue_V2(*(v87[0] + 26));
    if (v88)
    {
      v4 = *(a1 + 64);
      v47 = 0;
      v45 = 0;
      v16 = 0;
      if (v4)
      {
        v48 = +[SUUILoggingContext statefulUILogger];
        v47 = 1;
        v46 = [v48 oslog];
        v45 = 1;
        v16 = os_signpost_enabled(v46);
      }

      if (v45)
      {
        MEMORY[0x277D82BD8](v46);
      }

      if (v47)
      {
        MEMORY[0x277D82BD8](v48);
      }

      if (v16)
      {
        v44 = _SUUISignpostGetNanoseconds(*(a1 + 64), *(a1 + 72)) / 1000000000.0;
        v15 = +[SUUILoggingContext statefulUILogger];
        v43 = [v15 oslog];
        MEMORY[0x277D82BD8](v15);
        v42 = OS_SIGNPOST_EVENT;
        v41 = *(a1 + 64);
        if (v41 && v41 != -1 && os_signpost_enabled(v43))
        {
          if (v88)
          {
            v14 = [v88 code];
          }

          else
          {
            v14 = 0;
          }

          __os_log_helper_16_0_1_4_2(v92, v14);
          _os_signpost_emit_with_name_impl(&dword_26ADE5000, v43, v42, v41, "FullScan", "Full scan failed Error=%{public,signpost.telemetry:number1,name=Error}d ", v92, 8u);
        }

        objc_storeStrong(&v43, 0);
        v13 = +[SUUILoggingContext statefulUILogger];
        oslog = [v13 oslog];
        MEMORY[0x277D82BD8](v13);
        v39 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 64);
          v12 = *&v44;
          if (v88)
          {
            v10 = [v88 code];
          }

          else
          {
            v10 = 0;
          }

          __os_log_helper_16_0_3_8_0_8_0_4_2(v91, v11, v12, v10);
          _os_log_impl(&dword_26ADE5000, oslog, v39, "EVENT [%lld] %fs: FullScan Full scan failed Error=%{public,signpost.telemetry:number1,name=Error}d ", v91, 0x1Cu);
        }

        objc_storeStrong(&oslog, 0);
      }

      [*(a1 + 32) setError:v88];
      [v87[0] handleFailedFullScan:*(a1 + 32)];
    }

    else
    {
      v3 = *(a1 + 64);
      v80 = 0;
      v78 = 0;
      v25 = 0;
      if (v3)
      {
        v81 = +[SUUILoggingContext statefulUILogger];
        v80 = 1;
        v79 = [v81 oslog];
        v78 = 1;
        v25 = os_signpost_enabled(v79);
      }

      if (v78)
      {
        MEMORY[0x277D82BD8](v79);
      }

      if (v80)
      {
        MEMORY[0x277D82BD8](v81);
      }

      if (v25)
      {
        *&v77[1] = _SUUISignpostGetNanoseconds(*(a1 + 64), *(a1 + 72)) / 1000000000.0;
        v24 = +[SUUILoggingContext statefulUILogger];
        v77[0] = [v24 oslog];
        MEMORY[0x277D82BD8](v24);
        v76 = OS_SIGNPOST_EVENT;
        v75 = *(a1 + 64);
        if (v75 && v75 != -1 && os_signpost_enabled(v77[0]))
        {
          v73 = 0;
          v71 = 0;
          v69 = 0;
          if (location[0] && (v74 = [location[0] preferredDescriptor], v73 = 1, v74))
          {
            v72 = [location[0] preferredDescriptor];
            v71 = 1;
            v70 = [v72 updateName];
            v69 = 1;
            v23 = v70;
          }

          else
          {
            v23 = @"N/A";
          }

          v67 = 0;
          v65 = 0;
          v63 = 0;
          if (location[0] && (v68 = [location[0] alternateDescriptor], v67 = 1, v68))
          {
            v66 = [location[0] alternateDescriptor];
            v65 = 1;
            v64 = [v66 updateName];
            v63 = 1;
            v22 = v64;
          }

          else
          {
            v22 = @"N/A";
          }

          __os_log_helper_16_2_2_8_66_8_66(v94, v23, v22);
          _os_signpost_emit_with_name_impl(&dword_26ADE5000, v77[0], v76, v75, "FullScan", "Full scan finished successfully PreferredUpdate=%{public,signpost.telemetry:string1,name=PreferredUpdate}@  AlternateUpdate=%{public,signpost.telemetry:string2,name=AlternateUpdate}@ ", v94, 0x16u);
          if (v63)
          {
            MEMORY[0x277D82BD8](v64);
          }

          if (v65)
          {
            MEMORY[0x277D82BD8](v66);
          }

          if (v67)
          {
            MEMORY[0x277D82BD8](v68);
          }

          if (v69)
          {
            MEMORY[0x277D82BD8](v70);
          }

          if (v71)
          {
            MEMORY[0x277D82BD8](v72);
          }

          if (v73)
          {
            MEMORY[0x277D82BD8](v74);
          }
        }

        objc_storeStrong(v77, 0);
        v21 = +[SUUILoggingContext statefulUILogger];
        v62 = [v21 oslog];
        MEMORY[0x277D82BD8](v21);
        v61 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(a1 + 64);
          v20 = v77[1];
          v59 = 0;
          v57 = 0;
          v55 = 0;
          if (location[0] && (v60 = [location[0] preferredDescriptor], v59 = 1, v60))
          {
            v58 = [location[0] preferredDescriptor];
            v57 = 1;
            v56 = [v58 updateName];
            v55 = 1;
            v18 = v56;
          }

          else
          {
            v18 = @"N/A";
          }

          v53 = 0;
          v51 = 0;
          v49 = 0;
          if (location[0] && (v54 = [location[0] alternateDescriptor], v53 = 1, v54))
          {
            v52 = [location[0] alternateDescriptor];
            v51 = 1;
            v50 = [v52 updateName];
            v49 = 1;
            v17 = v50;
          }

          else
          {
            v17 = @"N/A";
          }

          __os_log_helper_16_2_4_8_0_8_0_8_66_8_66(v93, v19, v20, v18, v17);
          _os_log_impl(&dword_26ADE5000, v62, v61, "EVENT [%lld] %fs: FullScan Full scan finished successfully PreferredUpdate=%{public,signpost.telemetry:string1,name=PreferredUpdate}@  AlternateUpdate=%{public,signpost.telemetry:string2,name=AlternateUpdate}@ ", v93, 0x2Au);
          if (v49)
          {
            MEMORY[0x277D82BD8](v50);
          }

          if (v51)
          {
            MEMORY[0x277D82BD8](v52);
          }

          if (v53)
          {
            MEMORY[0x277D82BD8](v54);
          }

          if (v55)
          {
            MEMORY[0x277D82BD8](v56);
          }

          if (v57)
          {
            MEMORY[0x277D82BD8](v58);
          }

          if (v59)
          {
            MEMORY[0x277D82BD8](v60);
          }
        }

        objc_storeStrong(&v62, 0);
      }

      [*(a1 + 32) setFullScanResults:location[0]];
      [v87[0] handleFullScanResults:*(a1 + 32)];
    }

    if (*(a1 + 64))
    {
      v38 = _SUUISignpostGetNanoseconds(*(a1 + 64), *(a1 + 72)) / 1000000000.0;
      v9 = +[SUUILoggingContext statefulUILogger];
      v37 = [v9 oslog];
      MEMORY[0x277D82BD8](v9);
      v36 = 2;
      v35 = *(a1 + 64);
      if (v35 && v35 != -1 && os_signpost_enabled(v37))
      {
        v6 = v37;
        v7 = v36;
        v8 = v35;
        __os_log_helper_16_0_0(v34);
        _os_signpost_emit_with_name_impl(&dword_26ADE5000, v6, v7, v8, "FullScan", "", v34, 2u);
      }

      objc_storeStrong(&v37, 0);
      v5 = +[SUUILoggingContext statefulUILogger];
      v33 = [v5 oslog];
      MEMORY[0x277D82BD8](v5);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_2_8_0_8_0(v90, *(a1 + 64), *&v38);
        _os_log_impl(&dword_26ADE5000, v33, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FullScan ", v90, 0x16u);
      }

      objc_storeStrong(&v33, 0);
    }

    if (*(*(*(a1 + 40) + 8) + 24))
    {
      if (*(*(*(*(a1 + 40) + 8) + 24) + 24))
      {
        os_activity_scope_leave(*(*(*(a1 + 40) + 8) + 24));
      }

      free(*(*(*(a1 + 40) + 8) + 24));
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }

    v82 = 0;
  }

  objc_storeStrong(v87, 0);
  if (!v82)
  {
    v82 = 0;
  }

  objc_storeStrong(&v88, 0);
  objc_storeStrong(location, 0);
}

- (void)performFullScanWithScanResults:(id)results andScanError:(id)error
{
  obj = error;
  v82 = "[SUUIStatefulUIManager performFullScanWithScanResults:andScanError:]";
  v131 = *MEMORY[0x277D85DE8];
  val = self;
  v124 = a2;
  location = 0;
  objc_storeStrong(&location, results);
  v122 = 0;
  objc_storeStrong(&v122, obj);
  v120 = 0;
  v118 = 0;
  v84 = 0;
  if (v122)
  {
    traits = [v122 traits];
    v120 = 1;
    v81 = 0;
    if (([traits noUpdateFound] & 1) == 0)
    {
      traits2 = [v122 traits];
      v80 = 1;
      v118 = 1;
      v81 = [traits2 isDelayingUpdate] ^ 1;
    }

    v84 = v81;
  }

  v79 = v84;
  if (v118)
  {
    MEMORY[0x277D82BD8](traits2);
  }

  if (v120)
  {
    MEMORY[0x277D82BD8](traits);
  }

  if (v79)
  {
    v78 = +[SUUILoggingContext statefulUILogger];
    oslog = [v78 oslog];
    MEMORY[0x277D82BD8](v78);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      *v70 = type;
      v71 = val;
      v4 = objc_opt_class();
      v72 = NSStringFromClass(v4);
      v73 = MEMORY[0x277D82BE0](v72);
      v115 = v73;
      v74 = SUUIStatefulUIStateToString(*(val + 5));
      v75 = MEMORY[0x277D82BE0](v74);
      v114 = v75;
      currentState = [val currentState];
      delegate = [val delegate];
      v112 = 0;
      v110 = 0;
      if (delegate)
      {
        delegate2 = [val delegate];
        v67 = 1;
        v112 = 1;
        v5 = objc_opt_class();
        v111 = NSStringFromClass(v5);
        v110 = 1;
        v68 = v111;
      }

      else
      {
        v68 = @"(null)";
      }

      v61 = v68;
      delegate3 = [val delegate];
      scanError = [val scanError];
      preferredStatefulDescriptor = [val preferredStatefulDescriptor];
      alternateStatefulDescriptor = [val alternateStatefulDescriptor];
      currentDownload = [val currentDownload];
      v108 = 0;
      v106 = 0;
      v104 = 0;
      if (currentDownload)
      {
        currentDownload2 = [val currentDownload];
        v59 = 1;
        v108 = 1;
        descriptor = [currentDownload2 descriptor];
        v106 = 1;
        updateName = [descriptor updateName];
        v104 = 1;
        v60 = updateName;
      }

      else
      {
        v60 = @"(null)";
      }

      v36 = v60;
      currentDownload3 = [val currentDownload];
      v38 = SUUIUpdateContinuousOperationTypeToString([val currentUpdateOperationType]);
      v39 = MEMORY[0x277D82BE0](v38);
      v103 = v39;
      isTargetedUpdateScheduledForAutoInstall = [val isTargetedUpdateScheduledForAutoInstall];
      v49 = @"NO";
      v50 = @"YES";
      v57 = 1;
      if (isTargetedUpdateScheduledForAutoInstall)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v40 = v6;
      v7 = v6;
      v41 = v40;
      v42 = MEMORY[0x277D82BE0](v41);
      v102 = v42;
      hidingPreferredDescriptor = [val hidingPreferredDescriptor];
      if (hidingPreferredDescriptor)
      {
        v8 = v50;
      }

      else
      {
        v8 = v49;
      }

      v43 = v8;
      v9 = v8;
      v44 = v43;
      v45 = MEMORY[0x277D82BE0](v44);
      v101 = v45;
      hiddenPreferredStatefulDescriptor = [val hiddenPreferredStatefulDescriptor];
      updateName2 = [hiddenPreferredStatefulDescriptor updateName];
      v48 = MEMORY[0x277D82BE0](updateName2);
      v100 = v48;
      hidingAlternateDescriptor = [val hidingAlternateDescriptor];
      if (hidingAlternateDescriptor)
      {
        v10 = v50;
      }

      else
      {
        v10 = v49;
      }

      v51 = v10;
      v11 = v10;
      v52 = v51;
      v53 = MEMORY[0x277D82BE0](v52);
      v99 = v53;
      hiddenAlternateStatefulDescriptor = [val hiddenAlternateStatefulDescriptor];
      updateName3 = [hiddenAlternateStatefulDescriptor updateName];
      v56 = MEMORY[0x277D82BE0](updateName3);
      v98 = v56;
      enrolledBetaProgram = [val enrolledBetaProgram];
      v96 = 0;
      if (enrolledBetaProgram)
      {
        enrolledBetaProgram2 = [val enrolledBetaProgram];
        v96 = 1;
        programID = [enrolledBetaProgram2 programID];
      }

      else
      {
        programID = 0;
      }

      v26 = programID;
      v27 = [*(val + 15) count];
      canEnrollInBetaUpdates = [val canEnrollInBetaUpdates];
      if (canEnrollInBetaUpdates)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v25 = v12;
      v13 = v12;
      v34 = v25;
      v28 = MEMORY[0x277D82BE0](v34);
      v95 = v28;
      v29 = *(val + 21);
      v30 = *(val + 22);
      v31 = *(val + 23);
      v14 = [*(val + 24) count];
      v32 = &v15;
      buf = v130;
      __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66(v130, v82, v71, v73, v75, currentState, v61, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v36, currentDownload3, v39, v42, v45, v48, v53, v56, v26, v27, v28, v29, v30, v31, v14, v122, location);
      _os_log_impl(&dword_26ADE5000, log, v70[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA full-scan request has been received for third-party scan results. We got a non up-to-date third-party scan error - Skipping.\nscanError: %{public}@\nscanResults: %{public}@", buf, 0x110u);
      MEMORY[0x277D82BD8](v34);
      if (v96)
      {
        MEMORY[0x277D82BD8](enrolledBetaProgram2);
      }

      MEMORY[0x277D82BD8](enrolledBetaProgram);
      MEMORY[0x277D82BD8](updateName3);
      MEMORY[0x277D82BD8](hiddenAlternateStatefulDescriptor);
      MEMORY[0x277D82BD8](v52);
      MEMORY[0x277D82BD8](updateName2);
      MEMORY[0x277D82BD8](hiddenPreferredStatefulDescriptor);
      MEMORY[0x277D82BD8](v44);
      MEMORY[0x277D82BD8](v41);
      MEMORY[0x277D82BD8](v38);
      MEMORY[0x277D82BD8](currentDownload3);
      if (v104)
      {
        MEMORY[0x277D82BD8](updateName);
      }

      if (v106)
      {
        MEMORY[0x277D82BD8](descriptor);
      }

      if (v108)
      {
        MEMORY[0x277D82BD8](currentDownload2);
      }

      MEMORY[0x277D82BD8](currentDownload);
      MEMORY[0x277D82BD8](alternateStatefulDescriptor);
      MEMORY[0x277D82BD8](preferredStatefulDescriptor);
      MEMORY[0x277D82BD8](scanError);
      MEMORY[0x277D82BD8](delegate3);
      if (v110)
      {
        MEMORY[0x277D82BD8](v111);
      }

      if (v112)
      {
        MEMORY[0x277D82BD8](delegate2);
      }

      MEMORY[0x277D82BD8](delegate);
      MEMORY[0x277D82BD8](v74);
      MEMORY[0x277D82BD8](v72);
      v24 = 0;
      objc_storeStrong(&v95, 0);
      objc_storeStrong(&v98, v24);
      objc_storeStrong(&v99, v24);
      objc_storeStrong(&v100, v24);
      objc_storeStrong(&v101, v24);
      objc_storeStrong(&v102, v24);
      objc_storeStrong(&v103, v24);
      objc_storeStrong(&v114, v24);
      objc_storeStrong(&v115, v24);
    }

    objc_storeStrong(&oslog, 0);
    v94 = 1;
  }

  else
  {
    from = &v93;
    objc_initWeak(&v93, val);
    queue = *(val + 26);
    block = &v85;
    v85 = MEMORY[0x277D85DD0];
    v86 = -1073741824;
    v87 = 0;
    v88 = __69__SUUIStatefulUIManager_performFullScanWithScanResults_andScanError___block_invoke;
    v89 = &unk_279CC62A0;
    v22 = v92;
    objc_copyWeak(v92, &v93);
    v92[1] = v124;
    v20 = &v90;
    v90 = MEMORY[0x277D82BE0](location);
    v19 = &v91;
    v91 = MEMORY[0x277D82BE0](v122);
    dispatch_async(queue, &v85);
    v21 = 0;
    objc_storeStrong(&v91, 0);
    objc_storeStrong(&v90, 0);
    objc_destroyWeak(v92);
    objc_destroyWeak(&v93);
    v94 = 0;
  }

  v16 = 0;
  objc_storeStrong(&v122, 0);
  objc_storeStrong(&location, v16);
}

void __69__SUUIStatefulUIManager_performFullScanWithScanResults_andScanError___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v329 = v348;
  v330 = MEMORY[0x28223BE20](a1, a2, a3);
  v331 = "[SUUIStatefulUIManager performFullScanWithScanResults:andScanError:]_block_invoke";
  v462 = *MEMORY[0x277D85DE8];
  v443[2] = v330;
  v443[1] = v330;
  WeakRetained = objc_loadWeakRetained((v330 + 48));
  v443[0] = WeakRetained;
  v328 = 0;
  if (!WeakRetained)
  {
    v327 = +[SUUILoggingContext softwareUpdateUILogger];
    v325 = v327;
    v326 = [v325 oslog];
    oslog = v326;
    MEMORY[0x277D82BD8](v325);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v323 = type;
      v324 = NSStringFromSelector(*(v330 + 56));
      v321 = v324;
      location = MEMORY[0x277D82BE0](v321);
      buf = v461;
      __os_log_helper_16_2_2_8_32_8_66(v461, v331, location);
      _os_log_error_impl(&dword_26ADE5000, log, v323[0], "%s: Self is nil in %{public}@. Stopping.", v461, 0x16u);
      MEMORY[0x277D82BD8](v321);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&oslog, 0);
    v439 = 1;
    v328 = 1;
  }

  if (v328)
  {
    v438 = 1;
  }

  else
  {
    v433 = 0;
    v434 = &v433;
    v435 = 0x20000000;
    v436 = 32;
    v437 = 0;
    v319 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
    v431 = v319;
    if (v319)
    {
      v430 = _os_activity_create(&dword_26ADE5000, "com.apple.SoftwareUpdateUI.StatefulUI.Manager.ThirdPartyFullScan", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      v3 = v431[1].opaque[0];
      v431[1].opaque[0] = v430;
      MEMORY[0x277D82BD8](v3);
    }

    else
    {
      v318 = +[SUUILoggingContext softwareUpdateUILogger];
      v316 = v318;
      v317 = [v316 oslog];
      v429 = v317;
      MEMORY[0x277D82BD8](v316);
      v428 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v429, OS_LOG_TYPE_ERROR))
      {
        v313 = v429;
        *v314 = v428;
        v315 = v427;
        __os_log_helper_16_0_0(v427);
        _os_log_error_impl(&dword_26ADE5000, v313, v314[0], "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.Manager.ThirdPartyFullScan", v427, 2u);
      }

      objc_storeStrong(&v429, 0);
    }

    obj[2] = v431;
    state = v431;
    if (v431)
    {
      os_activity_scope_enter(state[1].opaque[0], state);
      LOBYTE(state[1].opaque[1]) = 1;
    }

    obj[1] = state;
    v434[3] = state;
    v312 = [v443[0] currentFullScanOperation];
    obj[0] = v312;
    v311 = [v443[0] currentRefreshScanOperation];
    v425 = v311;
    if (v425)
    {
      v310 = +[SUUILoggingContext statefulUILogger];
      v308 = v310;
      v309 = [v308 oslog];
      v424 = v309;
      MEMORY[0x277D82BD8](v308);
      v423 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v424, OS_LOG_TYPE_DEFAULT))
      {
        v304 = v424;
        *v305 = v423;
        v306 = v443[0];
        aClass = objc_opt_class();
        v303 = NSStringFromClass(aClass);
        v300 = v303;
        v301 = MEMORY[0x277D82BE0](v300);
        v422 = v301;
        v302 = SUUIStatefulUIStateToString(*(v443[0] + 5));
        v297 = v302;
        v298 = MEMORY[0x277D82BE0](v297);
        v421 = v298;
        v299 = [v443[0] currentState];
        v419 = 0;
        v417 = 0;
        v296 = [v443[0] delegate];
        v295 = v296;
        if (v295)
        {
          v294 = [v443[0] delegate];
          v420 = v294;
          v419 = 1;
          v293 = objc_opt_class();
          v292 = NSStringFromClass(v293);
          v418 = v292;
          v417 = 1;
          v291 = v418;
        }

        else
        {
          v291 = @"(null)";
        }

        v289 = v291;
        v290 = [v443[0] delegate];
        v287 = v290;
        v288 = [v443[0] scanError];
        v285 = v288;
        v286 = [v443[0] preferredStatefulDescriptor];
        v283 = v286;
        v284 = [v443[0] alternateStatefulDescriptor];
        v281 = v284;
        v415 = 0;
        v413 = 0;
        v411 = 0;
        v282 = [v443[0] currentDownload];
        v280 = v282;
        if (v280)
        {
          v279 = [v443[0] currentDownload];
          v416 = v279;
          v415 = 1;
          v278 = [v416 descriptor];
          v414 = v278;
          v413 = 1;
          v277 = [v414 updateName];
          v412 = v277;
          v411 = 1;
          v276 = v412;
        }

        else
        {
          v276 = @"(null)";
        }

        v274 = v276;
        v275 = [v443[0] currentDownload];
        v272 = v275;
        v273 = [v443[0] currentUpdateOperationType];
        v271 = SUUIUpdateContinuousOperationTypeToString(v273);
        v268 = v271;
        v269 = MEMORY[0x277D82BE0](v268);
        v410 = v269;
        v270 = [v443[0] isTargetedUpdateScheduledForAutoInstall];
        v455 = v270;
        if (v270)
        {
          v4 = @"YES";
        }

        else
        {
          v4 = @"NO";
        }

        v267 = v4;
        v5 = v4;
        v264 = v267;
        v265 = MEMORY[0x277D82BE0](v264);
        v409 = v265;
        v266 = [v443[0] hidingPreferredDescriptor];
        v454 = v266;
        if (v266)
        {
          v6 = @"YES";
        }

        else
        {
          v6 = @"NO";
        }

        v263 = v6;
        v7 = v6;
        v260 = v263;
        v261 = MEMORY[0x277D82BE0](v260);
        v408 = v261;
        v262 = [v443[0] hiddenPreferredStatefulDescriptor];
        v258 = v262;
        v259 = [v258 updateName];
        v255 = v259;
        v256 = MEMORY[0x277D82BE0](v255);
        v407 = v256;
        v257 = [v443[0] hidingAlternateDescriptor];
        v453 = v257;
        if (v257)
        {
          v8 = @"YES";
        }

        else
        {
          v8 = @"NO";
        }

        v254 = v8;
        v9 = v8;
        v251 = v254;
        v252 = MEMORY[0x277D82BE0](v251);
        v406 = v252;
        v253 = [v443[0] hiddenAlternateStatefulDescriptor];
        v249 = v253;
        v250 = [v249 updateName];
        v246 = v250;
        v247 = MEMORY[0x277D82BE0](v246);
        v405 = v247;
        v403 = 0;
        v248 = [v443[0] enrolledBetaProgram];
        v245 = v248;
        if (v245)
        {
          v244 = [v443[0] enrolledBetaProgram];
          v404 = v244;
          v403 = 1;
          v243 = [v404 programID];
          v242 = v243;
        }

        else
        {
          v242 = 0;
        }

        v240 = v242;
        v241 = [*(v443[0] + 15) count];
        v239 = [v443[0] canEnrollInBetaUpdates];
        v452 = v239;
        if (v239)
        {
          v10 = @"YES";
        }

        else
        {
          v10 = @"NO";
        }

        v238 = v10;
        v11 = v10;
        v232 = v238;
        v233 = MEMORY[0x277D82BE0](v232);
        v402 = v233;
        v234 = *(v443[0] + 21);
        v235 = *(v443[0] + 22);
        v236 = *(v443[0] + 23);
        v237 = [*(v443[0] + 24) count];
        v230 = &v37;
        v231 = v460;
        __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v460, v331, v306, v301, v298, v299, v289, v287, v285, v283, v281, v274, v272, v269, v265, v261, v256, v252, v247, v240, v241, v233, v234, v235, v236, v237);
        _os_log_impl(&dword_26ADE5000, v304, v305[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA refresh operation is currently running. Canceling it as we start a full-scan.", v231, 0xFCu);
        MEMORY[0x277D82BD8](v232);
        if (v403)
        {
          MEMORY[0x277D82BD8](v404);
        }

        MEMORY[0x277D82BD8](v245);
        MEMORY[0x277D82BD8](v246);
        MEMORY[0x277D82BD8](v249);
        MEMORY[0x277D82BD8](v251);
        MEMORY[0x277D82BD8](v255);
        MEMORY[0x277D82BD8](v258);
        MEMORY[0x277D82BD8](v260);
        MEMORY[0x277D82BD8](v264);
        MEMORY[0x277D82BD8](v268);
        MEMORY[0x277D82BD8](v272);
        if (v411)
        {
          MEMORY[0x277D82BD8](v412);
        }

        if (v413)
        {
          MEMORY[0x277D82BD8](v414);
        }

        if (v415)
        {
          MEMORY[0x277D82BD8](v416);
        }

        MEMORY[0x277D82BD8](v280);
        MEMORY[0x277D82BD8](v281);
        MEMORY[0x277D82BD8](v283);
        MEMORY[0x277D82BD8](v285);
        MEMORY[0x277D82BD8](v287);
        if (v417)
        {
          MEMORY[0x277D82BD8](v418);
        }

        if (v419)
        {
          MEMORY[0x277D82BD8](v420);
        }

        MEMORY[0x277D82BD8](v295);
        MEMORY[0x277D82BD8](v297);
        MEMORY[0x277D82BD8](v300);
        objc_storeStrong(&v402, 0);
        objc_storeStrong(&v405, 0);
        objc_storeStrong(&v406, 0);
        objc_storeStrong(&v407, 0);
        objc_storeStrong(&v408, 0);
        objc_storeStrong(&v409, 0);
        objc_storeStrong(&v410, 0);
        objc_storeStrong(&v421, 0);
        objc_storeStrong(&v422, 0);
      }

      objc_storeStrong(&v424, 0);
      v228 = v425;
      v396 = MEMORY[0x277D85DD0];
      v397 = -1073741824;
      v398 = 0;
      v399 = __69__SUUIStatefulUIManager_performFullScanWithScanResults_andScanError___block_invoke_443;
      v400 = &unk_279CC6610;
      v229 = v401;
      objc_copyWeak(v401, (v330 + 48));
      v401[1] = *(v330 + 56);
      [v228 cancel:&v396];
      objc_destroyWeak(v229);
    }

    if (obj[0])
    {
      v227 = +[SUUILoggingContext statefulUILogger];
      v225 = v227;
      v226 = [v225 oslog];
      v395 = v226;
      MEMORY[0x277D82BD8](v225);
      v394 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v395, OS_LOG_TYPE_DEFAULT))
      {
        v221 = v395;
        *v222 = v394;
        v223 = v443[0];
        v224 = objc_opt_class();
        v220 = NSStringFromClass(v224);
        v217 = v220;
        v218 = MEMORY[0x277D82BE0](v217);
        v393 = v218;
        v219 = SUUIStatefulUIStateToString(*(v443[0] + 5));
        v214 = v219;
        v215 = MEMORY[0x277D82BE0](v214);
        v392 = v215;
        v216 = [v443[0] currentState];
        v390 = 0;
        v388 = 0;
        v213 = [v443[0] delegate];
        v212 = v213;
        if (v212)
        {
          v211 = [v443[0] delegate];
          v391 = v211;
          v390 = 1;
          v210 = objc_opt_class();
          v209 = NSStringFromClass(v210);
          v389 = v209;
          v388 = 1;
          v208 = v389;
        }

        else
        {
          v208 = @"(null)";
        }

        v206 = v208;
        v207 = [v443[0] delegate];
        v204 = v207;
        v205 = [v443[0] scanError];
        v202 = v205;
        v203 = [v443[0] preferredStatefulDescriptor];
        v200 = v203;
        v201 = [v443[0] alternateStatefulDescriptor];
        v198 = v201;
        v386 = 0;
        v384 = 0;
        v382 = 0;
        v199 = [v443[0] currentDownload];
        v197 = v199;
        if (v197)
        {
          v196 = [v443[0] currentDownload];
          v387 = v196;
          v386 = 1;
          v195 = [v387 descriptor];
          v385 = v195;
          v384 = 1;
          v194 = [v385 updateName];
          v383 = v194;
          v382 = 1;
          v193 = v383;
        }

        else
        {
          v193 = @"(null)";
        }

        v191 = v193;
        v192 = [v443[0] currentDownload];
        v189 = v192;
        v190 = [v443[0] currentUpdateOperationType];
        v188 = SUUIUpdateContinuousOperationTypeToString(v190);
        v185 = v188;
        v186 = MEMORY[0x277D82BE0](v185);
        v381 = v186;
        v187 = [v443[0] isTargetedUpdateScheduledForAutoInstall];
        v451 = v187;
        if (v187)
        {
          v12 = @"YES";
        }

        else
        {
          v12 = @"NO";
        }

        v184 = v12;
        v13 = v12;
        v181 = v184;
        v182 = MEMORY[0x277D82BE0](v181);
        v380 = v182;
        v183 = [v443[0] hidingPreferredDescriptor];
        v450 = v183;
        if (v183)
        {
          v14 = @"YES";
        }

        else
        {
          v14 = @"NO";
        }

        v180 = v14;
        v15 = v14;
        v177 = v180;
        v178 = MEMORY[0x277D82BE0](v177);
        v379 = v178;
        v179 = [v443[0] hiddenPreferredStatefulDescriptor];
        v175 = v179;
        v176 = [v175 updateName];
        v172 = v176;
        v173 = MEMORY[0x277D82BE0](v172);
        v378 = v173;
        v174 = [v443[0] hidingAlternateDescriptor];
        v449 = v174;
        if (v174)
        {
          v16 = @"YES";
        }

        else
        {
          v16 = @"NO";
        }

        v171 = v16;
        v17 = v16;
        v168 = v171;
        v169 = MEMORY[0x277D82BE0](v168);
        v377 = v169;
        v170 = [v443[0] hiddenAlternateStatefulDescriptor];
        v166 = v170;
        v167 = [v166 updateName];
        v163 = v167;
        v164 = MEMORY[0x277D82BE0](v163);
        v376 = v164;
        v374 = 0;
        v165 = [v443[0] enrolledBetaProgram];
        v162 = v165;
        if (v162)
        {
          v161 = [v443[0] enrolledBetaProgram];
          v375 = v161;
          v374 = 1;
          v160 = [v375 programID];
          v159 = v160;
        }

        else
        {
          v159 = 0;
        }

        v157 = v159;
        v158 = [*(v443[0] + 15) count];
        v156 = [v443[0] canEnrollInBetaUpdates];
        v448 = v156;
        if (v156)
        {
          v18 = @"YES";
        }

        else
        {
          v18 = @"NO";
        }

        v155 = v18;
        v19 = v18;
        v149 = v155;
        v150 = MEMORY[0x277D82BE0](v149);
        v373 = v150;
        v151 = *(v443[0] + 21);
        v152 = *(v443[0] + 22);
        v153 = *(v443[0] + 23);
        v154 = [*(v443[0] + 24) count];
        v147 = &v37;
        v148 = v459;
        __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v459, v331, v223, v218, v215, v216, v206, v204, v202, v200, v198, v191, v189, v186, v182, v178, v173, v169, v164, v157, v158, v150, v151, v152, v153, v154);
        _os_log_impl(&dword_26ADE5000, v221, v222[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA full-scan operation is already running. Skipping on this full-scan request.", v148, 0xFCu);
        MEMORY[0x277D82BD8](v149);
        if (v374)
        {
          MEMORY[0x277D82BD8](v375);
        }

        MEMORY[0x277D82BD8](v162);
        MEMORY[0x277D82BD8](v163);
        MEMORY[0x277D82BD8](v166);
        MEMORY[0x277D82BD8](v168);
        MEMORY[0x277D82BD8](v172);
        MEMORY[0x277D82BD8](v175);
        MEMORY[0x277D82BD8](v177);
        MEMORY[0x277D82BD8](v181);
        MEMORY[0x277D82BD8](v185);
        MEMORY[0x277D82BD8](v189);
        if (v382)
        {
          MEMORY[0x277D82BD8](v383);
        }

        if (v384)
        {
          MEMORY[0x277D82BD8](v385);
        }

        if (v386)
        {
          MEMORY[0x277D82BD8](v387);
        }

        MEMORY[0x277D82BD8](v197);
        MEMORY[0x277D82BD8](v198);
        MEMORY[0x277D82BD8](v200);
        MEMORY[0x277D82BD8](v202);
        MEMORY[0x277D82BD8](v204);
        if (v388)
        {
          MEMORY[0x277D82BD8](v389);
        }

        if (v390)
        {
          MEMORY[0x277D82BD8](v391);
        }

        MEMORY[0x277D82BD8](v212);
        MEMORY[0x277D82BD8](v214);
        MEMORY[0x277D82BD8](v217);
        objc_storeStrong(&v373, 0);
        objc_storeStrong(&v376, 0);
        objc_storeStrong(&v377, 0);
        objc_storeStrong(&v378, 0);
        objc_storeStrong(&v379, 0);
        objc_storeStrong(&v380, 0);
        objc_storeStrong(&v381, 0);
        objc_storeStrong(&v392, 0);
        objc_storeStrong(&v393, 0);
      }

      objc_storeStrong(&v395, 0);
      if (v434[3])
      {
        if (*(v434[3] + 24))
        {
          os_activity_scope_leave(v434[3]);
        }

        free(v434[3]);
        v434[3] = 0;
      }

      v438 = 1;
    }

    else
    {
      v146 = [MEMORY[0x277CCAD78] UUID];
      v144 = v146;
      v145 = [v144 UUIDString];
      v372 = v145;
      MEMORY[0x277D82BD8](v144);
      v143 = +[SUUILoggingContext statefulUILogger];
      v141 = v143;
      v142 = [v141 oslog];
      v371 = v142;
      MEMORY[0x277D82BD8](v141);
      v370 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v371, OS_LOG_TYPE_DEFAULT))
      {
        v137 = v371;
        *v138 = v370;
        v139 = v443[0];
        v140 = objc_opt_class();
        v136 = NSStringFromClass(v140);
        v133 = v136;
        v134 = MEMORY[0x277D82BE0](v133);
        v369 = v134;
        v135 = SUUIStatefulUIStateToString(*(v443[0] + 5));
        v130 = v135;
        v131 = MEMORY[0x277D82BE0](v130);
        v368 = v131;
        v132 = [v443[0] currentState];
        v366 = 0;
        v364 = 0;
        v129 = [v443[0] delegate];
        v128 = v129;
        if (v128)
        {
          v127 = [v443[0] delegate];
          v367 = v127;
          v366 = 1;
          v126 = objc_opt_class();
          v125 = NSStringFromClass(v126);
          v365 = v125;
          v364 = 1;
          v124 = v365;
        }

        else
        {
          v124 = @"(null)";
        }

        v122 = v124;
        v123 = [v443[0] delegate];
        v120 = v123;
        v121 = [v443[0] scanError];
        v118 = v121;
        v119 = [v443[0] preferredStatefulDescriptor];
        v116 = v119;
        v117 = [v443[0] alternateStatefulDescriptor];
        v114 = v117;
        v362 = 0;
        v360 = 0;
        v358 = 0;
        v115 = [v443[0] currentDownload];
        v113 = v115;
        if (v113)
        {
          v112 = [v443[0] currentDownload];
          v363 = v112;
          v362 = 1;
          v111 = [v363 descriptor];
          v361 = v111;
          v360 = 1;
          v110 = [v361 updateName];
          v359 = v110;
          v358 = 1;
          v109 = v359;
        }

        else
        {
          v109 = @"(null)";
        }

        v107 = v109;
        v108 = [v443[0] currentDownload];
        v105 = v108;
        v106 = [v443[0] currentUpdateOperationType];
        v104 = SUUIUpdateContinuousOperationTypeToString(v106);
        v101 = v104;
        v102 = MEMORY[0x277D82BE0](v101);
        v357 = v102;
        v103 = [v443[0] isTargetedUpdateScheduledForAutoInstall];
        v447 = v103;
        if (v103)
        {
          v20 = @"YES";
        }

        else
        {
          v20 = @"NO";
        }

        v100 = v20;
        v21 = v20;
        v97 = v100;
        v98 = MEMORY[0x277D82BE0](v97);
        v356 = v98;
        v99 = [v443[0] hidingPreferredDescriptor];
        v446 = v99;
        if (v99)
        {
          v22 = @"YES";
        }

        else
        {
          v22 = @"NO";
        }

        v96 = v22;
        v23 = v22;
        v93 = v96;
        v94 = MEMORY[0x277D82BE0](v93);
        v355 = v94;
        v95 = [v443[0] hiddenPreferredStatefulDescriptor];
        v91 = v95;
        v92 = [v91 updateName];
        v88 = v92;
        v89 = MEMORY[0x277D82BE0](v88);
        v354 = v89;
        v90 = [v443[0] hidingAlternateDescriptor];
        v445 = v90;
        if (v90)
        {
          v24 = @"YES";
        }

        else
        {
          v24 = @"NO";
        }

        v87 = v24;
        v25 = v24;
        v84 = v87;
        v85 = MEMORY[0x277D82BE0](v84);
        v353 = v85;
        v86 = [v443[0] hiddenAlternateStatefulDescriptor];
        v82 = v86;
        v83 = [v82 updateName];
        v79 = v83;
        v80 = MEMORY[0x277D82BE0](v79);
        v352 = v80;
        v350 = 0;
        v81 = [v443[0] enrolledBetaProgram];
        v78 = v81;
        if (v78)
        {
          v77 = [v443[0] enrolledBetaProgram];
          v351 = v77;
          v350 = 1;
          v76 = [v351 programID];
          v75 = v76;
        }

        else
        {
          v75 = 0;
        }

        v73 = v75;
        v74 = [*(v443[0] + 15) count];
        v72 = [v443[0] canEnrollInBetaUpdates];
        v444 = v72;
        if (v72)
        {
          v26 = @"YES";
        }

        else
        {
          v26 = @"NO";
        }

        v71 = v26;
        v27 = v26;
        v65 = v71;
        v66 = MEMORY[0x277D82BE0](v65);
        v349 = v66;
        v67 = *(v443[0] + 21);
        v68 = *(v443[0] + 22);
        v69 = *(v443[0] + 23);
        v70 = [*(v443[0] + 24) count];
        v28 = *(v330 + 32);
        v29 = *(v330 + 40);
        v63 = &v37;
        v64 = v458;
        __os_log_helper_16_2_30_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_0_8_66_8_66_8_0_8_0(v458, v331, v139, v134, v131, v132, v122, v120, v118, v116, v114, v107, v105, v102, v98, v94, v89, v85, v80, v73, v74, v66, v67, v68, v69, v70, v28, v29, v372, obj[0], v425);
        _os_log_impl(&dword_26ADE5000, v137, v138[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nBeginning a full scan operation with with existing scan results (results: %p, error: %{public}@), using scan ID: %{public}@ (full scan FSM: %p, refresh scan FSM: %p)", v64, 0x12Eu);
        MEMORY[0x277D82BD8](v65);
        if (v350)
        {
          MEMORY[0x277D82BD8](v351);
        }

        MEMORY[0x277D82BD8](v78);
        MEMORY[0x277D82BD8](v79);
        MEMORY[0x277D82BD8](v82);
        MEMORY[0x277D82BD8](v84);
        MEMORY[0x277D82BD8](v88);
        MEMORY[0x277D82BD8](v91);
        MEMORY[0x277D82BD8](v93);
        MEMORY[0x277D82BD8](v97);
        MEMORY[0x277D82BD8](v101);
        MEMORY[0x277D82BD8](v105);
        if (v358)
        {
          MEMORY[0x277D82BD8](v359);
        }

        if (v360)
        {
          MEMORY[0x277D82BD8](v361);
        }

        if (v362)
        {
          MEMORY[0x277D82BD8](v363);
        }

        MEMORY[0x277D82BD8](v113);
        MEMORY[0x277D82BD8](v114);
        MEMORY[0x277D82BD8](v116);
        MEMORY[0x277D82BD8](v118);
        MEMORY[0x277D82BD8](v120);
        if (v364)
        {
          MEMORY[0x277D82BD8](v365);
        }

        if (v366)
        {
          MEMORY[0x277D82BD8](v367);
        }

        MEMORY[0x277D82BD8](v128);
        MEMORY[0x277D82BD8](v130);
        MEMORY[0x277D82BD8](v133);
        objc_storeStrong(&v349, 0);
        objc_storeStrong(&v352, 0);
        objc_storeStrong(&v353, 0);
        objc_storeStrong(&v354, 0);
        objc_storeStrong(&v355, 0);
        objc_storeStrong(&v356, 0);
        objc_storeStrong(&v357, 0);
        objc_storeStrong(&v368, 0);
        objc_storeStrong(&v369, 0);
      }

      objc_storeStrong(&v371, 0);
      v348[0] = 0;
      v348[1] = 0;
      v347 = 0uLL;
      v62 = +[SUUILoggingContext statefulUILogger];
      v60 = v62;
      v61 = [v60 oslog];
      v58 = v61;
      *&v59 = _SUUISignpostCreate(v58);
      *(&v59 + 1) = v30;
      v347 = v59;
      MEMORY[0x277D82BD8](v58);
      MEMORY[0x277D82BD8](v60);
      if (v347)
      {
        v57 = +[SUUILoggingContext statefulUILogger];
        v55 = v57;
        v56 = [v55 oslog];
        v346 = v56;
        MEMORY[0x277D82BD8](v55);
        v345 = 1;
        v344 = v347;
        if (v347 && v344 != -1 && os_signpost_enabled(v346))
        {
          v51 = v346;
          *v52 = v345;
          spid = v344;
          v31 = *(v330 + 32) != 0;
          v32 = *(v330 + 40) != 0;
          v54 = v457;
          __os_log_helper_16_2_3_4_2_4_2_8_66(v457, v31, v32, v372);
          _os_signpost_emit_with_name_impl(&dword_26ADE5000, v51, v52[0], spid, "FullScan", "Begins full scan /w 3rd party results  HasScanResults=%{public,signpost.telemetry:number1,name=HasScanResults}d  ScanError=%{public,signpost.telemetry:number2,name=ScanError}d  ScanIdentifier=%{public,signpost.telemetry:string1,name=ScanIdentifier}@  enableTelemetry=YES ", v54, 0x18u);
        }

        objc_storeStrong(&v346, 0);
        v50 = +[SUUILoggingContext statefulUILogger];
        v48 = v50;
        v49 = [v48 oslog];
        v343 = v49;
        MEMORY[0x277D82BD8](v48);
        v342 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v343, OS_LOG_TYPE_DEFAULT))
        {
          v45 = v343;
          *v46 = v342;
          v33 = *(v330 + 32) != 0;
          v34 = *(v330 + 40) != 0;
          v47 = v456;
          __os_log_helper_16_2_4_8_0_4_2_4_2_8_66(v456, v347, v33, v34, v372);
          _os_log_impl(&dword_26ADE5000, v45, v46[0], "BEGIN [%lld]: FullScan Begins full scan /w 3rd party results  HasScanResults=%{public,signpost.telemetry:number1,name=HasScanResults}d  ScanError=%{public,signpost.telemetry:number2,name=ScanError}d  ScanIdentifier=%{public,signpost.telemetry:string1,name=ScanIdentifier}@  enableTelemetry=YES ", v47, 0x22u);
        }

        objc_storeStrong(&v343, 0);
      }

      *v329 = v347;
      v44 = [v443[0] environment];
      v42 = v44;
      v43 = [v42 scanOperationWithManager:v443[0] identifier:v372 completionQueue:*(v443[0] + 26)];
      v35 = v43;
      v36 = obj[0];
      obj[0] = v35;
      MEMORY[0x277D82BD8](v36);
      MEMORY[0x277D82BD8](v42);
      objc_storeStrong(v443[0] + 21, obj[0]);
      v41 = [v443[0] contextForFullScanOperation:obj[0] withThirdPartyScanResults:*(v330 + 32) scanError:*(v330 + 40) forceReloadScanResults:1];
      v341 = v41;
      v38 = obj[0];
      v39 = v341;
      v333 = MEMORY[0x277D85DD0];
      v334 = -1073741824;
      v335 = 0;
      v336 = __69__SUUIStatefulUIManager_performFullScanWithScanResults_andScanError___block_invoke_444;
      v337 = &unk_279CC6680;
      v40 = v339;
      objc_copyWeak(v339, (v330 + 48));
      v339[1] = *(v330 + 56);
      v340 = *v329;
      v338 = &v433;
      [v38 checkForAvailableUpdatesWithContext:v39 completionHandler:?];
      objc_destroyWeak(v40);
      objc_storeStrong(&v341, 0);
      objc_storeStrong(&v372, 0);
      v438 = 0;
    }

    objc_storeStrong(&v425, 0);
    objc_storeStrong(obj, 0);
    _Block_object_dispose(&v433, 8);
  }

  objc_storeStrong(v443, 0);
}

void __69__SUUIStatefulUIManager_performFullScanWithScanResults_andScanError___block_invoke_443(uint64_t a1, char a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v12 = a2;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 32));
  v6 = 0;
  if (!v11[0])
  {
    v5 = +[SUUILoggingContext softwareUpdateUILogger];
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 40));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v14, "[SUUIStatefulUIManager performFullScanWithScanResults:andScanError:]_block_invoke", v8);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v14, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v10, 0);
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    [v11[0] setCurrentRefreshScanOperation:0];
  }

  objc_storeStrong(v11, 0);
}

void __69__SUUIStatefulUIManager_performFullScanWithScanResults_andScanError___block_invoke_444(uint64_t a1, void *a2, void *a3)
{
  v99 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v91 = 0;
  objc_storeStrong(&v91, a3);
  v90[1] = a1;
  v90[0] = objc_loadWeakRetained((a1 + 40));
  v30 = 0;
  if (!v90[0])
  {
    v29 = +[SUUILoggingContext softwareUpdateUILogger];
    v89 = [v29 oslog];
    MEMORY[0x277D82BD8](v29);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
    {
      log = v89;
      v27 = type;
      v28 = NSStringFromSelector(*(a1 + 48));
      v87 = MEMORY[0x277D82BE0](v28);
      __os_log_helper_16_2_2_8_32_8_66(v98, "[SUUIStatefulUIManager performFullScanWithScanResults:andScanError:]_block_invoke", v87);
      _os_log_error_impl(&dword_26ADE5000, log, v27, "%s: Self is nil in %{public}@. Stopping.", v98, 0x16u);
      MEMORY[0x277D82BD8](v28);
      objc_storeStrong(&v87, 0);
    }

    objc_storeStrong(&v89, 0);
    v86 = 1;
    v30 = 1;
  }

  if (v30)
  {
    v85 = 1;
  }

  else
  {
    dispatch_assert_queue_V2(*(v90[0] + 26));
    if (v91)
    {
      v4 = *(a1 + 56);
      v48 = 0;
      v46 = 0;
      v16 = 0;
      if (v4)
      {
        v49 = +[SUUILoggingContext statefulUILogger];
        v48 = 1;
        v47 = [v49 oslog];
        v46 = 1;
        v16 = os_signpost_enabled(v47);
      }

      if (v46)
      {
        MEMORY[0x277D82BD8](v47);
      }

      if (v48)
      {
        MEMORY[0x277D82BD8](v49);
      }

      if (v16)
      {
        v45 = _SUUISignpostGetNanoseconds(*(a1 + 56), *(a1 + 64)) / 1000000000.0;
        v15 = +[SUUILoggingContext statefulUILogger];
        v44 = [v15 oslog];
        MEMORY[0x277D82BD8](v15);
        v43 = OS_SIGNPOST_EVENT;
        v42 = *(a1 + 56);
        if (v42 && v42 != -1 && os_signpost_enabled(v44))
        {
          if (v91)
          {
            v14 = [v91 code];
          }

          else
          {
            v14 = 0;
          }

          __os_log_helper_16_0_1_4_2(v95, v14);
          _os_signpost_emit_with_name_impl(&dword_26ADE5000, v44, v43, v42, "FullScan", "Full scan /w 3rd-party results failed Error=%{public,signpost.telemetry:number1,name=Error}d ", v95, 8u);
        }

        objc_storeStrong(&v44, 0);
        v13 = +[SUUILoggingContext statefulUILogger];
        oslog = [v13 oslog];
        MEMORY[0x277D82BD8](v13);
        v40 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 56);
          v12 = *&v45;
          if (v91)
          {
            v10 = [v91 code];
          }

          else
          {
            v10 = 0;
          }

          __os_log_helper_16_0_3_8_0_8_0_4_2(v94, v11, v12, v10);
          _os_log_impl(&dword_26ADE5000, oslog, v40, "EVENT [%lld] %fs: FullScan Full scan /w 3rd-party results failed Error=%{public,signpost.telemetry:number1,name=Error}d ", v94, 0x1Cu);
        }

        objc_storeStrong(&oslog, 0);
      }

      v39 = objc_alloc_init(SUUIStatefulUIManagerFSMParam);
      [(SUUIStatefulUIManagerFSMParam *)v39 setError:v91];
      [v90[0] handleFailedFullScan:v39];
      objc_storeStrong(&v39, 0);
    }

    else
    {
      v3 = *(a1 + 56);
      v83 = 0;
      v81 = 0;
      v25 = 0;
      if (v3)
      {
        v84 = +[SUUILoggingContext statefulUILogger];
        v83 = 1;
        v82 = [v84 oslog];
        v81 = 1;
        v25 = os_signpost_enabled(v82);
      }

      if (v81)
      {
        MEMORY[0x277D82BD8](v82);
      }

      if (v83)
      {
        MEMORY[0x277D82BD8](v84);
      }

      if (v25)
      {
        *&v80 = _SUUISignpostGetNanoseconds(*(a1 + 56), *(a1 + 64)) / 1000000000.0;
        v24 = +[SUUILoggingContext statefulUILogger];
        v79 = [v24 oslog];
        MEMORY[0x277D82BD8](v24);
        v78 = OS_SIGNPOST_EVENT;
        v77 = *(a1 + 56);
        if (v77 && v77 != -1 && os_signpost_enabled(v79))
        {
          v75 = 0;
          v73 = 0;
          v71 = 0;
          if (location[0] && (v76 = [location[0] preferredDescriptor], v75 = 1, v76))
          {
            v74 = [location[0] preferredDescriptor];
            v73 = 1;
            v72 = [v74 updateName];
            v71 = 1;
            v23 = v72;
          }

          else
          {
            v23 = @"N/A";
          }

          v69 = 0;
          v67 = 0;
          v65 = 0;
          if (location[0] && (v70 = [location[0] alternateDescriptor], v69 = 1, v70))
          {
            v68 = [location[0] alternateDescriptor];
            v67 = 1;
            v66 = [v68 updateName];
            v65 = 1;
            v22 = v66;
          }

          else
          {
            v22 = @"N/A";
          }

          __os_log_helper_16_2_2_8_66_8_66(v97, v23, v22);
          _os_signpost_emit_with_name_impl(&dword_26ADE5000, v79, v78, v77, "FullScan", "Full scan /w 3rd-party results finished successfully PreferredUpdate=%{public,signpost.telemetry:string1,name=PreferredUpdate}@  AlternateUpdate=%{public,signpost.telemetry:string2,name=AlternateUpdate}@ ", v97, 0x16u);
          if (v65)
          {
            MEMORY[0x277D82BD8](v66);
          }

          if (v67)
          {
            MEMORY[0x277D82BD8](v68);
          }

          if (v69)
          {
            MEMORY[0x277D82BD8](v70);
          }

          if (v71)
          {
            MEMORY[0x277D82BD8](v72);
          }

          if (v73)
          {
            MEMORY[0x277D82BD8](v74);
          }

          if (v75)
          {
            MEMORY[0x277D82BD8](v76);
          }
        }

        objc_storeStrong(&v79, 0);
        v21 = +[SUUILoggingContext statefulUILogger];
        v64 = [v21 oslog];
        MEMORY[0x277D82BD8](v21);
        v63 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *(a1 + 56);
          v20 = v80;
          v61 = 0;
          v59 = 0;
          v57 = 0;
          if (location[0] && (v62 = [location[0] preferredDescriptor], v61 = 1, v62))
          {
            v60 = [location[0] preferredDescriptor];
            v59 = 1;
            v58 = [v60 updateName];
            v57 = 1;
            v18 = v58;
          }

          else
          {
            v18 = @"N/A";
          }

          v55 = 0;
          v53 = 0;
          v51 = 0;
          if (location[0] && (v56 = [location[0] alternateDescriptor], v55 = 1, v56))
          {
            v54 = [location[0] alternateDescriptor];
            v53 = 1;
            v52 = [v54 updateName];
            v51 = 1;
            v17 = v52;
          }

          else
          {
            v17 = @"N/A";
          }

          __os_log_helper_16_2_4_8_0_8_0_8_66_8_66(v96, v19, v20, v18, v17);
          _os_log_impl(&dword_26ADE5000, v64, v63, "EVENT [%lld] %fs: FullScan Full scan /w 3rd-party results finished successfully PreferredUpdate=%{public,signpost.telemetry:string1,name=PreferredUpdate}@  AlternateUpdate=%{public,signpost.telemetry:string2,name=AlternateUpdate}@ ", v96, 0x2Au);
          if (v51)
          {
            MEMORY[0x277D82BD8](v52);
          }

          if (v53)
          {
            MEMORY[0x277D82BD8](v54);
          }

          if (v55)
          {
            MEMORY[0x277D82BD8](v56);
          }

          if (v57)
          {
            MEMORY[0x277D82BD8](v58);
          }

          if (v59)
          {
            MEMORY[0x277D82BD8](v60);
          }

          if (v61)
          {
            MEMORY[0x277D82BD8](v62);
          }
        }

        objc_storeStrong(&v64, 0);
      }

      v50 = objc_alloc_init(SUUIStatefulUIManagerFSMParam);
      [(SUUIStatefulUIManagerFSMParam *)v50 setFullScanResults:location[0]];
      [v90[0] handleFullScanResults:v50];
      objc_storeStrong(&v50, 0);
    }

    if (*(a1 + 56))
    {
      v38 = _SUUISignpostGetNanoseconds(*(a1 + 56), *(a1 + 64)) / 1000000000.0;
      v9 = +[SUUILoggingContext statefulUILogger];
      v37 = [v9 oslog];
      MEMORY[0x277D82BD8](v9);
      v36 = 2;
      v35 = *(a1 + 56);
      if (v35 && v35 != -1 && os_signpost_enabled(v37))
      {
        v6 = v37;
        v7 = v36;
        v8 = v35;
        __os_log_helper_16_0_0(v34);
        _os_signpost_emit_with_name_impl(&dword_26ADE5000, v6, v7, v8, "FullScan", "", v34, 2u);
      }

      objc_storeStrong(&v37, 0);
      v5 = +[SUUILoggingContext statefulUILogger];
      v33 = [v5 oslog];
      MEMORY[0x277D82BD8](v5);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_2_8_0_8_0(v93, *(a1 + 56), *&v38);
        _os_log_impl(&dword_26ADE5000, v33, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: FullScan ", v93, 0x16u);
      }

      objc_storeStrong(&v33, 0);
    }

    if (*(*(*(a1 + 32) + 8) + 24))
    {
      if (*(*(*(*(a1 + 32) + 8) + 24) + 24))
      {
        os_activity_scope_leave(*(*(*(a1 + 32) + 8) + 24));
      }

      free(*(*(*(a1 + 32) + 8) + 24));
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }

    v85 = 0;
  }

  objc_storeStrong(v90, 0);
  if (!v85)
  {
    v85 = 0;
  }

  objc_storeStrong(&v91, 0);
  objc_storeStrong(location, 0);
}

- (void)notifyFullScanResultsDelegates:(id)delegates andError:(id)error
{
  selfCopy = self;
  v19 = a2;
  location = 0;
  objc_storeStrong(&location, delegates);
  v17 = 0;
  objc_storeStrong(&v17, error);
  objc_initWeak(&from, selfCopy);
  mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
  delegateCallbackQueue = [(SUUIStatefulUIManager *)selfCopy delegateCallbackQueue];
  queue = [mEMORY[0x277D643F8] selectDelegateCallbackQueue:?];
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __65__SUUIStatefulUIManager_notifyFullScanResultsDelegates_andError___block_invoke;
  v12 = &unk_279CC62A0;
  objc_copyWeak(v15, &from);
  v15[1] = v19;
  v13 = MEMORY[0x277D82BE0](location);
  v14 = MEMORY[0x277D82BE0](v17);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  MEMORY[0x277D82BD8](delegateCallbackQueue);
  MEMORY[0x277D82BD8](mEMORY[0x277D643F8]);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_destroyWeak(v15);
  objc_destroyWeak(&from);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&location, 0);
}

void __65__SUUIStatefulUIManager_notifyFullScanResultsDelegates_andError___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v32[2] = a1;
  v32[1] = a1;
  v32[0] = objc_loadWeakRetained((a1 + 48));
  v17 = 0;
  if (!v32[0])
  {
    v16 = +[SUUILoggingContext softwareUpdateUILogger];
    oslog = [v16 oslog];
    MEMORY[0x277D82BD8](v16);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      v14 = type;
      v15 = NSStringFromSelector(*(a1 + 56));
      v29 = MEMORY[0x277D82BE0](v15);
      __os_log_helper_16_2_2_8_32_8_66(v35, "[SUUIStatefulUIManager notifyFullScanResultsDelegates:andError:]_block_invoke", v29);
      _os_log_error_impl(&dword_26ADE5000, log, v14, "%s: Self is nil in %{public}@. Stopping.", v35, 0x16u);
      MEMORY[0x277D82BD8](v15);
      objc_storeStrong(&v29, 0);
    }

    objc_storeStrong(&oslog, 0);
    v28 = 1;
    v17 = 1;
  }

  if (v17)
  {
    v27 = 1;
  }

  else
  {
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](*(v32[0] + 29));
    v12 = [obj countByEnumeratingWithState:__b objects:v34 count:16];
    if (v12)
    {
      v8 = *__b[2];
      v9 = 0;
      v10 = v12;
      while (1)
      {
        v7 = v9;
        if (*__b[2] != v8)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(__b[1] + 8 * v9);
        v24 = MEMORY[0x26D66ADC0](v26);
        if (v24)
        {
          (*(v24 + 2))(v24, *(a1 + 32), *(a1 + 40));
          v23 = 0;
        }

        else
        {
          v22 = 0;
        }

        objc_storeStrong(&v24, 0);
        ++v9;
        if (v7 + 1 >= v10)
        {
          v9 = 0;
          v10 = [obj countByEnumeratingWithState:__b objects:v34 count:16];
          if (!v10)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
    memset(v20, 0, sizeof(v20));
    v5 = MEMORY[0x277D82BE0](*(v32[0] + 30));
    v6 = [v5 countByEnumeratingWithState:v20 objects:v33 count:16];
    if (v6)
    {
      v2 = *v20[2];
      v3 = 0;
      v4 = v6;
      while (1)
      {
        v1 = v3;
        if (*v20[2] != v2)
        {
          objc_enumerationMutation(v5);
        }

        v21 = *(v20[1] + 8 * v3);
        v19 = MEMORY[0x26D66ADC0](v21);
        if (v19)
        {
          (*(v19 + 2))(v19, *(a1 + 32), *(a1 + 40));
        }

        objc_storeStrong(&v19, 0);
        ++v3;
        if (v1 + 1 >= v4)
        {
          v3 = 0;
          v4 = [v5 countByEnumeratingWithState:v20 objects:v33 count:16];
          if (!v4)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v5);
    [*(v32[0] + 29) removeAllObjects];
    [*(v32[0] + 30) removeAllObjects];
    v27 = 0;
  }

  objc_storeStrong(v32, 0);
}

- (void)performRefreshScan:(id)scan
{
  selfCopy = self;
  v13 = a2;
  location = 0;
  objc_storeStrong(&location, scan);
  objc_initWeak(&v11, selfCopy);
  queue = selfCopy->_operationsQueue;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __44__SUUIStatefulUIManager_performRefreshScan___block_invoke;
  v8 = &unk_279CC6368;
  objc_copyWeak(v10, &v11);
  v10[1] = v13;
  v9 = MEMORY[0x277D82BE0](location);
  dispatch_async(queue, &v4);
  objc_storeStrong(&v9, 0);
  objc_destroyWeak(v10);
  objc_destroyWeak(&v11);
  objc_storeStrong(&location, 0);
}

void __44__SUUIStatefulUIManager_performRefreshScan___block_invoke(id *a1)
{
  v155 = a1;
  v156 = "[SUUIStatefulUIManager performRefreshScan:]_block_invoke";
  v227 = *MEMORY[0x277D85DE8];
  v218[2] = a1;
  v218[1] = a1;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v218[0] = WeakRetained;
  v154 = 0;
  if (!WeakRetained)
  {
    v153 = +[SUUILoggingContext softwareUpdateUILogger];
    v151 = v153;
    v152 = [v151 oslog];
    oslog = v152;
    MEMORY[0x277D82BD8](v151);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v149 = type;
      v150 = NSStringFromSelector(v155[6]);
      v147 = v150;
      location = MEMORY[0x277D82BE0](v147);
      buf = v226;
      __os_log_helper_16_2_2_8_32_8_66(v226, v156, location);
      _os_log_error_impl(&dword_26ADE5000, oslog, type, "%s: Self is nil in %{public}@. Stopping.", v226, 0x16u);
      MEMORY[0x277D82BD8](v147);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&oslog, 0);
    v214 = 1;
    v154 = 1;
  }

  if (v154)
  {
    v213 = 1;
  }

  else
  {
    v208 = 0;
    v209 = &v208;
    v210 = 0x20000000;
    v211 = 32;
    v212 = 0;
    v145 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
    v206 = v145;
    if (v145)
    {
      v205 = _os_activity_create(&dword_26ADE5000, "com.apple.SoftwareUpdateUI.StatefulUI.Manager.RefreshScan", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
      v1 = v206[1].opaque[0];
      v206[1].opaque[0] = v205;
      MEMORY[0x277D82BD8](v1);
    }

    else
    {
      v144 = +[SUUILoggingContext softwareUpdateUILogger];
      v142 = v144;
      v143 = [v142 oslog];
      v204 = v143;
      MEMORY[0x277D82BD8](v142);
      v203 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(v204, OS_LOG_TYPE_ERROR))
      {
        v139 = v204;
        *v140 = v203;
        v141 = v202;
        __os_log_helper_16_0_0(v202);
        _os_log_error_impl(&dword_26ADE5000, v139, v140[0], "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.Manager.RefreshScan", v202, 2u);
      }

      objc_storeStrong(&v204, 0);
    }

    obj[2] = v206;
    state = v206;
    if (v206)
    {
      os_activity_scope_enter(state[1].opaque[0], state);
      LOBYTE(state[1].opaque[1]) = 1;
    }

    obj[1] = state;
    v209[3] = state;
    v138 = [v218[0] currentRefreshScanOperation];
    obj[0] = v138;
    v137 = [v218[0] preferredStatefulDescriptor];
    v200 = v137;
    v136 = [v218[0] alternateStatefulDescriptor];
    v199 = v136;
    v135 = [v218[0] scanError];
    v198 = v135;
    v134 = [MEMORY[0x277CCAD78] UUID];
    v132 = v134;
    v133 = [v132 UUIDString];
    v197 = v133;
    MEMORY[0x277D82BD8](v132);
    v131 = +[SUUILoggingContext statefulUILogger];
    v129 = v131;
    v130 = [v129 oslog];
    v196 = v130;
    MEMORY[0x277D82BD8](v129);
    v195 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
    {
      v125 = v196;
      *v126 = v195;
      v127 = v218[0];
      aClass = objc_opt_class();
      v124 = NSStringFromClass(aClass);
      v121 = v124;
      v122 = MEMORY[0x277D82BE0](v121);
      v194 = v122;
      v123 = SUUIStatefulUIStateToString(*(v218[0] + 5));
      v118 = v123;
      v119 = MEMORY[0x277D82BE0](v118);
      v193 = v119;
      v120 = [v218[0] currentState];
      v191 = 0;
      v189 = 0;
      v117 = [v218[0] delegate];
      v116 = v117;
      if (v116)
      {
        v115 = [v218[0] delegate];
        v192 = v115;
        v191 = 1;
        v114 = objc_opt_class();
        v113 = NSStringFromClass(v114);
        v190 = v113;
        v189 = 1;
        v112 = v190;
      }

      else
      {
        v112 = @"(null)";
      }

      v110 = v112;
      v111 = [v218[0] delegate];
      v108 = v111;
      v109 = [v218[0] scanError];
      v106 = v109;
      v107 = [v218[0] preferredStatefulDescriptor];
      v104 = v107;
      v105 = [v218[0] alternateStatefulDescriptor];
      v102 = v105;
      v187 = 0;
      v185 = 0;
      v183 = 0;
      v103 = [v218[0] currentDownload];
      v101 = v103;
      if (v101)
      {
        v100 = [v218[0] currentDownload];
        v188 = v100;
        v187 = 1;
        v99 = [v188 descriptor];
        v186 = v99;
        v185 = 1;
        v98 = [v186 updateName];
        v184 = v98;
        v183 = 1;
        v97 = v184;
      }

      else
      {
        v97 = @"(null)";
      }

      v95 = v97;
      v96 = [v218[0] currentDownload];
      v93 = v96;
      v94 = [v218[0] currentUpdateOperationType];
      v92 = SUUIUpdateContinuousOperationTypeToString(v94);
      v89 = v92;
      v90 = MEMORY[0x277D82BE0](v89);
      v182 = v90;
      v91 = [v218[0] isTargetedUpdateScheduledForAutoInstall];
      v222 = v91;
      if (v91)
      {
        v2 = @"YES";
      }

      else
      {
        v2 = @"NO";
      }

      v88 = v2;
      v3 = v2;
      v85 = v88;
      v86 = MEMORY[0x277D82BE0](v85);
      v181 = v86;
      v87 = [v218[0] hidingPreferredDescriptor];
      v221 = v87;
      if (v87)
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      v84 = v4;
      v5 = v4;
      v81 = v84;
      v82 = MEMORY[0x277D82BE0](v81);
      v180 = v82;
      v83 = [v218[0] hiddenPreferredStatefulDescriptor];
      v79 = v83;
      v80 = [v79 updateName];
      v76 = v80;
      v77 = MEMORY[0x277D82BE0](v76);
      v179 = v77;
      v78 = [v218[0] hidingAlternateDescriptor];
      v220 = v78;
      if (v78)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v75 = v6;
      v7 = v6;
      v72 = v75;
      v73 = MEMORY[0x277D82BE0](v72);
      v178 = v73;
      v74 = [v218[0] hiddenAlternateStatefulDescriptor];
      v70 = v74;
      v71 = [v70 updateName];
      v67 = v71;
      v68 = MEMORY[0x277D82BE0](v67);
      v177 = v68;
      v175 = 0;
      v69 = [v218[0] enrolledBetaProgram];
      v66 = v69;
      if (v66)
      {
        v65 = [v218[0] enrolledBetaProgram];
        v176 = v65;
        v175 = 1;
        v64 = [v176 programID];
        v63 = v64;
      }

      else
      {
        v63 = 0;
      }

      v61 = v63;
      v62 = [*(v218[0] + 15) count];
      v60 = [v218[0] canEnrollInBetaUpdates];
      v219 = v60;
      if (v60)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v59 = v8;
      v9 = v8;
      v53 = v59;
      v54 = MEMORY[0x277D82BE0](v53);
      v174 = v54;
      v55 = *(v218[0] + 21);
      v56 = *(v218[0] + 22);
      v57 = *(v218[0] + 23);
      v58 = [*(v218[0] + 24) count];
      v51 = v197;
      v52 = [v218[0] currentFullScanOperation];
      v50 = v52;
      v48 = &v13;
      v49 = v225;
      __os_log_helper_16_2_28_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_0_8_0(v225, v156, v127, v122, v119, v120, v110, v108, v106, v104, v102, v95, v93, v90, v86, v82, v77, v73, v68, v61, v62, v54, v55, v56, v57, v58, v197, v50, obj[0]);
      _os_log_impl(&dword_26ADE5000, v125, v126[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nBeginning to refresh the current scan results with scan ID: %{public}@ (full scan FSM: %p, refresh scan FSM: %p)", v49, 0x11Au);
      MEMORY[0x277D82BD8](v50);
      MEMORY[0x277D82BD8](v53);
      if (v175)
      {
        MEMORY[0x277D82BD8](v176);
      }

      MEMORY[0x277D82BD8](v66);
      MEMORY[0x277D82BD8](v67);
      MEMORY[0x277D82BD8](v70);
      MEMORY[0x277D82BD8](v72);
      MEMORY[0x277D82BD8](v76);
      MEMORY[0x277D82BD8](v79);
      MEMORY[0x277D82BD8](v81);
      MEMORY[0x277D82BD8](v85);
      MEMORY[0x277D82BD8](v89);
      MEMORY[0x277D82BD8](v93);
      if (v183)
      {
        MEMORY[0x277D82BD8](v184);
      }

      if (v185)
      {
        MEMORY[0x277D82BD8](v186);
      }

      if (v187)
      {
        MEMORY[0x277D82BD8](v188);
      }

      MEMORY[0x277D82BD8](v101);
      MEMORY[0x277D82BD8](v102);
      MEMORY[0x277D82BD8](v104);
      MEMORY[0x277D82BD8](v106);
      MEMORY[0x277D82BD8](v108);
      if (v189)
      {
        MEMORY[0x277D82BD8](v190);
      }

      if (v191)
      {
        MEMORY[0x277D82BD8](v192);
      }

      MEMORY[0x277D82BD8](v116);
      MEMORY[0x277D82BD8](v118);
      MEMORY[0x277D82BD8](v121);
      objc_storeStrong(&v174, 0);
      objc_storeStrong(&v177, 0);
      objc_storeStrong(&v178, 0);
      objc_storeStrong(&v179, 0);
      objc_storeStrong(&v180, 0);
      objc_storeStrong(&v181, 0);
      objc_storeStrong(&v182, 0);
      objc_storeStrong(&v193, 0);
      objc_storeStrong(&v194, 0);
    }

    objc_storeStrong(&v196, 0);
    v173 = 0uLL;
    v172 = 0uLL;
    v47 = +[SUUILoggingContext statefulUILogger];
    v45 = v47;
    v46 = [v45 oslog];
    v43 = v46;
    *&v44 = _SUUISignpostCreate(v43);
    *(&v44 + 1) = v10;
    v172 = v44;
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v45);
    if (v172)
    {
      v42 = +[SUUILoggingContext statefulUILogger];
      v40 = v42;
      v41 = [v40 oslog];
      v171 = v41;
      MEMORY[0x277D82BD8](v40);
      v170 = 1;
      v169 = v172;
      if (v172 && v169 != -1 && os_signpost_enabled(v171))
      {
        v36 = v171;
        *v37 = v170;
        spid = v169;
        v39 = 1;
        if (!v200)
        {
          v39 = v199 != 0;
        }

        v35 = v224;
        __os_log_helper_16_2_3_4_2_4_2_8_66(v224, v39, v198 != 0, v197);
        _os_signpost_emit_with_name_impl(&dword_26ADE5000, v36, v37[0], spid, "RefreshScan", "Begins refresh scan  HasScanResults=%{public,signpost.telemetry:number1,name=HasScanResults}d  ScanError=%{public,signpost.telemetry:number2,name=ScanError}d  ScanIdentifier=%{public,signpost.telemetry:string1,name=ScanIdentifier}@  enableTelemetry=YES ", v35, 0x18u);
      }

      objc_storeStrong(&v171, 0);
      v34 = +[SUUILoggingContext statefulUILogger];
      v32 = v34;
      v33 = [v32 oslog];
      v168 = v33;
      MEMORY[0x277D82BD8](v32);
      v167 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v168;
        *v29 = v167;
        v30 = v172;
        v31 = 1;
        if (!v200)
        {
          v31 = v199 != 0;
        }

        v27 = v223;
        __os_log_helper_16_2_4_8_0_4_2_4_2_8_66(v223, v30, v31, v198 != 0, v197);
        _os_log_impl(&dword_26ADE5000, v28, v29[0], "BEGIN [%lld]: RefreshScan Begins refresh scan  HasScanResults=%{public,signpost.telemetry:number1,name=HasScanResults}d  ScanError=%{public,signpost.telemetry:number2,name=ScanError}d  ScanIdentifier=%{public,signpost.telemetry:string1,name=ScanIdentifier}@  enableTelemetry=YES ", v27, 0x22u);
      }

      objc_storeStrong(&v168, 0);
    }

    v173 = v172;
    v26 = [v218[0] environment];
    v24 = v26;
    v25 = [v24 scanOperationWithManager:v218[0] identifier:v197 completionQueue:*(v218[0] + 26)];
    v11 = v25;
    v12 = obj[0];
    obj[0] = v11;
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](v24);
    objc_storeStrong(v218[0] + 22, obj[0]);
    v23 = [v218[0] contextForRefreshScanOperation:obj[0] withPreviouslyDiscoveredDownload:0 encounteredError:?];
    v166 = v23;
    v21 = obj[0];
    v22 = [v200 descriptor];
    v19 = v22;
    v20 = [v199 descriptor];
    v16 = v20;
    v17 = v166;
    v158 = MEMORY[0x277D85DD0];
    v159 = -1073741824;
    v160 = 0;
    v161 = __44__SUUIStatefulUIManager_performRefreshScan___block_invoke_445;
    v162 = &unk_279CC66A8;
    v18 = v164;
    objc_copyWeak(v164, v155 + 5);
    v15 = &v158;
    v164[1] = v155[6];
    v165 = v173;
    v14 = v163;
    v163[0] = MEMORY[0x277D82BE0](v155[4]);
    v163[1] = &v208;
    [v21 refreshScanResultsWithPreferredUpdate:v19 alternateUpdate:v16 context:v17 completionHandler:v15];
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v19);
    objc_storeStrong(v14, 0);
    objc_destroyWeak(v18);
    objc_storeStrong(&v166, 0);
    objc_storeStrong(&v197, 0);
    objc_storeStrong(&v198, 0);
    objc_storeStrong(&v199, 0);
    objc_storeStrong(&v200, 0);
    objc_storeStrong(obj, 0);
    _Block_object_dispose(&v208, 8);
    v213 = 0;
  }

  objc_storeStrong(v218, 0);
}

void __44__SUUIStatefulUIManager_performRefreshScan___block_invoke_445(uint64_t a1, void *a2, void *a3)
{
  v70 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v63 = 0;
  objc_storeStrong(&v63, a3);
  v62[1] = a1;
  v62[0] = objc_loadWeakRetained((a1 + 48));
  v27 = 0;
  if (!v62[0])
  {
    v26 = +[SUUILoggingContext softwareUpdateUILogger];
    v61 = [v26 oslog];
    MEMORY[0x277D82BD8](v26);
    v60 = 16;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      log = v61;
      type = v60;
      v25 = NSStringFromSelector(*(a1 + 56));
      v59 = MEMORY[0x277D82BE0](v25);
      __os_log_helper_16_2_2_8_32_8_66(v69, "[SUUIStatefulUIManager performRefreshScan:]_block_invoke", v59);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v69, 0x16u);
      MEMORY[0x277D82BD8](v25);
      objc_storeStrong(&v59, 0);
    }

    objc_storeStrong(&v61, 0);
    v58 = 1;
    v27 = 1;
  }

  if (v27)
  {
    v57 = 1;
  }

  else
  {
    dispatch_assert_queue_V2(*(v62[0] + 26));
    if (v63)
    {
      v4 = *(a1 + 64);
      v44 = 0;
      v42 = 0;
      v16 = 0;
      if (v4)
      {
        v45 = +[SUUILoggingContext statefulUILogger];
        v44 = 1;
        v43 = [v45 oslog];
        v42 = 1;
        v16 = os_signpost_enabled(v43);
      }

      if (v42)
      {
        MEMORY[0x277D82BD8](v43);
      }

      if (v44)
      {
        MEMORY[0x277D82BD8](v45);
      }

      if (v16)
      {
        v41 = _SUUISignpostGetNanoseconds(*(a1 + 64), *(a1 + 72)) / 1000000000.0;
        v15 = +[SUUILoggingContext statefulUILogger];
        v40 = [v15 oslog];
        MEMORY[0x277D82BD8](v15);
        v39 = OS_SIGNPOST_EVENT;
        v38 = *(a1 + 64);
        if (v38 && v38 != -1 && os_signpost_enabled(v40))
        {
          if (v63)
          {
            v14 = [v63 code];
          }

          else
          {
            v14 = 0;
          }

          __os_log_helper_16_0_1_4_2(v67, v14);
          _os_signpost_emit_with_name_impl(&dword_26ADE5000, v40, v39, v38, "RefreshScan", "Refresh scan failed Error=%{public,signpost.telemetry:number1,name=Error}d ", v67, 8u);
        }

        objc_storeStrong(&v40, 0);
        v13 = +[SUUILoggingContext statefulUILogger];
        oslog = [v13 oslog];
        MEMORY[0x277D82BD8](v13);
        v36 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 64);
          v12 = *&v41;
          if (v63)
          {
            v10 = [v63 code];
          }

          else
          {
            v10 = 0;
          }

          __os_log_helper_16_0_3_8_0_8_0_4_2(v66, v11, v12, v10);
          _os_log_impl(&dword_26ADE5000, oslog, v36, "EVENT [%lld] %fs: RefreshScan Refresh scan failed Error=%{public,signpost.telemetry:number1,name=Error}d ", v66, 0x1Cu);
        }

        objc_storeStrong(&oslog, 0);
      }

      [v62[0] setScanError:v63];
      [*(a1 + 32) setError:v63];
      [*(v62[0] + 25) postEvent:@"RefreshScanResultsFailed" withInfo:*(a1 + 32)];
    }

    else
    {
      v3 = *(a1 + 64);
      v55 = 0;
      v53 = 0;
      v22 = 0;
      if (v3)
      {
        v56 = +[SUUILoggingContext statefulUILogger];
        v55 = 1;
        v54 = [v56 oslog];
        v53 = 1;
        v22 = os_signpost_enabled(v54);
      }

      if (v53)
      {
        MEMORY[0x277D82BD8](v54);
      }

      if (v55)
      {
        MEMORY[0x277D82BD8](v56);
      }

      if (v22)
      {
        v52 = _SUUISignpostGetNanoseconds(*(a1 + 64), *(a1 + 72)) / 1000000000.0;
        v21 = +[SUUILoggingContext statefulUILogger];
        v51 = [v21 oslog];
        MEMORY[0x277D82BD8](v21);
        v50 = OS_SIGNPOST_EVENT;
        v49 = *(a1 + 64);
        if (v49 && v49 != -1 && os_signpost_enabled(v51))
        {
          v18 = v51;
          v19 = v50;
          spid = v49;
          __os_log_helper_16_0_0(v48);
          _os_signpost_emit_with_name_impl(&dword_26ADE5000, v18, v19, spid, "RefreshScan", "Refresh scan finished successfully", v48, 2u);
        }

        objc_storeStrong(&v51, 0);
        v17 = +[SUUILoggingContext statefulUILogger];
        v47 = [v17 oslog];
        MEMORY[0x277D82BD8](v17);
        v46 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_0_2_8_0_8_0(v68, *(a1 + 64), *&v52);
          _os_log_impl(&dword_26ADE5000, v47, v46, "EVENT [%lld] %fs: RefreshScan Refresh scan finished successfully", v68, 0x16u);
        }

        objc_storeStrong(&v47, 0);
      }

      [*(a1 + 32) setRefreshScanResults:location[0]];
      [v62[0] handleRefreshScanResults:*(a1 + 32)];
    }

    if (*(a1 + 64))
    {
      v35 = _SUUISignpostGetNanoseconds(*(a1 + 64), *(a1 + 72)) / 1000000000.0;
      v9 = +[SUUILoggingContext statefulUILogger];
      v34 = [v9 oslog];
      MEMORY[0x277D82BD8](v9);
      v33 = 2;
      v32 = *(a1 + 64);
      if (v32 && v32 != -1 && os_signpost_enabled(v34))
      {
        v6 = v34;
        v7 = v33;
        v8 = v32;
        __os_log_helper_16_0_0(v31);
        _os_signpost_emit_with_name_impl(&dword_26ADE5000, v6, v7, v8, "RefreshScan", "", v31, 2u);
      }

      objc_storeStrong(&v34, 0);
      v5 = +[SUUILoggingContext statefulUILogger];
      v30 = [v5 oslog];
      MEMORY[0x277D82BD8](v5);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_2_8_0_8_0(v65, *(a1 + 64), *&v35);
        _os_log_impl(&dword_26ADE5000, v30, OS_LOG_TYPE_DEFAULT, "END [%lld] %fs: RefreshScan ", v65, 0x16u);
      }

      objc_storeStrong(&v30, 0);
    }

    if (*(*(*(a1 + 40) + 8) + 24))
    {
      if (*(*(*(*(a1 + 40) + 8) + 24) + 24))
      {
        os_activity_scope_leave(*(*(*(a1 + 40) + 8) + 24));
      }

      free(*(*(*(a1 + 40) + 8) + 24));
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }

    v57 = 0;
  }

  objc_storeStrong(v62, 0);
  if (!v57)
  {
    v57 = 0;
  }

  objc_storeStrong(&v63, 0);
  objc_storeStrong(location, 0);
}

- (void)notifyRefreshScanResultsDelegates:(id)delegates andError:(id)error
{
  selfCopy = self;
  v19 = a2;
  location = 0;
  objc_storeStrong(&location, delegates);
  v17 = 0;
  objc_storeStrong(&v17, error);
  objc_initWeak(&from, selfCopy);
  mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
  delegateCallbackQueue = [(SUUIStatefulUIManager *)selfCopy delegateCallbackQueue];
  queue = [mEMORY[0x277D643F8] selectDelegateCallbackQueue:?];
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __68__SUUIStatefulUIManager_notifyRefreshScanResultsDelegates_andError___block_invoke;
  v12 = &unk_279CC62A0;
  objc_copyWeak(v15, &from);
  v15[1] = v19;
  v13 = MEMORY[0x277D82BE0](location);
  v14 = MEMORY[0x277D82BE0](v17);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  MEMORY[0x277D82BD8](delegateCallbackQueue);
  MEMORY[0x277D82BD8](mEMORY[0x277D643F8]);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_destroyWeak(v15);
  objc_destroyWeak(&from);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&location, 0);
}

void __68__SUUIStatefulUIManager_notifyRefreshScanResultsDelegates_andError___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v21[2] = a1;
  v21[1] = a1;
  v21[0] = objc_loadWeakRetained((a1 + 48));
  v11 = 0;
  if (!v21[0])
  {
    v10 = +[SUUILoggingContext softwareUpdateUILogger];
    v20 = [v10 oslog];
    MEMORY[0x277D82BD8](v10);
    v19 = 16;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      log = v20;
      type = v19;
      v9 = NSStringFromSelector(*(a1 + 56));
      v18 = MEMORY[0x277D82BE0](v9);
      __os_log_helper_16_2_2_8_32_8_66(v23, "[SUUIStatefulUIManager notifyRefreshScanResultsDelegates:andError:]_block_invoke", v18);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v23, 0x16u);
      MEMORY[0x277D82BD8](v9);
      objc_storeStrong(&v18, 0);
    }

    objc_storeStrong(&v20, 0);
    v17 = 1;
    v11 = 1;
  }

  if (v11)
  {
    v16 = 1;
  }

  else
  {
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](*(v21[0] + 30));
    v6 = [obj countByEnumeratingWithState:__b objects:v22 count:16];
    if (v6)
    {
      v2 = *__b[2];
      v3 = 0;
      v4 = v6;
      while (1)
      {
        v1 = v3;
        if (*__b[2] != v2)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(__b[1] + 8 * v3);
        v13 = MEMORY[0x26D66ADC0](v15);
        if (v13)
        {
          (*(v13 + 2))(v13, *(a1 + 32), *(a1 + 40));
        }

        objc_storeStrong(&v13, 0);
        ++v3;
        if (v1 + 1 >= v4)
        {
          v3 = 0;
          v4 = [obj countByEnumeratingWithState:__b objects:v22 count:16];
          if (!v4)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
    [*(v21[0] + 30) removeAllObjects];
    v16 = 0;
  }

  objc_storeStrong(v21, 0);
}

- (void)handleFullScanResults:(id)results
{
  v3 = MEMORY[0x28223BE20](self, a2, results);
  v439 = &v458;
  v440 = "[SUUIStatefulUIManager handleFullScanResults:]";
  v532 = *MEMORY[0x277D85DE8];
  location[2] = v3;
  location[1] = v4;
  location[0] = 0;
  objc_storeStrong(location, v5);
  fullScanResults = [location[0] fullScanResults];
  v515 = fullScanResults;
  v437 = +[SUUILoggingContext statefulUILogger];
  v435 = v437;
  oslog = [v435 oslog];
  v514 = oslog;
  MEMORY[0x277D82BD8](v435);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v514, OS_LOG_TYPE_DEFAULT))
  {
    log = v439[81];
    *v432 = type;
    v433 = v439[85];
    aClass = objc_opt_class();
    v430 = NSStringFromClass(aClass);
    v427 = v430;
    v6 = MEMORY[0x277D82BE0](v427);
    v7 = v439;
    v428 = v6;
    v439[79] = v6;
    v429 = SUUIStatefulUIStateToString(*(v7[85] + 5));
    v424 = v429;
    v8 = MEMORY[0x277D82BE0](v424);
    v9 = v439;
    v425 = v8;
    v439[78] = v8;
    currentState = [v9[85] currentState];
    delegate = [v439[85] delegate];
    v422 = delegate;
    v510 = 0;
    v509 = 0;
    if (v422)
    {
      delegate2 = [v439[85] delegate];
      v439[77] = delegate2;
      v510 = 1;
      v420 = objc_opt_class();
      v419 = NSStringFromClass(v420);
      v10 = v419;
      v439[75] = v10;
      v509 = 1;
      v418 = v10;
    }

    else
    {
      v418 = @"(null)";
    }

    v416 = v418;
    delegate3 = [v439[85] delegate];
    v414 = delegate3;
    scanError = [v439[85] scanError];
    v412 = scanError;
    preferredStatefulDescriptor = [v439[85] preferredStatefulDescriptor];
    v410 = preferredStatefulDescriptor;
    alternateStatefulDescriptor = [v439[85] alternateStatefulDescriptor];
    v408 = alternateStatefulDescriptor;
    currentDownload = [v439[85] currentDownload];
    v407 = currentDownload;
    v508 = 0;
    v507 = 0;
    v506 = 0;
    if (v407)
    {
      currentDownload2 = [v439[85] currentDownload];
      v11 = currentDownload2;
      v439[73] = v11;
      v508 = 1;
      descriptor = [v11 descriptor];
      v12 = descriptor;
      v439[71] = v12;
      v507 = 1;
      updateName = [v12 updateName];
      v13 = updateName;
      v439[69] = v13;
      v506 = 1;
      v403 = v13;
    }

    else
    {
      v403 = @"(null)";
    }

    v401 = v403;
    currentDownload3 = [v439[85] currentDownload];
    v399 = currentDownload3;
    currentUpdateOperationType = [v439[85] currentUpdateOperationType];
    v398 = SUUIUpdateContinuousOperationTypeToString(currentUpdateOperationType);
    v395 = v398;
    v14 = MEMORY[0x277D82BE0](v395);
    v15 = v439;
    v396 = v14;
    v439[67] = v14;
    isTargetedUpdateScheduledForAutoInstall = [v15[85] isTargetedUpdateScheduledForAutoInstall];
    v528 = isTargetedUpdateScheduledForAutoInstall;
    if (isTargetedUpdateScheduledForAutoInstall)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v394 = v16;
    v17 = v16;
    v391 = v394;
    v18 = MEMORY[0x277D82BE0](v391);
    v19 = v439;
    v392 = v18;
    v439[66] = v18;
    hidingPreferredDescriptor = [v19[85] hidingPreferredDescriptor];
    v527 = hidingPreferredDescriptor;
    if (hidingPreferredDescriptor)
    {
      v20 = @"YES";
    }

    else
    {
      v20 = @"NO";
    }

    v390 = v20;
    v21 = v20;
    v387 = v390;
    v22 = MEMORY[0x277D82BE0](v387);
    v23 = v439;
    v388 = v22;
    v439[65] = v22;
    hiddenPreferredStatefulDescriptor = [v23[85] hiddenPreferredStatefulDescriptor];
    v385 = hiddenPreferredStatefulDescriptor;
    updateName2 = [v385 updateName];
    v382 = updateName2;
    v24 = MEMORY[0x277D82BE0](v382);
    v25 = v439;
    v383 = v24;
    v439[64] = v24;
    hidingAlternateDescriptor = [v25[85] hidingAlternateDescriptor];
    v526 = hidingAlternateDescriptor;
    if (hidingAlternateDescriptor)
    {
      v26 = @"YES";
    }

    else
    {
      v26 = @"NO";
    }

    v381 = v26;
    v27 = v26;
    v378 = v381;
    v28 = MEMORY[0x277D82BE0](v378);
    v29 = v439;
    v379 = v28;
    v439[63] = v28;
    hiddenAlternateStatefulDescriptor = [v29[85] hiddenAlternateStatefulDescriptor];
    v376 = hiddenAlternateStatefulDescriptor;
    updateName3 = [v376 updateName];
    v373 = updateName3;
    v30 = MEMORY[0x277D82BE0](v373);
    v31 = v439;
    v374 = v30;
    v439[62] = v30;
    enrolledBetaProgram = [v31[85] enrolledBetaProgram];
    v372 = enrolledBetaProgram;
    v499 = 0;
    if (v372)
    {
      enrolledBetaProgram2 = [v439[85] enrolledBetaProgram];
      v32 = enrolledBetaProgram2;
      v439[61] = v32;
      v499 = 1;
      programID = [v32 programID];
      v369 = programID;
    }

    else
    {
      v369 = 0;
    }

    v367 = v369;
    v368 = [*(v439[85] + 15) count];
    canEnrollInBetaUpdates = [v439[85] canEnrollInBetaUpdates];
    v525 = canEnrollInBetaUpdates;
    if (canEnrollInBetaUpdates)
    {
      v33 = @"YES";
    }

    else
    {
      v33 = @"NO";
    }

    v365 = v33;
    v34 = v33;
    v359 = v365;
    v35 = MEMORY[0x277D82BE0](v359);
    v36 = v439;
    v360 = v35;
    v439[59] = v35;
    v361 = *(v36[85] + 21);
    v362 = *(v36[85] + 22);
    v363 = *(v36[85] + 23);
    v364 = [*(v36[85] + 24) count];
    identifier = [v439[82] identifier];
    v357 = identifier;
    v37 = v439[82];
    v355 = &v137;
    buf = v531;
    __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66(v531, v440, v433, v428, v425, currentState, v416, v414, v412, v410, v408, v401, v399, v396, v392, v388, v383, v379, v374, v367, v368, v360, v361, v362, v363, v364, v357, v37);
    _os_log_impl(&dword_26ADE5000, log, v432[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFinished to perform a full-scan with ID: %{public}@.\nResults: %{public}@", buf, 0x110u);
    MEMORY[0x277D82BD8](v357);
    MEMORY[0x277D82BD8](v359);
    if (v499)
    {
      MEMORY[0x277D82BD8](v439[61]);
    }

    MEMORY[0x277D82BD8](v372);
    MEMORY[0x277D82BD8](v373);
    MEMORY[0x277D82BD8](v376);
    MEMORY[0x277D82BD8](v378);
    MEMORY[0x277D82BD8](v382);
    MEMORY[0x277D82BD8](v385);
    MEMORY[0x277D82BD8](v387);
    MEMORY[0x277D82BD8](v391);
    MEMORY[0x277D82BD8](v395);
    MEMORY[0x277D82BD8](v399);
    if (v506)
    {
      MEMORY[0x277D82BD8](v439[69]);
    }

    if (v507)
    {
      MEMORY[0x277D82BD8](v439[71]);
    }

    if (v508)
    {
      MEMORY[0x277D82BD8](v439[73]);
    }

    MEMORY[0x277D82BD8](v407);
    MEMORY[0x277D82BD8](v408);
    MEMORY[0x277D82BD8](v410);
    MEMORY[0x277D82BD8](v412);
    MEMORY[0x277D82BD8](v414);
    if (v509)
    {
      MEMORY[0x277D82BD8](v439[75]);
    }

    if (v510)
    {
      MEMORY[0x277D82BD8](v439[77]);
    }

    MEMORY[0x277D82BD8](v422);
    MEMORY[0x277D82BD8](v424);
    MEMORY[0x277D82BD8](v427);
    objc_storeStrong(&v498, 0);
    objc_storeStrong(&v500, 0);
    objc_storeStrong(&v501, 0);
    objc_storeStrong(&v502, 0);
    objc_storeStrong(&v503, 0);
    objc_storeStrong(&v504, 0);
    objc_storeStrong(&v505, 0);
    objc_storeStrong(&v511, 0);
    objc_storeStrong(&v512, 0);
  }

  objc_storeStrong(&v514, 0);
  objc_initWeak(&from, v439[85]);
  preferredStatefulDescriptor2 = [v439[85] preferredStatefulDescriptor];
  v38 = preferredStatefulDescriptor2;
  v39 = v439;
  v439[57] = v38;
  alternateStatefulDescriptor2 = [v39[85] alternateStatefulDescriptor];
  v40 = alternateStatefulDescriptor2;
  v41 = v439;
  v439[54] = v40;
  currentUpdateOperation = [v41[85] currentUpdateOperation];
  v42 = currentUpdateOperation;
  v43 = v439;
  v439[53] = v42;
  scanError2 = [v43[85] scanError];
  v44 = scanError2;
  v45 = v439;
  v439[52] = v44;
  if (v45[53])
  {
    v46 = v439[82];
    v492 = 0;
    isEmptyScanResults = [v46 isEmptyScanResults];
    v349 = 0;
    if (isEmptyScanResults)
    {
      currentDownload4 = [v439[82] currentDownload];
      v47 = currentDownload4;
      v439[51] = v47;
      v492 = 1;
      v349 = v47 == 0;
    }

    v347 = v349;
    if (v492)
    {
      MEMORY[0x277D82BD8](v439[51]);
    }

    if (v347)
    {
      v346 = +[SUUILoggingContext statefulUILogger];
      v344 = v346;
      oslog2 = [v344 oslog];
      v48 = oslog2;
      v49 = v344;
      v439[49] = v48;
      MEMORY[0x277D82BD8](v49);
      v490 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v439[49], OS_LOG_TYPE_DEFAULT))
      {
        v340 = v439[49];
        *v341 = v490;
        v342 = v439[85];
        v343 = objc_opt_class();
        v339 = NSStringFromClass(v343);
        v336 = v339;
        v50 = MEMORY[0x277D82BE0](v336);
        v51 = v439;
        v337 = v50;
        v439[47] = v50;
        v338 = SUUIStatefulUIStateToString(*(v51[85] + 5));
        v333 = v338;
        v52 = MEMORY[0x277D82BE0](v333);
        v53 = v439;
        v334 = v52;
        v439[46] = v52;
        currentState2 = [v53[85] currentState];
        v54 = v439[85];
        v487 = 0;
        v486 = 0;
        delegate4 = [v54 delegate];
        v331 = delegate4;
        if (v331)
        {
          delegate5 = [v439[85] delegate];
          v55 = delegate5;
          v439[45] = v55;
          v487 = 1;
          v329 = objc_opt_class();
          v328 = NSStringFromClass(v329);
          v56 = v328;
          v439[43] = v56;
          v486 = 1;
          v327 = v56;
        }

        else
        {
          v327 = @"(null)";
        }

        v325 = v327;
        delegate6 = [v439[85] delegate];
        v323 = delegate6;
        scanError3 = [v439[85] scanError];
        v321 = scanError3;
        preferredStatefulDescriptor3 = [v439[85] preferredStatefulDescriptor];
        v319 = preferredStatefulDescriptor3;
        alternateStatefulDescriptor3 = [v439[85] alternateStatefulDescriptor];
        v317 = alternateStatefulDescriptor3;
        v57 = v439[85];
        v485 = 0;
        v484 = 0;
        v483 = 0;
        currentDownload5 = [v57 currentDownload];
        v316 = currentDownload5;
        if (v316)
        {
          currentDownload6 = [v439[85] currentDownload];
          v58 = currentDownload6;
          v439[41] = v58;
          v485 = 1;
          descriptor2 = [v58 descriptor];
          v59 = descriptor2;
          v439[39] = v59;
          v484 = 1;
          updateName4 = [v59 updateName];
          v60 = updateName4;
          v439[37] = v60;
          v483 = 1;
          v312 = v60;
        }

        else
        {
          v312 = @"(null)";
        }

        v310 = v312;
        currentDownload7 = [v439[85] currentDownload];
        v308 = currentDownload7;
        currentUpdateOperationType2 = [v439[85] currentUpdateOperationType];
        v307 = SUUIUpdateContinuousOperationTypeToString(currentUpdateOperationType2);
        v304 = v307;
        v61 = MEMORY[0x277D82BE0](v304);
        v62 = v439;
        v305 = v61;
        v439[35] = v61;
        isTargetedUpdateScheduledForAutoInstall2 = [v62[85] isTargetedUpdateScheduledForAutoInstall];
        v524 = isTargetedUpdateScheduledForAutoInstall2;
        if (isTargetedUpdateScheduledForAutoInstall2)
        {
          v63 = @"YES";
        }

        else
        {
          v63 = @"NO";
        }

        v303 = v63;
        v64 = v63;
        v300 = v303;
        v65 = MEMORY[0x277D82BE0](v300);
        v66 = v439;
        v301 = v65;
        v439[34] = v65;
        hidingPreferredDescriptor2 = [v66[85] hidingPreferredDescriptor];
        v523 = hidingPreferredDescriptor2;
        if (hidingPreferredDescriptor2)
        {
          v67 = @"YES";
        }

        else
        {
          v67 = @"NO";
        }

        v299 = v67;
        v68 = v67;
        v296 = v299;
        v69 = MEMORY[0x277D82BE0](v296);
        v70 = v439;
        v297 = v69;
        v439[33] = v69;
        hiddenPreferredStatefulDescriptor2 = [v70[85] hiddenPreferredStatefulDescriptor];
        v294 = hiddenPreferredStatefulDescriptor2;
        updateName5 = [v294 updateName];
        v291 = updateName5;
        v71 = MEMORY[0x277D82BE0](v291);
        v72 = v439;
        v292 = v71;
        v439[32] = v71;
        hidingAlternateDescriptor2 = [v72[85] hidingAlternateDescriptor];
        v522 = hidingAlternateDescriptor2;
        if (hidingAlternateDescriptor2)
        {
          v73 = @"YES";
        }

        else
        {
          v73 = @"NO";
        }

        v290 = v73;
        v74 = v73;
        v287 = v290;
        v75 = MEMORY[0x277D82BE0](v287);
        v76 = v439;
        v288 = v75;
        v439[31] = v75;
        hiddenAlternateStatefulDescriptor2 = [v76[85] hiddenAlternateStatefulDescriptor];
        v285 = hiddenAlternateStatefulDescriptor2;
        updateName6 = [v285 updateName];
        v282 = updateName6;
        v77 = MEMORY[0x277D82BE0](v282);
        v78 = v439;
        v283 = v77;
        v439[30] = v77;
        v79 = v78[85];
        v476 = 0;
        enrolledBetaProgram3 = [v79 enrolledBetaProgram];
        v281 = enrolledBetaProgram3;
        if (v281)
        {
          enrolledBetaProgram4 = [v439[85] enrolledBetaProgram];
          v80 = enrolledBetaProgram4;
          v439[29] = v80;
          v476 = 1;
          programID2 = [v80 programID];
          v278 = programID2;
        }

        else
        {
          v278 = 0;
        }

        v276 = v278;
        v277 = [*(v439[85] + 15) count];
        canEnrollInBetaUpdates2 = [v439[85] canEnrollInBetaUpdates];
        v521 = canEnrollInBetaUpdates2;
        if (canEnrollInBetaUpdates2)
        {
          v81 = @"YES";
        }

        else
        {
          v81 = @"NO";
        }

        v274 = v81;
        v82 = v81;
        v268 = v274;
        v83 = MEMORY[0x277D82BE0](v268);
        v84 = v439;
        v269 = v83;
        v439[27] = v83;
        v270 = *(v84[85] + 21);
        v271 = *(v84[85] + 22);
        v272 = *(v84[85] + 23);
        v273 = [*(v84[85] + 24) count];
        v266 = &v137;
        v267 = v530;
        __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v530, v440, v342, v337, v334, currentState2, v325, v323, v321, v319, v317, v310, v308, v305, v301, v297, v292, v288, v283, v276, v277, v269, v270, v271, v272, v273);
        _os_log_impl(&dword_26ADE5000, v340, v341[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nThe full scan yielded empty scan results - cancelling the currently active update operation", v267, 0xFCu);
        MEMORY[0x277D82BD8](v268);
        if (v476)
        {
          MEMORY[0x277D82BD8](v439[29]);
        }

        MEMORY[0x277D82BD8](v281);
        MEMORY[0x277D82BD8](v282);
        MEMORY[0x277D82BD8](v285);
        MEMORY[0x277D82BD8](v287);
        MEMORY[0x277D82BD8](v291);
        MEMORY[0x277D82BD8](v294);
        MEMORY[0x277D82BD8](v296);
        MEMORY[0x277D82BD8](v300);
        MEMORY[0x277D82BD8](v304);
        MEMORY[0x277D82BD8](v308);
        if (v483)
        {
          MEMORY[0x277D82BD8](v439[37]);
        }

        if (v484)
        {
          MEMORY[0x277D82BD8](v439[39]);
        }

        if (v485)
        {
          MEMORY[0x277D82BD8](v439[41]);
        }

        MEMORY[0x277D82BD8](v316);
        MEMORY[0x277D82BD8](v317);
        MEMORY[0x277D82BD8](v319);
        MEMORY[0x277D82BD8](v321);
        MEMORY[0x277D82BD8](v323);
        if (v486)
        {
          MEMORY[0x277D82BD8](v439[43]);
        }

        if (v487)
        {
          MEMORY[0x277D82BD8](v439[45]);
        }

        MEMORY[0x277D82BD8](v331);
        MEMORY[0x277D82BD8](v333);
        MEMORY[0x277D82BD8](v336);
        objc_storeStrong(&v475, 0);
        objc_storeStrong(&v477, 0);
        objc_storeStrong(&v478, 0);
        objc_storeStrong(&v479, 0);
        objc_storeStrong(&v480, 0);
        objc_storeStrong(&v481, 0);
        objc_storeStrong(&v482, 0);
        objc_storeStrong(&v488, 0);
        objc_storeStrong(&v489, 0);
      }

      objc_storeStrong(&v491, 0);
      v85 = v439;
      v264 = v439[53];
      v439[21] = MEMORY[0x277D85DD0];
      v472 = -1073741824;
      v473 = 0;
      v85[23] = __47__SUUIStatefulUIManager_handleFullScanResults___block_invoke;
      v85[24] = &unk_279CC6610;
      v265 = v474;
      objc_copyWeak(v474, &from);
      v86 = v264;
      v439[26] = v439[84];
      [v86 cancel:v471];
      objc_destroyWeak(v265);
    }

    else
    {
      v262 = v439[57];
      v87 = v439[82];
      v470 = 0;
      v469 = 0;
      v468 = 0;
      preferredDescriptor = [v87 preferredDescriptor];
      v260 = preferredDescriptor;
      v261 = [v262 isEqualToDescriptor:? includeDocumentationComparison:?];
      if (v261 & 1) != 0 || (v258 = v439[57], v259 = [v439[82] alternateDescriptor], v88 = v259, v89 = v258, v439[20] = v88, v470 = 1, v257 = objc_msgSend(v89, "isEqualToDescriptor:includeDocumentationComparison:"), v256 = 1, (v257))
      {
        v254 = v439[54];
        preferredDescriptor2 = [v439[82] preferredDescriptor];
        v90 = preferredDescriptor2;
        v91 = v254;
        v439[18] = v90;
        v469 = 1;
        v253 = [v91 isEqualToDescriptor:? includeDocumentationComparison:?];
        v252 = 0;
        if ((v253 & 1) == 0)
        {
          v250 = v439[54];
          alternateDescriptor = [v439[82] alternateDescriptor];
          v92 = alternateDescriptor;
          v93 = v250;
          v439[16] = v92;
          v468 = 1;
          v249 = [v93 isEqualToDescriptor:? includeDocumentationComparison:?];
          v252 = v249 ^ 1;
        }

        v256 = v252;
      }

      v248 = v256;
      if (v468)
      {
        MEMORY[0x277D82BD8](v439[16]);
      }

      if (v469)
      {
        MEMORY[0x277D82BD8](v439[18]);
      }

      if (v470)
      {
        MEMORY[0x277D82BD8](v439[20]);
      }

      MEMORY[0x277D82BD8](v260);
      if (v248)
      {
        v247 = +[SUUILoggingContext statefulUILogger];
        v245 = v247;
        oslog3 = [v245 oslog];
        v94 = oslog3;
        v95 = v245;
        v439[14] = v94;
        MEMORY[0x277D82BD8](v95);
        v466 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v439[14], OS_LOG_TYPE_DEFAULT))
        {
          v241 = v439[14];
          *v242 = v466;
          v243 = v439[85];
          v244 = objc_opt_class();
          v240 = NSStringFromClass(v244);
          v237 = v240;
          v96 = MEMORY[0x277D82BE0](v237);
          v97 = v439;
          v238 = v96;
          v439[12] = v96;
          v239 = SUUIStatefulUIStateToString(*(v97[85] + 5));
          v234 = v239;
          v98 = MEMORY[0x277D82BE0](v234);
          v99 = v439;
          v235 = v98;
          v439[11] = v98;
          currentState3 = [v99[85] currentState];
          v100 = v439[85];
          v463 = 0;
          v462 = 0;
          delegate7 = [v100 delegate];
          v232 = delegate7;
          if (v232)
          {
            delegate8 = [v439[85] delegate];
            v101 = delegate8;
            v439[10] = v101;
            v463 = 1;
            v230 = objc_opt_class();
            v229 = NSStringFromClass(v230);
            v102 = v229;
            v439[8] = v102;
            v462 = 1;
            v228 = v102;
          }

          else
          {
            v228 = @"(null)";
          }

          v226 = v228;
          delegate9 = [v439[85] delegate];
          v224 = delegate9;
          scanError4 = [v439[85] scanError];
          v222 = scanError4;
          preferredStatefulDescriptor4 = [v439[85] preferredStatefulDescriptor];
          v220 = preferredStatefulDescriptor4;
          alternateStatefulDescriptor4 = [v439[85] alternateStatefulDescriptor];
          v218 = alternateStatefulDescriptor4;
          v103 = v439[85];
          v461 = 0;
          v460 = 0;
          v459 = 0;
          currentDownload8 = [v103 currentDownload];
          v217 = currentDownload8;
          if (v217)
          {
            currentDownload9 = [v439[85] currentDownload];
            v104 = currentDownload9;
            v439[6] = v104;
            v461 = 1;
            descriptor3 = [v104 descriptor];
            v105 = descriptor3;
            v439[4] = v105;
            v460 = 1;
            updateName7 = [v105 updateName];
            v106 = updateName7;
            v439[2] = v106;
            v459 = 1;
            v213 = v106;
          }

          else
          {
            v213 = @"(null)";
          }

          v211 = v213;
          currentDownload10 = [v439[85] currentDownload];
          v209 = currentDownload10;
          currentUpdateOperationType3 = [v439[85] currentUpdateOperationType];
          v208 = SUUIUpdateContinuousOperationTypeToString(currentUpdateOperationType3);
          v205 = v208;
          v107 = MEMORY[0x277D82BE0](v205);
          v108 = v439;
          v206 = v107;
          *v439 = v107;
          isTargetedUpdateScheduledForAutoInstall3 = [v108[85] isTargetedUpdateScheduledForAutoInstall];
          v520 = isTargetedUpdateScheduledForAutoInstall3;
          if (isTargetedUpdateScheduledForAutoInstall3)
          {
            v109 = @"YES";
          }

          else
          {
            v109 = @"NO";
          }

          v204 = v109;
          v110 = v109;
          v201 = v204;
          v202 = MEMORY[0x277D82BE0](v201);
          v457 = v202;
          hidingPreferredDescriptor3 = [v439[85] hidingPreferredDescriptor];
          v519 = hidingPreferredDescriptor3;
          if (hidingPreferredDescriptor3)
          {
            v111 = @"YES";
          }

          else
          {
            v111 = @"NO";
          }

          v200 = v111;
          v112 = v111;
          v197 = v200;
          v198 = MEMORY[0x277D82BE0](v197);
          v456 = v198;
          hiddenPreferredStatefulDescriptor3 = [v439[85] hiddenPreferredStatefulDescriptor];
          v195 = hiddenPreferredStatefulDescriptor3;
          updateName8 = [v195 updateName];
          v192 = updateName8;
          v193 = MEMORY[0x277D82BE0](v192);
          v455 = v193;
          hidingAlternateDescriptor3 = [v439[85] hidingAlternateDescriptor];
          v518 = hidingAlternateDescriptor3;
          if (hidingAlternateDescriptor3)
          {
            v113 = @"YES";
          }

          else
          {
            v113 = @"NO";
          }

          v191 = v113;
          v114 = v113;
          v188 = v191;
          v189 = MEMORY[0x277D82BE0](v188);
          v454 = v189;
          hiddenAlternateStatefulDescriptor3 = [v439[85] hiddenAlternateStatefulDescriptor];
          v186 = hiddenAlternateStatefulDescriptor3;
          updateName9 = [v186 updateName];
          v183 = updateName9;
          v184 = MEMORY[0x277D82BE0](v183);
          v453 = v184;
          v115 = v439[85];
          v451 = 0;
          enrolledBetaProgram5 = [v115 enrolledBetaProgram];
          v182 = enrolledBetaProgram5;
          if (v182)
          {
            enrolledBetaProgram6 = [v439[85] enrolledBetaProgram];
            v452 = enrolledBetaProgram6;
            v451 = 1;
            programID3 = [v452 programID];
            v179 = programID3;
          }

          else
          {
            v179 = 0;
          }

          v177 = v179;
          v178 = [*(v439[85] + 15) count];
          canEnrollInBetaUpdates3 = [v439[85] canEnrollInBetaUpdates];
          v517 = canEnrollInBetaUpdates3;
          if (canEnrollInBetaUpdates3)
          {
            v116 = @"YES";
          }

          else
          {
            v116 = @"NO";
          }

          v175 = v116;
          v117 = v116;
          v169 = v175;
          v170 = MEMORY[0x277D82BE0](v169);
          v450 = v170;
          v171 = *(v439[85] + 21);
          v172 = *(v439[85] + 22);
          v173 = *(v439[85] + 23);
          v174 = [*(v439[85] + 24) count];
          preferredDescriptor3 = [v439[82] preferredDescriptor];
          v166 = preferredDescriptor3;
          updateName10 = [v166 updateName];
          v163 = updateName10;
          v164 = MEMORY[0x277D82BE0](v163);
          v449 = v164;
          alternateDescriptor2 = [v439[82] alternateDescriptor];
          v161 = alternateDescriptor2;
          updateName11 = [v161 updateName];
          v118 = v189;
          v119 = v193;
          v120 = v198;
          v121 = v202;
          v122 = v206;
          v123 = v209;
          v124 = v211;
          v125 = v218;
          v126 = v220;
          v127 = v222;
          v160 = updateName11;
          v448 = MEMORY[0x277D82BE0](v160);
          v158 = &v137;
          v159 = v529;
          __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66(v529, v440, v243, v238, v235, currentState3, v226, v224, v127, v126, v125, v124, v123, v122, v121, v120, v119, v118, v184, v177, v178, v170, v171, v172, v173, v174, v164, v448);
          _os_log_impl(&dword_26ADE5000, v241, v242[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nThe full scan yielded results that are different than the previously discovered results - cancelling the currently active update operation.\n\tresults.preferredDescriptor: %{public}@\n\tresults.alternateDescriptor: %{public}@", v159, 0x110u);
          MEMORY[0x277D82BD8](v160);
          MEMORY[0x277D82BD8](v161);
          MEMORY[0x277D82BD8](v163);
          MEMORY[0x277D82BD8](v166);
          MEMORY[0x277D82BD8](v169);
          if (v451)
          {
            MEMORY[0x277D82BD8](v452);
          }

          MEMORY[0x277D82BD8](v182);
          MEMORY[0x277D82BD8](v183);
          MEMORY[0x277D82BD8](v186);
          MEMORY[0x277D82BD8](v188);
          MEMORY[0x277D82BD8](v192);
          MEMORY[0x277D82BD8](v195);
          MEMORY[0x277D82BD8](v197);
          MEMORY[0x277D82BD8](v201);
          MEMORY[0x277D82BD8](v205);
          MEMORY[0x277D82BD8](v209);
          if (v459)
          {
            MEMORY[0x277D82BD8](v439[2]);
          }

          if (v460)
          {
            MEMORY[0x277D82BD8](v439[4]);
          }

          if (v461)
          {
            MEMORY[0x277D82BD8](v439[6]);
          }

          MEMORY[0x277D82BD8](v217);
          MEMORY[0x277D82BD8](v218);
          MEMORY[0x277D82BD8](v220);
          MEMORY[0x277D82BD8](v222);
          MEMORY[0x277D82BD8](v224);
          if (v462)
          {
            MEMORY[0x277D82BD8](v439[8]);
          }

          if (v463)
          {
            MEMORY[0x277D82BD8](v439[10]);
          }

          MEMORY[0x277D82BD8](v232);
          MEMORY[0x277D82BD8](v234);
          MEMORY[0x277D82BD8](v237);
          objc_storeStrong(&v448, 0);
          objc_storeStrong(&v449, 0);
          objc_storeStrong(&v450, 0);
          objc_storeStrong(&v453, 0);
          objc_storeStrong(&v454, 0);
          objc_storeStrong(&v455, 0);
          objc_storeStrong(&v456, 0);
          objc_storeStrong(&v457, 0);
          objc_storeStrong(&v458, 0);
          objc_storeStrong(&v464, 0);
          objc_storeStrong(&v465, 0);
        }

        objc_storeStrong(&v467, 0);
        v156 = v439[53];
        v442 = MEMORY[0x277D85DD0];
        v443 = -1073741824;
        v444 = 0;
        v445 = __47__SUUIStatefulUIManager_handleFullScanResults___block_invoke_447;
        v446 = &unk_279CC6610;
        v157 = v447;
        objc_copyWeak(v447, &from);
        v447[1] = v439[84];
        [v156 cancel:&v442];
        objc_destroyWeak(v157);
      }
    }
  }

  v154 = v439[85];
  fullScanResults2 = [v439[83] fullScanResults];
  v153 = fullScanResults2;
  [v154 assignFullScanResults:?];
  MEMORY[0x277D82BD8](v153);
  preferredStatefulDescriptor5 = [v439[85] preferredStatefulDescriptor];
  v128 = preferredStatefulDescriptor5;
  v129 = v439[57];
  v439[57] = v128;
  MEMORY[0x277D82BD8](v129);
  alternateStatefulDescriptor5 = [v439[85] alternateStatefulDescriptor];
  v130 = alternateStatefulDescriptor5;
  v131 = v439[54];
  v439[54] = v130;
  MEMORY[0x277D82BD8](v131);
  currentUpdateOperation2 = [v439[85] currentUpdateOperation];
  v132 = currentUpdateOperation2;
  v133 = v439[53];
  v439[53] = v132;
  MEMORY[0x277D82BD8](v133);
  scanError5 = [v439[85] scanError];
  v134 = scanError5;
  v135 = v439[52];
  v439[52] = v134;
  MEMORY[0x277D82BD8](v135);
  if (v439[52])
  {
    traits = [v439[52] traits];
    v146 = traits;
    noUpdateFound = [v146 noUpdateFound];
    MEMORY[0x277D82BD8](v146);
    if (noUpdateFound)
    {
      [v439[85] clearPastScanResults];
    }

    [*(v439[85] + 25) postEvent:@"FullScanNoUpdateAvailable" withInfo:v439[83]];
    v441 = 1;
  }

  else
  {
    isEmptyScanResults2 = [v439[82] isEmptyScanResults];
    if (isEmptyScanResults2)
    {
      currentDownload11 = [v439[85] currentDownload];
      v140 = currentDownload11;
      v141 = 0;
      if (v140)
      {
        v136 = v439[57];
        v139 = 1;
        if (!v136)
        {
          v139 = v439[54] != 0;
        }

        v141 = v139;
      }

      v138 = v141;
      MEMORY[0x277D82BD8](v140);
      if (v138)
      {
        [v439[85] updateDescriptorsUsingScanResults:v439[82] andWithConcreteError:0];
        [*(v439[85] + 25) postEvent:@"FullScanUpdatesAvailable" withInfo:v439[83]];
        v441 = 1;
      }

      else
      {
        [v439[85] clearPastScanResults];
        [*(v439[85] + 25) postEvent:@"FullScanNoUpdateAvailable" withInfo:v439[83]];
        v441 = 0;
      }
    }

    else
    {
      [v439[85] assignDescriptorOfType:0 fromSearchResults:v439[82]];
      [v439[85] assignDescriptorOfType:1 fromSearchResults:v439[82]];
      [v439[85] setHiddenPreferredStatefulDescriptor:0];
      [v439[85] setHiddenAlternateStatefulDescriptor:0];
      [v439[85] setHidingPreferredDescriptor:0];
      [v439[85] setHidingAlternateDescriptor:0];
      currentDownload12 = [v439[85] currentDownload];
      v143 = currentDownload12;
      MEMORY[0x277D82BD8](v143);
      if (v143)
      {
        [v439[85] hideNonTargetedUpdateDescriptors];
      }

      [*(v439[85] + 25) postEvent:@"FullScanUpdatesAvailable" withInfo:v439[83]];
      v441 = 1;
    }
  }

  objc_storeStrong(&v493, 0);
  objc_storeStrong(&v494, 0);
  objc_storeStrong(&v495, 0);
  objc_storeStrong(&v496, 0);
  objc_destroyWeak(&from);
  objc_storeStrong(&v515, 0);
  objc_storeStrong(location, 0);
}

void __47__SUUIStatefulUIManager_handleFullScanResults___block_invoke(uint64_t a1, char a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v12 = a2;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 32));
  v6 = 0;
  if (!v11[0])
  {
    v5 = +[SUUILoggingContext softwareUpdateUILogger];
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 40));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v14, "[SUUIStatefulUIManager handleFullScanResults:]_block_invoke", v8);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v14, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v10, 0);
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    [v11[0] setCurrentUpdateOperation:0];
  }

  objc_storeStrong(v11, 0);
}

void __47__SUUIStatefulUIManager_handleFullScanResults___block_invoke_447(uint64_t a1, char a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v12 = a2;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 32));
  v6 = 0;
  if (!v11[0])
  {
    v5 = +[SUUILoggingContext softwareUpdateUILogger];
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 40));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v14, "[SUUIStatefulUIManager handleFullScanResults:]_block_invoke", v8);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v14, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v10, 0);
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    [v11[0] setCurrentUpdateOperation:0];
  }

  objc_storeStrong(v11, 0);
}

- (void)handleFailedFullScan:(id)scan
{
  v121 = "[SUUIStatefulUIManager handleFailedFullScan:]";
  v176 = *MEMORY[0x277D85DE8];
  val = self;
  v167 = a2;
  location = 0;
  objc_storeStrong(&location, scan);
  v120 = +[SUUILoggingContext statefulUILogger];
  v118 = v120;
  oslog = [v118 oslog];
  oslog = oslog;
  MEMORY[0x277D82BD8](v118);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v115 = type;
    v116 = val;
    aClass = objc_opt_class();
    v113 = NSStringFromClass(aClass);
    v110 = v113;
    v111 = MEMORY[0x277D82BE0](v110);
    v163 = v111;
    v112 = SUUIStatefulUIStateToString(*(val + 5));
    v107 = v112;
    v108 = MEMORY[0x277D82BE0](v107);
    v162 = v108;
    currentState = [val currentState];
    delegate = [val delegate];
    v105 = delegate;
    v160 = 0;
    v158 = 0;
    if (v105)
    {
      delegate2 = [val delegate];
      v161 = delegate2;
      v160 = 1;
      v103 = objc_opt_class();
      v102 = NSStringFromClass(v103);
      v159 = v102;
      v158 = 1;
      v101 = v159;
    }

    else
    {
      v101 = @"(null)";
    }

    v99 = v101;
    delegate3 = [val delegate];
    v97 = delegate3;
    scanError = [val scanError];
    v95 = scanError;
    preferredStatefulDescriptor = [val preferredStatefulDescriptor];
    v93 = preferredStatefulDescriptor;
    alternateStatefulDescriptor = [val alternateStatefulDescriptor];
    v91 = alternateStatefulDescriptor;
    currentDownload = [val currentDownload];
    v90 = currentDownload;
    v156 = 0;
    v154 = 0;
    v152 = 0;
    if (v90)
    {
      currentDownload2 = [val currentDownload];
      v157 = currentDownload2;
      v156 = 1;
      descriptor = [v157 descriptor];
      v155 = descriptor;
      v154 = 1;
      updateName = [v155 updateName];
      v153 = updateName;
      v152 = 1;
      v86 = v153;
    }

    else
    {
      v86 = @"(null)";
    }

    v84 = v86;
    currentDownload3 = [val currentDownload];
    v82 = currentDownload3;
    currentUpdateOperationType = [val currentUpdateOperationType];
    v81 = SUUIUpdateContinuousOperationTypeToString(currentUpdateOperationType);
    v78 = v81;
    v79 = MEMORY[0x277D82BE0](v78);
    v151 = v79;
    isTargetedUpdateScheduledForAutoInstall = [val isTargetedUpdateScheduledForAutoInstall];
    v172 = isTargetedUpdateScheduledForAutoInstall;
    if (isTargetedUpdateScheduledForAutoInstall)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v77 = v3;
    v4 = v3;
    v74 = v77;
    v75 = MEMORY[0x277D82BE0](v74);
    v150 = v75;
    hidingPreferredDescriptor = [val hidingPreferredDescriptor];
    v171 = hidingPreferredDescriptor;
    if (hidingPreferredDescriptor)
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    v73 = v5;
    v6 = v5;
    v70 = v73;
    v71 = MEMORY[0x277D82BE0](v70);
    v149 = v71;
    hiddenPreferredStatefulDescriptor = [val hiddenPreferredStatefulDescriptor];
    v68 = hiddenPreferredStatefulDescriptor;
    updateName2 = [v68 updateName];
    v65 = updateName2;
    v66 = MEMORY[0x277D82BE0](v65);
    v148 = v66;
    hidingAlternateDescriptor = [val hidingAlternateDescriptor];
    v170 = hidingAlternateDescriptor;
    if (hidingAlternateDescriptor)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v64 = v7;
    v8 = v7;
    v61 = v64;
    v62 = MEMORY[0x277D82BE0](v61);
    v147 = v62;
    hiddenAlternateStatefulDescriptor = [val hiddenAlternateStatefulDescriptor];
    v59 = hiddenAlternateStatefulDescriptor;
    updateName3 = [v59 updateName];
    v56 = updateName3;
    v57 = MEMORY[0x277D82BE0](v56);
    v146 = v57;
    enrolledBetaProgram = [val enrolledBetaProgram];
    v55 = enrolledBetaProgram;
    v144 = 0;
    if (v55)
    {
      enrolledBetaProgram2 = [val enrolledBetaProgram];
      v145 = enrolledBetaProgram2;
      v144 = 1;
      programID = [v145 programID];
      v52 = programID;
    }

    else
    {
      v52 = 0;
    }

    v50 = v52;
    v51 = [*(val + 15) count];
    canEnrollInBetaUpdates = [val canEnrollInBetaUpdates];
    v169 = canEnrollInBetaUpdates;
    if (canEnrollInBetaUpdates)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v48 = v9;
    v10 = v9;
    v42 = v48;
    v43 = MEMORY[0x277D82BE0](v42);
    v143 = v43;
    v44 = *(val + 21);
    v45 = *(val + 22);
    v46 = *(val + 23);
    v47 = [*(val + 24) count];
    error = [location error];
    v40 = error;
    v38 = &v12;
    buf = v175;
    __os_log_helper_16_2_26_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66(v175, v121, v116, v111, v108, currentState, v99, v97, v95, v93, v91, v84, v82, v79, v75, v71, v66, v62, v57, v50, v51, v43, v44, v45, v46, v47, v40);
    _os_log_impl(&dword_26ADE5000, log, v115[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFinished to perform a full-scan with error: %{public}@", buf, 0x106u);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v42);
    if (v144)
    {
      MEMORY[0x277D82BD8](v145);
    }

    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](v70);
    MEMORY[0x277D82BD8](v74);
    MEMORY[0x277D82BD8](v78);
    MEMORY[0x277D82BD8](v82);
    if (v152)
    {
      MEMORY[0x277D82BD8](v153);
    }

    if (v154)
    {
      MEMORY[0x277D82BD8](v155);
    }

    if (v156)
    {
      MEMORY[0x277D82BD8](v157);
    }

    MEMORY[0x277D82BD8](v90);
    MEMORY[0x277D82BD8](v91);
    MEMORY[0x277D82BD8](v93);
    MEMORY[0x277D82BD8](v95);
    MEMORY[0x277D82BD8](v97);
    if (v158)
    {
      MEMORY[0x277D82BD8](v159);
    }

    if (v160)
    {
      MEMORY[0x277D82BD8](v161);
    }

    MEMORY[0x277D82BD8](v105);
    MEMORY[0x277D82BD8](v107);
    MEMORY[0x277D82BD8](v110);
    objc_storeStrong(&v143, 0);
    objc_storeStrong(&v146, 0);
    objc_storeStrong(&v147, 0);
    objc_storeStrong(&v148, 0);
    objc_storeStrong(&v149, 0);
    objc_storeStrong(&v150, 0);
    objc_storeStrong(&v151, 0);
    objc_storeStrong(&v162, 0);
    objc_storeStrong(&v163, 0);
  }

  objc_storeStrong(&oslog, 0);
  objc_initWeak(&from, val);
  [val clearPastScanResults];
  error2 = [location error];
  v141 = error2;
  [val setScanError:v141];
  traits = [v141 traits];
  v34 = traits;
  networkUnavailable = [v34 networkUnavailable];
  MEMORY[0x277D82BD8](v34);
  if ((networkUnavailable & 1) == 0)
  {
    v15 = val;
    v122 = MEMORY[0x277D85DD0];
    v123 = -1073741824;
    v124 = 0;
    v125 = __46__SUUIStatefulUIManager_handleFailedFullScan___block_invoke_448;
    v126 = &unk_279CC66D0;
    v16 = v128;
    objc_copyWeak(v128, &from);
    v14 = &v122;
    v128[1] = v167;
    v13 = &v127;
    v127 = MEMORY[0x277D82BE0](location);
    [v15 refreshBetaUpdates:v14 withRecheckForAvailableUpdates:0];
    objc_storeStrong(v13, 0);
    objc_destroyWeak(v16);
    goto LABEL_49;
  }

  v140 = 0;
  retries = [location retries];
  v11 = __OFSUB__(retries, 1);
  v140 = retries - 1;
  v173 = v11 || retries - 1 != (retries - 1);
  v32 = v173;
  v139 = v173;
  if (v173)
  {
    v31 = 0;
  }

  else
  {
    v31 = v140;
  }

  [location setRetries:v31];
  retries2 = [location retries];
  if (retries2 <= 0)
  {
    [*(val + 25) postEvent:@"FullScanFailed" withInfo:location];
LABEL_49:
    v129 = 0;
    goto LABEL_50;
  }

  v29 = +[SUUILoggingContext statefulUILogger];
  v27 = v29;
  oslog2 = [v27 oslog];
  v138 = oslog2;
  MEMORY[0x277D82BD8](v27);
  v137 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v138;
    *v24 = v137;
    v25 = val;
    retries3 = [location retries];
    v22 = v174;
    __os_log_helper_16_2_3_8_32_8_0_4_0(v174, v121, v25, retries3 + 1);
    _os_log_impl(&dword_26ADE5000, v23, v24[0], "%s [%p]: The scan failed but got %u retries left. Performing a retry.", v22, 0x1Cu);
  }

  objc_storeStrong(&v138, 0);
  when = dispatch_time(0, 1000000000 * kSUUIStatefulUIRetryDelay);
  queue = *(val + 26);
  v130 = MEMORY[0x277D85DD0];
  v131 = -1073741824;
  v132 = 0;
  v133 = __46__SUUIStatefulUIManager_handleFailedFullScan___block_invoke;
  v134 = &unk_279CC6368;
  v21 = v136;
  objc_copyWeak(v136, &from);
  block = &v130;
  v136[1] = v167;
  v18 = &v135;
  v135 = MEMORY[0x277D82BE0](location);
  dispatch_after(when, queue, block);
  v129 = 1;
  objc_storeStrong(v18, 0);
  objc_destroyWeak(v21);
LABEL_50:
  objc_storeStrong(&v141, 0);
  objc_destroyWeak(&from);
  objc_storeStrong(&location, 0);
}

void __46__SUUIStatefulUIManager_handleFailedFullScan___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v10[2] = a1;
  v10[1] = a1;
  v10[0] = objc_loadWeakRetained((a1 + 40));
  v5 = 0;
  if (!v10[0])
  {
    v4 = +[SUUILoggingContext softwareUpdateUILogger];
    v9 = [v4 oslog];
    MEMORY[0x277D82BD8](v4);
    v8 = 16;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      log = v9;
      type = v8;
      v3 = NSStringFromSelector(*(a1 + 48));
      v7 = MEMORY[0x277D82BE0](v3);
      __os_log_helper_16_2_2_8_32_8_66(v11, "[SUUIStatefulUIManager handleFailedFullScan:]_block_invoke", v7);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v11, 0x16u);
      MEMORY[0x277D82BD8](v3);
      objc_storeStrong(&v7, 0);
    }

    objc_storeStrong(&v9, 0);
    v5 = 1;
  }

  if ((v5 & 1) == 0)
  {
    [*(a1 + 32) setError:?];
    [v10[0] setCurrentFullScanOperation:0];
    [v10[0] performFullScan:*(a1 + 32)];
  }

  objc_storeStrong(v10, 0);
}

void __46__SUUIStatefulUIManager_handleFailedFullScan___block_invoke_448(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = 0;
  objc_storeStrong(&v14, a3);
  v13[1] = a1;
  v13[0] = objc_loadWeakRetained((a1 + 40));
  v7 = 0;
  if (!v13[0])
  {
    v6 = +[SUUILoggingContext softwareUpdateUILogger];
    v12 = [v6 oslog];
    MEMORY[0x277D82BD8](v6);
    v11 = 16;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      log = v12;
      type = v11;
      v5 = NSStringFromSelector(*(a1 + 48));
      v10 = MEMORY[0x277D82BE0](v5);
      __os_log_helper_16_2_2_8_32_8_66(v16, "[SUUIStatefulUIManager handleFailedFullScan:]_block_invoke", v10);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v16, 0x16u);
      MEMORY[0x277D82BD8](v5);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
    v7 = 1;
  }

  if ((v7 & 1) == 0)
  {
    [*(v13[0] + 25) postEvent:@"FullScanFailed" withInfo:*(a1 + 32)];
  }

  objc_storeStrong(v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)handleRefreshScanResults:(id)results
{
  v126 = &v142;
  v127 = "[SUUIStatefulUIManager handleRefreshScanResults:]";
  v162 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  refreshScanResults = [location[0] refreshScanResults];
  v155 = refreshScanResults;
  v124 = +[SUUILoggingContext statefulUILogger];
  v122 = v124;
  oslog = [v122 oslog];
  v154 = oslog;
  MEMORY[0x277D82BD8](v122);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
  {
    log = v126[17];
    *v119 = type;
    v120 = v126[21];
    aClass = objc_opt_class();
    v117 = NSStringFromClass(aClass);
    v114 = v117;
    v3 = MEMORY[0x277D82BE0](v114);
    v4 = v126;
    v115 = v3;
    v126[15] = v3;
    v116 = SUUIStatefulUIStateToString(*(v4[21] + 5));
    v111 = v116;
    v5 = MEMORY[0x277D82BE0](v111);
    v6 = v126;
    v112 = v5;
    v126[14] = v5;
    currentState = [v6[21] currentState];
    delegate = [v126[21] delegate];
    v109 = delegate;
    v150 = 0;
    v149 = 0;
    if (v109)
    {
      delegate2 = [v126[21] delegate];
      v126[13] = delegate2;
      v150 = 1;
      v107 = objc_opt_class();
      v106 = NSStringFromClass(v107);
      v7 = v106;
      v126[11] = v7;
      v149 = 1;
      v105 = v7;
    }

    else
    {
      v105 = @"(null)";
    }

    v103 = v105;
    delegate3 = [v126[21] delegate];
    v101 = delegate3;
    scanError = [v126[21] scanError];
    v99 = scanError;
    preferredStatefulDescriptor = [v126[21] preferredStatefulDescriptor];
    v97 = preferredStatefulDescriptor;
    alternateStatefulDescriptor = [v126[21] alternateStatefulDescriptor];
    v95 = alternateStatefulDescriptor;
    currentDownload = [v126[21] currentDownload];
    v94 = currentDownload;
    v148 = 0;
    v147 = 0;
    v146 = 0;
    if (v94)
    {
      currentDownload2 = [v126[21] currentDownload];
      v8 = currentDownload2;
      v126[9] = v8;
      v148 = 1;
      descriptor = [v8 descriptor];
      v9 = descriptor;
      v126[7] = v9;
      v147 = 1;
      updateName = [v9 updateName];
      v10 = updateName;
      v126[5] = v10;
      v146 = 1;
      v90 = v10;
    }

    else
    {
      v90 = @"(null)";
    }

    v88 = v90;
    currentDownload3 = [v126[21] currentDownload];
    v86 = currentDownload3;
    currentUpdateOperationType = [v126[21] currentUpdateOperationType];
    v85 = SUUIUpdateContinuousOperationTypeToString(currentUpdateOperationType);
    v82 = v85;
    v11 = MEMORY[0x277D82BE0](v82);
    v12 = v126;
    v83 = v11;
    v126[3] = v11;
    isTargetedUpdateScheduledForAutoInstall = [v12[21] isTargetedUpdateScheduledForAutoInstall];
    v160 = isTargetedUpdateScheduledForAutoInstall;
    if (isTargetedUpdateScheduledForAutoInstall)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v81 = v13;
    v14 = v13;
    v78 = v81;
    v15 = MEMORY[0x277D82BE0](v78);
    v16 = v126;
    v79 = v15;
    v126[2] = v15;
    hidingPreferredDescriptor = [v16[21] hidingPreferredDescriptor];
    v159 = hidingPreferredDescriptor;
    if (hidingPreferredDescriptor)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    v77 = v17;
    v18 = v17;
    v74 = v77;
    v19 = MEMORY[0x277D82BE0](v74);
    v20 = v126;
    v75 = v19;
    v126[1] = v19;
    hiddenPreferredStatefulDescriptor = [v20[21] hiddenPreferredStatefulDescriptor];
    v72 = hiddenPreferredStatefulDescriptor;
    updateName2 = [v72 updateName];
    v69 = updateName2;
    v21 = MEMORY[0x277D82BE0](v69);
    v22 = v126;
    v70 = v21;
    *v126 = v21;
    hidingAlternateDescriptor = [v22[21] hidingAlternateDescriptor];
    v158 = hidingAlternateDescriptor;
    if (hidingAlternateDescriptor)
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    v68 = v23;
    v24 = v23;
    v65 = v68;
    v66 = MEMORY[0x277D82BE0](v65);
    v141 = v66;
    hiddenAlternateStatefulDescriptor = [v126[21] hiddenAlternateStatefulDescriptor];
    v63 = hiddenAlternateStatefulDescriptor;
    updateName3 = [v63 updateName];
    v60 = updateName3;
    v61 = MEMORY[0x277D82BE0](v60);
    v140 = v61;
    enrolledBetaProgram = [v126[21] enrolledBetaProgram];
    v59 = enrolledBetaProgram;
    v138 = 0;
    if (v59)
    {
      enrolledBetaProgram2 = [v126[21] enrolledBetaProgram];
      v139 = enrolledBetaProgram2;
      v138 = 1;
      programID = [v139 programID];
      v56 = programID;
    }

    else
    {
      v56 = 0;
    }

    v54 = v56;
    v55 = [*(v126[21] + 15) count];
    canEnrollInBetaUpdates = [v126[21] canEnrollInBetaUpdates];
    v157 = canEnrollInBetaUpdates;
    if (canEnrollInBetaUpdates)
    {
      v25 = @"YES";
    }

    else
    {
      v25 = @"NO";
    }

    v52 = v25;
    v26 = v25;
    v46 = v52;
    v47 = MEMORY[0x277D82BE0](v46);
    v137 = v47;
    v48 = *(v126[21] + 21);
    v49 = *(v126[21] + 22);
    v50 = *(v126[21] + 23);
    v51 = [*(v126[21] + 24) count];
    identifier = [v126[18] identifier];
    v44 = identifier;
    v27 = v126[18];
    v42 = &v28;
    buf = v161;
    __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66(v161, v127, v120, v115, v112, currentState, v103, v101, v99, v97, v95, v88, v86, v83, v79, v75, v70, v66, v61, v54, v55, v47, v48, v49, v50, v51, v44, v27);
    _os_log_impl(&dword_26ADE5000, log, v119[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFinished to refresh the current scan results with ID: %{public}@.\nResults: %{public}@", buf, 0x110u);
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v46);
    if (v138)
    {
      MEMORY[0x277D82BD8](v139);
    }

    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](v60);
    MEMORY[0x277D82BD8](v63);
    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](v69);
    MEMORY[0x277D82BD8](v72);
    MEMORY[0x277D82BD8](v74);
    MEMORY[0x277D82BD8](v78);
    MEMORY[0x277D82BD8](v82);
    MEMORY[0x277D82BD8](v86);
    if (v146)
    {
      MEMORY[0x277D82BD8](v126[5]);
    }

    if (v147)
    {
      MEMORY[0x277D82BD8](v126[7]);
    }

    if (v148)
    {
      MEMORY[0x277D82BD8](v126[9]);
    }

    MEMORY[0x277D82BD8](v94);
    MEMORY[0x277D82BD8](v95);
    MEMORY[0x277D82BD8](v97);
    MEMORY[0x277D82BD8](v99);
    MEMORY[0x277D82BD8](v101);
    if (v149)
    {
      MEMORY[0x277D82BD8](v126[11]);
    }

    if (v150)
    {
      MEMORY[0x277D82BD8](v126[13]);
    }

    MEMORY[0x277D82BD8](v109);
    MEMORY[0x277D82BD8](v111);
    MEMORY[0x277D82BD8](v114);
    objc_storeStrong(&v137, 0);
    objc_storeStrong(&v140, 0);
    objc_storeStrong(&v141, 0);
    objc_storeStrong(&v142, 0);
    objc_storeStrong(&v143, 0);
    objc_storeStrong(&v144, 0);
    objc_storeStrong(&v145, 0);
    objc_storeStrong(&v151, 0);
    objc_storeStrong(&v152, 0);
  }

  objc_storeStrong(&v154, 0);
  environment = [v126[21] environment];
  v38 = environment;
  v39 = v126[21];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v36 = uUID;
  uUIDString = [v36 UUIDString];
  v34 = uUIDString;
  v35 = [v38 scanOperationWithManager:v39 identifier:? completionQueue:?];
  v136 = v35;
  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v38);
  objc_initWeak(&from, v126[21]);
  v32 = v136;
  v128 = MEMORY[0x277D85DD0];
  v129 = -1073741824;
  v130 = 0;
  v131 = __50__SUUIStatefulUIManager_handleRefreshScanResults___block_invoke;
  v132 = &unk_279CC66F8;
  v33 = v134;
  objc_copyWeak(v134, &from);
  v31 = &v128;
  v134[1] = v126[20];
  v29 = v133;
  v133[0] = MEMORY[0x277D82BE0](v126[19]);
  v30 = (v31 + 5);
  v133[1] = MEMORY[0x277D82BE0](v126[18]);
  [v32 controllerCurrentlyScanning:v31];
  objc_storeStrong(v30, 0);
  objc_storeStrong(v29, 0);
  objc_destroyWeak(v33);
  objc_destroyWeak(&from);
  objc_storeStrong(&v136, 0);
  objc_storeStrong(&v155, 0);
  objc_storeStrong(location, 0);
}

void __50__SUUIStatefulUIManager_handleRefreshScanResults___block_invoke(uint64_t a1, unsigned __int8 a2, id obj)
{
  v121 = &v139;
  v120 = a1;
  v119 = "[SUUIStatefulUIManager handleRefreshScanResults:]_block_invoke";
  v164 = *MEMORY[0x277D85DE8];
  v155 = a1;
  v154 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v152[1] = v120;
  v152[0] = objc_loadWeakRetained((v120 + 48));
  v118 = 0;
  if (!v152[0])
  {
    v117 = +[SUUILoggingContext softwareUpdateUILogger];
    v3 = [v117 oslog];
    v4 = v117;
    v121[18] = v3;
    MEMORY[0x277D82BD8](v4);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v121[18], OS_LOG_TYPE_ERROR))
    {
      log = v121[18];
      *v113 = type;
      v115 = NSStringFromSelector(*(v120 + 56));
      v5 = MEMORY[0x277D82BE0](v115);
      v6 = v119;
      v116 = &v149;
      v121[16] = v5;
      buf = v163;
      __os_log_helper_16_2_2_8_32_8_66(v163, v6, v5);
      _os_log_error_impl(&dword_26ADE5000, log, v113[0], "%s: Self is nil in %{public}@. Stopping.", v163, 0x16u);
      MEMORY[0x277D82BD8](v115);
      objc_storeStrong(v116, 0);
    }

    objc_storeStrong(&v151, 0);
    v7 = v121;
    *(v121 + 31) = 1;
    v118 = *(v7 + 31) != 0;
  }

  if (v118)
  {
    *(v121 + 30) = 1;
  }

  else
  {
    v111 = +[SUUILoggingContext statefulUILogger];
    v8 = [v111 oslog];
    v9 = v111;
    v121[14] = v8;
    MEMORY[0x277D82BD8](v9);
    v147 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v121[14], OS_LOG_TYPE_DEFAULT))
    {
      v102 = v121[14];
      *v103 = v147;
      v104 = v121[19];
      v10 = objc_opt_class();
      v105 = NSStringFromClass(v10);
      v11 = MEMORY[0x277D82BE0](v105);
      v12 = v121;
      v106 = v11;
      v121[12] = v11;
      v107 = SUUIStatefulUIStateToString(*(v12[19] + 5));
      v13 = MEMORY[0x277D82BE0](v107);
      v14 = v121;
      v108 = v13;
      v121[11] = v13;
      v109 = [v14[19] currentState];
      v110 = [v121[19] delegate];
      v144 = 0;
      v143 = 0;
      if (v110)
      {
        v121[10] = [v121[19] delegate];
        v100 = 1;
        v144 = 1;
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v121[8] = v16;
        v143 = 1;
        v101 = v16;
      }

      else
      {
        v101 = @"(null)";
      }

      v94 = v101;
      v95 = [v121[19] delegate];
      v96 = [v121[19] scanError];
      v97 = [v121[19] preferredStatefulDescriptor];
      v98 = [v121[19] alternateStatefulDescriptor];
      v99 = [v121[19] currentDownload];
      v142 = 0;
      v141 = 0;
      v140 = 0;
      if (v99)
      {
        v17 = [v121[19] currentDownload];
        v121[6] = v17;
        v92 = 1;
        v142 = 1;
        v18 = [v17 descriptor];
        v121[4] = v18;
        v141 = 1;
        v19 = [v18 updateName];
        v20 = v92;
        v121[2] = v19;
        v140 = v20 & 1;
        v93 = v19;
      }

      else
      {
        v93 = @"(null)";
      }

      v69 = v93;
      v70 = [v121[19] currentDownload];
      v71 = SUUIUpdateContinuousOperationTypeToString([v121[19] currentUpdateOperationType]);
      v21 = MEMORY[0x277D82BE0](v71);
      v22 = v121;
      v72 = v21;
      *v121 = v21;
      v160 = [v22[19] isTargetedUpdateScheduledForAutoInstall];
      v82 = @"NO";
      v83 = @"YES";
      v90 = 1;
      if (v160)
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      v73 = v23;
      v24 = v23;
      v74 = v73;
      v75 = MEMORY[0x277D82BE0](v74);
      v138 = v75;
      v159 = [v121[19] hidingPreferredDescriptor];
      if (v159)
      {
        v25 = v83;
      }

      else
      {
        v25 = v82;
      }

      v76 = v25;
      v26 = v25;
      v77 = v76;
      v78 = MEMORY[0x277D82BE0](v77);
      v137 = v78;
      v79 = [v121[19] hiddenPreferredStatefulDescriptor];
      v80 = [v79 updateName];
      v81 = MEMORY[0x277D82BE0](v80);
      v136 = v81;
      v158 = [v121[19] hidingAlternateDescriptor];
      if (v158)
      {
        v27 = v83;
      }

      else
      {
        v27 = v82;
      }

      v84 = v27;
      v28 = v27;
      v85 = v84;
      v86 = MEMORY[0x277D82BE0](v85);
      v135 = v86;
      v87 = [v121[19] hiddenAlternateStatefulDescriptor];
      v88 = [v87 updateName];
      v89 = MEMORY[0x277D82BE0](v88);
      v134 = v89;
      v91 = [v121[19] enrolledBetaProgram];
      v132 = 0;
      if (v91)
      {
        v133 = [v121[19] enrolledBetaProgram];
        v132 = 1;
        v68 = [v133 programID];
      }

      else
      {
        v68 = 0;
      }

      v57 = v68;
      v58 = [*(v121[19] + 15) count];
      v157 = [v121[19] canEnrollInBetaUpdates];
      v54 = @"NO";
      v55 = @"YES";
      v53 = 1;
      if (v157)
      {
        v29 = @"YES";
      }

      else
      {
        v29 = @"NO";
      }

      v52 = v29;
      v30 = v29;
      v67 = v52;
      v59 = MEMORY[0x277D82BE0](v67);
      v131 = v59;
      v60 = *(v121[19] + 21);
      v61 = *(v121[19] + 22);
      v62 = *(v121[19] + 23);
      v63 = [*(v121[19] + 24) count];
      v156 = v154 & v53;
      if (v154 & v53)
      {
        v31 = v55;
      }

      else
      {
        v31 = v54;
      }

      v56 = v31;
      v32 = v31;
      v66 = v56;
      v130 = MEMORY[0x277D82BE0](v66);
      v33 = v121[21];
      v64 = &v36;
      v65 = v162;
      __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66(v162, v119, v104, v106, v108, v109, v94, v95, v96, v97, v98, v69, v70, v72, v75, v78, v81, v86, v89, v57, v58, v59, v60, v61, v62, v63, v130, v33);
      _os_log_impl(&dword_26ADE5000, v102, v103[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nisScanning: %{public}@; error: %{public}@", v65, 0x110u);
      MEMORY[0x277D82BD8](v66);
      MEMORY[0x277D82BD8](v67);
      if (v132)
      {
        MEMORY[0x277D82BD8](v133);
      }

      MEMORY[0x277D82BD8](v91);
      MEMORY[0x277D82BD8](v88);
      MEMORY[0x277D82BD8](v87);
      MEMORY[0x277D82BD8](v85);
      MEMORY[0x277D82BD8](v80);
      MEMORY[0x277D82BD8](v79);
      MEMORY[0x277D82BD8](v77);
      MEMORY[0x277D82BD8](v74);
      MEMORY[0x277D82BD8](v71);
      MEMORY[0x277D82BD8](v70);
      if (v140)
      {
        MEMORY[0x277D82BD8](v121[2]);
      }

      if (v141)
      {
        MEMORY[0x277D82BD8](v121[4]);
      }

      if (v142)
      {
        MEMORY[0x277D82BD8](v121[6]);
      }

      MEMORY[0x277D82BD8](v99);
      MEMORY[0x277D82BD8](v98);
      MEMORY[0x277D82BD8](v97);
      MEMORY[0x277D82BD8](v96);
      MEMORY[0x277D82BD8](v95);
      if (v143)
      {
        MEMORY[0x277D82BD8](v121[8]);
      }

      if (v144)
      {
        MEMORY[0x277D82BD8](v121[10]);
      }

      MEMORY[0x277D82BD8](v110);
      MEMORY[0x277D82BD8](v107);
      MEMORY[0x277D82BD8](v105);
      obja = 0;
      objc_storeStrong(&v130, 0);
      objc_storeStrong(&v131, obja);
      objc_storeStrong(&v134, obja);
      objc_storeStrong(&v135, obja);
      objc_storeStrong(&v136, obja);
      objc_storeStrong(&v137, obja);
      objc_storeStrong(&v138, obja);
      objc_storeStrong(&v139, obja);
      objc_storeStrong(&v145, obja);
      objc_storeStrong(&v146, obja);
    }

    objc_storeStrong(&v148, 0);
    if (v154)
    {
      if ([v121[19] currentState] > 1)
      {
        [v121[19] checkForUpdatesInBackground];
      }

      else
      {
        [v121[19] checkForAvailableUpdates];
      }

      *(v121 + 30) = 1;
    }

    else
    {
      v48 = v121[19];
      v49 = [*(v120 + 32) refreshScanResults];
      v50 = [v48 assignScanResults:?];
      MEMORY[0x277D82BD8](v49);
      v129 = v50;
      v128 = [v121[19] preferredStatefulDescriptor];
      v127 = [v121[19] alternateStatefulDescriptor];
      v126 = [v121[19] preferredStatefulDescriptor];
      v125 = [v121[19] alternateStatefulDescriptor];
      if (v126 || v125)
      {
        [v121[19] updateDescriptorsUsingScanResults:*(v120 + 40) andWithConcreteError:0];
      }

      else
      {
        v47 = [v121[19] currentDownload];
        MEMORY[0x277D82BD8](v47);
        if (!v47)
        {
          v46 = 0;
          objc_storeStrong(&v126, 0);
          [v121[19] setPreferredStatefulDescriptor:v46];
          objc_storeStrong(&v125, v46);
          [v121[19] setAlternateStatefulDescriptor:v46];
        }
      }

      if (v126 == v128 || (v45 = 1, v126) && (v34 = [v126 isEqual:v128], v45 = 1, (v34 & 1) != 0))
      {
        v44 = 0;
        if (v125 != v127)
        {
          v43 = 1;
          if (v125)
          {
            v43 = [v125 isEqual:v127] ^ 1;
          }

          v44 = v43;
        }

        v45 = v44;
      }

      v124 = v45 & 1;
      v42 = +[SUUILoggingContext statefulUILogger];
      oslog = [v42 oslog];
      MEMORY[0x277D82BD8](v42);
      v122 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v39 = oslog;
        *v40 = v122;
        v35 = v121[19];
        v41 = v161;
        __os_log_helper_16_2_4_8_32_8_0_4_0_4_0(v161, v119, v35, v129 & 1, v124 & 1);
        _os_log_impl(&dword_26ADE5000, v39, v40[0], "%s [%p]: Refreshed results changes from previous data: changedScanRelatedData = %d, changedDescriptors: %d", v41, 0x22u);
      }

      objc_storeStrong(&oslog, 0);
      v38 = 1;
      if ((v129 & 1) == 0)
      {
        v38 = v124;
      }

      [*(v120 + 32) setRefreshHasAnyChanges:v38 & 1];
      if (v126 || v125)
      {
        [*(v121[19] + 25) postEvent:@"RefreshUpdatesAvailable" withInfo:*(v120 + 32)];
      }

      else if ([*(v120 + 32) refreshPreviousState] == 3)
      {
        [*(v121[19] + 25) postEvent:@"RefreshNoUpdateAvailable" withInfo:*(v120 + 32)];
      }

      else
      {
        [*(v121[19] + 25) postEvent:@"CheckForAvailableUpdate" withInfo:*(v120 + 32)];
      }

      v37 = 0;
      objc_storeStrong(&v125, 0);
      objc_storeStrong(&v126, v37);
      objc_storeStrong(&v127, v37);
      objc_storeStrong(&v128, v37);
      *(v121 + 30) = 0;
    }
  }

  objc_storeStrong(v152, 0);
  if (!*(v121 + 30))
  {
    *(v121 + 30) = 0;
  }

  objc_storeStrong(&location, 0);
}

- (void)clearPastScanResults
{
  [(SUUIStatefulUIManager *)self setPreferredStatefulDescriptor:?];
  [(SUUIStatefulUIManager *)self setAlternateStatefulDescriptor:0];
  [(SUUIStatefulUIManager *)self setHiddenPreferredStatefulDescriptor:0];
  [(SUUIStatefulUIManager *)self setHiddenAlternateStatefulDescriptor:0];
  [(SUUIStatefulUIManager *)self setHidingPreferredDescriptor:0];
  [(SUUIStatefulUIManager *)self setHidingAlternateDescriptor:0];
  [(SUUIStatefulUIManager *)self setCurrentDownload:0];
  [(SUUIStatefulUIManager *)self setIsAutoUpdateScheduled:0];
  [(SUUIStatefulUIManager *)self setClearingSpaceForDownload:0];
}

- (void)clearPastDownload:(id)download
{
  v139 = "[SUUIStatefulUIManager clearPastDownload:]";
  v200 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, download);
  v187 = [(SUUIStatefulUIManager *)selfCopy targetedUpdateForDownload:location[0]];
  if (v187)
  {
    v83 = +[SUUILoggingContext statefulUILogger];
    oslog = [v83 oslog];
    MEMORY[0x277D82BD8](v83);
    v161 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v74 = oslog;
      *v75 = v161;
      v76 = selfCopy;
      v14 = objc_opt_class();
      v77 = NSStringFromClass(v14);
      v78 = MEMORY[0x277D82BE0](v77);
      v160 = v78;
      v79 = SUUIStatefulUIStateToString(selfCopy->_currentState);
      v80 = MEMORY[0x277D82BE0](v79);
      v159 = v80;
      currentState = [(SUUIStatefulUIManager *)selfCopy currentState];
      delegate = [(SUUIStatefulUIManager *)selfCopy delegate];
      v157 = 0;
      v155 = 0;
      if (delegate)
      {
        delegate2 = [(SUUIStatefulUIManager *)selfCopy delegate];
        v72 = 1;
        v157 = 1;
        v15 = objc_opt_class();
        v156 = NSStringFromClass(v15);
        v155 = 1;
        v73 = v156;
      }

      else
      {
        v73 = @"(null)";
      }

      v66 = v73;
      delegate3 = [(SUUIStatefulUIManager *)selfCopy delegate];
      scanError = [(SUUIStatefulUIManager *)selfCopy scanError];
      preferredStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy preferredStatefulDescriptor];
      alternateStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy alternateStatefulDescriptor];
      currentDownload = [(SUUIStatefulUIManager *)selfCopy currentDownload];
      v153 = 0;
      v151 = 0;
      v149 = 0;
      if (currentDownload)
      {
        currentDownload2 = [(SUUIStatefulUIManager *)selfCopy currentDownload];
        v64 = 1;
        v153 = 1;
        descriptor = [(SUUIDownload *)currentDownload2 descriptor];
        v151 = 1;
        updateName = [descriptor updateName];
        v149 = 1;
        v65 = updateName;
      }

      else
      {
        v65 = @"(null)";
      }

      v41 = v65;
      currentDownload3 = [(SUUIStatefulUIManager *)selfCopy currentDownload];
      v43 = SUUIUpdateContinuousOperationTypeToString([(SUUIStatefulUIManager *)selfCopy currentUpdateOperationType]);
      v44 = MEMORY[0x277D82BE0](v43);
      v148 = v44;
      isTargetedUpdateScheduledForAutoInstall = [(SUUIStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
      v54 = @"NO";
      v55 = @"YES";
      v62 = 1;
      if (isTargetedUpdateScheduledForAutoInstall)
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      v45 = v16;
      v17 = v16;
      v46 = v45;
      v47 = MEMORY[0x277D82BE0](v46);
      v147 = v47;
      if ([(SUUIStatefulUIManager *)selfCopy hidingPreferredDescriptor])
      {
        v18 = v55;
      }

      else
      {
        v18 = v54;
      }

      v48 = v18;
      v19 = v18;
      v49 = v48;
      v50 = MEMORY[0x277D82BE0](v49);
      v146 = v50;
      hiddenPreferredStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy hiddenPreferredStatefulDescriptor];
      updateName2 = [(SUUIStatefulDescriptor *)hiddenPreferredStatefulDescriptor updateName];
      v53 = MEMORY[0x277D82BE0](updateName2);
      v145 = v53;
      if ([(SUUIStatefulUIManager *)selfCopy hidingAlternateDescriptor])
      {
        v20 = v55;
      }

      else
      {
        v20 = v54;
      }

      v56 = v20;
      v21 = v20;
      v57 = v56;
      v58 = MEMORY[0x277D82BE0](v57);
      v144 = v58;
      hiddenAlternateStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy hiddenAlternateStatefulDescriptor];
      updateName3 = [(SUUIStatefulDescriptor *)hiddenAlternateStatefulDescriptor updateName];
      v61 = MEMORY[0x277D82BE0](updateName3);
      v143 = v61;
      enrolledBetaProgram = [(SUUIStatefulUIManager *)selfCopy enrolledBetaProgram];
      v141 = 0;
      if (enrolledBetaProgram)
      {
        enrolledBetaProgram2 = [(SUUIStatefulUIManager *)selfCopy enrolledBetaProgram];
        v141 = 1;
        programID = [(SDBetaProgram *)enrolledBetaProgram2 programID];
      }

      else
      {
        programID = 0;
      }

      v31 = programID;
      v32 = [(NSArray *)selfCopy->_betaPrograms count];
      if ([(SUUIStatefulUIManager *)selfCopy canEnrollInBetaUpdates])
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      v30 = v22;
      v23 = v22;
      v39 = v30;
      v33 = MEMORY[0x277D82BE0](v39);
      v140 = v33;
      currentFullScanOperation = selfCopy->_currentFullScanOperation;
      currentRefreshScanOperation = selfCopy->_currentRefreshScanOperation;
      currentUpdateOperation = selfCopy->_currentUpdateOperation;
      v24 = [(NSMutableSet *)selfCopy->_auxiliaryOperations count];
      v37 = &v25;
      v38 = v198;
      __os_log_helper_16_2_26_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66(v198, v139, v76, v78, v80, currentState, v66, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v41, currentDownload3, v44, v47, v50, v53, v58, v61, v31, v32, v33, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, v24, location[0]);
      _os_log_impl(&dword_26ADE5000, v74, v75[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCleaning the past download information: %{public}@", v38, 0x106u);
      MEMORY[0x277D82BD8](v39);
      if (v141)
      {
        MEMORY[0x277D82BD8](enrolledBetaProgram2);
      }

      MEMORY[0x277D82BD8](enrolledBetaProgram);
      MEMORY[0x277D82BD8](updateName3);
      MEMORY[0x277D82BD8](hiddenAlternateStatefulDescriptor);
      MEMORY[0x277D82BD8](v57);
      MEMORY[0x277D82BD8](updateName2);
      MEMORY[0x277D82BD8](hiddenPreferredStatefulDescriptor);
      MEMORY[0x277D82BD8](v49);
      MEMORY[0x277D82BD8](v46);
      MEMORY[0x277D82BD8](v43);
      MEMORY[0x277D82BD8](currentDownload3);
      if (v149)
      {
        MEMORY[0x277D82BD8](updateName);
      }

      if (v151)
      {
        MEMORY[0x277D82BD8](descriptor);
      }

      if (v153)
      {
        MEMORY[0x277D82BD8](currentDownload2);
      }

      MEMORY[0x277D82BD8](currentDownload);
      MEMORY[0x277D82BD8](alternateStatefulDescriptor);
      MEMORY[0x277D82BD8](preferredStatefulDescriptor);
      MEMORY[0x277D82BD8](scanError);
      MEMORY[0x277D82BD8](delegate3);
      if (v155)
      {
        MEMORY[0x277D82BD8](v156);
      }

      if (v157)
      {
        MEMORY[0x277D82BD8](delegate2);
      }

      MEMORY[0x277D82BD8](delegate);
      MEMORY[0x277D82BD8](v79);
      MEMORY[0x277D82BD8](v77);
      v29 = 0;
      objc_storeStrong(&v140, 0);
      objc_storeStrong(&v143, v29);
      objc_storeStrong(&v144, v29);
      objc_storeStrong(&v145, v29);
      objc_storeStrong(&v146, v29);
      objc_storeStrong(&v147, v29);
      objc_storeStrong(&v148, v29);
      objc_storeStrong(&v159, v29);
      objc_storeStrong(&v160, v29);
    }

    objc_storeStrong(&oslog, 0);
    v27 = 0;
    [v187 updateStateFromProgressedDownload:?];
    [(SUUIStatefulUIManager *)selfCopy setCurrentDownload:v27];
    v28 = 0;
    [(SUUIStatefulUIManager *)selfCopy setIsAutoUpdateScheduled:0];
    [(SUUIStatefulUIManager *)selfCopy setClearingSpaceForDownload:v28 & 1];
    if ([(SUUIStatefulUIManager *)selfCopy hidingAlternateDescriptor])
    {
      [(SUUIStatefulUIManager *)selfCopy revealHiddenAlteranteUpdate];
    }

    if ([(SUUIStatefulUIManager *)selfCopy hidingPreferredDescriptor])
    {
      [(SUUIStatefulUIManager *)selfCopy revealHiddenPreferredUpdate];
    }

    v163 = 0;
  }

  else
  {
    v138 = +[SUUILoggingContext statefulUILogger];
    oslog = [v138 oslog];
    MEMORY[0x277D82BD8](v138);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      *v130 = type;
      v131 = selfCopy;
      v3 = objc_opt_class();
      v132 = NSStringFromClass(v3);
      v133 = MEMORY[0x277D82BE0](v132);
      v184 = v133;
      v134 = SUUIStatefulUIStateToString(selfCopy->_currentState);
      v135 = MEMORY[0x277D82BE0](v134);
      v183 = v135;
      currentState2 = [(SUUIStatefulUIManager *)selfCopy currentState];
      delegate4 = [(SUUIStatefulUIManager *)selfCopy delegate];
      v181 = 0;
      v179 = 0;
      if (delegate4)
      {
        delegate5 = [(SUUIStatefulUIManager *)selfCopy delegate];
        v127 = 1;
        v181 = 1;
        v4 = objc_opt_class();
        v180 = NSStringFromClass(v4);
        v179 = 1;
        v128 = v180;
      }

      else
      {
        v128 = @"(null)";
      }

      v121 = v128;
      delegate6 = [(SUUIStatefulUIManager *)selfCopy delegate];
      scanError2 = [(SUUIStatefulUIManager *)selfCopy scanError];
      preferredStatefulDescriptor2 = [(SUUIStatefulUIManager *)selfCopy preferredStatefulDescriptor];
      alternateStatefulDescriptor2 = [(SUUIStatefulUIManager *)selfCopy alternateStatefulDescriptor];
      currentDownload4 = [(SUUIStatefulUIManager *)selfCopy currentDownload];
      v177 = 0;
      v175 = 0;
      v173 = 0;
      if (currentDownload4)
      {
        currentDownload5 = [(SUUIStatefulUIManager *)selfCopy currentDownload];
        v119 = 1;
        v177 = 1;
        descriptor2 = [(SUUIDownload *)currentDownload5 descriptor];
        v175 = 1;
        updateName4 = [descriptor2 updateName];
        v173 = 1;
        v120 = updateName4;
      }

      else
      {
        v120 = @"(null)";
      }

      v96 = v120;
      currentDownload6 = [(SUUIStatefulUIManager *)selfCopy currentDownload];
      v98 = SUUIUpdateContinuousOperationTypeToString([(SUUIStatefulUIManager *)selfCopy currentUpdateOperationType]);
      v99 = MEMORY[0x277D82BE0](v98);
      v172 = v99;
      isTargetedUpdateScheduledForAutoInstall2 = [(SUUIStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
      v109 = @"NO";
      v110 = @"YES";
      v117 = 1;
      if (isTargetedUpdateScheduledForAutoInstall2)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v100 = v5;
      v6 = v5;
      v101 = v100;
      v102 = MEMORY[0x277D82BE0](v101);
      v171 = v102;
      if ([(SUUIStatefulUIManager *)selfCopy hidingPreferredDescriptor])
      {
        v7 = v110;
      }

      else
      {
        v7 = v109;
      }

      v103 = v7;
      v8 = v7;
      v104 = v103;
      v105 = MEMORY[0x277D82BE0](v104);
      v170 = v105;
      hiddenPreferredStatefulDescriptor2 = [(SUUIStatefulUIManager *)selfCopy hiddenPreferredStatefulDescriptor];
      updateName5 = [(SUUIStatefulDescriptor *)hiddenPreferredStatefulDescriptor2 updateName];
      v108 = MEMORY[0x277D82BE0](updateName5);
      v169 = v108;
      if ([(SUUIStatefulUIManager *)selfCopy hidingAlternateDescriptor])
      {
        v9 = v110;
      }

      else
      {
        v9 = v109;
      }

      v111 = v9;
      v10 = v9;
      v112 = v111;
      v113 = MEMORY[0x277D82BE0](v112);
      v168 = v113;
      hiddenAlternateStatefulDescriptor2 = [(SUUIStatefulUIManager *)selfCopy hiddenAlternateStatefulDescriptor];
      updateName6 = [(SUUIStatefulDescriptor *)hiddenAlternateStatefulDescriptor2 updateName];
      v116 = MEMORY[0x277D82BE0](updateName6);
      v167 = v116;
      enrolledBetaProgram3 = [(SUUIStatefulUIManager *)selfCopy enrolledBetaProgram];
      v165 = 0;
      if (enrolledBetaProgram3)
      {
        enrolledBetaProgram4 = [(SUUIStatefulUIManager *)selfCopy enrolledBetaProgram];
        v165 = 1;
        programID2 = [(SDBetaProgram *)enrolledBetaProgram4 programID];
      }

      else
      {
        programID2 = 0;
      }

      v86 = programID2;
      v87 = [(NSArray *)selfCopy->_betaPrograms count];
      if ([(SUUIStatefulUIManager *)selfCopy canEnrollInBetaUpdates])
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v85 = v11;
      v12 = v11;
      v94 = v85;
      v88 = MEMORY[0x277D82BE0](v94);
      v164 = v88;
      v89 = selfCopy->_currentFullScanOperation;
      v90 = selfCopy->_currentRefreshScanOperation;
      v91 = selfCopy->_currentUpdateOperation;
      v13 = [(NSMutableSet *)selfCopy->_auxiliaryOperations count];
      v92 = &v25;
      buf = v199;
      __os_log_helper_16_2_26_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66(v199, v139, v131, v133, v135, currentState2, v121, delegate6, scanError2, preferredStatefulDescriptor2, alternateStatefulDescriptor2, v96, currentDownload6, v99, v102, v105, v108, v113, v116, v86, v87, v88, v89, v90, v91, v13, location[0]);
      _os_log_impl(&dword_26ADE5000, log, v130[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCouldn't clean the past discovered download as the targeted update could not be retrieved from the given download.\nDownload: %{public}@", buf, 0x106u);
      MEMORY[0x277D82BD8](v94);
      if (v165)
      {
        MEMORY[0x277D82BD8](enrolledBetaProgram4);
      }

      MEMORY[0x277D82BD8](enrolledBetaProgram3);
      MEMORY[0x277D82BD8](updateName6);
      MEMORY[0x277D82BD8](hiddenAlternateStatefulDescriptor2);
      MEMORY[0x277D82BD8](v112);
      MEMORY[0x277D82BD8](updateName5);
      MEMORY[0x277D82BD8](hiddenPreferredStatefulDescriptor2);
      MEMORY[0x277D82BD8](v104);
      MEMORY[0x277D82BD8](v101);
      MEMORY[0x277D82BD8](v98);
      MEMORY[0x277D82BD8](currentDownload6);
      if (v173)
      {
        MEMORY[0x277D82BD8](updateName4);
      }

      if (v175)
      {
        MEMORY[0x277D82BD8](descriptor2);
      }

      if (v177)
      {
        MEMORY[0x277D82BD8](currentDownload5);
      }

      MEMORY[0x277D82BD8](currentDownload4);
      MEMORY[0x277D82BD8](alternateStatefulDescriptor2);
      MEMORY[0x277D82BD8](preferredStatefulDescriptor2);
      MEMORY[0x277D82BD8](scanError2);
      MEMORY[0x277D82BD8](delegate6);
      if (v179)
      {
        MEMORY[0x277D82BD8](v180);
      }

      if (v181)
      {
        MEMORY[0x277D82BD8](delegate5);
      }

      MEMORY[0x277D82BD8](delegate4);
      MEMORY[0x277D82BD8](v134);
      MEMORY[0x277D82BD8](v132);
      obj = 0;
      objc_storeStrong(&v164, 0);
      objc_storeStrong(&v167, obj);
      objc_storeStrong(&v168, obj);
      objc_storeStrong(&v169, obj);
      objc_storeStrong(&v170, obj);
      objc_storeStrong(&v171, obj);
      objc_storeStrong(&v172, obj);
      objc_storeStrong(&v183, obj);
      objc_storeStrong(&v184, obj);
    }

    objc_storeStrong(&oslog, 0);
    v163 = 1;
  }

  v26 = 0;
  objc_storeStrong(&v187, 0);
  objc_storeStrong(location, v26);
}

- (id)targetedUpdateForDownload:(id)download
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, download);
  v4 = selfCopy;
  descriptor = [location[0] descriptor];
  v6 = [(SUUIStatefulUIManager *)v4 targetedUpdateMatchingDescriptor:?];
  MEMORY[0x277D82BD8](descriptor);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)targetedUpdateMatchingDescriptor:(id)descriptor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  preferredStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy preferredStatefulDescriptor];
  alternateStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy alternateStatefulDescriptor];
  if ([preferredStatefulDescriptor isEqualToDescriptor:location[0]])
  {
    v9 = MEMORY[0x277D82BE0](preferredStatefulDescriptor);
  }

  else if ([alternateStatefulDescriptor isEqualToDescriptor:location[0]])
  {
    v9 = MEMORY[0x277D82BE0](alternateStatefulDescriptor);
  }

  else
  {
    v9 = 0;
  }

  objc_storeStrong(&alternateStatefulDescriptor, 0);
  objc_storeStrong(&preferredStatefulDescriptor, 0);
  objc_storeStrong(location, 0);
  v3 = v9;

  return v3;
}

- (void)performUpdateOperation:(int64_t)operation withDescriptor:(id)descriptor byApplyingSelector:(SEL)selector context:(id)context auxiliaryOperation:(BOOL)auxiliaryOperation delegate:(id)delegate delegateCallbackQueue:(id)queue resultsValidation:(id)self0 resultsAssignment:(id)self1 completion:(id)self2
{
  selfCopy = self;
  v42 = a2;
  operationCopy = operation;
  location = 0;
  objc_storeStrong(&location, descriptor);
  selectorCopy = selector;
  v38 = 0;
  objc_storeStrong(&v38, context);
  auxiliaryOperationCopy = auxiliaryOperation;
  v36 = 0;
  objc_storeStrong(&v36, delegate);
  v35 = 0;
  objc_storeStrong(&v35, queue);
  v34 = 0;
  objc_storeStrong(&v34, validation);
  v33 = 0;
  objc_storeStrong(&v33, assignment);
  v32 = 0;
  objc_storeStrong(&v32, completion);
  objc_initWeak(&v31, selfCopy);
  queue = selfCopy->_operationsQueue;
  v17 = MEMORY[0x277D85DD0];
  v18 = -1073741824;
  v19 = 0;
  v20 = __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke;
  v21 = &unk_279CC6770;
  objc_copyWeak(v29, &v31);
  v29[1] = v42;
  v25 = MEMORY[0x277D82BE0](v32);
  v30 = auxiliaryOperationCopy;
  v29[2] = operationCopy;
  v22 = MEMORY[0x277D82BE0](location);
  v23 = MEMORY[0x277D82BE0](v35);
  v29[3] = selectorCopy;
  v26 = MEMORY[0x277D82BE0](v38);
  v24 = MEMORY[0x277D82BE0](v36);
  v27 = MEMORY[0x277D82BE0](v34);
  v28 = MEMORY[0x277D82BE0](v33);
  dispatch_async(queue, &v17);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v25, 0);
  objc_destroyWeak(v29);
  objc_destroyWeak(&v31);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&location, 0);
}

void __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke(id *a1)
{
  v350 = &v369;
  v351 = a1;
  v352 = "[SUUIStatefulUIManager performUpdateOperation:withDescriptor:byApplyingSelector:context:auxiliaryOperation:delegate:delegateCallbackQueue:resultsValidation:resultsAssignment:completion:]_block_invoke";
  v353 = "[SUUIStatefulUIManager performUpdateOperation:withDescriptor:byApplyingSelector:context:auxiliaryOperation:delegate:delegateCallbackQueue:resultsValidation:resultsAssignment:completion:]_block_invoke_2";
  v427 = *MEMORY[0x277D85DE8];
  v415[2] = a1;
  v415[1] = a1;
  WeakRetained = objc_loadWeakRetained(a1 + 11);
  v415[0] = WeakRetained;
  v349 = 0;
  if (!WeakRetained)
  {
    v348 = +[SUUILoggingContext softwareUpdateUILogger];
    v346 = v348;
    v347 = [v346 oslog];
    v1 = v347;
    v2 = v346;
    *(v350 + 67) = v1;
    MEMORY[0x277D82BD8](v2);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(*(v350 + 67), OS_LOG_TYPE_ERROR))
    {
      log = *(v350 + 67);
      *v344 = type;
      v345 = NSStringFromSelector(v351[12]);
      v342 = v345;
      v3 = MEMORY[0x277D82BE0](v342);
      v4 = v352;
      *(v350 + 65) = v3;
      buf = v426;
      __os_log_helper_16_2_2_8_32_8_66(v426, v4, v3);
      _os_log_error_impl(&dword_26ADE5000, log, v344[0], "%s: Self is nil in %{public}@. Stopping.", v426, 0x16u);
      MEMORY[0x277D82BD8](v342);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v414, 0);
    v5 = v350;
    *(v350 + 129) = 1;
    v349 = *(v5 + 129) != 0;
  }

  if (v349)
  {
    v6 = MEMORY[0x277D85CD0];
    v7 = MEMORY[0x277D85CD0];
    v8 = v351;
    v9 = v350;
    queue = v7;
    block = &v410;
    *(v350 + 59) = MEMORY[0x277D85DD0];
    *(v9 + 120) = -1073741824;
    *(v9 + 121) = 0;
    *(v9 + 61) = __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_450;
    *(v9 + 62) = &unk_279CC61E0;
    v338 = &v411;
    v10 = MEMORY[0x277D82BE0](v8[7]);
    v11 = block;
    v12 = v10;
    v13 = queue;
    *(v350 + 63) = v12;
    dispatch_async(v13, v11);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(v338, 0);
    *(v350 + 117) = 1;
  }

  else if ((v351[15] & 1) != 0 || (v337 = [*(v350 + 68) currentUpdateOperationType], v14 = v350, *(v350 + 57) = v337, !*(v14 + 57)))
  {
    v241 = [MEMORY[0x277CCAD78] UUID];
    v239 = v241;
    v240 = [v239 UUIDString];
    v88 = v240;
    v89 = v239;
    *(v350 + 24) = v88;
    MEMORY[0x277D82BD8](v89);
    v238 = [*(v350 + 68) environment];
    v234 = v238;
    v235 = *(v350 + 68);
    v236 = *(v350 + 24);
    v237 = v351[5];
    v385 = 0;
    if (v237)
    {
      v233 = v237;
    }

    else
    {
      v232 = [*(v350 + 68) delegateCallbackQueue];
      v90 = v232;
      *(v350 + 22) = v90;
      v385 = 1;
      v233 = v90;
    }

    v231 = [v234 updateOperationWithManager:v235 identifier:v236 delegateCallbackQueue:v233 completionQueue:*(*(v350 + 68) + 208)];
    *(v350 + 23) = v231;
    if (v385)
    {
      MEMORY[0x277D82BD8](*(v350 + 22));
    }

    MEMORY[0x277D82BD8](v234);
    v230 = objc_opt_respondsToSelector();
    if ((v230 & 1) == 0)
    {
      v228 = *(v350 + 23);
      v229 = objc_opt_class();
      v227 = NSStringFromClass(v229);
      v225 = v227;
      v226 = NSStringFromSelector(v351[14]);
      _suui_precondition_failure_with_format(@"Can't perform the update request since the Update Operation object (%p, of type: %@) doesn't respond to the selector %@.", v228, v225, v226);
    }

    v224 = +[SUUILoggingContext statefulUILogger];
    v222 = v224;
    v223 = [v222 oslog];
    v91 = v223;
    v92 = v222;
    *(v350 + 20) = v91;
    MEMORY[0x277D82BD8](v92);
    v383 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(*(v350 + 20), OS_LOG_TYPE_DEFAULT))
    {
      v218 = *(v350 + 20);
      *v219 = v383;
      v220 = *(v350 + 68);
      v221 = objc_opt_class();
      v217 = NSStringFromClass(v221);
      v214 = v217;
      v93 = MEMORY[0x277D82BE0](v214);
      v94 = v350;
      v215 = v93;
      *(v350 + 18) = v93;
      v216 = SUUIStatefulUIStateToString(*(*(v94 + 68) + 40));
      v211 = v216;
      v95 = MEMORY[0x277D82BE0](v211);
      v96 = v350;
      v212 = v95;
      *(v350 + 17) = v95;
      v213 = [v96[68] currentState];
      v210 = [*(v350 + 68) delegate];
      v209 = v210;
      v380 = 0;
      v379 = 0;
      if (v209)
      {
        v208 = [*(v350 + 68) delegate];
        *(v350 + 16) = v208;
        v380 = 1;
        v207 = objc_opt_class();
        v206 = NSStringFromClass(v207);
        v97 = v206;
        *(v350 + 14) = v97;
        v379 = 1;
        v205 = v97;
      }

      else
      {
        v205 = @"(null)";
      }

      v203 = v205;
      v204 = [*(v350 + 68) delegate];
      v201 = v204;
      v202 = [*(v350 + 68) scanError];
      v199 = v202;
      v200 = [*(v350 + 68) preferredStatefulDescriptor];
      v197 = v200;
      v198 = [*(v350 + 68) alternateStatefulDescriptor];
      v195 = v198;
      v196 = [*(v350 + 68) currentDownload];
      v194 = v196;
      v378 = 0;
      v377 = 0;
      v376 = 0;
      if (v194)
      {
        v193 = [*(v350 + 68) currentDownload];
        v98 = v193;
        *(v350 + 12) = v98;
        v378 = 1;
        v192 = [v98 descriptor];
        v99 = v192;
        *(v350 + 10) = v99;
        v377 = 1;
        v191 = [v99 updateName];
        v100 = v191;
        *(v350 + 8) = v100;
        v376 = 1;
        v190 = v100;
      }

      else
      {
        v190 = @"(null)";
      }

      v188 = v190;
      v189 = [*(v350 + 68) currentDownload];
      v186 = v189;
      v187 = [*(v350 + 68) currentUpdateOperationType];
      v185 = SUUIUpdateContinuousOperationTypeToString(v187);
      v182 = v185;
      v101 = MEMORY[0x277D82BE0](v182);
      v102 = v350;
      v183 = v101;
      *(v350 + 6) = v101;
      v184 = [v102[68] isTargetedUpdateScheduledForAutoInstall];
      v419 = v184;
      if (v184)
      {
        v103 = @"YES";
      }

      else
      {
        v103 = @"NO";
      }

      v181 = v103;
      v104 = v103;
      v178 = v181;
      v105 = MEMORY[0x277D82BE0](v178);
      v106 = v350;
      v179 = v105;
      *(v350 + 5) = v105;
      v180 = [v106[68] hidingPreferredDescriptor];
      v418 = v180;
      if (v180)
      {
        v107 = @"YES";
      }

      else
      {
        v107 = @"NO";
      }

      v177 = v107;
      v108 = v107;
      v174 = v177;
      v109 = MEMORY[0x277D82BE0](v174);
      v110 = v350;
      v175 = v109;
      *(v350 + 4) = v109;
      v176 = [v110[68] hiddenPreferredStatefulDescriptor];
      v172 = v176;
      v173 = [v172 updateName];
      v169 = v173;
      v111 = MEMORY[0x277D82BE0](v169);
      v112 = v350;
      v170 = v111;
      *(v350 + 3) = v111;
      v171 = [v112[68] hidingAlternateDescriptor];
      v417 = v171;
      if (v171)
      {
        v113 = @"YES";
      }

      else
      {
        v113 = @"NO";
      }

      v168 = v113;
      v114 = v113;
      v165 = v168;
      v115 = MEMORY[0x277D82BE0](v165);
      v116 = v350;
      v166 = v115;
      *(v350 + 2) = v115;
      v167 = [v116[68] hiddenAlternateStatefulDescriptor];
      v163 = v167;
      v164 = [v163 updateName];
      v160 = v164;
      v117 = MEMORY[0x277D82BE0](v160);
      v118 = v350;
      v161 = v117;
      *(v350 + 1) = v117;
      v162 = [v118[68] enrolledBetaProgram];
      v159 = v162;
      v368 = 0;
      if (v159)
      {
        v158 = [*(v350 + 68) enrolledBetaProgram];
        v119 = v158;
        *v350 = v119;
        v368 = 1;
        v157 = [v119 programID];
        v156 = v157;
      }

      else
      {
        v156 = 0;
      }

      v154 = v156;
      v155 = [*(*(v350 + 68) + 120) count];
      v153 = [*(v350 + 68) canEnrollInBetaUpdates];
      v416 = v153;
      if (v153)
      {
        v120 = @"YES";
      }

      else
      {
        v120 = @"NO";
      }

      v152 = v120;
      v121 = v120;
      v146 = v152;
      v147 = MEMORY[0x277D82BE0](v146);
      v367 = v147;
      v148 = *(*(v350 + 68) + 168);
      v149 = *(*(v350 + 68) + 176);
      v150 = *(*(v350 + 68) + 184);
      v151 = [*(*(v350 + 68) + 192) count];
      v145 = SUUIUpdateContinuousOperationTypeToString(v351[13]);
      v144 = v145;
      v366 = MEMORY[0x277D82BE0](v144);
      v122 = v351[4];
      v123 = *(v350 + 24);
      v142 = &v124;
      v143 = v424;
      __os_log_helper_16_2_28_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66_8_66(v424, v353, v220, v215, v212, v213, v203, v201, v199, v197, v195, v188, v186, v183, v179, v175, v170, v166, v161, v154, v155, v147, v148, v149, v150, v151, v366, v122, v123);
      _os_log_impl(&dword_26ADE5000, v218, v219[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nStarting to perform the update operation %{public}@ into: %{public}@, using operation identifier: %{public}@", v143, 0x11Au);
      MEMORY[0x277D82BD8](v144);
      MEMORY[0x277D82BD8](v146);
      if (v368)
      {
        MEMORY[0x277D82BD8](*v350);
      }

      MEMORY[0x277D82BD8](v159);
      MEMORY[0x277D82BD8](v160);
      MEMORY[0x277D82BD8](v163);
      MEMORY[0x277D82BD8](v165);
      MEMORY[0x277D82BD8](v169);
      MEMORY[0x277D82BD8](v172);
      MEMORY[0x277D82BD8](v174);
      MEMORY[0x277D82BD8](v178);
      MEMORY[0x277D82BD8](v182);
      MEMORY[0x277D82BD8](v186);
      if (v376)
      {
        MEMORY[0x277D82BD8](*(v350 + 8));
      }

      if (v377)
      {
        MEMORY[0x277D82BD8](*(v350 + 10));
      }

      if (v378)
      {
        MEMORY[0x277D82BD8](*(v350 + 12));
      }

      MEMORY[0x277D82BD8](v194);
      MEMORY[0x277D82BD8](v195);
      MEMORY[0x277D82BD8](v197);
      MEMORY[0x277D82BD8](v199);
      MEMORY[0x277D82BD8](v201);
      if (v379)
      {
        MEMORY[0x277D82BD8](*(v350 + 14));
      }

      if (v380)
      {
        MEMORY[0x277D82BD8](*(v350 + 16));
      }

      MEMORY[0x277D82BD8](v209);
      MEMORY[0x277D82BD8](v211);
      MEMORY[0x277D82BD8](v214);
      objc_storeStrong(&v366, 0);
      objc_storeStrong(&v367, 0);
      objc_storeStrong(&v370, 0);
      objc_storeStrong(&v371, 0);
      objc_storeStrong(&v372, 0);
      objc_storeStrong(&v373, 0);
      objc_storeStrong(&v374, 0);
      objc_storeStrong(&v375, 0);
      objc_storeStrong(&v381, 0);
      objc_storeStrong(&v382, 0);
    }

    objc_storeStrong(&v384, 0);
    if (v351[15])
    {
      [*(*(v350 + 68) + 192) addObject:*(v350 + 23)];
    }

    else
    {
      [*(v350 + 68) setCurrentUpdateOperation:*(v350 + 23)];
      [*(v350 + 68) setCurrentUpdateOperationType:v351[13]];
    }

    v138 = *(v350 + 68);
    v139 = v351[14];
    v140 = *(v350 + 23);
    v141 = [v351[4] descriptor];
    v136 = v141;
    v137 = (*(v351[8] + 2))();
    v133 = v137;
    v134 = v351[6];
    v356 = MEMORY[0x277D85DD0];
    v357 = -1073741824;
    v358 = 0;
    v359 = __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_457;
    v360 = &unk_279CC6748;
    v135 = v364;
    objc_copyWeak(v364, v351 + 11);
    v127 = 1;
    v355 = 1;
    v131 = &v356;
    v364[1] = v351[12];
    v125 = v363;
    v363[0] = MEMORY[0x277D82BE0](v351[7]);
    v364[2] = v351[13];
    v126 = v131 + 4;
    v361 = MEMORY[0x277D82BE0](*(v350 + 24));
    v365 = v351[15] & v127;
    v128 = v131 + 5;
    v362 = MEMORY[0x277D82BE0](*(v350 + 23));
    v129 = v131 + 7;
    v363[1] = MEMORY[0x277D82BE0](v351[9]);
    v130 = v131 + 8;
    v363[2] = MEMORY[0x277D82BE0](v351[10]);
    v132 = MEMORY[0x26D66ADC0](v131);
    [v138 performSelector:v139 onTarget:v140 withObject:v136 withObject:v133 withObject:v134 withObject:v132];
    v355 = 0;
    MEMORY[0x277D82BD8](v132);
    MEMORY[0x277D82BD8](v133);
    MEMORY[0x277D82BD8](v136);
    objc_storeStrong(v130, 0);
    objc_storeStrong(v129, 0);
    objc_storeStrong(v128, 0);
    objc_storeStrong(v126, 0);
    objc_storeStrong(v125, 0);
    objc_destroyWeak(v135);
    objc_storeStrong(&v386, 0);
    objc_storeStrong(&v387, 0);
    *(v350 + 117) = 0;
  }

  else
  {
    v336 = +[SUUILoggingContext statefulUILogger];
    v334 = v336;
    v335 = [v334 oslog];
    v15 = v335;
    v16 = v334;
    *(v350 + 56) = v15;
    MEMORY[0x277D82BD8](v16);
    v408 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(*(v350 + 56), OS_LOG_TYPE_DEFAULT))
    {
      v330 = *(v350 + 56);
      *v331 = v408;
      v332 = *(v350 + 68);
      aClass = objc_opt_class();
      v329 = NSStringFromClass(aClass);
      v326 = v329;
      v17 = MEMORY[0x277D82BE0](v326);
      v18 = v350;
      v327 = v17;
      *(v350 + 54) = v17;
      v328 = SUUIStatefulUIStateToString(*(*(v18 + 68) + 40));
      v323 = v328;
      v19 = MEMORY[0x277D82BE0](v323);
      v20 = v350;
      v324 = v19;
      *(v350 + 53) = v19;
      v325 = [v20[68] currentState];
      v322 = [*(v350 + 68) delegate];
      v321 = v322;
      v405 = 0;
      v404 = 0;
      if (v321)
      {
        v320 = [*(v350 + 68) delegate];
        *(v350 + 52) = v320;
        v405 = 1;
        v319 = objc_opt_class();
        v318 = NSStringFromClass(v319);
        v21 = v318;
        *(v350 + 50) = v21;
        v404 = 1;
        v317 = v21;
      }

      else
      {
        v317 = @"(null)";
      }

      v315 = v317;
      v316 = [*(v350 + 68) delegate];
      v313 = v316;
      v314 = [*(v350 + 68) scanError];
      v311 = v314;
      v312 = [*(v350 + 68) preferredStatefulDescriptor];
      v309 = v312;
      v310 = [*(v350 + 68) alternateStatefulDescriptor];
      v307 = v310;
      v308 = [*(v350 + 68) currentDownload];
      v306 = v308;
      v403 = 0;
      v402 = 0;
      v401 = 0;
      if (v306)
      {
        v305 = [*(v350 + 68) currentDownload];
        v22 = v305;
        *(v350 + 48) = v22;
        v403 = 1;
        v304 = [v22 descriptor];
        v23 = v304;
        *(v350 + 46) = v23;
        v402 = 1;
        v303 = [v23 updateName];
        v24 = v303;
        *(v350 + 44) = v24;
        v401 = 1;
        v302 = v24;
      }

      else
      {
        v302 = @"(null)";
      }

      v300 = v302;
      v301 = [*(v350 + 68) currentDownload];
      v298 = v301;
      v299 = [*(v350 + 68) currentUpdateOperationType];
      v297 = SUUIUpdateContinuousOperationTypeToString(v299);
      v294 = v297;
      v25 = MEMORY[0x277D82BE0](v294);
      v26 = v350;
      v295 = v25;
      *(v350 + 42) = v25;
      v296 = [v26[68] isTargetedUpdateScheduledForAutoInstall];
      v423 = v296;
      if (v296)
      {
        v27 = @"YES";
      }

      else
      {
        v27 = @"NO";
      }

      v293 = v27;
      v28 = v27;
      v290 = v293;
      v29 = MEMORY[0x277D82BE0](v290);
      v30 = v350;
      v291 = v29;
      *(v350 + 41) = v29;
      v292 = [v30[68] hidingPreferredDescriptor];
      v422 = v292;
      if (v292)
      {
        v31 = @"YES";
      }

      else
      {
        v31 = @"NO";
      }

      v289 = v31;
      v32 = v31;
      v286 = v289;
      v33 = MEMORY[0x277D82BE0](v286);
      v34 = v350;
      v287 = v33;
      *(v350 + 40) = v33;
      v288 = [v34[68] hiddenPreferredStatefulDescriptor];
      v284 = v288;
      v285 = [v284 updateName];
      v281 = v285;
      v35 = MEMORY[0x277D82BE0](v281);
      v36 = v350;
      v282 = v35;
      *(v350 + 39) = v35;
      v283 = [v36[68] hidingAlternateDescriptor];
      v421 = v283;
      if (v283)
      {
        v37 = @"YES";
      }

      else
      {
        v37 = @"NO";
      }

      v280 = v37;
      v38 = v37;
      v277 = v280;
      v39 = MEMORY[0x277D82BE0](v277);
      v40 = v350;
      v278 = v39;
      *(v350 + 38) = v39;
      v279 = [v40[68] hiddenAlternateStatefulDescriptor];
      v275 = v279;
      v276 = [v275 updateName];
      v272 = v276;
      v41 = MEMORY[0x277D82BE0](v272);
      v42 = v350;
      v273 = v41;
      *(v350 + 37) = v41;
      v274 = [v42[68] enrolledBetaProgram];
      v271 = v274;
      v394 = 0;
      if (v271)
      {
        v270 = [*(v350 + 68) enrolledBetaProgram];
        v43 = v270;
        *(v350 + 36) = v43;
        v394 = 1;
        v269 = [v43 programID];
        v268 = v269;
      }

      else
      {
        v268 = 0;
      }

      v266 = v268;
      v267 = [*(*(v350 + 68) + 120) count];
      v265 = [*(v350 + 68) canEnrollInBetaUpdates];
      v420 = v265;
      if (v265)
      {
        v44 = @"YES";
      }

      else
      {
        v44 = @"NO";
      }

      v264 = v44;
      v45 = v44;
      v258 = v264;
      v46 = MEMORY[0x277D82BE0](v258);
      v47 = v350;
      v259 = v46;
      *(v350 + 34) = v46;
      v260 = *(*(v47 + 68) + 168);
      v261 = *(*(v47 + 68) + 176);
      v262 = *(*(v47 + 68) + 184);
      v263 = [*(*(v47 + 68) + 192) count];
      v257 = SUUIUpdateContinuousOperationTypeToString(*(v350 + 57));
      v254 = v257;
      v48 = MEMORY[0x277D82BE0](v254);
      v49 = v351;
      v255 = v48;
      *(v350 + 33) = v48;
      v256 = SUUIUpdateContinuousOperationTypeToString(v49[13]);
      v50 = v273;
      v51 = v278;
      v52 = v282;
      v53 = v287;
      v54 = v291;
      v55 = v295;
      v56 = v298;
      v57 = v300;
      v58 = v307;
      v59 = v309;
      v253 = v256;
      v60 = MEMORY[0x277D82BE0](v253);
      v61 = v351;
      v62 = v266;
      v63 = v267;
      v64 = v259;
      v65 = v260;
      v66 = v261;
      v67 = v262;
      v68 = v263;
      v69 = v255;
      v70 = v353;
      v71 = v332;
      v72 = v327;
      v73 = v324;
      v74 = v325;
      v75 = v315;
      v76 = v313;
      v77 = v311;
      *(v350 + 32) = v60;
      v78 = v61[4];
      v251 = &v124;
      v252 = v425;
      __os_log_helper_16_2_28_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66_8_66(v425, v70, v71, v72, v73, v74, v75, v76, v77, v59, v58, v57, v56, v55, v54, v53, v52, v51, v50, v62, v63, v64, v65, v66, v67, v68, v69, v60, v78);
      _os_log_impl(&dword_26ADE5000, v330, v331[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nThere is already an update operation running (%{public}@). Ignoring update request %{public}@, into: %{public}@", v252, 0x11Au);
      MEMORY[0x277D82BD8](v253);
      MEMORY[0x277D82BD8](v254);
      MEMORY[0x277D82BD8](v258);
      if (v394)
      {
        MEMORY[0x277D82BD8](*(v350 + 36));
      }

      MEMORY[0x277D82BD8](v271);
      MEMORY[0x277D82BD8](v272);
      MEMORY[0x277D82BD8](v275);
      MEMORY[0x277D82BD8](v277);
      MEMORY[0x277D82BD8](v281);
      MEMORY[0x277D82BD8](v284);
      MEMORY[0x277D82BD8](v286);
      MEMORY[0x277D82BD8](v290);
      MEMORY[0x277D82BD8](v294);
      MEMORY[0x277D82BD8](v298);
      if (v401)
      {
        MEMORY[0x277D82BD8](*(v350 + 44));
      }

      if (v402)
      {
        MEMORY[0x277D82BD8](*(v350 + 46));
      }

      if (v403)
      {
        MEMORY[0x277D82BD8](*(v350 + 48));
      }

      MEMORY[0x277D82BD8](v306);
      MEMORY[0x277D82BD8](v307);
      MEMORY[0x277D82BD8](v309);
      MEMORY[0x277D82BD8](v311);
      MEMORY[0x277D82BD8](v313);
      if (v404)
      {
        MEMORY[0x277D82BD8](*(v350 + 50));
      }

      if (v405)
      {
        MEMORY[0x277D82BD8](*(v350 + 52));
      }

      MEMORY[0x277D82BD8](v321);
      MEMORY[0x277D82BD8](v323);
      MEMORY[0x277D82BD8](v326);
      objc_storeStrong(&v391, 0);
      objc_storeStrong(&v392, 0);
      objc_storeStrong(&v393, 0);
      objc_storeStrong(&v395, 0);
      objc_storeStrong(&v396, 0);
      objc_storeStrong(&v397, 0);
      objc_storeStrong(&v398, 0);
      objc_storeStrong(&v399, 0);
      objc_storeStrong(&v400, 0);
      objc_storeStrong(&v406, 0);
      objc_storeStrong(&v407, 0);
    }

    objc_storeStrong(&v409, 0);
    v250 = [MEMORY[0x277D643F8] sharedCore];
    v248 = v250;
    v249 = [*(v350 + 68) delegateCallbackQueue];
    v246 = v249;
    v247 = [v248 selectDelegateCallbackQueue:?];
    v79 = v247;
    v80 = v350;
    v81 = v351;
    v244 = v79;
    *(v350 + 25) = MEMORY[0x277D85DD0];
    *(v80 + 52) = -1073741824;
    *(v80 + 53) = 0;
    *(v80 + 27) = __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_452;
    *(v80 + 28) = &unk_279CC6548;
    v245 = v390;
    objc_copyWeak(v390, v81 + 11);
    v82 = v351;
    v243 = &v388;
    *(v350 + 31) = v351[12];
    v242 = &v389;
    v83 = MEMORY[0x277D82BE0](v82[7]);
    v84 = v243;
    v85 = v83;
    v86 = v244;
    *(v350 + 29) = v85;
    dispatch_async(v86, v84);
    MEMORY[0x277D82BD8](v244);
    MEMORY[0x277D82BD8](v246);
    MEMORY[0x277D82BD8](v248);
    v87 = v242;
    *(v350 + 117) = 1;
    objc_storeStrong(v87, 0);
    objc_destroyWeak(v245);
  }

  objc_storeStrong(v415, 0);
}

void __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_450(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0, 0);
  }

  objc_storeStrong(location, 0);
}

void __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_452(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v28[2] = a1;
  v28[1] = a1;
  v28[0] = objc_loadWeakRetained((a1 + 40));
  v8 = 0;
  if (!v28[0])
  {
    v7 = +[SUUILoggingContext softwareUpdateUILogger];
    v27 = [v7 oslog];
    MEMORY[0x277D82BD8](v7);
    v26 = 16;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      log = v27;
      type = v26;
      v6 = NSStringFromSelector(*(a1 + 48));
      v25 = MEMORY[0x277D82BE0](v6);
      __os_log_helper_16_2_2_8_32_8_66(v29, "[SUUIStatefulUIManager performUpdateOperation:withDescriptor:byApplyingSelector:context:auxiliaryOperation:delegate:delegateCallbackQueue:resultsValidation:resultsAssignment:completion:]_block_invoke", v25);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v29, 0x16u);
      MEMORY[0x277D82BD8](v6);
      objc_storeStrong(&v25, 0);
    }

    objc_storeStrong(&v27, 0);
    v24 = 1;
    v8 = 1;
  }

  if (v8)
  {
    v2 = MEMORY[0x277D85CD0];
    v1 = MEMORY[0x277D85CD0];
    queue = v2;
    v18 = MEMORY[0x277D85DD0];
    v19 = -1073741824;
    v20 = 0;
    v21 = __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_453;
    v22 = &unk_279CC61E0;
    v23 = MEMORY[0x277D82BE0](*(a1 + 32));
    dispatch_async(queue, &v18);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v23, 0);
    v17 = 1;
  }

  else
  {
    v16 = MEMORY[0x26D66ADC0](*(a1 + 32));
    v14 = 0;
    v12 = 0;
    v10 = 0;
    if (v16)
    {
      v15 = [v28[0] environment];
      v14 = 1;
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:3 userInfo:?];
      v12 = 1;
      v11 = [v15 statefulErrorWithError:?];
      v10 = 1;
      (*(v16 + 2))(v16, 0, 0);
    }

    if (v10)
    {
      MEMORY[0x277D82BD8](v11);
    }

    if (v12)
    {
      MEMORY[0x277D82BD8](v13);
    }

    if (v14)
    {
      MEMORY[0x277D82BD8](v15);
    }

    objc_storeStrong(&v16, 0);
    v17 = 0;
  }

  objc_storeStrong(v28, 0);
}

void __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_453(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0, 0);
  }

  objc_storeStrong(location, 0);
}

void __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_457(void *a1, void *a2, void *a3)
{
  v211 = &v226;
  v212 = a1;
  obj = a3;
  v214 = "[SUUIStatefulUIManager performUpdateOperation:withDescriptor:byApplyingSelector:context:auxiliaryOperation:delegate:delegateCallbackQueue:resultsValidation:resultsAssignment:completion:]_block_invoke";
  v215 = "[SUUIStatefulUIManager performUpdateOperation:withDescriptor:byApplyingSelector:context:auxiliaryOperation:delegate:delegateCallbackQueue:resultsValidation:resultsAssignment:completion:]_block_invoke_2";
  v265 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v257 = 0;
  objc_storeStrong(&v257, obj);
  v256[1] = v212;
  WeakRetained = objc_loadWeakRetained(v212 + 9);
  v256[0] = WeakRetained;
  v209 = 0;
  if (!WeakRetained)
  {
    v208 = +[SUUILoggingContext softwareUpdateUILogger];
    v206 = v208;
    v207 = [v206 oslog];
    v3 = v207;
    v4 = v206;
    v211[40] = v3;
    MEMORY[0x277D82BD8](v4);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v211[40], OS_LOG_TYPE_ERROR))
    {
      log = v211[40];
      *v204 = type;
      v205 = NSStringFromSelector(*(v212 + 10));
      v202 = v205;
      v5 = MEMORY[0x277D82BE0](v202);
      v6 = v214;
      v211[38] = v5;
      buf = v264;
      __os_log_helper_16_2_2_8_32_8_66(v264, v6, v5);
      _os_log_error_impl(&dword_26ADE5000, log, v204[0], "%s: Self is nil in %{public}@. Stopping.", v264, 0x16u);
      MEMORY[0x277D82BD8](v202);
      objc_storeStrong(&v253, 0);
    }

    objc_storeStrong(&v255, 0);
    v252[3] = 1;
    v209 = 1;
  }

  if (v209)
  {
    v7 = MEMORY[0x277D85CD0];
    v8 = MEMORY[0x277D85CD0];
    v9 = v212;
    v10 = v211;
    queue = v8;
    block = &v249;
    v211[32] = MEMORY[0x277D85DD0];
    v250 = -1073741824;
    v251 = 0;
    v10[34] = __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_458;
    v10[35] = &unk_279CC61E0;
    v198 = v252;
    v11 = MEMORY[0x277D82BE0](v9[6]);
    v12 = block;
    v13 = v11;
    v14 = queue;
    v211[36] = v13;
    dispatch_async(v14, v12);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(v198, 0);
    v248 = 1;
  }

  else
  {
    v197 = +[SUUILoggingContext statefulUILogger];
    v195 = v197;
    v196 = [v195 oslog];
    v15 = v196;
    v16 = v195;
    v211[30] = v15;
    MEMORY[0x277D82BD8](v16);
    v246 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v211[30], OS_LOG_TYPE_DEFAULT))
    {
      v191 = v211[30];
      *v192 = v246;
      v193 = v211[41];
      aClass = objc_opt_class();
      v190 = NSStringFromClass(aClass);
      v187 = v190;
      v17 = MEMORY[0x277D82BE0](v187);
      v18 = v211;
      v188 = v17;
      v211[28] = v17;
      v189 = SUUIStatefulUIStateToString(*(v18[41] + 40));
      v184 = v189;
      v19 = MEMORY[0x277D82BE0](v184);
      v20 = v211;
      v185 = v19;
      v211[27] = v19;
      v186 = [v20[41] currentState];
      v183 = [v211[41] delegate];
      v182 = v183;
      v243 = 0;
      v242 = 0;
      if (v182)
      {
        v181 = [v211[41] delegate];
        v211[26] = v181;
        v243 = 1;
        v180 = objc_opt_class();
        v179 = NSStringFromClass(v180);
        v21 = v179;
        v211[24] = v21;
        v242 = 1;
        v178 = v21;
      }

      else
      {
        v178 = @"(null)";
      }

      v176 = v178;
      v177 = [v211[41] delegate];
      v174 = v177;
      v175 = [v211[41] scanError];
      v172 = v175;
      v173 = [v211[41] preferredStatefulDescriptor];
      v170 = v173;
      v171 = [v211[41] alternateStatefulDescriptor];
      v168 = v171;
      v169 = [v211[41] currentDownload];
      v167 = v169;
      v241 = 0;
      v240 = 0;
      v239 = 0;
      if (v167)
      {
        v166 = [v211[41] currentDownload];
        v22 = v166;
        v211[22] = v22;
        v241 = 1;
        v165 = [v22 descriptor];
        v23 = v165;
        v211[20] = v23;
        v240 = 1;
        v164 = [v23 updateName];
        v24 = v164;
        v211[18] = v24;
        v239 = 1;
        v163 = v24;
      }

      else
      {
        v163 = @"(null)";
      }

      v161 = v163;
      v162 = [v211[41] currentDownload];
      v159 = v162;
      v160 = [v211[41] currentUpdateOperationType];
      v158 = SUUIUpdateContinuousOperationTypeToString(v160);
      v155 = v158;
      v25 = MEMORY[0x277D82BE0](v155);
      v26 = v211;
      v156 = v25;
      v211[16] = v25;
      v157 = [v26[41] isTargetedUpdateScheduledForAutoInstall];
      v262 = v157;
      if (v157)
      {
        v27 = @"YES";
      }

      else
      {
        v27 = @"NO";
      }

      v154 = v27;
      v28 = v27;
      v151 = v154;
      v29 = MEMORY[0x277D82BE0](v151);
      v30 = v211;
      v152 = v29;
      v211[15] = v29;
      v153 = [v30[41] hidingPreferredDescriptor];
      v261 = v153;
      if (v153)
      {
        v31 = @"YES";
      }

      else
      {
        v31 = @"NO";
      }

      v150 = v31;
      v32 = v31;
      v147 = v150;
      v33 = MEMORY[0x277D82BE0](v147);
      v34 = v211;
      v148 = v33;
      v211[14] = v33;
      v149 = [v34[41] hiddenPreferredStatefulDescriptor];
      v145 = v149;
      v146 = [v145 updateName];
      v142 = v146;
      v35 = MEMORY[0x277D82BE0](v142);
      v36 = v211;
      v143 = v35;
      v211[13] = v35;
      v144 = [v36[41] hidingAlternateDescriptor];
      v260 = v144;
      if (v144)
      {
        v37 = @"YES";
      }

      else
      {
        v37 = @"NO";
      }

      v141 = v37;
      v38 = v37;
      v138 = v141;
      v39 = MEMORY[0x277D82BE0](v138);
      v40 = v211;
      v139 = v39;
      v211[12] = v39;
      v140 = [v40[41] hiddenAlternateStatefulDescriptor];
      v136 = v140;
      v137 = [v136 updateName];
      v133 = v137;
      v41 = MEMORY[0x277D82BE0](v133);
      v42 = v211;
      v134 = v41;
      v211[11] = v41;
      v135 = [v42[41] enrolledBetaProgram];
      v132 = v135;
      v232 = 0;
      if (v132)
      {
        v131 = [v211[41] enrolledBetaProgram];
        v43 = v131;
        v211[10] = v43;
        v232 = 1;
        v130 = [v43 programID];
        v129 = v130;
      }

      else
      {
        v129 = 0;
      }

      v127 = v129;
      v128 = [*(v211[41] + 120) count];
      v126 = [v211[41] canEnrollInBetaUpdates];
      v259 = v126;
      if (v126)
      {
        v44 = @"YES";
      }

      else
      {
        v44 = @"NO";
      }

      v125 = v44;
      v45 = v44;
      v119 = v125;
      v46 = MEMORY[0x277D82BE0](v119);
      v47 = v211;
      v120 = v46;
      v211[8] = v46;
      v121 = *(v47[41] + 168);
      v122 = *(v47[41] + 176);
      v123 = *(v47[41] + 184);
      v124 = [*(v47[41] + 192) count];
      v118 = SUUIUpdateContinuousOperationTypeToString(*(v212 + 11));
      v48 = v139;
      v49 = v143;
      v50 = v148;
      v51 = v152;
      v52 = v156;
      v53 = v159;
      v54 = v161;
      v55 = v168;
      v56 = v170;
      v57 = v172;
      v117 = v118;
      v58 = MEMORY[0x277D82BE0](v117);
      v59 = v212;
      v60 = v134;
      v61 = v127;
      v62 = v128;
      v63 = v120;
      v64 = v121;
      v65 = v122;
      v66 = v123;
      v67 = v124;
      v68 = v215;
      v69 = v193;
      v70 = v188;
      v71 = v185;
      v72 = v186;
      v73 = v176;
      v74 = v174;
      v211[7] = v58;
      v75 = v59[4];
      v115 = &v89;
      v116 = v263;
      __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66(v263, v68, v69, v70, v71, v72, v73, v74, v57, v56, v55, v54, v53, v52, v51, v50, v49, v48, v60, v61, v62, v63, v64, v65, v66, v67, v58, v75);
      _os_log_impl(&dword_26ADE5000, v191, v192[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFinished to perform the update operation %{public}@ using operation identifier: %{public}@", v116, 0x110u);
      MEMORY[0x277D82BD8](v117);
      MEMORY[0x277D82BD8](v119);
      if (v232)
      {
        MEMORY[0x277D82BD8](v211[10]);
      }

      MEMORY[0x277D82BD8](v132);
      MEMORY[0x277D82BD8](v133);
      MEMORY[0x277D82BD8](v136);
      MEMORY[0x277D82BD8](v138);
      MEMORY[0x277D82BD8](v142);
      MEMORY[0x277D82BD8](v145);
      MEMORY[0x277D82BD8](v147);
      MEMORY[0x277D82BD8](v151);
      MEMORY[0x277D82BD8](v155);
      MEMORY[0x277D82BD8](v159);
      if (v239)
      {
        MEMORY[0x277D82BD8](v211[18]);
      }

      if (v240)
      {
        MEMORY[0x277D82BD8](v211[20]);
      }

      if (v241)
      {
        MEMORY[0x277D82BD8](v211[22]);
      }

      MEMORY[0x277D82BD8](v167);
      MEMORY[0x277D82BD8](v168);
      MEMORY[0x277D82BD8](v170);
      MEMORY[0x277D82BD8](v172);
      MEMORY[0x277D82BD8](v174);
      if (v242)
      {
        MEMORY[0x277D82BD8](v211[24]);
      }

      if (v243)
      {
        MEMORY[0x277D82BD8](v211[26]);
      }

      MEMORY[0x277D82BD8](v182);
      MEMORY[0x277D82BD8](v184);
      MEMORY[0x277D82BD8](v187);
      objc_storeStrong(&v230, 0);
      objc_storeStrong(&v231, 0);
      objc_storeStrong(&v233, 0);
      objc_storeStrong(&v234, 0);
      objc_storeStrong(&v235, 0);
      objc_storeStrong(&v236, 0);
      objc_storeStrong(&v237, 0);
      objc_storeStrong(&v238, 0);
      objc_storeStrong(&v244, 0);
      objc_storeStrong(&v245, 0);
    }

    objc_storeStrong(&v247, 0);
    if (*(v212 + 96))
    {
      [*(v211[41] + 192) removeObject:*(v212 + 5)];
    }

    else
    {
      [v211[41] setCurrentUpdateOperation:0];
    }

    if (v211[44] && (!*(v212 + 7) || (v114 = (*(*(v212 + 7) + 16))(), (v114 & 1) != 0)))
    {
      v100 = MEMORY[0x26D66ADC0](*(v212 + 8));
      v225 = v100;
      if (v100)
      {
        (*(v225 + 2))(v225, v211[44]);
        v224 = 0;
      }

      else
      {
        v223 = 0;
      }

      objc_storeStrong(&v225, 0);
      v98 = v211[41];
      v99 = [v211[41] currentDownload];
      v95 = v99;
      v96 = v211[43];
      v216 = MEMORY[0x277D85DD0];
      v217 = -1073741824;
      v218 = 0;
      v219 = __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_2;
      v220 = &unk_279CC6720;
      v97 = v222;
      objc_copyWeak(v222, v212 + 9);
      v94 = &v216;
      v222[1] = *(v212 + 10);
      v222[2] = *(v212 + 11);
      v90 = v221;
      v221[0] = MEMORY[0x277D82BE0](*(v212 + 4));
      v91 = v94 + 7;
      v221[3] = MEMORY[0x277D82BE0](*(v212 + 6));
      v92 = v94 + 5;
      v221[1] = MEMORY[0x277D82BE0](v211[44]);
      v93 = v94 + 6;
      v221[2] = MEMORY[0x277D82BE0](v211[43]);
      [v98 performPostUpdateOperationRefreshWithDownload:v95 error:v96 completionHandler:v94];
      MEMORY[0x277D82BD8](v95);
      objc_storeStrong(v93, 0);
      objc_storeStrong(v92, 0);
      objc_storeStrong(v91, 0);
      objc_storeStrong(v90, 0);
      objc_destroyWeak(v97);
      v248 = 0;
    }

    else
    {
      [v211[41] setCurrentUpdateOperationType:0];
      v113 = [MEMORY[0x277D643F8] sharedCore];
      v111 = v113;
      v112 = [v211[41] delegateCallbackQueue];
      v109 = v112;
      v110 = [v111 selectDelegateCallbackQueue:?];
      v76 = v110;
      v77 = v212;
      v78 = v211;
      v108 = v76;
      v107 = &v226;
      v226 = MEMORY[0x277D85DD0];
      v227 = -1073741824;
      v228 = 0;
      v211[2] = __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_459;
      v78[3] = &unk_279CC6570;
      v104 = &v229;
      v79 = MEMORY[0x277D82BE0](v77[6]);
      v80 = v211;
      v81 = v107;
      v211[6] = v79;
      v105 = (v81 + 32);
      v82 = MEMORY[0x277D82BE0](v80[44]);
      v83 = v211;
      v84 = v107;
      v211[4] = v82;
      v106 = (v84 + 40);
      v85 = MEMORY[0x277D82BE0](v83[43]);
      v86 = v107;
      v87 = v85;
      v88 = v108;
      v211[5] = v87;
      dispatch_async(v88, v86);
      MEMORY[0x277D82BD8](v108);
      MEMORY[0x277D82BD8](v109);
      MEMORY[0x277D82BD8](v111);
      v103 = [v211[43] traits];
      v101 = v103;
      v102 = [v101 noUpdateFound];
      MEMORY[0x277D82BD8](v101);
      if (v102)
      {
        [v211[41] checkForAvailableUpdates:1];
      }

      v248 = 1;
      objc_storeStrong(v106, 0);
      objc_storeStrong(v105, 0);
      objc_storeStrong(v104, 0);
    }
  }

  objc_storeStrong(v256, 0);
  if (!v248)
  {
    v248 = 0;
  }

  objc_storeStrong(&v257, 0);
  objc_storeStrong(location, 0);
}

void __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_458(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0, 0);
  }

  objc_storeStrong(location, 0);
}

void __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_459(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[6]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0, a1[4], a1[5]);
  }

  objc_storeStrong(location, 0);
}

void __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_2(id *a1, char a2)
{
  v86 = a1;
  v87 = "[SUUIStatefulUIManager performUpdateOperation:withDescriptor:byApplyingSelector:context:auxiliaryOperation:delegate:delegateCallbackQueue:resultsValidation:resultsAssignment:completion:]_block_invoke_2";
  v88 = "[SUUIStatefulUIManager performUpdateOperation:withDescriptor:byApplyingSelector:context:auxiliaryOperation:delegate:delegateCallbackQueue:resultsValidation:resultsAssignment:completion:]_block_invoke";
  v135 = *MEMORY[0x277D85DE8];
  v128 = a1;
  v127 = a2;
  v126[1] = a1;
  v126[0] = objc_loadWeakRetained(a1 + 8);
  v85 = 0;
  if (!v126[0])
  {
    v84 = +[SUUILoggingContext softwareUpdateUILogger];
    oslog = [v84 oslog];
    MEMORY[0x277D82BD8](v84);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v80 = type;
      v82 = NSStringFromSelector(v86[9]);
      location = &v123;
      v123 = MEMORY[0x277D82BE0](v82);
      buf = v134;
      __os_log_helper_16_2_2_8_32_8_66(v134, v87, v123);
      _os_log_error_impl(&dword_26ADE5000, log, v80[0], "%s: Self is nil in %{public}@. Stopping.", v134, 0x16u);
      MEMORY[0x277D82BD8](v82);
      objc_storeStrong(&v123, 0);
    }

    objc_storeStrong(&oslog, 0);
    v122 = 1;
    v85 = 1;
  }

  if (v85)
  {
    v121 = 1;
  }

  else
  {
    v78 = +[SUUILoggingContext statefulUILogger];
    v120 = [v78 oslog];
    MEMORY[0x277D82BD8](v78);
    v119 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
    {
      v69 = v120;
      *v70 = v119;
      v71 = v126[0];
      v2 = objc_opt_class();
      v72 = NSStringFromClass(v2);
      v73 = MEMORY[0x277D82BE0](v72);
      v118 = v73;
      v74 = SUUIStatefulUIStateToString(*(v126[0] + 5));
      v75 = MEMORY[0x277D82BE0](v74);
      v117 = v75;
      v76 = [v126[0] currentState];
      v77 = [v126[0] delegate];
      v115 = 0;
      v113 = 0;
      if (v77)
      {
        v116 = [v126[0] delegate];
        v67 = 1;
        v115 = 1;
        v3 = objc_opt_class();
        v114 = NSStringFromClass(v3);
        v113 = 1;
        v68 = v114;
      }

      else
      {
        v68 = @"(null)";
      }

      v61 = v68;
      v62 = [v126[0] delegate];
      v63 = [v126[0] scanError];
      v64 = [v126[0] preferredStatefulDescriptor];
      v65 = [v126[0] alternateStatefulDescriptor];
      v66 = [v126[0] currentDownload];
      v111 = 0;
      v109 = 0;
      v107 = 0;
      if (v66)
      {
        v112 = [v126[0] currentDownload];
        v59 = 1;
        v111 = 1;
        v110 = [v112 descriptor];
        v109 = 1;
        v108 = [v110 updateName];
        v107 = 1;
        v60 = v108;
      }

      else
      {
        v60 = @"(null)";
      }

      v36 = v60;
      v37 = [v126[0] currentDownload];
      v38 = SUUIUpdateContinuousOperationTypeToString([v126[0] currentUpdateOperationType]);
      v39 = MEMORY[0x277D82BE0](v38);
      v106 = v39;
      v132 = [v126[0] isTargetedUpdateScheduledForAutoInstall];
      v49 = @"NO";
      v50 = @"YES";
      v57 = 1;
      if (v132)
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      v40 = v4;
      v5 = v4;
      v41 = v40;
      v42 = MEMORY[0x277D82BE0](v41);
      v105 = v42;
      v131 = [v126[0] hidingPreferredDescriptor];
      if (v131)
      {
        v6 = v50;
      }

      else
      {
        v6 = v49;
      }

      v43 = v6;
      v7 = v6;
      v44 = v43;
      v45 = MEMORY[0x277D82BE0](v44);
      v104 = v45;
      v46 = [v126[0] hiddenPreferredStatefulDescriptor];
      v47 = [v46 updateName];
      v48 = MEMORY[0x277D82BE0](v47);
      v103 = v48;
      v130 = [v126[0] hidingAlternateDescriptor];
      if (v130)
      {
        v8 = v50;
      }

      else
      {
        v8 = v49;
      }

      v51 = v8;
      v9 = v8;
      v52 = v51;
      v53 = MEMORY[0x277D82BE0](v52);
      v102 = v53;
      v54 = [v126[0] hiddenAlternateStatefulDescriptor];
      v55 = [v54 updateName];
      v56 = MEMORY[0x277D82BE0](v55);
      v101 = v56;
      v58 = [v126[0] enrolledBetaProgram];
      v99 = 0;
      if (v58)
      {
        v100 = [v126[0] enrolledBetaProgram];
        v99 = 1;
        v35 = [v100 programID];
      }

      else
      {
        v35 = 0;
      }

      v24 = v35;
      v25 = [*(v126[0] + 15) count];
      v129 = [v126[0] canEnrollInBetaUpdates];
      if (v129)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v23 = v10;
      v11 = v10;
      v34 = v23;
      v26 = MEMORY[0x277D82BE0](v34);
      v98 = v26;
      v27 = *(v126[0] + 21);
      v28 = *(v126[0] + 22);
      v29 = *(v126[0] + 23);
      v30 = [*(v126[0] + 24) count];
      v33 = SUUIUpdateContinuousOperationTypeToString(v86[10]);
      v97 = MEMORY[0x277D82BE0](v33);
      v12 = v86[4];
      v31 = &v13;
      v32 = v133;
      __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66(v133, v88, v71, v73, v75, v76, v61, v62, v63, v64, v65, v36, v37, v39, v42, v45, v48, v53, v56, v24, v25, v26, v27, v28, v29, v30, v97, v12);
      _os_log_impl(&dword_26ADE5000, v69, v70[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFinished to perform the post-update refresh for update operation %{public}@, using update operation identifier: %{public}@", v32, 0x110u);
      MEMORY[0x277D82BD8](v33);
      MEMORY[0x277D82BD8](v34);
      if (v99)
      {
        MEMORY[0x277D82BD8](v100);
      }

      MEMORY[0x277D82BD8](v58);
      MEMORY[0x277D82BD8](v55);
      MEMORY[0x277D82BD8](v54);
      MEMORY[0x277D82BD8](v52);
      MEMORY[0x277D82BD8](v47);
      MEMORY[0x277D82BD8](v46);
      MEMORY[0x277D82BD8](v44);
      MEMORY[0x277D82BD8](v41);
      MEMORY[0x277D82BD8](v38);
      MEMORY[0x277D82BD8](v37);
      if (v107)
      {
        MEMORY[0x277D82BD8](v108);
      }

      if (v109)
      {
        MEMORY[0x277D82BD8](v110);
      }

      if (v111)
      {
        MEMORY[0x277D82BD8](v112);
      }

      MEMORY[0x277D82BD8](v66);
      MEMORY[0x277D82BD8](v65);
      MEMORY[0x277D82BD8](v64);
      MEMORY[0x277D82BD8](v63);
      MEMORY[0x277D82BD8](v62);
      if (v113)
      {
        MEMORY[0x277D82BD8](v114);
      }

      if (v115)
      {
        MEMORY[0x277D82BD8](v116);
      }

      MEMORY[0x277D82BD8](v77);
      MEMORY[0x277D82BD8](v74);
      MEMORY[0x277D82BD8](v72);
      obj = 0;
      objc_storeStrong(&v97, 0);
      objc_storeStrong(&v98, obj);
      objc_storeStrong(&v101, obj);
      objc_storeStrong(&v102, obj);
      objc_storeStrong(&v103, obj);
      objc_storeStrong(&v104, obj);
      objc_storeStrong(&v105, obj);
      objc_storeStrong(&v106, obj);
      objc_storeStrong(&v117, obj);
      objc_storeStrong(&v118, obj);
    }

    objc_storeStrong(&v120, 0);
    [v126[0] setCurrentUpdateOperationType:0];
    v17 = [MEMORY[0x277D643F8] sharedCore];
    v16 = [v126[0] delegateCallbackQueue];
    queue = [v17 selectDelegateCallbackQueue:?];
    block = &v89;
    v89 = MEMORY[0x277D85DD0];
    v90 = -1073741824;
    v91 = 0;
    v92 = __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_460;
    v93 = &unk_279CC6570;
    v20 = &v96;
    v96 = MEMORY[0x277D82BE0](v86[7]);
    v19 = (block + 32);
    v94 = MEMORY[0x277D82BE0](v86[5]);
    v18 = (block + 40);
    v95 = MEMORY[0x277D82BE0](v86[6]);
    dispatch_async(queue, block);
    MEMORY[0x277D82BD8](queue);
    MEMORY[0x277D82BD8](v16);
    MEMORY[0x277D82BD8](v17);
    v21 = 0;
    objc_storeStrong(v18, 0);
    objc_storeStrong(v19, v21);
    objc_storeStrong(v20, v21);
    v121 = 0;
  }

  objc_storeStrong(v126, 0);
}

void __187__SUUIStatefulUIManager_performUpdateOperation_withDescriptor_byApplyingSelector_context_auxiliaryOperation_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_460(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[6]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0, a1[4], a1[5]);
  }

  objc_storeStrong(location, 0);
}

- (void)performUpdateOnDownloadByApplyingSelector:(SEL)selector context:(id)context description:(id)description delegate:(id)delegate delegateCallbackQueue:(id)queue resultsValidation:(id)validation resultsAssignment:(id)assignment completion:(id)self0
{
  selfCopy = self;
  v37 = a2;
  selectorCopy = selector;
  location = 0;
  objc_storeStrong(&location, context);
  v34 = 0;
  objc_storeStrong(&v34, description);
  v33 = 0;
  objc_storeStrong(&v33, delegate);
  v32 = 0;
  objc_storeStrong(&v32, queue);
  v31 = 0;
  objc_storeStrong(&v31, validation);
  v30 = 0;
  objc_storeStrong(&v30, assignment);
  v29 = 0;
  objc_storeStrong(&v29, completion);
  objc_initWeak(&v28, selfCopy);
  queue = selfCopy->_operationsQueue;
  v15 = MEMORY[0x277D85DD0];
  v16 = -1073741824;
  v17 = 0;
  v18 = __165__SUUIStatefulUIManager_performUpdateOnDownloadByApplyingSelector_context_description_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke;
  v19 = &unk_279CC67E8;
  objc_copyWeak(v27, &v28);
  v27[1] = v37;
  v23 = MEMORY[0x277D82BE0](v29);
  v20 = MEMORY[0x277D82BE0](v32);
  v27[2] = selectorCopy;
  v21 = MEMORY[0x277D82BE0](v34);
  v24 = MEMORY[0x277D82BE0](location);
  v22 = MEMORY[0x277D82BE0](v33);
  v25 = MEMORY[0x277D82BE0](v31);
  v26 = MEMORY[0x277D82BE0](v30);
  dispatch_async(queue, &v15);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v23, 0);
  objc_destroyWeak(v27);
  objc_destroyWeak(&v28);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&location, 0);
}

void __165__SUUIStatefulUIManager_performUpdateOnDownloadByApplyingSelector_context_description_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke(id *a1)
{
  v179 = &v198;
  v180 = a1;
  v181 = "[SUUIStatefulUIManager performUpdateOnDownloadByApplyingSelector:context:description:delegate:delegateCallbackQueue:resultsValidation:resultsAssignment:completion:]_block_invoke";
  v182 = "[SUUIStatefulUIManager performUpdateOnDownloadByApplyingSelector:context:description:delegate:delegateCallbackQueue:resultsValidation:resultsAssignment:completion:]_block_invoke_2";
  v228 = *MEMORY[0x277D85DE8];
  v221[2] = a1;
  v221[1] = a1;
  WeakRetained = objc_loadWeakRetained(a1 + 11);
  v221[0] = WeakRetained;
  v178 = 0;
  if (!WeakRetained)
  {
    v177 = +[SUUILoggingContext softwareUpdateUILogger];
    v175 = v177;
    v176 = [v175 oslog];
    v1 = v176;
    v2 = v175;
    v179[33] = v1;
    MEMORY[0x277D82BD8](v2);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v179[33], OS_LOG_TYPE_ERROR))
    {
      log = v179[33];
      *v173 = type;
      v174 = NSStringFromSelector(v180[12]);
      v171 = v174;
      v3 = MEMORY[0x277D82BE0](v171);
      v4 = v181;
      v179[31] = v3;
      buf = v227;
      __os_log_helper_16_2_2_8_32_8_66(v227, v4, v3);
      _os_log_error_impl(&dword_26ADE5000, log, v173[0], "%s: Self is nil in %{public}@. Stopping.", v227, 0x16u);
      MEMORY[0x277D82BD8](v171);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v220, 0);
    v5 = v179;
    *(v179 + 61) = 1;
    v178 = *(v5 + 61) != 0;
  }

  if (v178)
  {
    v6 = MEMORY[0x277D85CD0];
    v7 = MEMORY[0x277D85CD0];
    v8 = v180;
    v9 = v179;
    queue = v7;
    block = &v216;
    v179[25] = MEMORY[0x277D85DD0];
    *(v9 + 52) = -1073741824;
    *(v9 + 53) = 0;
    v9[27] = __165__SUUIStatefulUIManager_performUpdateOnDownloadByApplyingSelector_context_description_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_462;
    v9[28] = &unk_279CC61E0;
    v167 = &v217;
    v10 = MEMORY[0x277D82BE0](v8[7]);
    v11 = block;
    v12 = v10;
    v13 = queue;
    v179[29] = v12;
    dispatch_async(v13, v11);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(v167, 0);
    *(v179 + 49) = 1;
  }

  else
  {
    v166 = [MEMORY[0x277CCAD78] UUID];
    v164 = v166;
    v165 = [v164 UUIDString];
    v14 = v165;
    v15 = v164;
    v179[23] = v14;
    MEMORY[0x277D82BD8](v15);
    v163 = [v179[34] environment];
    v159 = v163;
    v160 = v179[34];
    v161 = v179[23];
    v162 = v180[4];
    v213 = 0;
    if (v162)
    {
      v158 = v162;
    }

    else
    {
      v157 = [v179[34] delegateCallbackQueue];
      v16 = v157;
      v179[21] = v16;
      v213 = 1;
      v158 = v16;
    }

    v156 = [v159 updateOperationWithManager:v160 identifier:v161 delegateCallbackQueue:v158 completionQueue:*(v179[34] + 26)];
    v179[22] = v156;
    if (v213)
    {
      MEMORY[0x277D82BD8](v179[21]);
    }

    MEMORY[0x277D82BD8](v159);
    v155 = objc_opt_respondsToSelector();
    if ((v155 & 1) == 0)
    {
      v153 = v179[22];
      aClass = objc_opt_class();
      v152 = NSStringFromClass(aClass);
      v150 = v152;
      v151 = NSStringFromSelector(v180[13]);
      _suui_precondition_failure_with_format(@"Can't perform the update request since the Update Operation object (%p, of type: %@) doesn't respond to the selector %@.", v153, v150, v151);
    }

    v149 = +[SUUILoggingContext statefulUILogger];
    v147 = v149;
    v148 = [v147 oslog];
    v17 = v148;
    v18 = v147;
    v179[19] = v17;
    MEMORY[0x277D82BD8](v18);
    v211 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v179[19], OS_LOG_TYPE_DEFAULT))
    {
      v143 = v179[19];
      *v144 = v211;
      v145 = v179[34];
      v146 = objc_opt_class();
      v142 = NSStringFromClass(v146);
      v139 = v142;
      v19 = MEMORY[0x277D82BE0](v139);
      v20 = v179;
      v140 = v19;
      v179[17] = v19;
      v141 = SUUIStatefulUIStateToString(*(v20[34] + 5));
      v136 = v141;
      v21 = MEMORY[0x277D82BE0](v136);
      v22 = v179;
      v137 = v21;
      v179[16] = v21;
      v138 = [v22[34] currentState];
      v135 = [v179[34] delegate];
      v134 = v135;
      v208 = 0;
      v207 = 0;
      if (v134)
      {
        v133 = [v179[34] delegate];
        v179[15] = v133;
        v208 = 1;
        v132 = objc_opt_class();
        v131 = NSStringFromClass(v132);
        v23 = v131;
        v179[13] = v23;
        v207 = 1;
        v130 = v23;
      }

      else
      {
        v130 = @"(null)";
      }

      v128 = v130;
      v129 = [v179[34] delegate];
      v126 = v129;
      v127 = [v179[34] scanError];
      v124 = v127;
      v125 = [v179[34] preferredStatefulDescriptor];
      v122 = v125;
      v123 = [v179[34] alternateStatefulDescriptor];
      v120 = v123;
      v121 = [v179[34] currentDownload];
      v119 = v121;
      v206 = 0;
      v205 = 0;
      v204 = 0;
      if (v119)
      {
        v118 = [v179[34] currentDownload];
        v24 = v118;
        v179[11] = v24;
        v206 = 1;
        v117 = [v24 descriptor];
        v25 = v117;
        v179[9] = v25;
        v205 = 1;
        v116 = [v25 updateName];
        v26 = v116;
        v179[7] = v26;
        v204 = 1;
        v115 = v26;
      }

      else
      {
        v115 = @"(null)";
      }

      v113 = v115;
      v114 = [v179[34] currentDownload];
      v111 = v114;
      v112 = [v179[34] currentUpdateOperationType];
      v110 = SUUIUpdateContinuousOperationTypeToString(v112);
      v107 = v110;
      v27 = MEMORY[0x277D82BE0](v107);
      v28 = v179;
      v108 = v27;
      v179[5] = v27;
      v109 = [v28[34] isTargetedUpdateScheduledForAutoInstall];
      v225 = v109;
      if (v109)
      {
        v29 = @"YES";
      }

      else
      {
        v29 = @"NO";
      }

      v106 = v29;
      v30 = v29;
      v103 = v106;
      v31 = MEMORY[0x277D82BE0](v103);
      v32 = v179;
      v104 = v31;
      v179[4] = v31;
      v105 = [v32[34] hidingPreferredDescriptor];
      v224 = v105;
      if (v105)
      {
        v33 = @"YES";
      }

      else
      {
        v33 = @"NO";
      }

      v102 = v33;
      v34 = v33;
      v99 = v102;
      v35 = MEMORY[0x277D82BE0](v99);
      v36 = v179;
      v100 = v35;
      v179[3] = v35;
      v101 = [v36[34] hiddenPreferredStatefulDescriptor];
      v97 = v101;
      v98 = [v97 updateName];
      v94 = v98;
      v37 = MEMORY[0x277D82BE0](v94);
      v38 = v179;
      v95 = v37;
      v179[2] = v37;
      v96 = [v38[34] hidingAlternateDescriptor];
      v223 = v96;
      if (v96)
      {
        v39 = @"YES";
      }

      else
      {
        v39 = @"NO";
      }

      v93 = v39;
      v40 = v39;
      v90 = v93;
      v41 = MEMORY[0x277D82BE0](v90);
      v42 = v179;
      v91 = v41;
      v179[1] = v41;
      v92 = [v42[34] hiddenAlternateStatefulDescriptor];
      v88 = v92;
      v89 = [v88 updateName];
      v85 = v89;
      v43 = MEMORY[0x277D82BE0](v85);
      v44 = v179;
      v86 = v43;
      *v179 = v43;
      v87 = [v44[34] enrolledBetaProgram];
      v84 = v87;
      v196 = 0;
      if (v84)
      {
        v83 = [v179[34] enrolledBetaProgram];
        v197 = v83;
        v196 = 1;
        v82 = [v197 programID];
        v81 = v82;
      }

      else
      {
        v81 = 0;
      }

      v79 = v81;
      v80 = [*(v179[34] + 15) count];
      v78 = [v179[34] canEnrollInBetaUpdates];
      v222 = v78;
      if (v78)
      {
        v45 = @"YES";
      }

      else
      {
        v45 = @"NO";
      }

      v77 = v45;
      v46 = v45;
      v71 = v77;
      v72 = MEMORY[0x277D82BE0](v71);
      v195 = v72;
      v73 = *(v179[34] + 21);
      v74 = *(v179[34] + 22);
      v75 = *(v179[34] + 23);
      v76 = [*(v179[34] + 24) count];
      v69 = v180[5];
      v70 = [v179[34] currentDownload];
      v68 = v70;
      v47 = v179[23];
      v66 = &v48;
      v67 = v226;
      __os_log_helper_16_2_28_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66_8_66(v226, v182, v145, v140, v137, v138, v128, v126, v124, v122, v120, v113, v111, v108, v104, v100, v95, v91, v86, v79, v80, v72, v73, v74, v75, v76, v69, v68, v47);
      _os_log_impl(&dword_26ADE5000, v143, v144[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nStarting to perform the update operation %{public}@ on download: %{public}@, using operation identifier: %{public}@", v67, 0x11Au);
      MEMORY[0x277D82BD8](v68);
      MEMORY[0x277D82BD8](v71);
      if (v196)
      {
        MEMORY[0x277D82BD8](v197);
      }

      MEMORY[0x277D82BD8](v84);
      MEMORY[0x277D82BD8](v85);
      MEMORY[0x277D82BD8](v88);
      MEMORY[0x277D82BD8](v90);
      MEMORY[0x277D82BD8](v94);
      MEMORY[0x277D82BD8](v97);
      MEMORY[0x277D82BD8](v99);
      MEMORY[0x277D82BD8](v103);
      MEMORY[0x277D82BD8](v107);
      MEMORY[0x277D82BD8](v111);
      if (v204)
      {
        MEMORY[0x277D82BD8](v179[7]);
      }

      if (v205)
      {
        MEMORY[0x277D82BD8](v179[9]);
      }

      if (v206)
      {
        MEMORY[0x277D82BD8](v179[11]);
      }

      MEMORY[0x277D82BD8](v119);
      MEMORY[0x277D82BD8](v120);
      MEMORY[0x277D82BD8](v122);
      MEMORY[0x277D82BD8](v124);
      MEMORY[0x277D82BD8](v126);
      if (v207)
      {
        MEMORY[0x277D82BD8](v179[13]);
      }

      if (v208)
      {
        MEMORY[0x277D82BD8](v179[15]);
      }

      MEMORY[0x277D82BD8](v134);
      MEMORY[0x277D82BD8](v136);
      MEMORY[0x277D82BD8](v139);
      objc_storeStrong(&v195, 0);
      objc_storeStrong(&v198, 0);
      objc_storeStrong(&v199, 0);
      objc_storeStrong(&v200, 0);
      objc_storeStrong(&v201, 0);
      objc_storeStrong(&v202, 0);
      objc_storeStrong(&v203, 0);
      objc_storeStrong(&v209, 0);
      objc_storeStrong(&v210, 0);
    }

    objc_storeStrong(&v212, 0);
    [*(v179[34] + 24) addObject:v179[22]];
    v62 = v179[34];
    v63 = v180[13];
    v64 = v179[22];
    v65 = [v179[34] currentDownload];
    v60 = v65;
    v61 = (*(v180[8] + 2))();
    v57 = v61;
    v58 = v180[6];
    v185 = MEMORY[0x277D85DD0];
    v186 = -1073741824;
    v187 = 0;
    v188 = __165__SUUIStatefulUIManager_performUpdateOnDownloadByApplyingSelector_context_description_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_464;
    v189 = &unk_279CC67C0;
    v59 = v194;
    objc_copyWeak(v194, v180 + 11);
    v184 = 1;
    v55 = &v185;
    v194[1] = v180[12];
    v49 = v193;
    v193[0] = MEMORY[0x277D82BE0](v180[7]);
    v50 = v55 + 4;
    v190 = MEMORY[0x277D82BE0](v180[5]);
    v51 = v55 + 5;
    v191 = MEMORY[0x277D82BE0](v179[23]);
    v52 = v55 + 6;
    v192 = MEMORY[0x277D82BE0](v179[22]);
    v53 = v55 + 8;
    v193[1] = MEMORY[0x277D82BE0](v180[9]);
    v54 = v55 + 9;
    v193[2] = MEMORY[0x277D82BE0](v180[10]);
    v56 = MEMORY[0x26D66ADC0](v55);
    [v62 performSelector:v63 onTarget:v64 withObject:v60 withObject:v57 withObject:v58 withObject:v56];
    v184 = 0;
    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](v60);
    objc_storeStrong(v54, 0);
    objc_storeStrong(v53, 0);
    objc_storeStrong(v52, 0);
    objc_storeStrong(v51, 0);
    objc_storeStrong(v50, 0);
    objc_storeStrong(v49, 0);
    objc_destroyWeak(v59);
    objc_storeStrong(&v214, 0);
    objc_storeStrong(&v215, 0);
    *(v179 + 49) = 0;
  }

  objc_storeStrong(v221, 0);
}

void __165__SUUIStatefulUIManager_performUpdateOnDownloadByApplyingSelector_context_description_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_462(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0, 0);
  }

  objc_storeStrong(location, 0);
}

void __165__SUUIStatefulUIManager_performUpdateOnDownloadByApplyingSelector_context_description_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_464(void *a1, void *a2, void *a3)
{
  v181 = &v196;
  v182 = a1;
  obj = a3;
  v184 = "[SUUIStatefulUIManager performUpdateOnDownloadByApplyingSelector:context:description:delegate:delegateCallbackQueue:resultsValidation:resultsAssignment:completion:]_block_invoke";
  v185 = "[SUUIStatefulUIManager performUpdateOnDownloadByApplyingSelector:context:description:delegate:delegateCallbackQueue:resultsValidation:resultsAssignment:completion:]_block_invoke_2";
  v234 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v226 = 0;
  objc_storeStrong(&v226, obj);
  v225[1] = v182;
  WeakRetained = objc_loadWeakRetained(v182 + 10);
  v225[0] = WeakRetained;
  v179 = 0;
  if (!WeakRetained)
  {
    v178 = +[SUUILoggingContext softwareUpdateUILogger];
    v176 = v178;
    v177 = [v176 oslog];
    v3 = v177;
    v4 = v176;
    v181[39] = v3;
    MEMORY[0x277D82BD8](v4);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v181[39], OS_LOG_TYPE_ERROR))
    {
      log = v181[39];
      *v174 = type;
      v175 = NSStringFromSelector(*(v182 + 11));
      v172 = v175;
      v5 = MEMORY[0x277D82BE0](v172);
      v6 = v184;
      v181[37] = v5;
      buf = v233;
      __os_log_helper_16_2_2_8_32_8_66(v233, v6, v5);
      _os_log_error_impl(&dword_26ADE5000, log, v174[0], "%s: Self is nil in %{public}@. Stopping.", v233, 0x16u);
      MEMORY[0x277D82BD8](v172);
      objc_storeStrong(&v222, 0);
    }

    objc_storeStrong(&v224, 0);
    v221[3] = 1;
    v179 = 1;
  }

  if (v179)
  {
    v7 = MEMORY[0x277D85CD0];
    v8 = MEMORY[0x277D85CD0];
    v9 = v182;
    v10 = v181;
    queue = v8;
    block = &v218;
    v181[31] = MEMORY[0x277D85DD0];
    v219 = -1073741824;
    v220 = 0;
    v10[33] = __165__SUUIStatefulUIManager_performUpdateOnDownloadByApplyingSelector_context_description_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_465;
    v10[34] = &unk_279CC61E0;
    v168 = v221;
    v11 = MEMORY[0x277D82BE0](v9[7]);
    v12 = block;
    v13 = v11;
    v14 = queue;
    v181[35] = v13;
    dispatch_async(v14, v12);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(v168, 0);
    v217 = 1;
  }

  else
  {
    v167 = +[SUUILoggingContext statefulUILogger];
    v165 = v167;
    v166 = [v165 oslog];
    v15 = v166;
    v16 = v165;
    v181[29] = v15;
    MEMORY[0x277D82BD8](v16);
    v215 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v181[29], OS_LOG_TYPE_DEFAULT))
    {
      v161 = v181[29];
      *v162 = v215;
      v163 = v181[40];
      aClass = objc_opt_class();
      v160 = NSStringFromClass(aClass);
      v157 = v160;
      v17 = MEMORY[0x277D82BE0](v157);
      v18 = v181;
      v158 = v17;
      v181[27] = v17;
      v159 = SUUIStatefulUIStateToString(*(v18[40] + 40));
      v154 = v159;
      v19 = MEMORY[0x277D82BE0](v154);
      v20 = v181;
      v155 = v19;
      v181[26] = v19;
      v156 = [v20[40] currentState];
      v153 = [v181[40] delegate];
      v152 = v153;
      v212 = 0;
      v211 = 0;
      if (v152)
      {
        v151 = [v181[40] delegate];
        v181[25] = v151;
        v212 = 1;
        v150 = objc_opt_class();
        v149 = NSStringFromClass(v150);
        v21 = v149;
        v181[23] = v21;
        v211 = 1;
        v148 = v21;
      }

      else
      {
        v148 = @"(null)";
      }

      v146 = v148;
      v147 = [v181[40] delegate];
      v144 = v147;
      v145 = [v181[40] scanError];
      v142 = v145;
      v143 = [v181[40] preferredStatefulDescriptor];
      v140 = v143;
      v141 = [v181[40] alternateStatefulDescriptor];
      v138 = v141;
      v139 = [v181[40] currentDownload];
      v137 = v139;
      v210 = 0;
      v209 = 0;
      v208 = 0;
      if (v137)
      {
        v136 = [v181[40] currentDownload];
        v22 = v136;
        v181[21] = v22;
        v210 = 1;
        v135 = [v22 descriptor];
        v23 = v135;
        v181[19] = v23;
        v209 = 1;
        v134 = [v23 updateName];
        v24 = v134;
        v181[17] = v24;
        v208 = 1;
        v133 = v24;
      }

      else
      {
        v133 = @"(null)";
      }

      v131 = v133;
      v132 = [v181[40] currentDownload];
      v129 = v132;
      v130 = [v181[40] currentUpdateOperationType];
      v128 = SUUIUpdateContinuousOperationTypeToString(v130);
      v125 = v128;
      v25 = MEMORY[0x277D82BE0](v125);
      v26 = v181;
      v126 = v25;
      v181[15] = v25;
      v127 = [v26[40] isTargetedUpdateScheduledForAutoInstall];
      v231 = v127;
      if (v127)
      {
        v27 = @"YES";
      }

      else
      {
        v27 = @"NO";
      }

      v124 = v27;
      v28 = v27;
      v121 = v124;
      v29 = MEMORY[0x277D82BE0](v121);
      v30 = v181;
      v122 = v29;
      v181[14] = v29;
      v123 = [v30[40] hidingPreferredDescriptor];
      v230 = v123;
      if (v123)
      {
        v31 = @"YES";
      }

      else
      {
        v31 = @"NO";
      }

      v120 = v31;
      v32 = v31;
      v117 = v120;
      v33 = MEMORY[0x277D82BE0](v117);
      v34 = v181;
      v118 = v33;
      v181[13] = v33;
      v119 = [v34[40] hiddenPreferredStatefulDescriptor];
      v115 = v119;
      v116 = [v115 updateName];
      v112 = v116;
      v35 = MEMORY[0x277D82BE0](v112);
      v36 = v181;
      v113 = v35;
      v181[12] = v35;
      v114 = [v36[40] hidingAlternateDescriptor];
      v229 = v114;
      if (v114)
      {
        v37 = @"YES";
      }

      else
      {
        v37 = @"NO";
      }

      v111 = v37;
      v38 = v37;
      v108 = v111;
      v39 = MEMORY[0x277D82BE0](v108);
      v40 = v181;
      v109 = v39;
      v181[11] = v39;
      v110 = [v40[40] hiddenAlternateStatefulDescriptor];
      v106 = v110;
      v107 = [v106 updateName];
      v103 = v107;
      v41 = MEMORY[0x277D82BE0](v103);
      v42 = v181;
      v104 = v41;
      v181[10] = v41;
      v105 = [v42[40] enrolledBetaProgram];
      v102 = v105;
      v201 = 0;
      if (v102)
      {
        v101 = [v181[40] enrolledBetaProgram];
        v43 = v101;
        v181[9] = v43;
        v201 = 1;
        v100 = [v43 programID];
        v99 = v100;
      }

      else
      {
        v99 = 0;
      }

      v97 = v99;
      v98 = [*(v181[40] + 120) count];
      v96 = [v181[40] canEnrollInBetaUpdates];
      v228 = v96;
      if (v96)
      {
        v44 = @"YES";
      }

      else
      {
        v44 = @"NO";
      }

      v95 = v44;
      v45 = v44;
      v89 = v95;
      v46 = MEMORY[0x277D82BE0](v89);
      v47 = v181;
      v90 = v46;
      v181[7] = v46;
      v91 = *(v47[40] + 168);
      v92 = *(v47[40] + 176);
      v93 = *(v47[40] + 184);
      v94 = [*(v47[40] + 192) count];
      v48 = *(v182 + 4);
      v49 = *(v182 + 5);
      v87 = &v63;
      v88 = v232;
      __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66(v232, v185, v163, v158, v155, v156, v146, v144, v142, v140, v138, v131, v129, v126, v122, v118, v113, v109, v104, v97, v98, v90, v91, v92, v93, v94, v48, v49);
      _os_log_impl(&dword_26ADE5000, v161, v162[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFinished to perform the update operation %{public}@ using operation identifier: %{public}@", v88, 0x110u);
      MEMORY[0x277D82BD8](v89);
      if (v201)
      {
        MEMORY[0x277D82BD8](v181[9]);
      }

      MEMORY[0x277D82BD8](v102);
      MEMORY[0x277D82BD8](v103);
      MEMORY[0x277D82BD8](v106);
      MEMORY[0x277D82BD8](v108);
      MEMORY[0x277D82BD8](v112);
      MEMORY[0x277D82BD8](v115);
      MEMORY[0x277D82BD8](v117);
      MEMORY[0x277D82BD8](v121);
      MEMORY[0x277D82BD8](v125);
      MEMORY[0x277D82BD8](v129);
      if (v208)
      {
        MEMORY[0x277D82BD8](v181[17]);
      }

      if (v209)
      {
        MEMORY[0x277D82BD8](v181[19]);
      }

      if (v210)
      {
        MEMORY[0x277D82BD8](v181[21]);
      }

      MEMORY[0x277D82BD8](v137);
      MEMORY[0x277D82BD8](v138);
      MEMORY[0x277D82BD8](v140);
      MEMORY[0x277D82BD8](v142);
      MEMORY[0x277D82BD8](v144);
      if (v211)
      {
        MEMORY[0x277D82BD8](v181[23]);
      }

      if (v212)
      {
        MEMORY[0x277D82BD8](v181[25]);
      }

      MEMORY[0x277D82BD8](v152);
      MEMORY[0x277D82BD8](v154);
      MEMORY[0x277D82BD8](v157);
      objc_storeStrong(&v200, 0);
      objc_storeStrong(&v202, 0);
      objc_storeStrong(&v203, 0);
      objc_storeStrong(&v204, 0);
      objc_storeStrong(&v205, 0);
      objc_storeStrong(&v206, 0);
      objc_storeStrong(&v207, 0);
      objc_storeStrong(&v213, 0);
      objc_storeStrong(&v214, 0);
    }

    objc_storeStrong(&v216, 0);
    [*(v181[40] + 192) removeObject:*(v182 + 6)];
    if (v181[43] && (!*(v182 + 8) || (v86 = (*(*(v182 + 8) + 16))(), (v86 & 1) != 0)))
    {
      v75 = MEMORY[0x26D66ADC0](*(v182 + 9));
      v195 = v75;
      if (v75)
      {
        (*(v195 + 2))(v195, v181[43]);
        v194 = 0;
      }

      else
      {
        v193 = 0;
      }

      objc_storeStrong(&v195, 0);
      v73 = v181[40];
      v74 = [v181[40] currentDownload];
      v70 = v74;
      v71 = v181[42];
      v186 = MEMORY[0x277D85DD0];
      v187 = -1073741824;
      v188 = 0;
      v189 = __165__SUUIStatefulUIManager_performUpdateOnDownloadByApplyingSelector_context_description_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_2;
      v190 = &unk_279CC6798;
      v72 = v192;
      objc_copyWeak(v192, v182 + 10);
      v69 = &v186;
      v192[1] = *(v182 + 11);
      v64 = v191;
      v191[0] = MEMORY[0x277D82BE0](*(v182 + 4));
      v65 = v69 + 5;
      v191[1] = MEMORY[0x277D82BE0](*(v182 + 5));
      v66 = v69 + 8;
      v191[4] = MEMORY[0x277D82BE0](*(v182 + 7));
      v67 = v69 + 6;
      v191[2] = MEMORY[0x277D82BE0](v181[43]);
      v68 = v69 + 7;
      v191[3] = MEMORY[0x277D82BE0](v181[42]);
      [v73 performPostUpdateOperationRefreshWithDownload:v70 error:v71 completionHandler:v69];
      MEMORY[0x277D82BD8](v70);
      objc_storeStrong(v68, 0);
      objc_storeStrong(v67, 0);
      objc_storeStrong(v66, 0);
      objc_storeStrong(v65, 0);
      objc_storeStrong(v64, 0);
      objc_destroyWeak(v72);
      v217 = 0;
    }

    else
    {
      v85 = [MEMORY[0x277D643F8] sharedCore];
      v83 = v85;
      v84 = [v181[40] delegateCallbackQueue];
      v81 = v84;
      v82 = [v83 selectDelegateCallbackQueue:?];
      v50 = v82;
      v51 = v182;
      v52 = v181;
      v80 = v50;
      v79 = &v196;
      v196 = MEMORY[0x277D85DD0];
      v197 = -1073741824;
      v198 = 0;
      v181[2] = __165__SUUIStatefulUIManager_performUpdateOnDownloadByApplyingSelector_context_description_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_466;
      v52[3] = &unk_279CC6570;
      v76 = &v199;
      v53 = MEMORY[0x277D82BE0](v51[7]);
      v54 = v181;
      v55 = v79;
      v181[6] = v53;
      v77 = (v55 + 32);
      v56 = MEMORY[0x277D82BE0](v54[43]);
      v57 = v181;
      v58 = v79;
      v181[4] = v56;
      v78 = (v58 + 40);
      v59 = MEMORY[0x277D82BE0](v57[42]);
      v60 = v79;
      v61 = v59;
      v62 = v80;
      v181[5] = v61;
      dispatch_async(v62, v60);
      MEMORY[0x277D82BD8](v80);
      MEMORY[0x277D82BD8](v81);
      MEMORY[0x277D82BD8](v83);
      v217 = 1;
      objc_storeStrong(v78, 0);
      objc_storeStrong(v77, 0);
      objc_storeStrong(v76, 0);
    }
  }

  objc_storeStrong(v225, 0);
  if (!v217)
  {
    v217 = 0;
  }

  objc_storeStrong(&v226, 0);
  objc_storeStrong(location, 0);
}

void __165__SUUIStatefulUIManager_performUpdateOnDownloadByApplyingSelector_context_description_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_465(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0, 0);
  }

  objc_storeStrong(location, 0);
}

void __165__SUUIStatefulUIManager_performUpdateOnDownloadByApplyingSelector_context_description_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_466(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[6]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0, a1[4], a1[5]);
  }

  objc_storeStrong(location, 0);
}

void __165__SUUIStatefulUIManager_performUpdateOnDownloadByApplyingSelector_context_description_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_2(id *a1, char a2)
{
  v86 = a1;
  v87 = "[SUUIStatefulUIManager performUpdateOnDownloadByApplyingSelector:context:description:delegate:delegateCallbackQueue:resultsValidation:resultsAssignment:completion:]_block_invoke_2";
  v88 = "[SUUIStatefulUIManager performUpdateOnDownloadByApplyingSelector:context:description:delegate:delegateCallbackQueue:resultsValidation:resultsAssignment:completion:]_block_invoke";
  v134 = *MEMORY[0x277D85DE8];
  v127 = a1;
  v126 = a2;
  v125[1] = a1;
  v125[0] = objc_loadWeakRetained(a1 + 9);
  v85 = 0;
  if (!v125[0])
  {
    v84 = +[SUUILoggingContext softwareUpdateUILogger];
    oslog = [v84 oslog];
    MEMORY[0x277D82BD8](v84);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v80 = type;
      v82 = NSStringFromSelector(v86[10]);
      location = &v122;
      v122 = MEMORY[0x277D82BE0](v82);
      buf = v133;
      __os_log_helper_16_2_2_8_32_8_66(v133, v87, v122);
      _os_log_error_impl(&dword_26ADE5000, log, v80[0], "%s: Self is nil in %{public}@. Stopping.", v133, 0x16u);
      MEMORY[0x277D82BD8](v82);
      objc_storeStrong(&v122, 0);
    }

    objc_storeStrong(&oslog, 0);
    v121 = 1;
    v85 = 1;
  }

  if (v85)
  {
    v120 = 1;
  }

  else
  {
    v78 = +[SUUILoggingContext statefulUILogger];
    v119 = [v78 oslog];
    MEMORY[0x277D82BD8](v78);
    v118 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
    {
      v69 = v119;
      *v70 = v118;
      v71 = v125[0];
      v2 = objc_opt_class();
      v72 = NSStringFromClass(v2);
      v73 = MEMORY[0x277D82BE0](v72);
      v117 = v73;
      v74 = SUUIStatefulUIStateToString(*(v125[0] + 5));
      v75 = MEMORY[0x277D82BE0](v74);
      v116 = v75;
      v76 = [v125[0] currentState];
      v77 = [v125[0] delegate];
      v114 = 0;
      v112 = 0;
      if (v77)
      {
        v115 = [v125[0] delegate];
        v67 = 1;
        v114 = 1;
        v3 = objc_opt_class();
        v113 = NSStringFromClass(v3);
        v112 = 1;
        v68 = v113;
      }

      else
      {
        v68 = @"(null)";
      }

      v61 = v68;
      v62 = [v125[0] delegate];
      v63 = [v125[0] scanError];
      v64 = [v125[0] preferredStatefulDescriptor];
      v65 = [v125[0] alternateStatefulDescriptor];
      v66 = [v125[0] currentDownload];
      v110 = 0;
      v108 = 0;
      v106 = 0;
      if (v66)
      {
        v111 = [v125[0] currentDownload];
        v59 = 1;
        v110 = 1;
        v109 = [v111 descriptor];
        v108 = 1;
        v107 = [v109 updateName];
        v106 = 1;
        v60 = v107;
      }

      else
      {
        v60 = @"(null)";
      }

      v36 = v60;
      v37 = [v125[0] currentDownload];
      v38 = SUUIUpdateContinuousOperationTypeToString([v125[0] currentUpdateOperationType]);
      v39 = MEMORY[0x277D82BE0](v38);
      v105 = v39;
      v131 = [v125[0] isTargetedUpdateScheduledForAutoInstall];
      v49 = @"NO";
      v50 = @"YES";
      v57 = 1;
      if (v131)
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      v40 = v4;
      v5 = v4;
      v41 = v40;
      v42 = MEMORY[0x277D82BE0](v41);
      v104 = v42;
      v130 = [v125[0] hidingPreferredDescriptor];
      if (v130)
      {
        v6 = v50;
      }

      else
      {
        v6 = v49;
      }

      v43 = v6;
      v7 = v6;
      v44 = v43;
      v45 = MEMORY[0x277D82BE0](v44);
      v103 = v45;
      v46 = [v125[0] hiddenPreferredStatefulDescriptor];
      v47 = [v46 updateName];
      v48 = MEMORY[0x277D82BE0](v47);
      v102 = v48;
      v129 = [v125[0] hidingAlternateDescriptor];
      if (v129)
      {
        v8 = v50;
      }

      else
      {
        v8 = v49;
      }

      v51 = v8;
      v9 = v8;
      v52 = v51;
      v53 = MEMORY[0x277D82BE0](v52);
      v101 = v53;
      v54 = [v125[0] hiddenAlternateStatefulDescriptor];
      v55 = [v54 updateName];
      v56 = MEMORY[0x277D82BE0](v55);
      v100 = v56;
      v58 = [v125[0] enrolledBetaProgram];
      v98 = 0;
      if (v58)
      {
        v99 = [v125[0] enrolledBetaProgram];
        v98 = 1;
        v35 = [v99 programID];
      }

      else
      {
        v35 = 0;
      }

      v26 = v35;
      v27 = [*(v125[0] + 15) count];
      v128 = [v125[0] canEnrollInBetaUpdates];
      if (v128)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v25 = v10;
      v11 = v10;
      v34 = v25;
      v28 = MEMORY[0x277D82BE0](v34);
      v97 = v28;
      v29 = *(v125[0] + 21);
      v30 = *(v125[0] + 22);
      v31 = *(v125[0] + 23);
      v12 = [*(v125[0] + 24) count];
      v13 = v86[4];
      v14 = v86[5];
      v32 = &v15;
      v33 = v132;
      __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66(v132, v88, v71, v73, v75, v76, v61, v62, v63, v64, v65, v36, v37, v39, v42, v45, v48, v53, v56, v26, v27, v28, v29, v30, v31, v12, v13, v14);
      _os_log_impl(&dword_26ADE5000, v69, v70[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFinished to perform the post-update refresh for update operation %{public}@, using update operation identifier: %{public}@", v33, 0x110u);
      MEMORY[0x277D82BD8](v34);
      if (v98)
      {
        MEMORY[0x277D82BD8](v99);
      }

      MEMORY[0x277D82BD8](v58);
      MEMORY[0x277D82BD8](v55);
      MEMORY[0x277D82BD8](v54);
      MEMORY[0x277D82BD8](v52);
      MEMORY[0x277D82BD8](v47);
      MEMORY[0x277D82BD8](v46);
      MEMORY[0x277D82BD8](v44);
      MEMORY[0x277D82BD8](v41);
      MEMORY[0x277D82BD8](v38);
      MEMORY[0x277D82BD8](v37);
      if (v106)
      {
        MEMORY[0x277D82BD8](v107);
      }

      if (v108)
      {
        MEMORY[0x277D82BD8](v109);
      }

      if (v110)
      {
        MEMORY[0x277D82BD8](v111);
      }

      MEMORY[0x277D82BD8](v66);
      MEMORY[0x277D82BD8](v65);
      MEMORY[0x277D82BD8](v64);
      MEMORY[0x277D82BD8](v63);
      MEMORY[0x277D82BD8](v62);
      if (v112)
      {
        MEMORY[0x277D82BD8](v113);
      }

      if (v114)
      {
        MEMORY[0x277D82BD8](v115);
      }

      MEMORY[0x277D82BD8](v77);
      MEMORY[0x277D82BD8](v74);
      MEMORY[0x277D82BD8](v72);
      obj = 0;
      objc_storeStrong(&v97, 0);
      objc_storeStrong(&v100, obj);
      objc_storeStrong(&v101, obj);
      objc_storeStrong(&v102, obj);
      objc_storeStrong(&v103, obj);
      objc_storeStrong(&v104, obj);
      objc_storeStrong(&v105, obj);
      objc_storeStrong(&v116, obj);
      objc_storeStrong(&v117, obj);
    }

    objc_storeStrong(&v119, 0);
    v19 = [MEMORY[0x277D643F8] sharedCore];
    v18 = [v125[0] delegateCallbackQueue];
    queue = [v19 selectDelegateCallbackQueue:?];
    block = &v89;
    v89 = MEMORY[0x277D85DD0];
    v90 = -1073741824;
    v91 = 0;
    v92 = __165__SUUIStatefulUIManager_performUpdateOnDownloadByApplyingSelector_context_description_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_467;
    v93 = &unk_279CC6570;
    v22 = &v96;
    v96 = MEMORY[0x277D82BE0](v86[8]);
    v21 = (block + 32);
    v94 = MEMORY[0x277D82BE0](v86[6]);
    v20 = (block + 40);
    v95 = MEMORY[0x277D82BE0](v86[7]);
    dispatch_async(queue, block);
    MEMORY[0x277D82BD8](queue);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](v19);
    v23 = 0;
    objc_storeStrong(v20, 0);
    objc_storeStrong(v21, v23);
    objc_storeStrong(v22, v23);
    v120 = 0;
  }

  objc_storeStrong(v125, 0);
}

void __165__SUUIStatefulUIManager_performUpdateOnDownloadByApplyingSelector_context_description_delegate_delegateCallbackQueue_resultsValidation_resultsAssignment_completion___block_invoke_467(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[6]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0, a1[4], a1[5]);
  }

  objc_storeStrong(location, 0);
}

- (void)performPostUpdateOperationRefreshWithDownload:(id)download error:(id)error completionHandler:(id)handler
{
  obj = error;
  handlerCopy = handler;
  v127 = "[SUUIStatefulUIManager performPostUpdateOperationRefreshWithDownload:error:completionHandler:]";
  v185 = *MEMORY[0x277D85DE8];
  val = self;
  v178 = a2;
  location = 0;
  objc_storeStrong(&location, download);
  v176 = 0;
  objc_storeStrong(&v176, obj);
  v175 = 0;
  objc_storeStrong(&v175, handlerCopy);
  uUID = [MEMORY[0x277CCAD78] UUID];
  v122 = uUID;
  uUIDString = [v122 UUIDString];
  v174 = uUIDString;
  MEMORY[0x277D82BD8](v122);
  v169 = 0;
  v170 = &v169;
  v171 = 0x20000000;
  v172 = 32;
  v173 = 0;
  v121 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040925F9CD7uLL);
  v167 = v121;
  if (v121)
  {
    v166 = _os_activity_create(&dword_26ADE5000, "com.apple.SoftwareUpdateUI.StatefulUI.Manager.PostUpdateRefresh", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    isa = v167[2].isa;
    v167[2].isa = v166;
    MEMORY[0x277D82BD8](isa);
  }

  else
  {
    v120 = +[SUUILoggingContext softwareUpdateUILogger];
    v118 = v120;
    oslog = [v118 oslog];
    oslog = oslog;
    MEMORY[0x277D82BD8](v118);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v116 = type;
      buf = v163;
      __os_log_helper_16_0_0(v163);
      _os_log_error_impl(&dword_26ADE5000, log, v116[0], "Failed to create an activity for: com.apple.SoftwareUpdateUI.StatefulUI.Manager.PostUpdateRefresh", v163, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  v162[2] = v167;
  state = v167;
  if (v167)
  {
    os_activity_scope_enter(state[1].opaque[0], state);
    LOBYTE(state[1].opaque[1]) = 1;
  }

  v162[1] = state;
  v170[3] = state;
  v114 = +[SUUILoggingContext statefulUILogger];
  v112 = v114;
  oslog2 = [v112 oslog];
  v162[0] = oslog2;
  MEMORY[0x277D82BD8](v112);
  v161 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v162[0], OS_LOG_TYPE_DEFAULT))
  {
    v108 = v162[0];
    *v109 = v161;
    v110 = val;
    aClass = objc_opt_class();
    v107 = NSStringFromClass(aClass);
    v104 = v107;
    v105 = MEMORY[0x277D82BE0](v104);
    v160 = v105;
    v106 = SUUIStatefulUIStateToString(*(val + 5));
    v101 = v106;
    v102 = MEMORY[0x277D82BE0](v101);
    v159 = v102;
    currentState = [val currentState];
    v157 = 0;
    v155 = 0;
    delegate = [val delegate];
    v99 = delegate;
    if (v99)
    {
      delegate2 = [val delegate];
      v158 = delegate2;
      v157 = 1;
      v97 = objc_opt_class();
      v96 = NSStringFromClass(v97);
      v156 = v96;
      v155 = 1;
      v95 = v156;
    }

    else
    {
      v95 = @"(null)";
    }

    v93 = v95;
    delegate3 = [val delegate];
    v91 = delegate3;
    scanError = [val scanError];
    v89 = scanError;
    preferredStatefulDescriptor = [val preferredStatefulDescriptor];
    v87 = preferredStatefulDescriptor;
    alternateStatefulDescriptor = [val alternateStatefulDescriptor];
    v85 = alternateStatefulDescriptor;
    v153 = 0;
    v151 = 0;
    v149 = 0;
    currentDownload = [val currentDownload];
    v84 = currentDownload;
    if (v84)
    {
      currentDownload2 = [val currentDownload];
      v154 = currentDownload2;
      v153 = 1;
      descriptor = [v154 descriptor];
      v152 = descriptor;
      v151 = 1;
      updateName = [v152 updateName];
      v150 = updateName;
      v149 = 1;
      v80 = v150;
    }

    else
    {
      v80 = @"(null)";
    }

    v78 = v80;
    currentDownload3 = [val currentDownload];
    v76 = currentDownload3;
    currentUpdateOperationType = [val currentUpdateOperationType];
    v75 = SUUIUpdateContinuousOperationTypeToString(currentUpdateOperationType);
    v72 = v75;
    v73 = MEMORY[0x277D82BE0](v72);
    v148 = v73;
    isTargetedUpdateScheduledForAutoInstall = [val isTargetedUpdateScheduledForAutoInstall];
    v183 = isTargetedUpdateScheduledForAutoInstall;
    if (isTargetedUpdateScheduledForAutoInstall)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v71 = v6;
    v7 = v6;
    v68 = v71;
    v69 = MEMORY[0x277D82BE0](v68);
    v147 = v69;
    hidingPreferredDescriptor = [val hidingPreferredDescriptor];
    v182 = hidingPreferredDescriptor;
    if (hidingPreferredDescriptor)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v67 = v8;
    v9 = v8;
    v64 = v67;
    v65 = MEMORY[0x277D82BE0](v64);
    v146 = v65;
    hiddenPreferredStatefulDescriptor = [val hiddenPreferredStatefulDescriptor];
    v62 = hiddenPreferredStatefulDescriptor;
    updateName2 = [v62 updateName];
    v59 = updateName2;
    v60 = MEMORY[0x277D82BE0](v59);
    v145 = v60;
    hidingAlternateDescriptor = [val hidingAlternateDescriptor];
    v181 = hidingAlternateDescriptor;
    if (hidingAlternateDescriptor)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v58 = v10;
    v11 = v10;
    v55 = v58;
    v56 = MEMORY[0x277D82BE0](v55);
    v144 = v56;
    hiddenAlternateStatefulDescriptor = [val hiddenAlternateStatefulDescriptor];
    v53 = hiddenAlternateStatefulDescriptor;
    updateName3 = [v53 updateName];
    v50 = updateName3;
    v51 = MEMORY[0x277D82BE0](v50);
    v143 = v51;
    v141 = 0;
    enrolledBetaProgram = [val enrolledBetaProgram];
    v49 = enrolledBetaProgram;
    if (v49)
    {
      enrolledBetaProgram2 = [val enrolledBetaProgram];
      v142 = enrolledBetaProgram2;
      v141 = 1;
      programID = [v142 programID];
      v46 = programID;
    }

    else
    {
      v46 = 0;
    }

    v44 = v46;
    v45 = [*(val + 15) count];
    canEnrollInBetaUpdates = [val canEnrollInBetaUpdates];
    v180 = canEnrollInBetaUpdates;
    if (canEnrollInBetaUpdates)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v42 = v12;
    v13 = v12;
    v36 = v42;
    v37 = MEMORY[0x277D82BE0](v36);
    v140 = v37;
    v38 = *(val + 21);
    v39 = *(val + 22);
    v40 = *(val + 23);
    v41 = [*(val + 24) count];
    v34 = &v14;
    v35 = v184;
    __os_log_helper_16_2_26_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66(v184, v127, v110, v105, v102, currentState, v93, v91, v89, v87, v85, v78, v76, v73, v69, v65, v60, v56, v51, v44, v45, v37, v38, v39, v40, v41, v174);
    _os_log_impl(&dword_26ADE5000, v108, v109[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nBeginning a post download refresh operation with scan ID: %{public}@", v35, 0x106u);
    MEMORY[0x277D82BD8](v36);
    if (v141)
    {
      MEMORY[0x277D82BD8](v142);
    }

    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](v72);
    MEMORY[0x277D82BD8](v76);
    if (v149)
    {
      MEMORY[0x277D82BD8](v150);
    }

    if (v151)
    {
      MEMORY[0x277D82BD8](v152);
    }

    if (v153)
    {
      MEMORY[0x277D82BD8](v154);
    }

    MEMORY[0x277D82BD8](v84);
    MEMORY[0x277D82BD8](v85);
    MEMORY[0x277D82BD8](v87);
    MEMORY[0x277D82BD8](v89);
    MEMORY[0x277D82BD8](v91);
    if (v155)
    {
      MEMORY[0x277D82BD8](v156);
    }

    if (v157)
    {
      MEMORY[0x277D82BD8](v158);
    }

    MEMORY[0x277D82BD8](v99);
    MEMORY[0x277D82BD8](v101);
    MEMORY[0x277D82BD8](v104);
    objc_storeStrong(&v140, 0);
    objc_storeStrong(&v143, 0);
    objc_storeStrong(&v144, 0);
    objc_storeStrong(&v145, 0);
    objc_storeStrong(&v146, 0);
    objc_storeStrong(&v147, 0);
    objc_storeStrong(&v148, 0);
    objc_storeStrong(&v159, 0);
    objc_storeStrong(&v160, 0);
  }

  objc_storeStrong(v162, 0);
  environment = [val environment];
  v31 = environment;
  v32 = [v31 scanOperationWithManager:val identifier:v174 completionQueue:*(val + 26)];
  v139 = v32;
  MEMORY[0x277D82BD8](v31);
  [*(val + 24) addObject:v139];
  v30 = [val contextForRefreshScanOperation:v139 withPreviouslyDiscoveredDownload:location encounteredError:v176];
  v138 = v30;
  objc_initWeak(&from, val);
  v28 = v139;
  preferredStatefulDescriptor2 = [val preferredStatefulDescriptor];
  v26 = preferredStatefulDescriptor2;
  descriptor2 = [v26 descriptor];
  v24 = descriptor2;
  alternateStatefulDescriptor2 = [val alternateStatefulDescriptor];
  v22 = alternateStatefulDescriptor2;
  descriptor3 = [v22 descriptor];
  v19 = descriptor3;
  v20 = v138;
  v128 = MEMORY[0x277D85DD0];
  v129 = -1073741824;
  v130 = 0;
  v131 = __95__SUUIStatefulUIManager_performPostUpdateOperationRefreshWithDownload_error_completionHandler___block_invoke;
  v132 = &unk_279CC6810;
  v21 = v136;
  objc_copyWeak(v136, &from);
  v18 = &v128;
  v136[1] = v178;
  v15 = v135;
  v135[0] = MEMORY[0x277D82BE0](v175);
  v16 = (v18 + 4);
  v133 = MEMORY[0x277D82BE0](v139);
  v17 = (v18 + 5);
  v134 = MEMORY[0x277D82BE0](v176);
  v135[1] = &v169;
  [v28 refreshScanResultsWithPreferredUpdate:v24 alternateUpdate:v19 context:v20 completionHandler:v18];
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v26);
  objc_storeStrong(v17, 0);
  objc_storeStrong(v16, 0);
  objc_storeStrong(v15, 0);
  objc_destroyWeak(v21);
  objc_destroyWeak(&from);
  objc_storeStrong(&v138, 0);
  objc_storeStrong(&v139, 0);
  _Block_object_dispose(&v169, 8);
  objc_storeStrong(&v174, 0);
  objc_storeStrong(&v175, 0);
  objc_storeStrong(&v176, 0);
  objc_storeStrong(&location, 0);
}

void __95__SUUIStatefulUIManager_performPostUpdateOperationRefreshWithDownload_error_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v94 = a1;
  obj = a3;
  v91 = "[SUUIStatefulUIManager performPostUpdateOperationRefreshWithDownload:error:completionHandler:]_block_invoke";
  v92 = "[SUUIStatefulUIManager performPostUpdateOperationRefreshWithDownload:error:completionHandler:]_block_invoke_2";
  v141 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v132 = 0;
  objc_storeStrong(&v132, obj);
  v131[1] = v94;
  v131[0] = objc_loadWeakRetained(v94 + 8);
  v90 = 0;
  if (!v131[0])
  {
    v89 = +[SUUILoggingContext softwareUpdateUILogger];
    oslog = [v89 oslog];
    MEMORY[0x277D82BD8](v89);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v85 = type;
      v87 = NSStringFromSelector(*(v94 + 9));
      v88 = &v128;
      v128 = MEMORY[0x277D82BE0](v87);
      buf = v140;
      __os_log_helper_16_2_2_8_32_8_66(v140, v91, v128);
      _os_log_error_impl(&dword_26ADE5000, log, v85[0], "%s: Self is nil in %{public}@. Stopping.", v140, 0x16u);
      MEMORY[0x277D82BD8](v87);
      objc_storeStrong(&v128, 0);
    }

    objc_storeStrong(&oslog, 0);
    v127 = 1;
    v90 = 1;
  }

  if (v90)
  {
    v80 = MEMORY[0x277D85CD0];
    v3 = MEMORY[0x277D85CD0];
    queue = v80;
    block = &v121;
    v121 = MEMORY[0x277D85DD0];
    v122 = -1073741824;
    v123 = 0;
    v124 = __95__SUUIStatefulUIManager_performPostUpdateOperationRefreshWithDownload_error_completionHandler___block_invoke_468;
    v125 = &unk_279CC61E0;
    v83 = &v126;
    v126 = MEMORY[0x277D82BE0](*(v94 + 6));
    dispatch_async(queue, &v121);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v126, 0);
    v120 = 1;
  }

  else
  {
    v119 = 0;
    v79 = +[SUUILoggingContext statefulUILogger];
    v118 = [v79 oslog];
    MEMORY[0x277D82BD8](v79);
    v117 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
    {
      v70 = v118;
      *v71 = v117;
      v72 = v131[0];
      v4 = objc_opt_class();
      v73 = NSStringFromClass(v4);
      v74 = MEMORY[0x277D82BE0](v73);
      v116 = v74;
      v75 = SUUIStatefulUIStateToString(*(v131[0] + 5));
      v76 = MEMORY[0x277D82BE0](v75);
      v115 = v76;
      v77 = [v131[0] currentState];
      v78 = [v131[0] delegate];
      v113 = 0;
      v111 = 0;
      if (v78)
      {
        v114 = [v131[0] delegate];
        v68 = 1;
        v113 = 1;
        v5 = objc_opt_class();
        v112 = NSStringFromClass(v5);
        v111 = 1;
        v69 = v112;
      }

      else
      {
        v69 = @"(null)";
      }

      v62 = v69;
      v63 = [v131[0] delegate];
      v64 = [v131[0] scanError];
      v65 = [v131[0] preferredStatefulDescriptor];
      v66 = [v131[0] alternateStatefulDescriptor];
      v67 = [v131[0] currentDownload];
      v109 = 0;
      v107 = 0;
      v105 = 0;
      if (v67)
      {
        v110 = [v131[0] currentDownload];
        v60 = 1;
        v109 = 1;
        v108 = [v110 descriptor];
        v107 = 1;
        v106 = [v108 updateName];
        v105 = 1;
        v61 = v106;
      }

      else
      {
        v61 = @"(null)";
      }

      v37 = v61;
      v38 = [v131[0] currentDownload];
      v39 = SUUIUpdateContinuousOperationTypeToString([v131[0] currentUpdateOperationType]);
      v40 = MEMORY[0x277D82BE0](v39);
      v104 = v40;
      v138 = [v131[0] isTargetedUpdateScheduledForAutoInstall];
      v50 = @"NO";
      v51 = @"YES";
      v58 = 1;
      if (v138)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v41 = v6;
      v7 = v6;
      v42 = v41;
      v43 = MEMORY[0x277D82BE0](v42);
      v103 = v43;
      v137 = [v131[0] hidingPreferredDescriptor];
      if (v137)
      {
        v8 = v51;
      }

      else
      {
        v8 = v50;
      }

      v44 = v8;
      v9 = v8;
      v45 = v44;
      v46 = MEMORY[0x277D82BE0](v45);
      v102 = v46;
      v47 = [v131[0] hiddenPreferredStatefulDescriptor];
      v48 = [v47 updateName];
      v49 = MEMORY[0x277D82BE0](v48);
      v101 = v49;
      v136 = [v131[0] hidingAlternateDescriptor];
      if (v136)
      {
        v10 = v51;
      }

      else
      {
        v10 = v50;
      }

      v52 = v10;
      v11 = v10;
      v53 = v52;
      v54 = MEMORY[0x277D82BE0](v53);
      v100 = v54;
      v55 = [v131[0] hiddenAlternateStatefulDescriptor];
      v56 = [v55 updateName];
      v57 = MEMORY[0x277D82BE0](v56);
      v99 = v57;
      v59 = [v131[0] enrolledBetaProgram];
      v97 = 0;
      if (v59)
      {
        v98 = [v131[0] enrolledBetaProgram];
        v97 = 1;
        v36 = [v98 programID];
      }

      else
      {
        v36 = 0;
      }

      v25 = v36;
      v26 = [*(v131[0] + 15) count];
      v135 = [v131[0] canEnrollInBetaUpdates];
      v22 = @"NO";
      v23 = @"YES";
      if (v135)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v21 = v12;
      v13 = v12;
      v35 = v21;
      v27 = MEMORY[0x277D82BE0](v35);
      v96 = v27;
      v28 = *(v131[0] + 21);
      v29 = *(v131[0] + 22);
      v30 = *(v131[0] + 23);
      v31 = [*(v131[0] + 24) count];
      v134 = v132 == 0;
      if (v132)
      {
        v14 = v22;
      }

      else
      {
        v14 = v23;
      }

      v24 = v14;
      v15 = v14;
      v34 = v24;
      v95 = MEMORY[0x277D82BE0](v34);
      v32 = &v16;
      v33 = v139;
      __os_log_helper_16_2_28_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66_8_66(v139, v92, v72, v74, v76, v77, v62, v63, v64, v65, v66, v37, v38, v40, v43, v46, v49, v54, v57, v25, v26, v27, v28, v29, v30, v31, v95, v132, location[0]);
      _os_log_impl(&dword_26ADE5000, v70, v71[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nPost update request refresh operation completed successfully: %{public}@ with error: %{public}@; scan results: %{public}@", v33, 0x11Au);
      MEMORY[0x277D82BD8](v34);
      MEMORY[0x277D82BD8](v35);
      if (v97)
      {
        MEMORY[0x277D82BD8](v98);
      }

      MEMORY[0x277D82BD8](v59);
      MEMORY[0x277D82BD8](v56);
      MEMORY[0x277D82BD8](v55);
      MEMORY[0x277D82BD8](v53);
      MEMORY[0x277D82BD8](v48);
      MEMORY[0x277D82BD8](v47);
      MEMORY[0x277D82BD8](v45);
      MEMORY[0x277D82BD8](v42);
      MEMORY[0x277D82BD8](v39);
      MEMORY[0x277D82BD8](v38);
      if (v105)
      {
        MEMORY[0x277D82BD8](v106);
      }

      if (v107)
      {
        MEMORY[0x277D82BD8](v108);
      }

      if (v109)
      {
        MEMORY[0x277D82BD8](v110);
      }

      MEMORY[0x277D82BD8](v67);
      MEMORY[0x277D82BD8](v66);
      MEMORY[0x277D82BD8](v65);
      MEMORY[0x277D82BD8](v64);
      MEMORY[0x277D82BD8](v63);
      if (v111)
      {
        MEMORY[0x277D82BD8](v112);
      }

      if (v113)
      {
        MEMORY[0x277D82BD8](v114);
      }

      MEMORY[0x277D82BD8](v78);
      MEMORY[0x277D82BD8](v75);
      MEMORY[0x277D82BD8](v73);
      v20 = 0;
      objc_storeStrong(&v95, 0);
      objc_storeStrong(&v96, v20);
      objc_storeStrong(&v99, v20);
      objc_storeStrong(&v100, v20);
      objc_storeStrong(&v101, v20);
      objc_storeStrong(&v102, v20);
      objc_storeStrong(&v103, v20);
      objc_storeStrong(&v104, v20);
      objc_storeStrong(&v115, v20);
      objc_storeStrong(&v116, v20);
    }

    objc_storeStrong(&v118, 0);
    if (!v132)
    {
      v119 = 1;
      v18 = v131[0];
      v19 = [location[0] currentDownload];
      [v18 setCurrentDownload:?];
      MEMORY[0x277D82BD8](v19);
      [v131[0] updateDescriptorsUsingScanResults:location[0] andWithConcreteError:*(v94 + 5)];
    }

    [*(v131[0] + 24) removeObject:*(v94 + 4)];
    if (*(*(*(v94 + 7) + 8) + 24))
    {
      if (*(*(*(*(v94 + 7) + 8) + 24) + 24))
      {
        os_activity_scope_leave(*(*(*(v94 + 7) + 8) + 24));
      }

      free(*(*(*(v94 + 7) + 8) + 24));
      *(*(*(v94 + 7) + 8) + 24) = 0;
    }

    (*(*(v94 + 6) + 16))();
    v120 = 0;
  }

  objc_storeStrong(v131, 0);
  if (!v120)
  {
    v120 = 0;
  }

  v17 = 0;
  objc_storeStrong(&v132, 0);
  objc_storeStrong(location, v17);
}

void __95__SUUIStatefulUIManager_performPostUpdateOperationRefreshWithDownload_error_completionHandler___block_invoke_468(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], 0);
  }

  objc_storeStrong(location, 0);
}

- (void)hidePreferredUpdate
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  environment = [(SUUIStatefulUIManager *)self environment];
  options = [(SUUIStatefulUIEnvironment *)environment options];
  MEMORY[0x277D82BD8](environment);
  if ((options & 4) != 0)
  {
    preferredStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy preferredStatefulDescriptor];
    v6 = +[SUUILoggingContext statefulUILogger];
    oslog = [v6 oslog];
    MEMORY[0x277D82BD8](v6);
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v11;
      updateName = [(SUUIStatefulDescriptor *)preferredStatefulDescriptor updateName];
      v10 = MEMORY[0x277D82BE0](updateName);
      __os_log_helper_16_2_3_8_32_8_0_8_66(v17, "[SUUIStatefulUIManager hidePreferredUpdate]", selfCopy, v10);
      _os_log_impl(&dword_26ADE5000, v3, v4, "%s [%p]: Hiding preferred update: %{public}@", v17, 0x20u);
      MEMORY[0x277D82BD8](updateName);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&oslog, 0);
    [(SUUIStatefulUIManager *)selfCopy setHiddenPreferredStatefulDescriptor:preferredStatefulDescriptor];
    alternateStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy alternateStatefulDescriptor];
    [(SUUIStatefulUIManager *)selfCopy setPreferredStatefulDescriptor:?];
    MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    [(SUUIStatefulUIManager *)selfCopy setAlternateStatefulDescriptor:?];
    [(SUUIStatefulUIManager *)selfCopy setHidingPreferredDescriptor:1];
    [(SUUIStatefulUIManager *)selfCopy setHidingAlternateDescriptor:0];
    objc_storeStrong(&preferredStatefulDescriptor, 0);
  }

  else
  {
    v7 = +[SUUILoggingContext statefulUILogger];
    location[0] = [v7 oslog];
    MEMORY[0x277D82BD8](v7);
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_32_8_0(v18, "[SUUIStatefulUIManager hidePreferredUpdate]", selfCopy);
      _os_log_impl(&dword_26ADE5000, location[0], v14, "%s [%p]: A request to hide the preferred update was received. Rejecting this request as this ability was disabled via the manager's options.", v18, 0x16u);
    }

    objc_storeStrong(location, 0);
  }
}

- (void)hideAlternateUpdate
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  environment = [(SUUIStatefulUIManager *)self environment];
  options = [(SUUIStatefulUIEnvironment *)environment options];
  MEMORY[0x277D82BD8](environment);
  if ((options & 4) != 0)
  {
    alternateStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy alternateStatefulDescriptor];
    v5 = +[SUUILoggingContext statefulUILogger];
    oslog = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog;
      v3 = v10;
      updateName = [(SUUIStatefulDescriptor *)alternateStatefulDescriptor updateName];
      v9 = MEMORY[0x277D82BE0](updateName);
      __os_log_helper_16_2_3_8_32_8_0_8_66(v16, "[SUUIStatefulUIManager hideAlternateUpdate]", selfCopy, v9);
      _os_log_impl(&dword_26ADE5000, v2, v3, "%s [%p]: Hiding alternate update: %{public}@", v16, 0x20u);
      MEMORY[0x277D82BD8](updateName);
      objc_storeStrong(&v9, 0);
    }

    objc_storeStrong(&oslog, 0);
    [(SUUIStatefulUIManager *)selfCopy setHiddenAlternateStatefulDescriptor:alternateStatefulDescriptor];
    [(SUUIStatefulUIManager *)selfCopy setAlternateStatefulDescriptor:?];
    [(SUUIStatefulUIManager *)selfCopy setHidingPreferredDescriptor:0];
    [(SUUIStatefulUIManager *)selfCopy setHidingAlternateDescriptor:1];
    objc_storeStrong(&alternateStatefulDescriptor, 0);
  }

  else
  {
    v6 = +[SUUILoggingContext statefulUILogger];
    location[0] = [v6 oslog];
    MEMORY[0x277D82BD8](v6);
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_32_8_0(v17, "[SUUIStatefulUIManager hideAlternateUpdate]", selfCopy);
      _os_log_impl(&dword_26ADE5000, location[0], v13, "%s [%p]: A request to hide the preferred update was received. Rejecting this request as this ability was disabled via the manager's options.", v17, 0x16u);
    }

    objc_storeStrong(location, 0);
  }
}

- (void)revealHiddenPreferredUpdate
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  environment = [(SUUIStatefulUIManager *)self environment];
  options = [(SUUIStatefulUIEnvironment *)environment options];
  MEMORY[0x277D82BD8](environment);
  if ((options & 4) != 0)
  {
    hiddenPreferredStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy hiddenPreferredStatefulDescriptor];
    v6 = +[SUUILoggingContext statefulUILogger];
    oslog = [v6 oslog];
    MEMORY[0x277D82BD8](v6);
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = oslog;
      v4 = v11;
      updateName = [(SUUIStatefulDescriptor *)hiddenPreferredStatefulDescriptor updateName];
      v10 = MEMORY[0x277D82BE0](updateName);
      __os_log_helper_16_2_3_8_32_8_0_8_66(v17, "[SUUIStatefulUIManager revealHiddenPreferredUpdate]", selfCopy, v10);
      _os_log_impl(&dword_26ADE5000, v3, v4, "%s [%p]: Revealing the previously hidden preferred update: %{public}@", v17, 0x20u);
      MEMORY[0x277D82BD8](updateName);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&oslog, 0);
    preferredStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy preferredStatefulDescriptor];
    [(SUUIStatefulUIManager *)selfCopy setAlternateStatefulDescriptor:?];
    MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    [(SUUIStatefulUIManager *)selfCopy setPreferredStatefulDescriptor:hiddenPreferredStatefulDescriptor];
    [(SUUIStatefulUIManager *)selfCopy setHiddenPreferredStatefulDescriptor:?];
    [(SUUIStatefulUIManager *)selfCopy setHidingPreferredDescriptor:0];
    objc_storeStrong(&hiddenPreferredStatefulDescriptor, 0);
  }

  else
  {
    v7 = +[SUUILoggingContext statefulUILogger];
    location[0] = [v7 oslog];
    MEMORY[0x277D82BD8](v7);
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_32_8_0(v18, "[SUUIStatefulUIManager revealHiddenPreferredUpdate]", selfCopy);
      _os_log_impl(&dword_26ADE5000, location[0], v14, "%s [%p]: A request to hide the preferred update was received. Rejecting this request as this ability was disabled via the manager's options.", v18, 0x16u);
    }

    objc_storeStrong(location, 0);
  }
}

- (void)revealHiddenAlteranteUpdate
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  environment = [(SUUIStatefulUIManager *)self environment];
  options = [(SUUIStatefulUIEnvironment *)environment options];
  MEMORY[0x277D82BD8](environment);
  if ((options & 4) != 0)
  {
    hiddenAlternateStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy hiddenAlternateStatefulDescriptor];
    v5 = +[SUUILoggingContext statefulUILogger];
    oslog = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v10 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v2 = oslog;
      v3 = v10;
      updateName = [(SUUIStatefulDescriptor *)hiddenAlternateStatefulDescriptor updateName];
      v9 = MEMORY[0x277D82BE0](updateName);
      __os_log_helper_16_2_3_8_32_8_0_8_66(v16, "[SUUIStatefulUIManager revealHiddenAlteranteUpdate]", selfCopy, v9);
      _os_log_impl(&dword_26ADE5000, v2, v3, "%s [%p]: Reveal the previously hidden alternate update: %{public}@", v16, 0x20u);
      MEMORY[0x277D82BD8](updateName);
      objc_storeStrong(&v9, 0);
    }

    objc_storeStrong(&oslog, 0);
    [(SUUIStatefulUIManager *)selfCopy setAlternateStatefulDescriptor:hiddenAlternateStatefulDescriptor];
    [(SUUIStatefulUIManager *)selfCopy setHiddenAlternateStatefulDescriptor:?];
    [(SUUIStatefulUIManager *)selfCopy setHidingAlternateDescriptor:0];
    objc_storeStrong(&hiddenAlternateStatefulDescriptor, 0);
  }

  else
  {
    v6 = +[SUUILoggingContext statefulUILogger];
    location[0] = [v6 oslog];
    MEMORY[0x277D82BD8](v6);
    v13 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_32_8_0(v17, "[SUUIStatefulUIManager revealHiddenAlteranteUpdate]", selfCopy);
      _os_log_impl(&dword_26ADE5000, location[0], v13, "%s [%p]: A request to hide the preferred update was received. Rejecting this request as this ability was disabled via the manager's options.", v17, 0x16u);
    }

    objc_storeStrong(location, 0);
  }
}

- (BOOL)getEnrollInBetaUpdatesStatus
{
  v4 = 0;
  canCurrentDeviceEnrollInBetaUpdates = 0;
  if (_os_feature_enabled_impl())
  {
    mEMORY[0x277D4D310] = [MEMORY[0x277D4D310] sharedManager];
    v4 = 1;
    canCurrentDeviceEnrollInBetaUpdates = [mEMORY[0x277D4D310] canCurrentDeviceEnrollInBetaUpdates];
  }

  if (v4)
  {
    MEMORY[0x277D82BD8](mEMORY[0x277D4D310]);
  }

  return canCurrentDeviceEnrollInBetaUpdates & 1;
}

- (void)doEnrollInBetaUpdatesProgram:(id)program activity:(suui_activity_s *)activity completionHandler:(id)handler
{
  selfCopy = self;
  v24 = a2;
  location = 0;
  objc_storeStrong(&location, program);
  activityCopy = activity;
  v21 = 0;
  objc_storeStrong(&v21, handler);
  objc_initWeak(&v20, selfCopy);
  v16[0] = 0;
  v16[1] = v16;
  v17 = 0x20000000;
  v18 = 32;
  v19 = *activityCopy;
  *activityCopy = 0;
  queue = selfCopy->_operationsQueue;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke;
  v12 = &unk_279CC68D8;
  objc_copyWeak(v15, &v20);
  v15[1] = v24;
  v14[0] = MEMORY[0x277D82BE0](v21);
  v13 = MEMORY[0x277D82BE0](location);
  v14[1] = v16;
  dispatch_async(queue, &v8);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(v14, 0);
  objc_destroyWeak(v15);
  _Block_object_dispose(v16, 8);
  objc_destroyWeak(&v20);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&location, 0);
}

void __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke(id *a1)
{
  v152 = &v171;
  v153 = a1;
  v154 = "[SUUIStatefulUIManager doEnrollInBetaUpdatesProgram:activity:completionHandler:]_block_invoke";
  v155 = "[SUUIStatefulUIManager doEnrollInBetaUpdatesProgram:activity:completionHandler:]_block_invoke_2";
  v200 = *MEMORY[0x277D85DE8];
  v193[2] = a1;
  v193[1] = a1;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v193[0] = WeakRetained;
  v151 = 0;
  if (!WeakRetained)
  {
    v150 = +[SUUILoggingContext softwareUpdateUILogger];
    v148 = v150;
    v149 = [v148 oslog];
    v1 = v149;
    v2 = v148;
    v152[28] = v1;
    MEMORY[0x277D82BD8](v2);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v152[28], OS_LOG_TYPE_ERROR))
    {
      log = v152[28];
      *v146 = type;
      v147 = NSStringFromSelector(v153[8]);
      v144 = v147;
      v3 = MEMORY[0x277D82BE0](v144);
      v4 = v154;
      v152[26] = v3;
      buf = v199;
      __os_log_helper_16_2_2_8_32_8_66(v199, v4, v3);
      _os_log_error_impl(&dword_26ADE5000, log, v146[0], "%s: Self is nil in %{public}@. Stopping.", v199, 0x16u);
      MEMORY[0x277D82BD8](v144);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v192, 0);
    v189[3] = 1;
    v151 = 1;
  }

  if (v151)
  {
    v5 = MEMORY[0x277D85CD0];
    v6 = MEMORY[0x277D85CD0];
    v7 = v153;
    v8 = v152;
    queue = v6;
    block = &v186;
    v152[20] = MEMORY[0x277D85DD0];
    v187 = -1073741824;
    v188 = 0;
    v8[22] = __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_471;
    v8[23] = &unk_279CC61E0;
    v140 = v189;
    v9 = MEMORY[0x277D82BE0](v7[5]);
    v10 = block;
    v11 = v9;
    v12 = queue;
    v152[24] = v11;
    dispatch_async(v12, v10);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(v140, 0);
    v185 = 1;
  }

  else
  {
    v139 = [MEMORY[0x277CCAD78] UUID];
    v137 = v139;
    v138 = [v137 UUIDString];
    v13 = v138;
    v14 = v137;
    v152[18] = v13;
    MEMORY[0x277D82BD8](v14);
    v136 = +[SUUILoggingContext statefulUILogger];
    v134 = v136;
    v135 = [v134 oslog];
    v15 = v135;
    v16 = v134;
    v152[17] = v15;
    MEMORY[0x277D82BD8](v16);
    v182 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v152[17], OS_LOG_TYPE_DEFAULT))
    {
      v130 = v152[17];
      *v131 = v182;
      v132 = v152[29];
      aClass = objc_opt_class();
      v129 = NSStringFromClass(aClass);
      v126 = v129;
      v17 = MEMORY[0x277D82BE0](v126);
      v18 = v152;
      v127 = v17;
      v152[15] = v17;
      v128 = SUUIStatefulUIStateToString(*(v18[29] + 5));
      v123 = v128;
      v19 = MEMORY[0x277D82BE0](v123);
      v20 = v152;
      v124 = v19;
      v152[14] = v19;
      v125 = [v20[29] currentState];
      v122 = [v152[29] delegate];
      v121 = v122;
      v179 = 0;
      v178 = 0;
      if (v121)
      {
        v120 = [v152[29] delegate];
        v152[13] = v120;
        v179 = 1;
        v119 = objc_opt_class();
        v118 = NSStringFromClass(v119);
        v21 = v118;
        v152[11] = v21;
        v178 = 1;
        v117 = v21;
      }

      else
      {
        v117 = @"(null)";
      }

      v115 = v117;
      v116 = [v152[29] delegate];
      v113 = v116;
      v114 = [v152[29] scanError];
      v111 = v114;
      v112 = [v152[29] preferredStatefulDescriptor];
      v109 = v112;
      v110 = [v152[29] alternateStatefulDescriptor];
      v107 = v110;
      v108 = [v152[29] currentDownload];
      v106 = v108;
      v177 = 0;
      v176 = 0;
      v175 = 0;
      if (v106)
      {
        v105 = [v152[29] currentDownload];
        v22 = v105;
        v152[9] = v22;
        v177 = 1;
        v104 = [v22 descriptor];
        v23 = v104;
        v152[7] = v23;
        v176 = 1;
        v103 = [v23 updateName];
        v24 = v103;
        v152[5] = v24;
        v175 = 1;
        v102 = v24;
      }

      else
      {
        v102 = @"(null)";
      }

      v100 = v102;
      v101 = [v152[29] currentDownload];
      v98 = v101;
      v99 = [v152[29] currentUpdateOperationType];
      v97 = SUUIUpdateContinuousOperationTypeToString(v99);
      v94 = v97;
      v25 = MEMORY[0x277D82BE0](v94);
      v26 = v152;
      v95 = v25;
      v152[3] = v25;
      v96 = [v26[29] isTargetedUpdateScheduledForAutoInstall];
      v197 = v96;
      if (v96)
      {
        v27 = @"YES";
      }

      else
      {
        v27 = @"NO";
      }

      v93 = v27;
      v28 = v27;
      v90 = v93;
      v29 = MEMORY[0x277D82BE0](v90);
      v30 = v152;
      v91 = v29;
      v152[2] = v29;
      v92 = [v30[29] hidingPreferredDescriptor];
      v196 = v92;
      if (v92)
      {
        v31 = @"YES";
      }

      else
      {
        v31 = @"NO";
      }

      v89 = v31;
      v32 = v31;
      v86 = v89;
      v33 = MEMORY[0x277D82BE0](v86);
      v34 = v152;
      v87 = v33;
      v152[1] = v33;
      v88 = [v34[29] hiddenPreferredStatefulDescriptor];
      v84 = v88;
      v85 = [v84 updateName];
      v81 = v85;
      v35 = MEMORY[0x277D82BE0](v81);
      v36 = v152;
      v82 = v35;
      *v152 = v35;
      v83 = [v36[29] hidingAlternateDescriptor];
      v195 = v83;
      if (v83)
      {
        v37 = @"YES";
      }

      else
      {
        v37 = @"NO";
      }

      v80 = v37;
      v38 = v37;
      v77 = v80;
      v78 = MEMORY[0x277D82BE0](v77);
      v170 = v78;
      v79 = [v152[29] hiddenAlternateStatefulDescriptor];
      v75 = v79;
      v76 = [v75 updateName];
      v72 = v76;
      v73 = MEMORY[0x277D82BE0](v72);
      v169 = v73;
      v74 = [v152[29] enrolledBetaProgram];
      v71 = v74;
      v167 = 0;
      if (v71)
      {
        v70 = [v152[29] enrolledBetaProgram];
        v168 = v70;
        v167 = 1;
        v69 = [v168 programID];
        v68 = v69;
      }

      else
      {
        v68 = 0;
      }

      v66 = v68;
      v67 = [*(v152[29] + 15) count];
      v65 = [v152[29] canEnrollInBetaUpdates];
      v194 = v65;
      if (v65)
      {
        v39 = @"YES";
      }

      else
      {
        v39 = @"NO";
      }

      v64 = v39;
      v40 = v39;
      v58 = v64;
      v59 = MEMORY[0x277D82BE0](v58);
      v166 = v59;
      v60 = *(v152[29] + 21);
      v61 = *(v152[29] + 22);
      v62 = *(v152[29] + 23);
      v63 = [*(v152[29] + 24) count];
      v57 = [v153[4] programID];
      v41 = v153[4];
      v42 = v152[18];
      v55 = &v43;
      v56 = v198;
      __os_log_helper_16_2_28_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66(v198, v155, v132, v127, v124, v125, v115, v113, v111, v109, v107, v100, v98, v95, v91, v87, v82, v78, v73, v66, v67, v59, v60, v61, v62, v63, v57, v41, v42);
      _os_log_impl(&dword_26ADE5000, v130, v131[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nAttempts to enroll in beta program: %ld (%p) using Beta Updates operation ID: %{public}@", v56, 0x11Au);
      MEMORY[0x277D82BD8](v58);
      if (v167)
      {
        MEMORY[0x277D82BD8](v168);
      }

      MEMORY[0x277D82BD8](v71);
      MEMORY[0x277D82BD8](v72);
      MEMORY[0x277D82BD8](v75);
      MEMORY[0x277D82BD8](v77);
      MEMORY[0x277D82BD8](v81);
      MEMORY[0x277D82BD8](v84);
      MEMORY[0x277D82BD8](v86);
      MEMORY[0x277D82BD8](v90);
      MEMORY[0x277D82BD8](v94);
      MEMORY[0x277D82BD8](v98);
      if (v175)
      {
        MEMORY[0x277D82BD8](v152[5]);
      }

      if (v176)
      {
        MEMORY[0x277D82BD8](v152[7]);
      }

      if (v177)
      {
        MEMORY[0x277D82BD8](v152[9]);
      }

      MEMORY[0x277D82BD8](v106);
      MEMORY[0x277D82BD8](v107);
      MEMORY[0x277D82BD8](v109);
      MEMORY[0x277D82BD8](v111);
      MEMORY[0x277D82BD8](v113);
      if (v178)
      {
        MEMORY[0x277D82BD8](v152[11]);
      }

      if (v179)
      {
        MEMORY[0x277D82BD8](v152[13]);
      }

      MEMORY[0x277D82BD8](v121);
      MEMORY[0x277D82BD8](v123);
      MEMORY[0x277D82BD8](v126);
      objc_storeStrong(&v166, 0);
      objc_storeStrong(&v169, 0);
      objc_storeStrong(&v170, 0);
      objc_storeStrong(&v171, 0);
      objc_storeStrong(&v172, 0);
      objc_storeStrong(&v173, 0);
      objc_storeStrong(&v174, 0);
      objc_storeStrong(&v180, 0);
      objc_storeStrong(&v181, 0);
    }

    objc_storeStrong(&v183, 0);
    v54 = [v152[29] environment];
    v52 = v54;
    v53 = [v52 betaUpdatesOperationWithManager:v152[29] identifier:v152[18] completionQueue:*(v152[29] + 26)];
    v165 = v53;
    MEMORY[0x277D82BD8](v52);
    v50 = v165;
    v51 = [v152[29] currentSeedingDevice];
    v47 = v51;
    v48 = v153[4];
    v157 = MEMORY[0x277D85DD0];
    v158 = -1073741824;
    v159 = 0;
    v160 = __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_473;
    v161 = &unk_279CC68B0;
    v49 = v164;
    objc_copyWeak(v164, v153 + 7);
    v46 = &v157;
    v164[1] = v153[8];
    v44 = v163;
    v163[0] = MEMORY[0x277D82BE0](v153[5]);
    v45 = (v46 + 4);
    v162 = MEMORY[0x277D82BE0](v153[4]);
    v163[1] = v153[6];
    [v50 enrollDevice:v47 inBetaProgram:v48 completionHandler:v46];
    MEMORY[0x277D82BD8](v47);
    objc_storeStrong(v45, 0);
    objc_storeStrong(v44, 0);
    objc_destroyWeak(v49);
    objc_storeStrong(&v165, 0);
    objc_storeStrong(&v184, 0);
    v185 = 0;
  }

  objc_storeStrong(v193, 0);
}

void __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_471(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:?];
    v1 = 1;
    (*(location[0] + 2))(location[0], 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_473(void *a1, void *a2)
{
  v122 = a1;
  v123 = "[SUUIStatefulUIManager doEnrollInBetaUpdatesProgram:activity:completionHandler:]_block_invoke";
  v124 = "[SUUIStatefulUIManager doEnrollInBetaUpdatesProgram:activity:completionHandler:]_block_invoke_2";
  v183 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v175[1] = v122;
  WeakRetained = objc_loadWeakRetained(v122 + 7);
  v175[0] = WeakRetained;
  v120 = 0;
  if (!WeakRetained)
  {
    v119 = +[SUUILoggingContext softwareUpdateUILogger];
    v117 = v119;
    v118 = [v117 oslog];
    oslog = v118;
    MEMORY[0x277D82BD8](v117);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v115 = type;
      v116 = NSStringFromSelector(*(v122 + 8));
      v113 = v116;
      v172 = MEMORY[0x277D82BE0](v113);
      buf = v182;
      __os_log_helper_16_2_2_8_32_8_66(v182, v123, v172);
      _os_log_error_impl(&dword_26ADE5000, oslog, type, "%s: Self is nil in %{public}@. Stopping.", v182, 0x16u);
      MEMORY[0x277D82BD8](v113);
      objc_storeStrong(&v172, 0);
    }

    objc_storeStrong(&oslog, 0);
    v171 = 1;
    v120 = 1;
  }

  if (v120)
  {
    v2 = MEMORY[0x277D85CD0];
    queue = MEMORY[0x277D85CD0];
    block = &v165;
    v165 = MEMORY[0x277D85DD0];
    v166 = -1073741824;
    v167 = 0;
    v168 = __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_474;
    v169 = &unk_279CC61E0;
    v109 = &v170;
    v170 = MEMORY[0x277D82BE0](*(v122 + 5));
    dispatch_async(queue, &v165);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v170, 0);
    v164 = 1;
  }

  else
  {
    v108 = +[SUUILoggingContext statefulUILogger];
    v106 = v108;
    v107 = [v106 oslog];
    v163 = v107;
    MEMORY[0x277D82BD8](v106);
    v162 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
    {
      v102 = v163;
      *v103 = v162;
      v104 = v175[0];
      aClass = objc_opt_class();
      v101 = NSStringFromClass(aClass);
      v98 = v101;
      v99 = MEMORY[0x277D82BE0](v98);
      v161 = v99;
      v100 = SUUIStatefulUIStateToString(*(v175[0] + 5));
      v95 = v100;
      v96 = MEMORY[0x277D82BE0](v95);
      v160 = v96;
      v97 = [v175[0] currentState];
      v94 = [v175[0] delegate];
      v93 = v94;
      v158 = 0;
      v156 = 0;
      if (v93)
      {
        v92 = [v175[0] delegate];
        v159 = v92;
        v158 = 1;
        v91 = objc_opt_class();
        v90 = NSStringFromClass(v91);
        v157 = v90;
        v156 = 1;
        v89 = v157;
      }

      else
      {
        v89 = @"(null)";
      }

      v87 = v89;
      v88 = [v175[0] delegate];
      v85 = v88;
      v86 = [v175[0] scanError];
      v83 = v86;
      v84 = [v175[0] preferredStatefulDescriptor];
      v81 = v84;
      v82 = [v175[0] alternateStatefulDescriptor];
      v79 = v82;
      v80 = [v175[0] currentDownload];
      v78 = v80;
      v154 = 0;
      v152 = 0;
      v150 = 0;
      if (v78)
      {
        v77 = [v175[0] currentDownload];
        v155 = v77;
        v154 = 1;
        v76 = [v155 descriptor];
        v153 = v76;
        v152 = 1;
        v75 = [v153 updateName];
        v151 = v75;
        v150 = 1;
        v74 = v151;
      }

      else
      {
        v74 = @"(null)";
      }

      v72 = v74;
      v73 = [v175[0] currentDownload];
      v70 = v73;
      v71 = [v175[0] currentUpdateOperationType];
      v69 = SUUIUpdateContinuousOperationTypeToString(v71);
      v66 = v69;
      v67 = MEMORY[0x277D82BE0](v66);
      v149 = v67;
      v68 = [v175[0] isTargetedUpdateScheduledForAutoInstall];
      v180 = v68;
      if (v68)
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      v65 = v3;
      v4 = v3;
      v62 = v65;
      v63 = MEMORY[0x277D82BE0](v62);
      v148 = v63;
      v64 = [v175[0] hidingPreferredDescriptor];
      v179 = v64;
      if (v64)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v61 = v5;
      v6 = v5;
      v58 = v61;
      v59 = MEMORY[0x277D82BE0](v58);
      v147 = v59;
      v60 = [v175[0] hiddenPreferredStatefulDescriptor];
      v56 = v60;
      v57 = [v56 updateName];
      v53 = v57;
      v54 = MEMORY[0x277D82BE0](v53);
      v146 = v54;
      v55 = [v175[0] hidingAlternateDescriptor];
      v178 = v55;
      if (v55)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      v52 = v7;
      v8 = v7;
      v49 = v52;
      v50 = MEMORY[0x277D82BE0](v49);
      v145 = v50;
      v51 = [v175[0] hiddenAlternateStatefulDescriptor];
      v47 = v51;
      v48 = [v47 updateName];
      v44 = v48;
      v45 = MEMORY[0x277D82BE0](v44);
      v144 = v45;
      v46 = [v175[0] enrolledBetaProgram];
      v43 = v46;
      v142 = 0;
      if (v43)
      {
        v42 = [v175[0] enrolledBetaProgram];
        v143 = v42;
        v142 = 1;
        v41 = [v143 programID];
        v40 = v41;
      }

      else
      {
        v40 = 0;
      }

      v38 = v40;
      v39 = [*(v175[0] + 15) count];
      v37 = [v175[0] canEnrollInBetaUpdates];
      v177 = v37;
      if (v37)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      v36 = v9;
      v10 = v9;
      v30 = v36;
      v31 = MEMORY[0x277D82BE0](v30);
      v141 = v31;
      v32 = *(v175[0] + 21);
      v33 = *(v175[0] + 22);
      v34 = *(v175[0] + 23);
      v35 = [*(v175[0] + 24) count];
      v29 = [*(v122 + 4) programID];
      v11 = *(v122 + 4);
      v27 = &v12;
      v28 = v181;
      __os_log_helper_16_2_28_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_0_8_0_8_66(v181, v124, v104, v99, v96, v97, v87, v85, v83, v81, v79, v72, v70, v67, v63, v59, v54, v50, v45, v38, v39, v31, v32, v33, v34, v35, v29, v11, location[0]);
      _os_log_impl(&dword_26ADE5000, v102, v103[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFinished to enroll in beta program: %ld (%p); error: %{public}@", v28, 0x11Au);
      MEMORY[0x277D82BD8](v30);
      if (v142)
      {
        MEMORY[0x277D82BD8](v143);
      }

      MEMORY[0x277D82BD8](v43);
      MEMORY[0x277D82BD8](v44);
      MEMORY[0x277D82BD8](v47);
      MEMORY[0x277D82BD8](v49);
      MEMORY[0x277D82BD8](v53);
      MEMORY[0x277D82BD8](v56);
      MEMORY[0x277D82BD8](v58);
      MEMORY[0x277D82BD8](v62);
      MEMORY[0x277D82BD8](v66);
      MEMORY[0x277D82BD8](v70);
      if (v150)
      {
        MEMORY[0x277D82BD8](v151);
      }

      if (v152)
      {
        MEMORY[0x277D82BD8](v153);
      }

      if (v154)
      {
        MEMORY[0x277D82BD8](v155);
      }

      MEMORY[0x277D82BD8](v78);
      MEMORY[0x277D82BD8](v79);
      MEMORY[0x277D82BD8](v81);
      MEMORY[0x277D82BD8](v83);
      MEMORY[0x277D82BD8](v85);
      if (v156)
      {
        MEMORY[0x277D82BD8](v157);
      }

      if (v158)
      {
        MEMORY[0x277D82BD8](v159);
      }

      MEMORY[0x277D82BD8](v93);
      MEMORY[0x277D82BD8](v95);
      MEMORY[0x277D82BD8](v98);
      objc_storeStrong(&v141, 0);
      objc_storeStrong(&v144, 0);
      objc_storeStrong(&v145, 0);
      objc_storeStrong(&v146, 0);
      objc_storeStrong(&v147, 0);
      objc_storeStrong(&v148, 0);
      objc_storeStrong(&v149, 0);
      objc_storeStrong(&v160, 0);
      objc_storeStrong(&v161, 0);
    }

    objc_storeStrong(&v163, 0);
    [v175[0] setEnrolledBetaProgram:*(v122 + 4)];
    v25 = &v133;
    v133 = MEMORY[0x277D85DD0];
    v134 = -1073741824;
    v135 = 0;
    v136 = __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_475;
    v137 = &unk_279CC6860;
    v24 = v138;
    v138[0] = MEMORY[0x277D82BE0](v175[0]);
    v26 = v25 + 9;
    objc_copyWeak(v25 + 9, v122 + 7);
    v22 = &v133;
    v139[3] = *(v122 + 8);
    v19 = v139;
    v139[0] = MEMORY[0x277D82BE0](*(v122 + 5));
    v139[1] = *(v122 + 6);
    v20 = (v22 + 5);
    v138[1] = MEMORY[0x277D82BE0](*(v122 + 4));
    v21 = (v22 + 6);
    v138[2] = MEMORY[0x277D82BE0](location[0]);
    v23 = MEMORY[0x26D66ADC0](v22);
    v140 = v23;
    v18 = [v175[0] currentFullScanOperation];
    v132 = v18;
    if (v132)
    {
      v16 = v132;
      v125 = MEMORY[0x277D85DD0];
      v126 = -1073741824;
      v127 = 0;
      v128 = __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_481;
      v129 = &unk_279CC6888;
      v17 = v131;
      objc_copyWeak(v131, v122 + 7);
      v15 = &v125;
      v131[1] = *(v122 + 8);
      v13 = v130;
      v130[0] = MEMORY[0x277D82BE0](*(v122 + 5));
      v14 = (v15 + 5);
      v130[1] = MEMORY[0x277D82BE0](v140);
      [v16 cancel:v15];
      objc_storeStrong(v14, 0);
      objc_storeStrong(v13, 0);
      objc_destroyWeak(v17);
    }

    else
    {
      (*(v140 + 2))();
    }

    objc_storeStrong(&v132, 0);
    objc_storeStrong(&v140, 0);
    objc_storeStrong(v21, 0);
    objc_storeStrong(v20, 0);
    objc_storeStrong(v19, 0);
    objc_destroyWeak(v26);
    objc_storeStrong(v24, 0);
    v164 = 0;
  }

  objc_storeStrong(v175, 0);
  if (!v164)
  {
    v164 = 0;
  }

  objc_storeStrong(location, 0);
}

void __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_474(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:?];
    v1 = 1;
    (*(location[0] + 2))(location[0], 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_475(uint64_t a1)
{
  v11[3] = a1;
  v11[2] = a1;
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_2;
  v7 = &unk_279CC6838;
  objc_copyWeak(v11, (a1 + 72));
  v11[1] = *(a1 + 80);
  v10[0] = MEMORY[0x277D82BE0](*(a1 + 56));
  v10[1] = *(a1 + 64);
  v8 = MEMORY[0x277D82BE0](*(a1 + 40));
  v9 = MEMORY[0x277D82BE0](*(a1 + 48));
  [v2 checkForAvailableUpdatesWithForcedReload:1 completion:&v3];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(v10, 0);
  objc_destroyWeak(v11);
}

void __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v44 = 0;
  objc_storeStrong(&v44, a3);
  v43[1] = a1;
  v43[0] = objc_loadWeakRetained((a1 + 64));
  v13 = 0;
  if (!v43[0])
  {
    v12 = +[SUUILoggingContext softwareUpdateUILogger];
    v42 = [v12 oslog];
    MEMORY[0x277D82BD8](v12);
    v41 = 16;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      log = v42;
      type = v41;
      v9 = NSStringFromSelector(*(a1 + 72));
      v40 = MEMORY[0x277D82BE0](v9);
      __os_log_helper_16_2_2_8_32_8_66(v46, "[SUUIStatefulUIManager doEnrollInBetaUpdatesProgram:activity:completionHandler:]_block_invoke_2", v40);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v46, 0x16u);
      MEMORY[0x277D82BD8](v9);
      objc_storeStrong(&v40, 0);
    }

    objc_storeStrong(&v42, 0);
    v39 = 1;
    v13 = 1;
  }

  if (v13)
  {
    v3 = MEMORY[0x277D85CD0];
    queue = MEMORY[0x277D85CD0];
    v33 = MEMORY[0x277D85DD0];
    v34 = -1073741824;
    v35 = 0;
    v36 = __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_476;
    v37 = &unk_279CC61E0;
    v38 = MEMORY[0x277D82BE0](*(a1 + 48));
    dispatch_async(queue, &v33);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v38, 0);
    v32 = 1;
  }

  else
  {
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      if (*(*(*(*(a1 + 56) + 8) + 24) + 24))
      {
        os_activity_scope_leave(*(*(*(a1 + 56) + 8) + 24));
      }

      free(*(*(*(a1 + 56) + 8) + 24));
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }

    v7 = [MEMORY[0x277D643F8] sharedCore];
    v6 = [v43[0] delegateCallbackQueue];
    v5 = [v7 selectDelegateCallbackQueue:?];
    v24 = MEMORY[0x277D85DD0];
    v25 = -1073741824;
    v26 = 0;
    v27 = __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_2_477;
    v28 = &unk_279CC6570;
    v31 = MEMORY[0x277D82BE0](*(a1 + 48));
    v29 = MEMORY[0x277D82BE0](*(a1 + 32));
    v30 = MEMORY[0x277D82BE0](*(a1 + 40));
    dispatch_async(v5, &v24);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    v4 = v43[0];
    v16 = MEMORY[0x277D85DD0];
    v17 = -1073741824;
    v18 = 0;
    v19 = __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_3;
    v20 = &unk_279CC62A0;
    objc_copyWeak(v23, (a1 + 64));
    v23[1] = *(a1 + 72);
    v21 = MEMORY[0x277D82BE0](*(a1 + 32));
    v22 = MEMORY[0x277D82BE0](*(a1 + 40));
    [v4 executeOperationOnDelegate:sel_statefulUIManager_didEnrollDevice_inBetaUpdatesProgram_withError_ usingBlock:&v16];
    objc_storeStrong(&v22, 0);
    objc_storeStrong(&v21, 0);
    objc_destroyWeak(v23);
    objc_storeStrong(&v30, 0);
    objc_storeStrong(&v29, 0);
    objc_storeStrong(&v31, 0);
    v32 = 0;
  }

  objc_storeStrong(v43, 0);
  if (!v32)
  {
    v32 = 0;
  }

  objc_storeStrong(&v44, 0);
  objc_storeStrong(location, 0);
}

void __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_476(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:?];
    v1 = 1;
    (*(location[0] + 2))(location[0], 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_2_477(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[6]);
  if (location[0])
  {
    (*(location[0] + 2))(location[0], a1[4], a1[5]);
  }

  objc_storeStrong(location, 0);
}

void __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v13[2] = a1;
  v13[1] = a1;
  v13[0] = objc_loadWeakRetained((a1 + 48));
  v8 = 0;
  if (!v13[0])
  {
    v7 = +[SUUILoggingContext softwareUpdateUILogger];
    v12 = [v7 oslog];
    MEMORY[0x277D82BD8](v7);
    v11 = 16;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      log = v12;
      type = v11;
      v6 = NSStringFromSelector(*(a1 + 56));
      v10 = MEMORY[0x277D82BE0](v6);
      __os_log_helper_16_2_2_8_32_8_66(v14, "[SUUIStatefulUIManager doEnrollInBetaUpdatesProgram:activity:completionHandler:]_block_invoke_3", v10);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v14, 0x16u);
      MEMORY[0x277D82BD8](v6);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    v3 = [v13[0] delegate];
    v1 = v13[0];
    v2 = [v13[0] currentSeedingDevice];
    [v3 statefulUIManager:v1 didEnrollDevice:? inBetaUpdatesProgram:? withError:?];
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(v13, 0);
}

void __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_481(uint64_t a1, char a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v23 = a1;
  v22 = a2;
  v21[1] = a1;
  v21[0] = objc_loadWeakRetained((a1 + 48));
  v9 = 0;
  if (!v21[0])
  {
    v8 = +[SUUILoggingContext softwareUpdateUILogger];
    v20 = [v8 oslog];
    MEMORY[0x277D82BD8](v8);
    v19 = 16;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      log = v20;
      type = v19;
      v7 = NSStringFromSelector(*(a1 + 56));
      v18 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v24, "[SUUIStatefulUIManager doEnrollInBetaUpdatesProgram:activity:completionHandler:]_block_invoke", v18);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v24, 0x16u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v18, 0);
    }

    objc_storeStrong(&v20, 0);
    v17 = 1;
    v9 = 1;
  }

  if (v9)
  {
    v3 = MEMORY[0x277D85CD0];
    v2 = MEMORY[0x277D85CD0];
    queue = v3;
    v11 = MEMORY[0x277D85DD0];
    v12 = -1073741824;
    v13 = 0;
    v14 = __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_482;
    v15 = &unk_279CC61E0;
    v16 = MEMORY[0x277D82BE0](*(a1 + 32));
    dispatch_async(queue, &v11);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v16, 0);
  }

  else
  {
    [v21[0] setCurrentFullScanOperation:0];
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(v21, 0);
}

void __81__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_activity_completionHandler___block_invoke_482(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:?];
    v1 = 1;
    (*(location[0] + 2))(location[0], 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

- (void)doEnrollInBetaUpdatesProgram:(id)program afterPurgeConfirmation:(int64_t)confirmation activity:(suui_activity_s *)activity completionHandler:(id)handler
{
  selfCopy = self;
  v27 = a2;
  location = 0;
  objc_storeStrong(&location, program);
  confirmationCopy = confirmation;
  activityCopy = activity;
  v23 = 0;
  objc_storeStrong(&v23, handler);
  objc_initWeak(&v22, selfCopy);
  v18[0] = 0;
  v18[1] = v18;
  v19 = 0x20000000;
  v20 = 32;
  v21 = *activityCopy;
  *activityCopy = 0;
  queue = selfCopy->_operationsQueue;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __104__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_afterPurgeConfirmation_activity_completionHandler___block_invoke;
  v14 = &unk_279CC6950;
  objc_copyWeak(v17, &v22);
  v17[1] = v27;
  v16[0] = MEMORY[0x277D82BE0](v23);
  v15 = MEMORY[0x277D82BE0](location);
  v17[2] = confirmationCopy;
  v16[1] = v18;
  dispatch_async(queue, &v10);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(v16, 0);
  objc_destroyWeak(v17);
  _Block_object_dispose(v18, 8);
  objc_destroyWeak(&v22);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&location, 0);
}

void __104__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_afterPurgeConfirmation_activity_completionHandler___block_invoke(id *a1)
{
  v212 = &v227;
  v213 = a1;
  v214 = "[SUUIStatefulUIManager doEnrollInBetaUpdatesProgram:afterPurgeConfirmation:activity:completionHandler:]_block_invoke";
  v215 = "[SUUIStatefulUIManager doEnrollInBetaUpdatesProgram:afterPurgeConfirmation:activity:completionHandler:]_block_invoke_2";
  v267 = *MEMORY[0x277D85DE8];
  v260[2] = a1;
  v260[1] = a1;
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v260[0] = WeakRetained;
  v211 = 0;
  if (!WeakRetained)
  {
    v210 = +[SUUILoggingContext softwareUpdateUILogger];
    v208 = v210;
    v209 = [v208 oslog];
    v1 = v209;
    v2 = v208;
    v212[40] = v1;
    MEMORY[0x277D82BD8](v2);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v212[40], OS_LOG_TYPE_ERROR))
    {
      log = v212[40];
      *v206 = type;
      v207 = NSStringFromSelector(v213[8]);
      v204 = v207;
      v3 = MEMORY[0x277D82BE0](v204);
      v4 = v214;
      v212[38] = v3;
      buf = v266;
      __os_log_helper_16_2_2_8_32_8_66(v266, v4, v3);
      _os_log_error_impl(&dword_26ADE5000, log, v206[0], "%s: Self is nil in %{public}@. Stopping.", v266, 0x16u);
      MEMORY[0x277D82BD8](v204);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v259, 0);
    v256[3] = 1;
    v211 = 1;
  }

  if (v211)
  {
    v5 = MEMORY[0x277D85CD0];
    v6 = MEMORY[0x277D85CD0];
    v7 = v213;
    v8 = v212;
    queue = v6;
    block = &v253;
    v212[32] = MEMORY[0x277D85DD0];
    v254 = -1073741824;
    v255 = 0;
    v8[34] = __104__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_afterPurgeConfirmation_activity_completionHandler___block_invoke_484;
    v8[35] = &unk_279CC61E0;
    v200 = v256;
    v9 = MEMORY[0x277D82BE0](v7[5]);
    v10 = block;
    v11 = v9;
    v12 = queue;
    v212[36] = v11;
    dispatch_async(v12, v10);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(v200, 0);
    v252 = 1;
  }

  else
  {
    v199 = +[SUUILoggingContext statefulUILogger];
    v197 = v199;
    v198 = [v197 oslog];
    v13 = v198;
    v14 = v197;
    v212[30] = v13;
    MEMORY[0x277D82BD8](v14);
    v250 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v212[30], OS_LOG_TYPE_DEFAULT))
    {
      v193 = v212[30];
      *v194 = v250;
      v195 = v212[41];
      aClass = objc_opt_class();
      v192 = NSStringFromClass(aClass);
      v189 = v192;
      v15 = MEMORY[0x277D82BE0](v189);
      v16 = v212;
      v190 = v15;
      v212[28] = v15;
      v191 = SUUIStatefulUIStateToString(*(v16[41] + 40));
      v186 = v191;
      v17 = MEMORY[0x277D82BE0](v186);
      v18 = v212;
      v187 = v17;
      v212[27] = v17;
      v188 = [v18[41] currentState];
      v185 = [v212[41] delegate];
      v184 = v185;
      v247 = 0;
      v246 = 0;
      if (v184)
      {
        v183 = [v212[41] delegate];
        v212[26] = v183;
        v247 = 1;
        v182 = objc_opt_class();
        v181 = NSStringFromClass(v182);
        v19 = v181;
        v212[24] = v19;
        v246 = 1;
        v180 = v19;
      }

      else
      {
        v180 = @"(null)";
      }

      v178 = v180;
      v179 = [v212[41] delegate];
      v176 = v179;
      v177 = [v212[41] scanError];
      v174 = v177;
      v175 = [v212[41] preferredStatefulDescriptor];
      v172 = v175;
      v173 = [v212[41] alternateStatefulDescriptor];
      v170 = v173;
      v171 = [v212[41] currentDownload];
      v169 = v171;
      v245 = 0;
      v244 = 0;
      v243 = 0;
      if (v169)
      {
        v168 = [v212[41] currentDownload];
        v20 = v168;
        v212[22] = v20;
        v245 = 1;
        v167 = [v20 descriptor];
        v21 = v167;
        v212[20] = v21;
        v244 = 1;
        v166 = [v21 updateName];
        v22 = v166;
        v212[18] = v22;
        v243 = 1;
        v165 = v22;
      }

      else
      {
        v165 = @"(null)";
      }

      v163 = v165;
      v164 = [v212[41] currentDownload];
      v161 = v164;
      v162 = [v212[41] currentUpdateOperationType];
      v160 = SUUIUpdateContinuousOperationTypeToString(v162);
      v157 = v160;
      v23 = MEMORY[0x277D82BE0](v157);
      v24 = v212;
      v158 = v23;
      v212[16] = v23;
      v159 = [v24[41] isTargetedUpdateScheduledForAutoInstall];
      v264 = v159;
      if (v159)
      {
        v25 = @"YES";
      }

      else
      {
        v25 = @"NO";
      }

      v156 = v25;
      v26 = v25;
      v153 = v156;
      v27 = MEMORY[0x277D82BE0](v153);
      v28 = v212;
      v154 = v27;
      v212[15] = v27;
      v155 = [v28[41] hidingPreferredDescriptor];
      v263 = v155;
      if (v155)
      {
        v29 = @"YES";
      }

      else
      {
        v29 = @"NO";
      }

      v152 = v29;
      v30 = v29;
      v149 = v152;
      v31 = MEMORY[0x277D82BE0](v149);
      v32 = v212;
      v150 = v31;
      v212[14] = v31;
      v151 = [v32[41] hiddenPreferredStatefulDescriptor];
      v147 = v151;
      v148 = [v147 updateName];
      v144 = v148;
      v33 = MEMORY[0x277D82BE0](v144);
      v34 = v212;
      v145 = v33;
      v212[13] = v33;
      v146 = [v34[41] hidingAlternateDescriptor];
      v262 = v146;
      if (v146)
      {
        v35 = @"YES";
      }

      else
      {
        v35 = @"NO";
      }

      v143 = v35;
      v36 = v35;
      v140 = v143;
      v37 = MEMORY[0x277D82BE0](v140);
      v38 = v212;
      v141 = v37;
      v212[12] = v37;
      v142 = [v38[41] hiddenAlternateStatefulDescriptor];
      v138 = v142;
      v139 = [v138 updateName];
      v135 = v139;
      v39 = MEMORY[0x277D82BE0](v135);
      v40 = v212;
      v136 = v39;
      v212[11] = v39;
      v137 = [v40[41] enrolledBetaProgram];
      v134 = v137;
      v236 = 0;
      if (v134)
      {
        v133 = [v212[41] enrolledBetaProgram];
        v41 = v133;
        v212[10] = v41;
        v236 = 1;
        v132 = [v41 programID];
        v131 = v132;
      }

      else
      {
        v131 = 0;
      }

      v129 = v131;
      v130 = [*(v212[41] + 120) count];
      v128 = [v212[41] canEnrollInBetaUpdates];
      v261 = v128;
      if (v128)
      {
        v42 = @"YES";
      }

      else
      {
        v42 = @"NO";
      }

      v127 = v42;
      v43 = v42;
      v121 = v127;
      v44 = MEMORY[0x277D82BE0](v121);
      v45 = v212;
      v122 = v44;
      v212[8] = v44;
      v123 = *(v45[41] + 168);
      v124 = *(v45[41] + 176);
      v125 = *(v45[41] + 184);
      v126 = [*(v45[41] + 192) count];
      v120 = [v212[41] currentDownload];
      v118 = v120;
      v119 = [v118 descriptor];
      v116 = v119;
      v117 = [v116 updateName];
      v113 = v117;
      v46 = MEMORY[0x277D82BE0](v113);
      v47 = v213;
      v114 = v46;
      v212[7] = v46;
      v115 = [v47[4] programID];
      v111 = v213[4];
      v112 = SUUIUserInteractionResponseToString(v213[9]);
      v48 = v129;
      v49 = v136;
      v50 = v141;
      v51 = v145;
      v52 = v150;
      v53 = v154;
      v54 = v158;
      v55 = v161;
      v56 = v163;
      v57 = v170;
      v110 = v112;
      v58 = MEMORY[0x277D82BE0](v110);
      v59 = v174;
      v60 = v130;
      v61 = v122;
      v62 = v123;
      v63 = v124;
      v64 = v125;
      v65 = v126;
      v66 = v114;
      v67 = v115;
      v68 = v215;
      v69 = v195;
      v70 = v190;
      v71 = v187;
      v72 = v188;
      v73 = v178;
      v74 = v176;
      v75 = v172;
      v212[6] = v58;
      v108 = &v83;
      v109 = v265;
      __os_log_helper_16_2_29_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_0_8_0_8_66(v265, v68, v69, v70, v71, v72, v73, v74, v59, v75, v57, v56, v55, v54, v53, v52, v51, v50, v49, v48, v60, v61, v62, v63, v64, v65, v66, v67, v111, v58);
      _os_log_impl(&dword_26ADE5000, v193, v194[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nUser responded to the targeted update purge request of %{public}@, for beta program %ld (%p): %{public}@", v109, 0x124u);
      MEMORY[0x277D82BD8](v110);
      MEMORY[0x277D82BD8](v113);
      MEMORY[0x277D82BD8](v116);
      MEMORY[0x277D82BD8](v118);
      MEMORY[0x277D82BD8](v121);
      if (v236)
      {
        MEMORY[0x277D82BD8](v212[10]);
      }

      MEMORY[0x277D82BD8](v134);
      MEMORY[0x277D82BD8](v135);
      MEMORY[0x277D82BD8](v138);
      MEMORY[0x277D82BD8](v140);
      MEMORY[0x277D82BD8](v144);
      MEMORY[0x277D82BD8](v147);
      MEMORY[0x277D82BD8](v149);
      MEMORY[0x277D82BD8](v153);
      MEMORY[0x277D82BD8](v157);
      MEMORY[0x277D82BD8](v161);
      if (v243)
      {
        MEMORY[0x277D82BD8](v212[18]);
      }

      if (v244)
      {
        MEMORY[0x277D82BD8](v212[20]);
      }

      if (v245)
      {
        MEMORY[0x277D82BD8](v212[22]);
      }

      MEMORY[0x277D82BD8](v169);
      MEMORY[0x277D82BD8](v170);
      MEMORY[0x277D82BD8](v172);
      MEMORY[0x277D82BD8](v174);
      MEMORY[0x277D82BD8](v176);
      if (v246)
      {
        MEMORY[0x277D82BD8](v212[24]);
      }

      if (v247)
      {
        MEMORY[0x277D82BD8](v212[26]);
      }

      MEMORY[0x277D82BD8](v184);
      MEMORY[0x277D82BD8](v186);
      MEMORY[0x277D82BD8](v189);
      objc_storeStrong(&v233, 0);
      objc_storeStrong(&v234, 0);
      objc_storeStrong(&v235, 0);
      objc_storeStrong(&v237, 0);
      objc_storeStrong(&v238, 0);
      objc_storeStrong(&v239, 0);
      objc_storeStrong(&v240, 0);
      objc_storeStrong(&v241, 0);
      objc_storeStrong(&v242, 0);
      objc_storeStrong(&v248, 0);
      objc_storeStrong(&v249, 0);
    }

    objc_storeStrong(&v251, 0);
    if (v213[9])
    {
      if (*(*(v213[6] + 1) + 24))
      {
        if (*(*(*(v213[6] + 1) + 24) + 24))
        {
          os_activity_scope_leave(*(*(v213[6] + 1) + 24));
        }

        free(*(*(v213[6] + 1) + 24));
        *(*(v213[6] + 1) + 24) = 0;
      }

      v107 = [MEMORY[0x277D643F8] sharedCore];
      v105 = v107;
      v106 = [v212[41] delegateCallbackQueue];
      v103 = v106;
      v104 = [v105 selectDelegateCallbackQueue:?];
      v102 = v104;
      v101 = &v227;
      v227 = MEMORY[0x277D85DD0];
      v228 = -1073741824;
      v229 = 0;
      v230 = __104__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_afterPurgeConfirmation_activity_completionHandler___block_invoke_486;
      v231 = &unk_279CC6900;
      v99 = &v232;
      v76 = MEMORY[0x277D82BE0](v213[5]);
      v77 = v213;
      v78 = v101;
      v212[5] = v76;
      v100 = (v78 + 32);
      v79 = MEMORY[0x277D82BE0](v77[4]);
      v80 = v101;
      v81 = v79;
      v82 = v102;
      v212[4] = v81;
      dispatch_async(v82, v80);
      MEMORY[0x277D82BD8](v102);
      MEMORY[0x277D82BD8](v103);
      MEMORY[0x277D82BD8](v105);
      v252 = 1;
      objc_storeStrong(v100, 0);
      objc_storeStrong(v99, 0);
    }

    else
    {
      v98 = [MEMORY[0x277CCAD78] UUID];
      v96 = v98;
      v97 = [v96 UUIDString];
      v226 = v97;
      MEMORY[0x277D82BD8](v96);
      v95 = [v212[41] environment];
      v93 = v95;
      v94 = [v93 updateOperationWithManager:v212[41] identifier:v226 delegateCallbackQueue:0 completionQueue:*(v212[41] + 208)];
      v225 = v94;
      MEMORY[0x277D82BD8](v93);
      v91 = v225;
      v92 = [v212[41] currentDownload];
      v89 = v92;
      v90 = [v212[41] contextForPurgeUpdateOperation:v225 forUserRequestedOperation:1 notifyUser:0];
      v87 = v90;
      v217 = MEMORY[0x277D85DD0];
      v218 = -1073741824;
      v219 = 0;
      v220 = __104__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_afterPurgeConfirmation_activity_completionHandler___block_invoke_2;
      v221 = &unk_279CC6928;
      v88 = v224;
      objc_copyWeak(v224, v213 + 7);
      v86 = &v217;
      v224[1] = v213[8];
      v84 = v223;
      v223[0] = MEMORY[0x277D82BE0](v213[5]);
      v223[1] = v213[6];
      v85 = (v86 + 4);
      v222 = MEMORY[0x277D82BE0](v213[4]);
      [v91 purgeDownload:v89 withContext:v87 delegate:0 completionHandler:v86];
      MEMORY[0x277D82BD8](v87);
      MEMORY[0x277D82BD8](v89);
      objc_storeStrong(v85, 0);
      objc_storeStrong(v84, 0);
      objc_destroyWeak(v88);
      objc_storeStrong(&v225, 0);
      objc_storeStrong(&v226, 0);
      v252 = 0;
    }
  }

  objc_storeStrong(v260, 0);
}

void __104__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_afterPurgeConfirmation_activity_completionHandler___block_invoke_484(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:?];
    v1 = 1;
    (*(location[0] + 2))(location[0], 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __104__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_afterPurgeConfirmation_activity_completionHandler___block_invoke_486(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[5]);
  v3 = 0;
  if (location[0])
  {
    v1 = a1[4];
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:1 userInfo:0];
    v3 = 1;
    (*(location[0] + 2))(location[0], v1);
  }

  if (v3)
  {
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
}

void __104__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_afterPurgeConfirmation_activity_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v92 = a1;
  obj = a3;
  v90 = "[SUUIStatefulUIManager doEnrollInBetaUpdatesProgram:afterPurgeConfirmation:activity:completionHandler:]_block_invoke_2";
  v143 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v135 = 0;
  objc_storeStrong(&v135, obj);
  v134[1] = v92;
  v134[0] = objc_loadWeakRetained(v92 + 7);
  v89 = 0;
  if (!v134[0])
  {
    v88 = +[SUUILoggingContext softwareUpdateUILogger];
    oslog = [v88 oslog];
    MEMORY[0x277D82BD8](v88);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v84 = type;
      v86 = NSStringFromSelector(*(v92 + 8));
      v87 = &v131;
      v131 = MEMORY[0x277D82BE0](v86);
      buf = v142;
      __os_log_helper_16_2_2_8_32_8_66(v142, v90, v131);
      _os_log_error_impl(&dword_26ADE5000, log, v84[0], "%s: Self is nil in %{public}@. Stopping.", v142, 0x16u);
      MEMORY[0x277D82BD8](v86);
      objc_storeStrong(&v131, 0);
    }

    objc_storeStrong(&oslog, 0);
    v130 = 1;
    v89 = 1;
  }

  if (v89)
  {
    v79 = MEMORY[0x277D85CD0];
    v3 = MEMORY[0x277D85CD0];
    queue = v79;
    block = &v124;
    v124 = MEMORY[0x277D85DD0];
    v125 = -1073741824;
    v126 = 0;
    v127 = __104__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_afterPurgeConfirmation_activity_completionHandler___block_invoke_487;
    v128 = &unk_279CC61E0;
    v82 = &v129;
    v129 = MEMORY[0x277D82BE0](*(v92 + 5));
    dispatch_async(queue, &v124);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v129, 0);
    v123 = 1;
  }

  else
  {
    v78 = +[SUUILoggingContext statefulUILogger];
    v122 = [v78 oslog];
    MEMORY[0x277D82BD8](v78);
    v121 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
    {
      v69 = v122;
      *v70 = v121;
      v71 = v134[0];
      v4 = objc_opt_class();
      v72 = NSStringFromClass(v4);
      v73 = MEMORY[0x277D82BE0](v72);
      v120 = v73;
      v74 = SUUIStatefulUIStateToString(*(v134[0] + 5));
      v75 = MEMORY[0x277D82BE0](v74);
      v119 = v75;
      v76 = [v134[0] currentState];
      v77 = [v134[0] delegate];
      v117 = 0;
      v115 = 0;
      if (v77)
      {
        v118 = [v134[0] delegate];
        v67 = 1;
        v117 = 1;
        v5 = objc_opt_class();
        v116 = NSStringFromClass(v5);
        v115 = 1;
        v68 = v116;
      }

      else
      {
        v68 = @"(null)";
      }

      v61 = v68;
      v62 = [v134[0] delegate];
      v63 = [v134[0] scanError];
      v64 = [v134[0] preferredStatefulDescriptor];
      v65 = [v134[0] alternateStatefulDescriptor];
      v66 = [v134[0] currentDownload];
      v113 = 0;
      v111 = 0;
      v109 = 0;
      if (v66)
      {
        v114 = [v134[0] currentDownload];
        v59 = 1;
        v113 = 1;
        v112 = [v114 descriptor];
        v111 = 1;
        v110 = [v112 updateName];
        v109 = 1;
        v60 = v110;
      }

      else
      {
        v60 = @"(null)";
      }

      v36 = v60;
      v37 = [v134[0] currentDownload];
      v38 = SUUIUpdateContinuousOperationTypeToString([v134[0] currentUpdateOperationType]);
      v39 = MEMORY[0x277D82BE0](v38);
      v108 = v39;
      v140 = [v134[0] isTargetedUpdateScheduledForAutoInstall];
      v49 = @"NO";
      v50 = @"YES";
      v57 = 1;
      if (v140)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v40 = v6;
      v7 = v6;
      v41 = v40;
      v42 = MEMORY[0x277D82BE0](v41);
      v107 = v42;
      v139 = [v134[0] hidingPreferredDescriptor];
      if (v139)
      {
        v8 = v50;
      }

      else
      {
        v8 = v49;
      }

      v43 = v8;
      v9 = v8;
      v44 = v43;
      v45 = MEMORY[0x277D82BE0](v44);
      v106 = v45;
      v46 = [v134[0] hiddenPreferredStatefulDescriptor];
      v47 = [v46 updateName];
      v48 = MEMORY[0x277D82BE0](v47);
      v105 = v48;
      v138 = [v134[0] hidingAlternateDescriptor];
      if (v138)
      {
        v10 = v50;
      }

      else
      {
        v10 = v49;
      }

      v51 = v10;
      v11 = v10;
      v52 = v51;
      v53 = MEMORY[0x277D82BE0](v52);
      v104 = v53;
      v54 = [v134[0] hiddenAlternateStatefulDescriptor];
      v55 = [v54 updateName];
      v56 = MEMORY[0x277D82BE0](v55);
      v103 = v56;
      v58 = [v134[0] enrolledBetaProgram];
      v101 = 0;
      if (v58)
      {
        v102 = [v134[0] enrolledBetaProgram];
        v101 = 1;
        v35 = [v102 programID];
      }

      else
      {
        v35 = 0;
      }

      v26 = v35;
      v27 = [*(v134[0] + 15) count];
      v137 = [v134[0] canEnrollInBetaUpdates];
      if (v137)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v25 = v12;
      v13 = v12;
      v34 = v25;
      v28 = MEMORY[0x277D82BE0](v34);
      v100 = v28;
      v29 = *(v134[0] + 21);
      v30 = *(v134[0] + 22);
      v31 = *(v134[0] + 23);
      v14 = [*(v134[0] + 24) count];
      v32 = &v15;
      v33 = v141;
      __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66(v141, v90, v71, v73, v75, v76, v61, v62, v63, v64, v65, v36, v37, v39, v42, v45, v48, v53, v56, v26, v27, v28, v29, v30, v31, v14, location[0], v135);
      _os_log_impl(&dword_26ADE5000, v69, v70[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nPurge result: %{public}@; error: %{public}@", v33, 0x110u);
      MEMORY[0x277D82BD8](v34);
      if (v101)
      {
        MEMORY[0x277D82BD8](v102);
      }

      MEMORY[0x277D82BD8](v58);
      MEMORY[0x277D82BD8](v55);
      MEMORY[0x277D82BD8](v54);
      MEMORY[0x277D82BD8](v52);
      MEMORY[0x277D82BD8](v47);
      MEMORY[0x277D82BD8](v46);
      MEMORY[0x277D82BD8](v44);
      MEMORY[0x277D82BD8](v41);
      MEMORY[0x277D82BD8](v38);
      MEMORY[0x277D82BD8](v37);
      if (v109)
      {
        MEMORY[0x277D82BD8](v110);
      }

      if (v111)
      {
        MEMORY[0x277D82BD8](v112);
      }

      if (v113)
      {
        MEMORY[0x277D82BD8](v114);
      }

      MEMORY[0x277D82BD8](v66);
      MEMORY[0x277D82BD8](v65);
      MEMORY[0x277D82BD8](v64);
      MEMORY[0x277D82BD8](v63);
      MEMORY[0x277D82BD8](v62);
      if (v115)
      {
        MEMORY[0x277D82BD8](v116);
      }

      if (v117)
      {
        MEMORY[0x277D82BD8](v118);
      }

      MEMORY[0x277D82BD8](v77);
      MEMORY[0x277D82BD8](v74);
      MEMORY[0x277D82BD8](v72);
      v24 = 0;
      objc_storeStrong(&v100, 0);
      objc_storeStrong(&v103, v24);
      objc_storeStrong(&v104, v24);
      objc_storeStrong(&v105, v24);
      objc_storeStrong(&v106, v24);
      objc_storeStrong(&v107, v24);
      objc_storeStrong(&v108, v24);
      objc_storeStrong(&v119, v24);
      objc_storeStrong(&v120, v24);
    }

    objc_storeStrong(&v122, 0);
    if (location[0])
    {
      [v134[0] doEnrollInBetaUpdatesProgram:*(v92 + 4) activity:*(*(v92 + 6) + 8) + 24 completionHandler:*(v92 + 5)];
      v123 = 0;
    }

    else
    {
      if (*(*(*(v92 + 6) + 8) + 24))
      {
        if (*(*(*(*(v92 + 6) + 8) + 24) + 24))
        {
          os_activity_scope_leave(*(*(*(v92 + 6) + 8) + 24));
        }

        free(*(*(*(v92 + 6) + 8) + 24));
        *(*(*(v92 + 6) + 8) + 24) = 0;
      }

      v20 = [MEMORY[0x277D643F8] sharedCore];
      v19 = [v134[0] delegateCallbackQueue];
      v18 = [v20 selectDelegateCallbackQueue:?];
      v17 = &v93;
      v93 = MEMORY[0x277D85DD0];
      v94 = -1073741824;
      v95 = 0;
      v96 = __104__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_afterPurgeConfirmation_activity_completionHandler___block_invoke_488;
      v97 = &unk_279CC6900;
      v22 = &v99;
      v99 = MEMORY[0x277D82BE0](*(v92 + 5));
      v21 = (v17 + 32);
      v98 = MEMORY[0x277D82BE0](*(v92 + 4));
      dispatch_async(v18, v17);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
      MEMORY[0x277D82BD8](v20);
      v123 = 1;
      v23 = 0;
      objc_storeStrong(v21, 0);
      objc_storeStrong(v22, v23);
    }
  }

  objc_storeStrong(v134, 0);
  if (!v123)
  {
    v123 = 0;
  }

  v16 = 0;
  objc_storeStrong(&v135, 0);
  objc_storeStrong(location, v16);
}

void __104__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_afterPurgeConfirmation_activity_completionHandler___block_invoke_487(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:?];
    v1 = 1;
    (*(location[0] + 2))(location[0], 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __104__SUUIStatefulUIManager_doEnrollInBetaUpdatesProgram_afterPurgeConfirmation_activity_completionHandler___block_invoke_488(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[5]);
  v3 = 0;
  if (location[0])
  {
    v1 = a1[4];
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:2 userInfo:0];
    v3 = 1;
    (*(location[0] + 2))(location[0], v1);
  }

  if (v3)
  {
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
}

- (void)doUnenrollFromBetaUpdates:(suui_activity_s *)updates completionHandler:(id)handler
{
  selfCopy = self;
  v19 = a2;
  updatesCopy = updates;
  location = 0;
  objc_storeStrong(&location, handler);
  objc_initWeak(&v16, selfCopy);
  v12[0] = 0;
  v12[1] = v12;
  v13 = 0x20000000;
  v14 = 32;
  v15 = *updatesCopy;
  *updatesCopy = 0;
  queue = selfCopy->_operationsQueue;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke;
  v9 = &unk_279CC6A40;
  objc_copyWeak(v11, &v16);
  v11[1] = v19;
  v10[0] = MEMORY[0x277D82BE0](location);
  v10[1] = v12;
  dispatch_async(queue, &v5);
  objc_storeStrong(v10, 0);
  objc_destroyWeak(v11);
  _Block_object_dispose(v12, 8);
  objc_destroyWeak(&v16);
  objc_storeStrong(&location, 0);
}

void __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke(id *a1)
{
  v117 = a1;
  v118 = "[SUUIStatefulUIManager doUnenrollFromBetaUpdates:completionHandler:]_block_invoke";
  v119 = "[SUUIStatefulUIManager doUnenrollFromBetaUpdates:completionHandler:]_block_invoke_2";
  v173 = *MEMORY[0x277D85DE8];
  v166[2] = a1;
  v166[1] = a1;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v166[0] = WeakRetained;
  v116 = 0;
  if (!WeakRetained)
  {
    v115 = +[SUUILoggingContext softwareUpdateUILogger];
    v113 = v115;
    v114 = [v113 oslog];
    oslog = v114;
    MEMORY[0x277D82BD8](v113);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v111 = type;
      v112 = NSStringFromSelector(v117[7]);
      v109 = v112;
      location = MEMORY[0x277D82BE0](v109);
      buf = v172;
      __os_log_helper_16_2_2_8_32_8_66(v172, v118, location);
      _os_log_error_impl(&dword_26ADE5000, oslog, type, "%s: Self is nil in %{public}@. Stopping.", v172, 0x16u);
      MEMORY[0x277D82BD8](v109);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&oslog, 0);
    v162 = 1;
    v116 = 1;
  }

  if (v116)
  {
    v1 = MEMORY[0x277D85CD0];
    queue = MEMORY[0x277D85CD0];
    block = &v156;
    v156 = MEMORY[0x277D85DD0];
    v157 = -1073741824;
    v158 = 0;
    v159 = __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_490;
    v160 = &unk_279CC61E0;
    v105 = &v161;
    v161 = MEMORY[0x277D82BE0](v117[4]);
    dispatch_async(queue, &v156);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v161, 0);
    v155 = 1;
  }

  else
  {
    v104 = [v166[0] currentSeedingDevice];
    v154 = v104;
    v103 = [v166[0] environment];
    v102 = v103;
    objc_initWeak(&v153, v102);
    MEMORY[0x277D82BD8](v102);
    v101 = [MEMORY[0x277CCAD78] UUID];
    v99 = v101;
    v100 = [v99 UUIDString];
    v152 = v100;
    MEMORY[0x277D82BD8](v99);
    v98 = +[SUUILoggingContext statefulUILogger];
    v96 = v98;
    v97 = [v96 oslog];
    v151 = v97;
    MEMORY[0x277D82BD8](v96);
    v150 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
    {
      v92 = v151;
      *v93 = v150;
      v94 = v166[0];
      aClass = objc_opt_class();
      v91 = NSStringFromClass(aClass);
      v88 = v91;
      v89 = MEMORY[0x277D82BE0](v88);
      v149 = v89;
      v90 = SUUIStatefulUIStateToString(*(v166[0] + 5));
      v85 = v90;
      v86 = MEMORY[0x277D82BE0](v85);
      v148 = v86;
      v87 = [v166[0] currentState];
      v146 = 0;
      v144 = 0;
      v84 = [v166[0] delegate];
      v83 = v84;
      if (v83)
      {
        v82 = [v166[0] delegate];
        v147 = v82;
        v146 = 1;
        v81 = objc_opt_class();
        v80 = NSStringFromClass(v81);
        v145 = v80;
        v144 = 1;
        v79 = v145;
      }

      else
      {
        v79 = @"(null)";
      }

      v77 = v79;
      v78 = [v166[0] delegate];
      v75 = v78;
      v76 = [v166[0] scanError];
      v73 = v76;
      v74 = [v166[0] preferredStatefulDescriptor];
      v71 = v74;
      v72 = [v166[0] alternateStatefulDescriptor];
      v69 = v72;
      v142 = 0;
      v140 = 0;
      v138 = 0;
      v70 = [v166[0] currentDownload];
      v68 = v70;
      if (v68)
      {
        v67 = [v166[0] currentDownload];
        v143 = v67;
        v142 = 1;
        v66 = [v143 descriptor];
        v141 = v66;
        v140 = 1;
        v65 = [v141 updateName];
        v139 = v65;
        v138 = 1;
        v64 = v139;
      }

      else
      {
        v64 = @"(null)";
      }

      v62 = v64;
      v63 = [v166[0] currentDownload];
      v60 = v63;
      v61 = [v166[0] currentUpdateOperationType];
      v59 = SUUIUpdateContinuousOperationTypeToString(v61);
      v56 = v59;
      v57 = MEMORY[0x277D82BE0](v56);
      v137 = v57;
      v58 = [v166[0] isTargetedUpdateScheduledForAutoInstall];
      v170 = v58;
      if (v58)
      {
        v2 = @"YES";
      }

      else
      {
        v2 = @"NO";
      }

      v55 = v2;
      v3 = v2;
      v52 = v55;
      v53 = MEMORY[0x277D82BE0](v52);
      v136 = v53;
      v54 = [v166[0] hidingPreferredDescriptor];
      v169 = v54;
      if (v54)
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      v51 = v4;
      v5 = v4;
      v48 = v51;
      v49 = MEMORY[0x277D82BE0](v48);
      v135 = v49;
      v50 = [v166[0] hiddenPreferredStatefulDescriptor];
      v46 = v50;
      v47 = [v46 updateName];
      v43 = v47;
      v44 = MEMORY[0x277D82BE0](v43);
      v134 = v44;
      v45 = [v166[0] hidingAlternateDescriptor];
      v168 = v45;
      if (v45)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v42 = v6;
      v7 = v6;
      v39 = v42;
      v40 = MEMORY[0x277D82BE0](v39);
      v133 = v40;
      v41 = [v166[0] hiddenAlternateStatefulDescriptor];
      v37 = v41;
      v38 = [v37 updateName];
      v34 = v38;
      v35 = MEMORY[0x277D82BE0](v34);
      v132 = v35;
      v130 = 0;
      v36 = [v166[0] enrolledBetaProgram];
      v33 = v36;
      if (v33)
      {
        v32 = [v166[0] enrolledBetaProgram];
        v131 = v32;
        v130 = 1;
        v31 = [v131 programID];
        v30 = v31;
      }

      else
      {
        v30 = 0;
      }

      v28 = v30;
      v29 = [*(v166[0] + 15) count];
      v27 = [v166[0] canEnrollInBetaUpdates];
      v167 = v27;
      if (v27)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v26 = v8;
      v9 = v8;
      v20 = v26;
      v21 = MEMORY[0x277D82BE0](v20);
      v129 = v21;
      v22 = *(v166[0] + 21);
      v23 = *(v166[0] + 22);
      v24 = *(v166[0] + 23);
      v25 = [*(v166[0] + 24) count];
      v18 = &v10;
      v19 = v171;
      __os_log_helper_16_2_26_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66(v171, v119, v94, v89, v86, v87, v77, v75, v73, v71, v69, v62, v60, v57, v53, v49, v44, v40, v35, v28, v29, v21, v22, v23, v24, v25, v152);
      _os_log_impl(&dword_26ADE5000, v92, v93[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nAttempts to unenroll from Beta Updates program using operation ID: %{public}@", v19, 0x106u);
      MEMORY[0x277D82BD8](v20);
      if (v130)
      {
        MEMORY[0x277D82BD8](v131);
      }

      MEMORY[0x277D82BD8](v33);
      MEMORY[0x277D82BD8](v34);
      MEMORY[0x277D82BD8](v37);
      MEMORY[0x277D82BD8](v39);
      MEMORY[0x277D82BD8](v43);
      MEMORY[0x277D82BD8](v46);
      MEMORY[0x277D82BD8](v48);
      MEMORY[0x277D82BD8](v52);
      MEMORY[0x277D82BD8](v56);
      MEMORY[0x277D82BD8](v60);
      if (v138)
      {
        MEMORY[0x277D82BD8](v139);
      }

      if (v140)
      {
        MEMORY[0x277D82BD8](v141);
      }

      if (v142)
      {
        MEMORY[0x277D82BD8](v143);
      }

      MEMORY[0x277D82BD8](v68);
      MEMORY[0x277D82BD8](v69);
      MEMORY[0x277D82BD8](v71);
      MEMORY[0x277D82BD8](v73);
      MEMORY[0x277D82BD8](v75);
      if (v144)
      {
        MEMORY[0x277D82BD8](v145);
      }

      if (v146)
      {
        MEMORY[0x277D82BD8](v147);
      }

      MEMORY[0x277D82BD8](v83);
      MEMORY[0x277D82BD8](v85);
      MEMORY[0x277D82BD8](v88);
      objc_storeStrong(&v129, 0);
      objc_storeStrong(&v132, 0);
      objc_storeStrong(&v133, 0);
      objc_storeStrong(&v134, 0);
      objc_storeStrong(&v135, 0);
      objc_storeStrong(&v136, 0);
      objc_storeStrong(&v137, 0);
      objc_storeStrong(&v148, 0);
      objc_storeStrong(&v149, 0);
    }

    objc_storeStrong(&v151, 0);
    v17 = objc_loadWeakRetained(&v153);
    v16 = [v17 betaUpdatesOperationWithManager:v166[0] identifier:v152 completionQueue:*(v166[0] + 26)];
    v128 = v16;
    MEMORY[0x277D82BD8](v17);
    v13 = v128;
    v14 = v154;
    v121 = MEMORY[0x277D85DD0];
    v122 = -1073741824;
    v123 = 0;
    v124 = __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_492;
    v125 = &unk_279CC6A18;
    v15 = v127;
    objc_copyWeak(v127, v117 + 6);
    v12 = &v121;
    v127[1] = v117[7];
    v11 = v126;
    v126[0] = MEMORY[0x277D82BE0](v117[4]);
    v126[1] = v117[5];
    [v13 unenrollDevice:v14 completionHandler:v12];
    objc_storeStrong(v11, 0);
    objc_destroyWeak(v15);
    objc_storeStrong(&v128, 0);
    objc_storeStrong(&v152, 0);
    objc_destroyWeak(&v153);
    objc_storeStrong(&v154, 0);
    v155 = 0;
  }

  objc_storeStrong(v166, 0);
}

void __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_490(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:0];
    v1 = 1;
    (*(location[0] + 2))(location[0], v2 != 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_492(id *a1, char a2)
{
  v157 = &v170;
  v158 = a1;
  v159 = "[SUUIStatefulUIManager doUnenrollFromBetaUpdates:completionHandler:]_block_invoke";
  v160 = "[SUUIStatefulUIManager doUnenrollFromBetaUpdates:completionHandler:]_block_invoke_2";
  v213 = *MEMORY[0x277D85DE8];
  v206 = a1;
  v205 = a2;
  v204[1] = a1;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v204[0] = WeakRetained;
  v156 = 0;
  if (!WeakRetained)
  {
    v155 = +[SUUILoggingContext softwareUpdateUILogger];
    v153 = v155;
    v154 = [v153 oslog];
    v2 = v154;
    v3 = v153;
    v157[43] = v2;
    MEMORY[0x277D82BD8](v3);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v157[43], OS_LOG_TYPE_ERROR))
    {
      log = v157[43];
      *v151 = type;
      v152 = NSStringFromSelector(v158[7]);
      v149 = v152;
      v4 = MEMORY[0x277D82BE0](v149);
      v5 = v159;
      v157[41] = v4;
      buf = v212;
      __os_log_helper_16_2_2_8_32_8_66(v212, v5, v4);
      _os_log_error_impl(&dword_26ADE5000, log, v151[0], "%s: Self is nil in %{public}@. Stopping.", v212, 0x16u);
      MEMORY[0x277D82BD8](v149);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v203, 0);
    v200[3] = 1;
    v156 = 1;
  }

  if (v156)
  {
    v6 = MEMORY[0x277D85CD0];
    v7 = MEMORY[0x277D85CD0];
    v8 = v158;
    v9 = v157;
    queue = v7;
    block = &v197;
    v157[35] = MEMORY[0x277D85DD0];
    v198 = -1073741824;
    v199 = 0;
    v9[37] = __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_493;
    v9[38] = &unk_279CC61E0;
    v145 = v200;
    v10 = MEMORY[0x277D82BE0](v8[4]);
    v11 = block;
    v12 = v10;
    v13 = queue;
    v157[39] = v12;
    dispatch_async(v13, v11);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(v145, 0);
    v196 = 1;
  }

  else
  {
    v144 = +[SUUILoggingContext statefulUILogger];
    v142 = v144;
    v143 = [v142 oslog];
    v14 = v143;
    v15 = v142;
    v157[33] = v14;
    MEMORY[0x277D82BD8](v15);
    v194 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v157[33], OS_LOG_TYPE_DEFAULT))
    {
      v138 = v157[33];
      *v139 = v194;
      v140 = v157[44];
      aClass = objc_opt_class();
      v137 = NSStringFromClass(aClass);
      v134 = v137;
      v16 = MEMORY[0x277D82BE0](v134);
      v17 = v157;
      v135 = v16;
      v157[31] = v16;
      v136 = SUUIStatefulUIStateToString(*(v17[44] + 40));
      v131 = v136;
      v18 = MEMORY[0x277D82BE0](v131);
      v19 = v157;
      v132 = v18;
      v157[30] = v18;
      v133 = [v19[44] currentState];
      v130 = [v157[44] delegate];
      v129 = v130;
      v191 = 0;
      v190 = 0;
      if (v129)
      {
        v128 = [v157[44] delegate];
        v157[29] = v128;
        v191 = 1;
        v127 = objc_opt_class();
        v126 = NSStringFromClass(v127);
        v20 = v126;
        v157[27] = v20;
        v190 = 1;
        v125 = v20;
      }

      else
      {
        v125 = @"(null)";
      }

      v123 = v125;
      v124 = [v157[44] delegate];
      v121 = v124;
      v122 = [v157[44] scanError];
      v119 = v122;
      v120 = [v157[44] preferredStatefulDescriptor];
      v117 = v120;
      v118 = [v157[44] alternateStatefulDescriptor];
      v115 = v118;
      v116 = [v157[44] currentDownload];
      v114 = v116;
      v189 = 0;
      v188 = 0;
      v187 = 0;
      if (v114)
      {
        v113 = [v157[44] currentDownload];
        v21 = v113;
        v157[25] = v21;
        v189 = 1;
        v112 = [v21 descriptor];
        v22 = v112;
        v157[23] = v22;
        v188 = 1;
        v111 = [v22 updateName];
        v23 = v111;
        v157[21] = v23;
        v187 = 1;
        v110 = v23;
      }

      else
      {
        v110 = @"(null)";
      }

      v108 = v110;
      v109 = [v157[44] currentDownload];
      v106 = v109;
      v107 = [v157[44] currentUpdateOperationType];
      v105 = SUUIUpdateContinuousOperationTypeToString(v107);
      v102 = v105;
      v24 = MEMORY[0x277D82BE0](v102);
      v25 = v157;
      v103 = v24;
      v157[19] = v24;
      v104 = [v25[44] isTargetedUpdateScheduledForAutoInstall];
      v210 = v104;
      if (v104)
      {
        v26 = @"YES";
      }

      else
      {
        v26 = @"NO";
      }

      v101 = v26;
      v27 = v26;
      v98 = v101;
      v28 = MEMORY[0x277D82BE0](v98);
      v29 = v157;
      v99 = v28;
      v157[18] = v28;
      v100 = [v29[44] hidingPreferredDescriptor];
      v209 = v100;
      if (v100)
      {
        v30 = @"YES";
      }

      else
      {
        v30 = @"NO";
      }

      v97 = v30;
      v31 = v30;
      v94 = v97;
      v32 = MEMORY[0x277D82BE0](v94);
      v33 = v157;
      v95 = v32;
      v157[17] = v32;
      v96 = [v33[44] hiddenPreferredStatefulDescriptor];
      v92 = v96;
      v93 = [v92 updateName];
      v89 = v93;
      v34 = MEMORY[0x277D82BE0](v89);
      v35 = v157;
      v90 = v34;
      v157[16] = v34;
      v91 = [v35[44] hidingAlternateDescriptor];
      v208 = v91;
      if (v91)
      {
        v36 = @"YES";
      }

      else
      {
        v36 = @"NO";
      }

      v88 = v36;
      v37 = v36;
      v85 = v88;
      v38 = MEMORY[0x277D82BE0](v85);
      v39 = v157;
      v86 = v38;
      v157[15] = v38;
      v87 = [v39[44] hiddenAlternateStatefulDescriptor];
      v83 = v87;
      v84 = [v83 updateName];
      v80 = v84;
      v40 = MEMORY[0x277D82BE0](v80);
      v41 = v157;
      v81 = v40;
      v157[14] = v40;
      v82 = [v41[44] enrolledBetaProgram];
      v79 = v82;
      v180 = 0;
      if (v79)
      {
        v78 = [v157[44] enrolledBetaProgram];
        v42 = v78;
        v157[13] = v42;
        v180 = 1;
        v77 = [v42 programID];
        v76 = v77;
      }

      else
      {
        v76 = 0;
      }

      v74 = v76;
      v75 = [*(v157[44] + 120) count];
      v73 = [v157[44] canEnrollInBetaUpdates];
      v207 = v73;
      if (v73)
      {
        v43 = @"YES";
      }

      else
      {
        v43 = @"NO";
      }

      v72 = v43;
      v44 = v43;
      v66 = v72;
      v45 = MEMORY[0x277D82BE0](v66);
      v46 = v157;
      v67 = v45;
      v157[11] = v45;
      v68 = *(v46[44] + 168);
      v69 = *(v46[44] + 176);
      v70 = *(v46[44] + 184);
      v71 = [*(v46[44] + 192) count];
      v64 = &v52;
      v65 = v211;
      __os_log_helper_16_2_26_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_4_0(v211, v160, v140, v135, v132, v133, v123, v121, v119, v117, v115, v108, v106, v103, v99, v95, v90, v86, v81, v74, v75, v67, v68, v69, v70, v71, v205 & 1);
      _os_log_impl(&dword_26ADE5000, v138, v139[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nUn-enroll from beta program success: %d", v65, 0x102u);
      MEMORY[0x277D82BD8](v66);
      if (v180)
      {
        MEMORY[0x277D82BD8](v157[13]);
      }

      MEMORY[0x277D82BD8](v79);
      MEMORY[0x277D82BD8](v80);
      MEMORY[0x277D82BD8](v83);
      MEMORY[0x277D82BD8](v85);
      MEMORY[0x277D82BD8](v89);
      MEMORY[0x277D82BD8](v92);
      MEMORY[0x277D82BD8](v94);
      MEMORY[0x277D82BD8](v98);
      MEMORY[0x277D82BD8](v102);
      MEMORY[0x277D82BD8](v106);
      if (v187)
      {
        MEMORY[0x277D82BD8](v157[21]);
      }

      if (v188)
      {
        MEMORY[0x277D82BD8](v157[23]);
      }

      if (v189)
      {
        MEMORY[0x277D82BD8](v157[25]);
      }

      MEMORY[0x277D82BD8](v114);
      MEMORY[0x277D82BD8](v115);
      MEMORY[0x277D82BD8](v117);
      MEMORY[0x277D82BD8](v119);
      MEMORY[0x277D82BD8](v121);
      if (v190)
      {
        MEMORY[0x277D82BD8](v157[27]);
      }

      if (v191)
      {
        MEMORY[0x277D82BD8](v157[29]);
      }

      MEMORY[0x277D82BD8](v129);
      MEMORY[0x277D82BD8](v131);
      MEMORY[0x277D82BD8](v134);
      objc_storeStrong(&v179, 0);
      objc_storeStrong(&v181, 0);
      objc_storeStrong(&v182, 0);
      objc_storeStrong(&v183, 0);
      objc_storeStrong(&v184, 0);
      objc_storeStrong(&v185, 0);
      objc_storeStrong(&v186, 0);
      objc_storeStrong(&v192, 0);
      objc_storeStrong(&v193, 0);
    }

    objc_storeStrong(&v195, 0);
    if (v205)
    {
      [v157[44] setEnrolledBetaProgram:0];
    }

    v62 = &v170;
    v170 = MEMORY[0x277D85DD0];
    v171 = -1073741824;
    v172 = 0;
    v173 = __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_494;
    v174 = &unk_279CC69F0;
    v61 = &v175;
    v47 = MEMORY[0x277D82BE0](v157[44]);
    v48 = v62;
    v49 = v158;
    v175 = v47;
    v157[6] = v158[5];
    v63 = v48 + 7;
    objc_copyWeak(v48 + 7, v49 + 6);
    v50 = v158;
    v59 = &v170;
    v157[8] = v158[7];
    v58 = &v176;
    v176 = MEMORY[0x277D82BE0](v50[4]);
    v177 = v205 & 1;
    v60 = MEMORY[0x26D66ADC0](v59);
    v51 = v157;
    v157[10] = v60;
    v169 = MEMORY[0x277D82BE0](*(v51[44] + 168));
    if (v169)
    {
      v56 = v169;
      v162 = MEMORY[0x277D85DD0];
      v163 = -1073741824;
      v164 = 0;
      v165 = __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_499;
      v166 = &unk_279CC6888;
      v57 = v168;
      objc_copyWeak(v168, v158 + 6);
      v55 = &v162;
      v168[1] = v158[7];
      v53 = v167;
      v167[0] = MEMORY[0x277D82BE0](v158[4]);
      v54 = (v55 + 5);
      v167[1] = MEMORY[0x277D82BE0](v157[10]);
      [v56 cancel:v55];
      objc_storeStrong(v54, 0);
      objc_storeStrong(v53, 0);
      objc_destroyWeak(v57);
    }

    else
    {
      (*(v157[10] + 16))();
    }

    objc_storeStrong(&v169, 0);
    objc_storeStrong(&v178, 0);
    objc_storeStrong(v58, 0);
    objc_destroyWeak(v63);
    objc_storeStrong(v61, 0);
    v196 = 0;
  }

  objc_storeStrong(v204, 0);
}

void __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_493(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:0];
    v1 = 1;
    (*(location[0] + 2))(location[0], v2 != 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_494(uint64_t a1)
{
  v12 = a1;
  v11 = a1;
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_2;
  v7 = &unk_279CC69C8;
  v8[1] = *(a1 + 48);
  objc_copyWeak(v9, (a1 + 56));
  v9[1] = *(a1 + 64);
  v8[0] = MEMORY[0x277D82BE0](*(a1 + 40));
  v10 = *(a1 + 72) & 1;
  [v2 checkForAvailableUpdatesWithForcedReload:1 completion:&v3];
  objc_storeStrong(v8, 0);
  objc_destroyWeak(v9);
}

void __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v42 = 0;
  objc_storeStrong(&v42, a3);
  v41[1] = a1;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    if (*(*(*(*(a1 + 40) + 8) + 24) + 24))
    {
      os_activity_scope_leave(*(*(*(a1 + 40) + 8) + 24));
    }

    free(*(*(*(a1 + 40) + 8) + 24));
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v41[0] = objc_loadWeakRetained((a1 + 48));
  v13 = 0;
  if (!v41[0])
  {
    v12 = +[SUUILoggingContext softwareUpdateUILogger];
    v40 = [v12 oslog];
    MEMORY[0x277D82BD8](v12);
    v39 = 16;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      log = v40;
      type = v39;
      v9 = NSStringFromSelector(*(a1 + 56));
      v38 = MEMORY[0x277D82BE0](v9);
      __os_log_helper_16_2_2_8_32_8_66(v44, "[SUUIStatefulUIManager doUnenrollFromBetaUpdates:completionHandler:]_block_invoke_2", v38);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v44, 0x16u);
      MEMORY[0x277D82BD8](v9);
      objc_storeStrong(&v38, 0);
    }

    objc_storeStrong(&v40, 0);
    v37 = 1;
    v13 = 1;
  }

  if (v13)
  {
    v3 = MEMORY[0x277D85CD0];
    queue = MEMORY[0x277D85CD0];
    v31 = MEMORY[0x277D85DD0];
    v32 = -1073741824;
    v33 = 0;
    v34 = __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_495;
    v35 = &unk_279CC61E0;
    v36 = MEMORY[0x277D82BE0](*(a1 + 32));
    dispatch_async(queue, &v31);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v36, 0);
    v30 = 1;
  }

  else
  {
    v7 = [MEMORY[0x277D643F8] sharedCore];
    v6 = [v41[0] delegateCallbackQueue];
    v5 = [v7 selectDelegateCallbackQueue:?];
    v23 = MEMORY[0x277D85DD0];
    v24 = -1073741824;
    v25 = 0;
    v26 = __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_2_496;
    v27 = &unk_279CC6978;
    v28 = MEMORY[0x277D82BE0](*(a1 + 32));
    v29 = *(a1 + 64) & 1;
    dispatch_async(v5, &v23);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    v4 = v41[0];
    v16 = MEMORY[0x277D85DD0];
    v17 = -1073741824;
    v18 = 0;
    v19 = __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_3;
    v20 = &unk_279CC69A0;
    objc_copyWeak(v21, (a1 + 48));
    v21[1] = *(a1 + 56);
    v22 = *(a1 + 64) & 1;
    [v4 executeOperationOnDelegate:sel_statefulUIManager_didUnenrollDevice_fromBetaUpdatesProgram_ usingBlock:&v16];
    objc_destroyWeak(v21);
    objc_storeStrong(&v28, 0);
    v30 = 0;
  }

  objc_storeStrong(v41, 0);
  if (!v30)
  {
    v30 = 0;
  }

  objc_storeStrong(&v42, 0);
  objc_storeStrong(location, 0);
}

void __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_495(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:0];
    v1 = 1;
    (*(location[0] + 2))(location[0], v2 != 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_2_496(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](*(a1 + 32));
  if (location[0])
  {
    (*(location[0] + 2))(location[0], *(a1 + 40) & 1);
  }

  objc_storeStrong(location, 0);
}

void __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v13[2] = a1;
  v13[1] = a1;
  v13[0] = objc_loadWeakRetained((a1 + 32));
  v8 = 0;
  if (!v13[0])
  {
    v7 = +[SUUILoggingContext softwareUpdateUILogger];
    v12 = [v7 oslog];
    MEMORY[0x277D82BD8](v7);
    v11 = 16;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      log = v12;
      type = v11;
      v6 = NSStringFromSelector(*(a1 + 40));
      v10 = MEMORY[0x277D82BE0](v6);
      __os_log_helper_16_2_2_8_32_8_66(v14, "[SUUIStatefulUIManager doUnenrollFromBetaUpdates:completionHandler:]_block_invoke_3", v10);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v14, 0x16u);
      MEMORY[0x277D82BD8](v6);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    v3 = [v13[0] delegate];
    v1 = v13[0];
    v2 = [v13[0] currentSeedingDevice];
    [v3 statefulUIManager:v1 didUnenrollDevice:? fromBetaUpdatesProgram:?];
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(v13, 0);
}

void __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_499(uint64_t a1, char a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v23 = a1;
  v22 = a2;
  v21[1] = a1;
  v21[0] = objc_loadWeakRetained((a1 + 48));
  v9 = 0;
  if (!v21[0])
  {
    v8 = +[SUUILoggingContext softwareUpdateUILogger];
    v20 = [v8 oslog];
    MEMORY[0x277D82BD8](v8);
    v19 = 16;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      log = v20;
      type = v19;
      v7 = NSStringFromSelector(*(a1 + 56));
      v18 = MEMORY[0x277D82BE0](v7);
      __os_log_helper_16_2_2_8_32_8_66(v24, "[SUUIStatefulUIManager doUnenrollFromBetaUpdates:completionHandler:]_block_invoke", v18);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v24, 0x16u);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(&v18, 0);
    }

    objc_storeStrong(&v20, 0);
    v17 = 1;
    v9 = 1;
  }

  if (v9)
  {
    v3 = MEMORY[0x277D85CD0];
    v2 = MEMORY[0x277D85CD0];
    queue = v3;
    v11 = MEMORY[0x277D85DD0];
    v12 = -1073741824;
    v13 = 0;
    v14 = __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_500;
    v15 = &unk_279CC61E0;
    v16 = MEMORY[0x277D82BE0](*(a1 + 32));
    dispatch_async(queue, &v11);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v16, 0);
  }

  else
  {
    [v21[0] setCurrentFullScanOperation:0];
    (*(*(a1 + 40) + 16))();
  }

  objc_storeStrong(v21, 0);
}

void __69__SUUIStatefulUIManager_doUnenrollFromBetaUpdates_completionHandler___block_invoke_500(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:0];
    v1 = 1;
    (*(location[0] + 2))(location[0], v2 != 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

- (void)doUnenrollFromBetaUpdatesAfterPurgeConfirmation:(int64_t)confirmation activity:(suui_activity_s *)activity completionHandler:(id)handler
{
  selfCopy = self;
  v21 = a2;
  confirmationCopy = confirmation;
  activityCopy = activity;
  location = 0;
  objc_storeStrong(&location, handler);
  objc_initWeak(&v17, selfCopy);
  v13[0] = 0;
  v13[1] = v13;
  v14 = 0x20000000;
  v15 = 32;
  v16 = *activityCopy;
  *activityCopy = 0;
  queue = selfCopy->_operationsQueue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __100__SUUIStatefulUIManager_doUnenrollFromBetaUpdatesAfterPurgeConfirmation_activity_completionHandler___block_invoke;
  v10 = &unk_279CC6A90;
  objc_copyWeak(v12, &v17);
  v12[1] = v21;
  v11[0] = MEMORY[0x277D82BE0](location);
  v12[2] = confirmationCopy;
  v11[1] = v13;
  dispatch_async(queue, &v6);
  objc_storeStrong(v11, 0);
  objc_destroyWeak(v12);
  _Block_object_dispose(v13, 8);
  objc_destroyWeak(&v17);
  objc_storeStrong(&location, 0);
}

void __100__SUUIStatefulUIManager_doUnenrollFromBetaUpdatesAfterPurgeConfirmation_activity_completionHandler___block_invoke(id *a1)
{
  v190 = &v210;
  v191 = a1;
  v192 = "[SUUIStatefulUIManager doUnenrollFromBetaUpdatesAfterPurgeConfirmation:activity:completionHandler:]_block_invoke";
  v193 = "[SUUIStatefulUIManager doUnenrollFromBetaUpdatesAfterPurgeConfirmation:activity:completionHandler:]_block_invoke_2";
  v243 = *MEMORY[0x277D85DE8];
  v236[2] = a1;
  v236[1] = a1;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v236[0] = WeakRetained;
  v189 = 0;
  if (!WeakRetained)
  {
    v188 = +[SUUILoggingContext softwareUpdateUILogger];
    v186 = v188;
    v187 = [v186 oslog];
    v1 = v187;
    v2 = v186;
    v190[33] = v1;
    MEMORY[0x277D82BD8](v2);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v190[33], OS_LOG_TYPE_ERROR))
    {
      log = v190[33];
      *v184 = type;
      v185 = NSStringFromSelector(v191[7]);
      v182 = v185;
      v3 = MEMORY[0x277D82BE0](v182);
      v4 = v192;
      v190[31] = v3;
      buf = v242;
      __os_log_helper_16_2_2_8_32_8_66(v242, v4, v3);
      _os_log_error_impl(&dword_26ADE5000, log, v184[0], "%s: Self is nil in %{public}@. Stopping.", v242, 0x16u);
      MEMORY[0x277D82BD8](v182);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v235, 0);
    v232[3] = 1;
    v189 = 1;
  }

  if (v189)
  {
    v5 = MEMORY[0x277D85CD0];
    v6 = MEMORY[0x277D85CD0];
    v7 = v191;
    v8 = v190;
    queue = v6;
    block = &v229;
    v190[25] = MEMORY[0x277D85DD0];
    v230 = -1073741824;
    v231 = 0;
    v8[27] = __100__SUUIStatefulUIManager_doUnenrollFromBetaUpdatesAfterPurgeConfirmation_activity_completionHandler___block_invoke_501;
    v8[28] = &unk_279CC61E0;
    v178 = v232;
    v9 = MEMORY[0x277D82BE0](v7[4]);
    v10 = block;
    v11 = v9;
    v12 = queue;
    v190[29] = v11;
    dispatch_async(v12, v10);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(v178, 0);
    v228 = 1;
  }

  else
  {
    v177 = +[SUUILoggingContext statefulUILogger];
    v175 = v177;
    v176 = [v175 oslog];
    v13 = v176;
    v14 = v175;
    v190[23] = v13;
    MEMORY[0x277D82BD8](v14);
    v226 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v190[23], OS_LOG_TYPE_DEFAULT))
    {
      v171 = v190[23];
      *v172 = v226;
      v173 = v190[34];
      aClass = objc_opt_class();
      v170 = NSStringFromClass(aClass);
      v167 = v170;
      v15 = MEMORY[0x277D82BE0](v167);
      v16 = v190;
      v168 = v15;
      v190[21] = v15;
      v169 = SUUIStatefulUIStateToString(*(v16[34] + 5));
      v164 = v169;
      v17 = MEMORY[0x277D82BE0](v164);
      v18 = v190;
      v165 = v17;
      v190[20] = v17;
      v166 = [v18[34] currentState];
      v163 = [v190[34] delegate];
      v162 = v163;
      v223 = 0;
      v222 = 0;
      if (v162)
      {
        v161 = [v190[34] delegate];
        v190[19] = v161;
        v223 = 1;
        v160 = objc_opt_class();
        v159 = NSStringFromClass(v160);
        v19 = v159;
        v190[17] = v19;
        v222 = 1;
        v158 = v19;
      }

      else
      {
        v158 = @"(null)";
      }

      v156 = v158;
      v157 = [v190[34] delegate];
      v154 = v157;
      v155 = [v190[34] scanError];
      v152 = v155;
      v153 = [v190[34] preferredStatefulDescriptor];
      v150 = v153;
      v151 = [v190[34] alternateStatefulDescriptor];
      v148 = v151;
      v149 = [v190[34] currentDownload];
      v147 = v149;
      v221 = 0;
      v220 = 0;
      v219 = 0;
      if (v147)
      {
        v146 = [v190[34] currentDownload];
        v20 = v146;
        v190[15] = v20;
        v221 = 1;
        v145 = [v20 descriptor];
        v21 = v145;
        v190[13] = v21;
        v220 = 1;
        v144 = [v21 updateName];
        v22 = v144;
        v190[11] = v22;
        v219 = 1;
        v143 = v22;
      }

      else
      {
        v143 = @"(null)";
      }

      v141 = v143;
      v142 = [v190[34] currentDownload];
      v139 = v142;
      v140 = [v190[34] currentUpdateOperationType];
      v138 = SUUIUpdateContinuousOperationTypeToString(v140);
      v135 = v138;
      v23 = MEMORY[0x277D82BE0](v135);
      v24 = v190;
      v136 = v23;
      v190[9] = v23;
      v137 = [v24[34] isTargetedUpdateScheduledForAutoInstall];
      v240 = v137;
      if (v137)
      {
        v25 = @"YES";
      }

      else
      {
        v25 = @"NO";
      }

      v134 = v25;
      v26 = v25;
      v131 = v134;
      v27 = MEMORY[0x277D82BE0](v131);
      v28 = v190;
      v132 = v27;
      v190[8] = v27;
      v133 = [v28[34] hidingPreferredDescriptor];
      v239 = v133;
      if (v133)
      {
        v29 = @"YES";
      }

      else
      {
        v29 = @"NO";
      }

      v130 = v29;
      v30 = v29;
      v127 = v130;
      v31 = MEMORY[0x277D82BE0](v127);
      v32 = v190;
      v128 = v31;
      v190[7] = v31;
      v129 = [v32[34] hiddenPreferredStatefulDescriptor];
      v125 = v129;
      v126 = [v125 updateName];
      v122 = v126;
      v33 = MEMORY[0x277D82BE0](v122);
      v34 = v190;
      v123 = v33;
      v190[6] = v33;
      v124 = [v34[34] hidingAlternateDescriptor];
      v238 = v124;
      if (v124)
      {
        v35 = @"YES";
      }

      else
      {
        v35 = @"NO";
      }

      v121 = v35;
      v36 = v35;
      v118 = v121;
      v37 = MEMORY[0x277D82BE0](v118);
      v38 = v190;
      v119 = v37;
      v190[5] = v37;
      v120 = [v38[34] hiddenAlternateStatefulDescriptor];
      v116 = v120;
      v117 = [v116 updateName];
      v113 = v117;
      v39 = MEMORY[0x277D82BE0](v113);
      v40 = v190;
      v114 = v39;
      v190[4] = v39;
      v115 = [v40[34] enrolledBetaProgram];
      v112 = v115;
      v212 = 0;
      if (v112)
      {
        v111 = [v190[34] enrolledBetaProgram];
        v41 = v111;
        v190[3] = v41;
        v212 = 1;
        v110 = [v41 programID];
        v109 = v110;
      }

      else
      {
        v109 = 0;
      }

      v107 = v109;
      v108 = [*(v190[34] + 15) count];
      v106 = [v190[34] canEnrollInBetaUpdates];
      v237 = v106;
      if (v106)
      {
        v42 = @"YES";
      }

      else
      {
        v42 = @"NO";
      }

      v105 = v42;
      v43 = v42;
      v99 = v105;
      v44 = MEMORY[0x277D82BE0](v99);
      v45 = v190;
      v100 = v44;
      v190[1] = v44;
      v101 = *(v45[34] + 21);
      v102 = *(v45[34] + 22);
      v103 = *(v45[34] + 23);
      v104 = [*(v45[34] + 24) count];
      v98 = SUUIUserInteractionResponseToString(v191[8]);
      v46 = v123;
      v47 = v128;
      v48 = v132;
      v49 = v136;
      v50 = v139;
      v51 = v141;
      v52 = v148;
      v53 = v150;
      v54 = v152;
      v97 = v98;
      v55 = MEMORY[0x277D82BE0](v97);
      v56 = v119;
      v57 = v114;
      v58 = v107;
      v59 = v108;
      v60 = v100;
      v61 = v101;
      v62 = v102;
      v63 = v103;
      v64 = v104;
      v65 = v193;
      v66 = v173;
      v67 = v168;
      v68 = v165;
      v69 = v166;
      v70 = v156;
      v71 = v154;
      *v190 = v55;
      v95 = &v72;
      v96 = v241;
      __os_log_helper_16_2_26_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66(v241, v65, v66, v67, v68, v69, v70, v71, v54, v53, v52, v51, v50, v49, v48, v47, v46, v56, v57, v58, v59, v60, v61, v62, v63, v64, v55);
      _os_log_impl(&dword_26ADE5000, v171, v172[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nUser responded to the targeted update purge request for unenrollment: %{public}@", v96, 0x106u);
      MEMORY[0x277D82BD8](v97);
      MEMORY[0x277D82BD8](v99);
      if (v212)
      {
        MEMORY[0x277D82BD8](v190[3]);
      }

      MEMORY[0x277D82BD8](v112);
      MEMORY[0x277D82BD8](v113);
      MEMORY[0x277D82BD8](v116);
      MEMORY[0x277D82BD8](v118);
      MEMORY[0x277D82BD8](v122);
      MEMORY[0x277D82BD8](v125);
      MEMORY[0x277D82BD8](v127);
      MEMORY[0x277D82BD8](v131);
      MEMORY[0x277D82BD8](v135);
      MEMORY[0x277D82BD8](v139);
      if (v219)
      {
        MEMORY[0x277D82BD8](v190[11]);
      }

      if (v220)
      {
        MEMORY[0x277D82BD8](v190[13]);
      }

      if (v221)
      {
        MEMORY[0x277D82BD8](v190[15]);
      }

      MEMORY[0x277D82BD8](v147);
      MEMORY[0x277D82BD8](v148);
      MEMORY[0x277D82BD8](v150);
      MEMORY[0x277D82BD8](v152);
      MEMORY[0x277D82BD8](v154);
      if (v222)
      {
        MEMORY[0x277D82BD8](v190[17]);
      }

      if (v223)
      {
        MEMORY[0x277D82BD8](v190[19]);
      }

      MEMORY[0x277D82BD8](v162);
      MEMORY[0x277D82BD8](v164);
      MEMORY[0x277D82BD8](v167);
      objc_storeStrong(&v210, 0);
      objc_storeStrong(&v211, 0);
      objc_storeStrong(&v213, 0);
      objc_storeStrong(&v214, 0);
      objc_storeStrong(&v215, 0);
      objc_storeStrong(&v216, 0);
      objc_storeStrong(&v217, 0);
      objc_storeStrong(&v218, 0);
      objc_storeStrong(&v224, 0);
      objc_storeStrong(&v225, 0);
    }

    objc_storeStrong(&v227, 0);
    if (v191[8])
    {
      if (*(*(v191[5] + 1) + 24))
      {
        if (*(*(*(v191[5] + 1) + 24) + 24))
        {
          os_activity_scope_leave(*(*(v191[5] + 1) + 24));
        }

        free(*(*(v191[5] + 1) + 24));
        *(*(v191[5] + 1) + 24) = 0;
      }

      v94 = [MEMORY[0x277D643F8] sharedCore];
      v92 = v94;
      v93 = [v190[34] delegateCallbackQueue];
      v90 = v93;
      v91 = [v92 selectDelegateCallbackQueue:?];
      v89 = v91;
      v88 = &v204;
      v204 = MEMORY[0x277D85DD0];
      v205 = -1073741824;
      v206 = 0;
      v207 = __100__SUUIStatefulUIManager_doUnenrollFromBetaUpdatesAfterPurgeConfirmation_activity_completionHandler___block_invoke_503;
      v208 = &unk_279CC61E0;
      v87 = &v209;
      v209 = MEMORY[0x277D82BE0](v191[4]);
      dispatch_async(v89, v88);
      MEMORY[0x277D82BD8](v89);
      MEMORY[0x277D82BD8](v90);
      MEMORY[0x277D82BD8](v92);
      v228 = 1;
      objc_storeStrong(v87, 0);
    }

    else
    {
      v86 = [MEMORY[0x277CCAD78] UUID];
      v84 = v86;
      v85 = [v84 UUIDString];
      v203 = v85;
      MEMORY[0x277D82BD8](v84);
      v83 = [v190[34] environment];
      v81 = v83;
      v82 = [v81 updateOperationWithManager:v190[34] identifier:v203 delegateCallbackQueue:0 completionQueue:*(v190[34] + 26)];
      v202 = v82;
      MEMORY[0x277D82BD8](v81);
      v79 = v202;
      v80 = [v190[34] currentDownload];
      v77 = v80;
      v78 = [v190[34] contextForPurgeUpdateOperation:v202 forUserRequestedOperation:1 notifyUser:0];
      v75 = v78;
      v195 = MEMORY[0x277D85DD0];
      v196 = -1073741824;
      v197 = 0;
      v198 = __100__SUUIStatefulUIManager_doUnenrollFromBetaUpdatesAfterPurgeConfirmation_activity_completionHandler___block_invoke_2;
      v199 = &unk_279CC6A68;
      v76 = v201;
      objc_copyWeak(v201, v191 + 6);
      v74 = &v195;
      v201[1] = v191[7];
      v73 = v200;
      v200[0] = MEMORY[0x277D82BE0](v191[4]);
      v200[1] = v191[5];
      [v79 purgeDownload:v77 withContext:v75 delegate:0 completionHandler:v74];
      MEMORY[0x277D82BD8](v75);
      MEMORY[0x277D82BD8](v77);
      objc_storeStrong(v73, 0);
      objc_destroyWeak(v76);
      objc_storeStrong(&v202, 0);
      objc_storeStrong(&v203, 0);
      v228 = 0;
    }
  }

  objc_storeStrong(v236, 0);
}

void __100__SUUIStatefulUIManager_doUnenrollFromBetaUpdatesAfterPurgeConfirmation_activity_completionHandler___block_invoke_501(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:0];
    v1 = 1;
    (*(location[0] + 2))(location[0], v2 != 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __100__SUUIStatefulUIManager_doUnenrollFromBetaUpdatesAfterPurgeConfirmation_activity_completionHandler___block_invoke_503(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:1 userInfo:0];
    v1 = 1;
    (*(location[0] + 2))(location[0], v2 != 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __100__SUUIStatefulUIManager_doUnenrollFromBetaUpdatesAfterPurgeConfirmation_activity_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v90 = a1;
  obj = a3;
  v88 = "[SUUIStatefulUIManager doUnenrollFromBetaUpdatesAfterPurgeConfirmation:activity:completionHandler:]_block_invoke_2";
  v140 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v132 = 0;
  objc_storeStrong(&v132, obj);
  v131[1] = v90;
  v131[0] = objc_loadWeakRetained(v90 + 6);
  v87 = 0;
  if (!v131[0])
  {
    v86 = +[SUUILoggingContext softwareUpdateUILogger];
    oslog = [v86 oslog];
    MEMORY[0x277D82BD8](v86);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v82 = type;
      v84 = NSStringFromSelector(*(v90 + 7));
      v85 = &v128;
      v128 = MEMORY[0x277D82BE0](v84);
      buf = v139;
      __os_log_helper_16_2_2_8_32_8_66(v139, v88, v128);
      _os_log_error_impl(&dword_26ADE5000, log, v82[0], "%s: Self is nil in %{public}@. Stopping.", v139, 0x16u);
      MEMORY[0x277D82BD8](v84);
      objc_storeStrong(&v128, 0);
    }

    objc_storeStrong(&oslog, 0);
    v127 = 1;
    v87 = 1;
  }

  if (v87)
  {
    v77 = MEMORY[0x277D85CD0];
    v3 = MEMORY[0x277D85CD0];
    queue = v77;
    block = &v121;
    v121 = MEMORY[0x277D85DD0];
    v122 = -1073741824;
    v123 = 0;
    v124 = __100__SUUIStatefulUIManager_doUnenrollFromBetaUpdatesAfterPurgeConfirmation_activity_completionHandler___block_invoke_504;
    v125 = &unk_279CC61E0;
    v80 = &v126;
    v126 = MEMORY[0x277D82BE0](*(v90 + 4));
    dispatch_async(queue, &v121);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v126, 0);
    v120 = 1;
  }

  else
  {
    v76 = +[SUUILoggingContext statefulUILogger];
    v119 = [v76 oslog];
    MEMORY[0x277D82BD8](v76);
    v118 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
    {
      v67 = v119;
      *v68 = v118;
      v69 = v131[0];
      v4 = objc_opt_class();
      v70 = NSStringFromClass(v4);
      v71 = MEMORY[0x277D82BE0](v70);
      v117 = v71;
      v72 = SUUIStatefulUIStateToString(*(v131[0] + 5));
      v73 = MEMORY[0x277D82BE0](v72);
      v116 = v73;
      v74 = [v131[0] currentState];
      v75 = [v131[0] delegate];
      v114 = 0;
      v112 = 0;
      if (v75)
      {
        v115 = [v131[0] delegate];
        v65 = 1;
        v114 = 1;
        v5 = objc_opt_class();
        v113 = NSStringFromClass(v5);
        v112 = 1;
        v66 = v113;
      }

      else
      {
        v66 = @"(null)";
      }

      v59 = v66;
      v60 = [v131[0] delegate];
      v61 = [v131[0] scanError];
      v62 = [v131[0] preferredStatefulDescriptor];
      v63 = [v131[0] alternateStatefulDescriptor];
      v64 = [v131[0] currentDownload];
      v110 = 0;
      v108 = 0;
      v106 = 0;
      if (v64)
      {
        v111 = [v131[0] currentDownload];
        v57 = 1;
        v110 = 1;
        v109 = [v111 descriptor];
        v108 = 1;
        v107 = [v109 updateName];
        v106 = 1;
        v58 = v107;
      }

      else
      {
        v58 = @"(null)";
      }

      v34 = v58;
      v35 = [v131[0] currentDownload];
      v36 = SUUIUpdateContinuousOperationTypeToString([v131[0] currentUpdateOperationType]);
      v37 = MEMORY[0x277D82BE0](v36);
      v105 = v37;
      v137 = [v131[0] isTargetedUpdateScheduledForAutoInstall];
      v47 = @"NO";
      v48 = @"YES";
      v55 = 1;
      if (v137)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v38 = v6;
      v7 = v6;
      v39 = v38;
      v40 = MEMORY[0x277D82BE0](v39);
      v104 = v40;
      v136 = [v131[0] hidingPreferredDescriptor];
      if (v136)
      {
        v8 = v48;
      }

      else
      {
        v8 = v47;
      }

      v41 = v8;
      v9 = v8;
      v42 = v41;
      v43 = MEMORY[0x277D82BE0](v42);
      v103 = v43;
      v44 = [v131[0] hiddenPreferredStatefulDescriptor];
      v45 = [v44 updateName];
      v46 = MEMORY[0x277D82BE0](v45);
      v102 = v46;
      v135 = [v131[0] hidingAlternateDescriptor];
      if (v135)
      {
        v10 = v48;
      }

      else
      {
        v10 = v47;
      }

      v49 = v10;
      v11 = v10;
      v50 = v49;
      v51 = MEMORY[0x277D82BE0](v50);
      v101 = v51;
      v52 = [v131[0] hiddenAlternateStatefulDescriptor];
      v53 = [v52 updateName];
      v54 = MEMORY[0x277D82BE0](v53);
      v100 = v54;
      v56 = [v131[0] enrolledBetaProgram];
      v98 = 0;
      if (v56)
      {
        v99 = [v131[0] enrolledBetaProgram];
        v98 = 1;
        v33 = [v99 programID];
      }

      else
      {
        v33 = 0;
      }

      v24 = v33;
      v25 = [*(v131[0] + 15) count];
      v134 = [v131[0] canEnrollInBetaUpdates];
      if (v134)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v23 = v12;
      v13 = v12;
      v32 = v23;
      v26 = MEMORY[0x277D82BE0](v32);
      v97 = v26;
      v27 = *(v131[0] + 21);
      v28 = *(v131[0] + 22);
      v29 = *(v131[0] + 23);
      v14 = [*(v131[0] + 24) count];
      v30 = &v15;
      v31 = v138;
      __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66(v138, v88, v69, v71, v73, v74, v59, v60, v61, v62, v63, v34, v35, v37, v40, v43, v46, v51, v54, v24, v25, v26, v27, v28, v29, v14, location[0], v132);
      _os_log_impl(&dword_26ADE5000, v67, v68[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nPurge result for unenrollment: %{public}@; error: %{public}@", v31, 0x110u);
      MEMORY[0x277D82BD8](v32);
      if (v98)
      {
        MEMORY[0x277D82BD8](v99);
      }

      MEMORY[0x277D82BD8](v56);
      MEMORY[0x277D82BD8](v53);
      MEMORY[0x277D82BD8](v52);
      MEMORY[0x277D82BD8](v50);
      MEMORY[0x277D82BD8](v45);
      MEMORY[0x277D82BD8](v44);
      MEMORY[0x277D82BD8](v42);
      MEMORY[0x277D82BD8](v39);
      MEMORY[0x277D82BD8](v36);
      MEMORY[0x277D82BD8](v35);
      if (v106)
      {
        MEMORY[0x277D82BD8](v107);
      }

      if (v108)
      {
        MEMORY[0x277D82BD8](v109);
      }

      if (v110)
      {
        MEMORY[0x277D82BD8](v111);
      }

      MEMORY[0x277D82BD8](v64);
      MEMORY[0x277D82BD8](v63);
      MEMORY[0x277D82BD8](v62);
      MEMORY[0x277D82BD8](v61);
      MEMORY[0x277D82BD8](v60);
      if (v112)
      {
        MEMORY[0x277D82BD8](v113);
      }

      if (v114)
      {
        MEMORY[0x277D82BD8](v115);
      }

      MEMORY[0x277D82BD8](v75);
      MEMORY[0x277D82BD8](v72);
      MEMORY[0x277D82BD8](v70);
      v22 = 0;
      objc_storeStrong(&v97, 0);
      objc_storeStrong(&v100, v22);
      objc_storeStrong(&v101, v22);
      objc_storeStrong(&v102, v22);
      objc_storeStrong(&v103, v22);
      objc_storeStrong(&v104, v22);
      objc_storeStrong(&v105, v22);
      objc_storeStrong(&v116, v22);
      objc_storeStrong(&v117, v22);
    }

    objc_storeStrong(&v119, 0);
    if (location[0])
    {
      [v131[0] doUnenrollFromBetaUpdates:*(*(v90 + 5) + 8) + 24 completionHandler:*(v90 + 4)];
      v120 = 0;
    }

    else
    {
      if (*(*(*(v90 + 5) + 8) + 24))
      {
        if (*(*(*(*(v90 + 5) + 8) + 24) + 24))
        {
          os_activity_scope_leave(*(*(*(v90 + 5) + 8) + 24));
        }

        free(*(*(*(v90 + 5) + 8) + 24));
        *(*(*(v90 + 5) + 8) + 24) = 0;
      }

      v20 = [MEMORY[0x277D643F8] sharedCore];
      v19 = [v131[0] delegateCallbackQueue];
      v18 = [v20 selectDelegateCallbackQueue:?];
      v17 = &v91;
      v91 = MEMORY[0x277D85DD0];
      v92 = -1073741824;
      v93 = 0;
      v94 = __100__SUUIStatefulUIManager_doUnenrollFromBetaUpdatesAfterPurgeConfirmation_activity_completionHandler___block_invoke_505;
      v95 = &unk_279CC61E0;
      v21 = &v96;
      v96 = MEMORY[0x277D82BE0](*(v90 + 4));
      dispatch_async(v18, v17);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v19);
      MEMORY[0x277D82BD8](v20);
      v120 = 1;
      objc_storeStrong(v21, 0);
    }
  }

  objc_storeStrong(v131, 0);
  if (!v120)
  {
    v120 = 0;
  }

  v16 = 0;
  objc_storeStrong(&v132, 0);
  objc_storeStrong(location, v16);
}

void __100__SUUIStatefulUIManager_doUnenrollFromBetaUpdatesAfterPurgeConfirmation_activity_completionHandler___block_invoke_504(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:12 userInfo:0];
    v1 = 1;
    (*(location[0] + 2))(location[0], v2 != 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

void __100__SUUIStatefulUIManager_doUnenrollFromBetaUpdatesAfterPurgeConfirmation_activity_completionHandler___block_invoke_505(void *a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = MEMORY[0x26D66ADC0](a1[4]);
  v1 = 0;
  if (location[0])
  {
    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.SoftwareUpdateUI" code:2 userInfo:0];
    v1 = 1;
    (*(location[0] + 2))(location[0], v2 != 0);
  }

  if (v1)
  {
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

- (int64_t)fsmAction_CheckForAvailableUpdate:(id)update error:(id *)error
{
  v202 = &v220;
  errorCopy = error;
  v199 = "[SUUIStatefulUIManager fsmAction_CheckForAvailableUpdate:error:]";
  v260 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  v247[1] = errorCopy;
  extendedStateQueue = [(SUCoreFSM *)selfCopy->_managerFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);
  MEMORY[0x277D82BD8](extendedStateQueue);
  v247[0] = [(SUUIStatefulUIManager *)selfCopy currentRefreshScanOperation];
  if (v247[0])
  {
    v198 = +[SUUILoggingContext statefulUILogger];
    oslog = [v198 oslog];
    v5 = v198;
    *(v202 + 34) = oslog;
    MEMORY[0x277D82BD8](v5);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(*(v202 + 34), OS_LOG_TYPE_DEFAULT))
    {
      log = *(v202 + 34);
      *v190 = type;
      v191 = *(v202 + 39);
      v6 = objc_opt_class();
      v192 = NSStringFromClass(v6);
      v7 = MEMORY[0x277D82BE0](v192);
      v8 = v202;
      v193 = v7;
      *(v202 + 32) = v7;
      v194 = SUUIStatefulUIStateToString(*(*(v8 + 39) + 40));
      v9 = MEMORY[0x277D82BE0](v194);
      v10 = v202;
      v195 = v9;
      *(v202 + 31) = v9;
      currentState = [v10[39] currentState];
      delegate = [*(v202 + 39) delegate];
      v242 = 0;
      v241 = 0;
      if (delegate)
      {
        *(v202 + 30) = [*(v202 + 39) delegate];
        v187 = 1;
        v242 = 1;
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *(v202 + 28) = v12;
        v241 = 1;
        v188 = v12;
      }

      else
      {
        v188 = @"(null)";
      }

      v181 = v188;
      delegate2 = [*(v202 + 39) delegate];
      scanError = [*(v202 + 39) scanError];
      preferredStatefulDescriptor = [*(v202 + 39) preferredStatefulDescriptor];
      alternateStatefulDescriptor = [*(v202 + 39) alternateStatefulDescriptor];
      currentDownload = [*(v202 + 39) currentDownload];
      v240 = 0;
      v239 = 0;
      v238 = 0;
      if (currentDownload)
      {
        currentDownload2 = [*(v202 + 39) currentDownload];
        *(v202 + 26) = currentDownload2;
        v179 = 1;
        v240 = 1;
        descriptor = [currentDownload2 descriptor];
        *(v202 + 24) = descriptor;
        v239 = 1;
        updateName = [descriptor updateName];
        v16 = v179;
        *(v202 + 22) = updateName;
        v238 = v16 & 1;
        v180 = updateName;
      }

      else
      {
        v180 = @"(null)";
      }

      v156 = v180;
      currentDownload3 = [*(v202 + 39) currentDownload];
      v158 = SUUIUpdateContinuousOperationTypeToString([*(v202 + 39) currentUpdateOperationType]);
      v17 = MEMORY[0x277D82BE0](v158);
      v18 = v202;
      v159 = v17;
      *(v202 + 20) = v17;
      isTargetedUpdateScheduledForAutoInstall = [v18[39] isTargetedUpdateScheduledForAutoInstall];
      v169 = @"NO";
      v170 = @"YES";
      v177 = 1;
      if (isTargetedUpdateScheduledForAutoInstall)
      {
        v19 = @"YES";
      }

      else
      {
        v19 = @"NO";
      }

      v160 = v19;
      v20 = v19;
      v161 = v160;
      v21 = MEMORY[0x277D82BE0](v161);
      v22 = v202;
      v162 = v21;
      *(v202 + 19) = v21;
      hidingPreferredDescriptor = [v22[39] hidingPreferredDescriptor];
      if (hidingPreferredDescriptor)
      {
        v23 = v170;
      }

      else
      {
        v23 = v169;
      }

      v163 = v23;
      v24 = v23;
      v164 = v163;
      v25 = MEMORY[0x277D82BE0](v164);
      v26 = v202;
      v165 = v25;
      *(v202 + 18) = v25;
      hiddenPreferredStatefulDescriptor = [v26[39] hiddenPreferredStatefulDescriptor];
      updateName2 = [hiddenPreferredStatefulDescriptor updateName];
      v27 = MEMORY[0x277D82BE0](updateName2);
      v28 = v202;
      v168 = v27;
      *(v202 + 17) = v27;
      hidingAlternateDescriptor = [v28[39] hidingAlternateDescriptor];
      if (hidingAlternateDescriptor)
      {
        v29 = v170;
      }

      else
      {
        v29 = v169;
      }

      v171 = v29;
      v30 = v29;
      v172 = v171;
      v31 = MEMORY[0x277D82BE0](v172);
      v32 = v202;
      v173 = v31;
      *(v202 + 16) = v31;
      hiddenAlternateStatefulDescriptor = [v32[39] hiddenAlternateStatefulDescriptor];
      updateName3 = [hiddenAlternateStatefulDescriptor updateName];
      v33 = MEMORY[0x277D82BE0](updateName3);
      v34 = v202;
      v176 = v33;
      *(v202 + 15) = v33;
      enrolledBetaProgram = [v34[39] enrolledBetaProgram];
      v231 = 0;
      if (enrolledBetaProgram)
      {
        enrolledBetaProgram2 = [*(v202 + 39) enrolledBetaProgram];
        *(v202 + 14) = enrolledBetaProgram2;
        v231 = 1;
        programID = [enrolledBetaProgram2 programID];
      }

      else
      {
        programID = 0;
      }

      v36 = v165;
      v37 = v162;
      v38 = v159;
      v39 = currentDownload3;
      v40 = v156;
      v41 = alternateStatefulDescriptor;
      v42 = preferredStatefulDescriptor;
      v43 = scanError;
      v146 = programID;
      v147 = [*(*(v202 + 39) + 120) count];
      canEnrollInBetaUpdates = [*(v202 + 39) canEnrollInBetaUpdates];
      if (canEnrollInBetaUpdates)
      {
        v44 = @"YES";
      }

      else
      {
        v44 = @"NO";
      }

      v145 = v44;
      v45 = v44;
      v154 = v145;
      v46 = MEMORY[0x277D82BE0](v154);
      v47 = v202;
      v148 = v46;
      *(v202 + 12) = v46;
      v149 = *(*(v47 + 39) + 168);
      v150 = *(*(v47 + 39) + 176);
      v151 = *(*(v47 + 39) + 184);
      v48 = [*(*(v47 + 39) + 192) count];
      v152 = &v83;
      buf = v259;
      __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v259, v199, v191, v193, v195, currentState, v181, delegate2, v43, v42, v41, v40, v39, v38, v37, v36, v168, v173, v176, v146, v147, v148, v149, v150, v151, v48);
      _os_log_impl(&dword_26ADE5000, log, v190[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA refresh operation is currently running. Canceling it as we start a full-scan.", buf, 0xFCu);
      MEMORY[0x277D82BD8](v154);
      if (v231)
      {
        MEMORY[0x277D82BD8](*(v202 + 14));
      }

      MEMORY[0x277D82BD8](enrolledBetaProgram);
      MEMORY[0x277D82BD8](updateName3);
      MEMORY[0x277D82BD8](hiddenAlternateStatefulDescriptor);
      MEMORY[0x277D82BD8](v172);
      MEMORY[0x277D82BD8](updateName2);
      MEMORY[0x277D82BD8](hiddenPreferredStatefulDescriptor);
      MEMORY[0x277D82BD8](v164);
      MEMORY[0x277D82BD8](v161);
      MEMORY[0x277D82BD8](v158);
      MEMORY[0x277D82BD8](currentDownload3);
      if (v238)
      {
        MEMORY[0x277D82BD8](*(v202 + 22));
      }

      if (v239)
      {
        MEMORY[0x277D82BD8](*(v202 + 24));
      }

      if (v240)
      {
        MEMORY[0x277D82BD8](*(v202 + 26));
      }

      MEMORY[0x277D82BD8](currentDownload);
      MEMORY[0x277D82BD8](alternateStatefulDescriptor);
      MEMORY[0x277D82BD8](preferredStatefulDescriptor);
      MEMORY[0x277D82BD8](scanError);
      MEMORY[0x277D82BD8](delegate2);
      if (v241)
      {
        MEMORY[0x277D82BD8](*(v202 + 28));
      }

      if (v242)
      {
        MEMORY[0x277D82BD8](*(v202 + 30));
      }

      MEMORY[0x277D82BD8](delegate);
      MEMORY[0x277D82BD8](v194);
      MEMORY[0x277D82BD8](v192);
      obj = 0;
      objc_storeStrong(&v230, 0);
      objc_storeStrong(&v232, obj);
      objc_storeStrong(&v233, obj);
      objc_storeStrong(&v234, obj);
      objc_storeStrong(&v235, obj);
      objc_storeStrong(&v236, obj);
      objc_storeStrong(&v237, obj);
      objc_storeStrong(&v243, obj);
      objc_storeStrong(&v244, obj);
    }

    objc_storeStrong(&v246, 0);
    v49 = v202;
    v142 = *(v202 + 35);
    v141 = &v226;
    *(v202 + 7) = MEMORY[0x277D85DD0];
    v227 = -1073741824;
    v228 = 0;
    *(v49 + 9) = __65__SUUIStatefulUIManager_fsmAction_CheckForAvailableUpdate_error___block_invoke;
    *(v49 + 10) = &unk_279CC6AB8;
    v143 = &v229;
    v50 = MEMORY[0x277D82BE0](*(v49 + 39));
    v51 = v141;
    v52 = v50;
    v53 = v142;
    *(v202 + 11) = v52;
    [v53 cancel:v51];
    objc_storeStrong(v143, 0);
  }

  currentFullScanOperation = [*(v202 + 39) currentFullScanOperation];
  MEMORY[0x277D82BD8](currentFullScanOperation);
  if (currentFullScanOperation)
  {
    v139 = +[SUUILoggingContext statefulUILogger];
    oslog2 = [v139 oslog];
    v55 = v139;
    *(v202 + 6) = oslog2;
    MEMORY[0x277D82BD8](v55);
    v224 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(*(v202 + 6), OS_LOG_TYPE_DEFAULT))
    {
      v130 = *(v202 + 6);
      *v131 = v224;
      v132 = *(v202 + 39);
      v56 = objc_opt_class();
      v133 = NSStringFromClass(v56);
      v57 = MEMORY[0x277D82BE0](v133);
      v58 = v202;
      v134 = v57;
      *(v202 + 4) = v57;
      v135 = SUUIStatefulUIStateToString(*(*(v58 + 39) + 40));
      v59 = MEMORY[0x277D82BE0](v135);
      v60 = v202;
      v136 = v59;
      *(v202 + 3) = v59;
      currentState2 = [v60[39] currentState];
      delegate3 = [*(v202 + 39) delegate];
      v221 = 0;
      v219 = 0;
      if (delegate3)
      {
        delegate4 = [*(v202 + 39) delegate];
        *(v202 + 2) = delegate4;
        v128 = 1;
        v221 = 1;
        v62 = objc_opt_class();
        v63 = NSStringFromClass(v62);
        v64 = v128;
        *v202 = v63;
        v219 = v64 & 1;
        v129 = v63;
      }

      else
      {
        v129 = @"(null)";
      }

      v122 = v129;
      delegate5 = [*(v202 + 39) delegate];
      scanError2 = [*(v202 + 39) scanError];
      preferredStatefulDescriptor2 = [*(v202 + 39) preferredStatefulDescriptor];
      alternateStatefulDescriptor2 = [*(v202 + 39) alternateStatefulDescriptor];
      currentDownload4 = [*(v202 + 39) currentDownload];
      v217 = 0;
      v215 = 0;
      v213 = 0;
      if (currentDownload4)
      {
        currentDownload5 = [*(v202 + 39) currentDownload];
        v120 = 1;
        v217 = 1;
        descriptor2 = [currentDownload5 descriptor];
        v215 = v120 & 1;
        updateName4 = [descriptor2 updateName];
        v213 = v120 & 1;
        v121 = updateName4;
      }

      else
      {
        v121 = @"(null)";
      }

      v97 = v121;
      currentDownload6 = [*(v202 + 39) currentDownload];
      v99 = SUUIUpdateContinuousOperationTypeToString([*(v202 + 39) currentUpdateOperationType]);
      v100 = MEMORY[0x277D82BE0](v99);
      v212 = v100;
      isTargetedUpdateScheduledForAutoInstall2 = [*(v202 + 39) isTargetedUpdateScheduledForAutoInstall];
      v110 = @"NO";
      v111 = @"YES";
      v118 = 1;
      if (isTargetedUpdateScheduledForAutoInstall2)
      {
        v65 = @"YES";
      }

      else
      {
        v65 = @"NO";
      }

      v101 = v65;
      v66 = v65;
      v102 = v101;
      v103 = MEMORY[0x277D82BE0](v102);
      v211 = v103;
      hidingPreferredDescriptor2 = [*(v202 + 39) hidingPreferredDescriptor];
      if (hidingPreferredDescriptor2)
      {
        v67 = v111;
      }

      else
      {
        v67 = v110;
      }

      v104 = v67;
      v68 = v67;
      v105 = v104;
      v106 = MEMORY[0x277D82BE0](v105);
      v210 = v106;
      hiddenPreferredStatefulDescriptor2 = [*(v202 + 39) hiddenPreferredStatefulDescriptor];
      updateName5 = [hiddenPreferredStatefulDescriptor2 updateName];
      v109 = MEMORY[0x277D82BE0](updateName5);
      v209 = v109;
      hidingAlternateDescriptor2 = [*(v202 + 39) hidingAlternateDescriptor];
      if (hidingAlternateDescriptor2)
      {
        v69 = v111;
      }

      else
      {
        v69 = v110;
      }

      v112 = v69;
      v70 = v69;
      v113 = v112;
      v114 = MEMORY[0x277D82BE0](v113);
      v208 = v114;
      hiddenAlternateStatefulDescriptor2 = [*(v202 + 39) hiddenAlternateStatefulDescriptor];
      updateName6 = [hiddenAlternateStatefulDescriptor2 updateName];
      v117 = MEMORY[0x277D82BE0](updateName6);
      v207 = v117;
      enrolledBetaProgram3 = [*(v202 + 39) enrolledBetaProgram];
      v205 = 0;
      if (enrolledBetaProgram3)
      {
        enrolledBetaProgram4 = [*(v202 + 39) enrolledBetaProgram];
        v205 = 1;
        programID2 = [enrolledBetaProgram4 programID];
      }

      else
      {
        programID2 = 0;
      }

      v71 = v106;
      v72 = v103;
      v73 = v100;
      v74 = currentDownload6;
      v75 = v97;
      v76 = alternateStatefulDescriptor2;
      v77 = preferredStatefulDescriptor2;
      v78 = scanError2;
      v87 = programID2;
      v88 = [*(*(v202 + 39) + 120) count];
      canEnrollInBetaUpdates2 = [*(v202 + 39) canEnrollInBetaUpdates];
      if (canEnrollInBetaUpdates2)
      {
        v79 = @"YES";
      }

      else
      {
        v79 = @"NO";
      }

      v86 = v79;
      v80 = v79;
      v95 = v86;
      v89 = MEMORY[0x277D82BE0](v95);
      v204 = v89;
      v90 = *(*(v202 + 39) + 168);
      v91 = *(*(v202 + 39) + 176);
      v92 = *(*(v202 + 39) + 184);
      v81 = [*(*(v202 + 39) + 192) count];
      v93 = &v83;
      v94 = v258;
      __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v258, v199, v132, v134, v136, currentState2, v122, delegate5, v78, v77, v76, v75, v74, v73, v72, v71, v109, v114, v117, v87, v88, v89, v90, v91, v92, v81);
      _os_log_impl(&dword_26ADE5000, v130, v131[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA full-scan operation is already running. Skipping on this full-scan request.", v94, 0xFCu);
      MEMORY[0x277D82BD8](v95);
      if (v205)
      {
        MEMORY[0x277D82BD8](enrolledBetaProgram4);
      }

      MEMORY[0x277D82BD8](enrolledBetaProgram3);
      MEMORY[0x277D82BD8](updateName6);
      MEMORY[0x277D82BD8](hiddenAlternateStatefulDescriptor2);
      MEMORY[0x277D82BD8](v113);
      MEMORY[0x277D82BD8](updateName5);
      MEMORY[0x277D82BD8](hiddenPreferredStatefulDescriptor2);
      MEMORY[0x277D82BD8](v105);
      MEMORY[0x277D82BD8](v102);
      MEMORY[0x277D82BD8](v99);
      MEMORY[0x277D82BD8](currentDownload6);
      if (v213)
      {
        MEMORY[0x277D82BD8](updateName4);
      }

      if (v215)
      {
        MEMORY[0x277D82BD8](descriptor2);
      }

      if (v217)
      {
        MEMORY[0x277D82BD8](currentDownload5);
      }

      MEMORY[0x277D82BD8](currentDownload4);
      MEMORY[0x277D82BD8](alternateStatefulDescriptor2);
      MEMORY[0x277D82BD8](preferredStatefulDescriptor2);
      MEMORY[0x277D82BD8](scanError2);
      MEMORY[0x277D82BD8](delegate5);
      if (v219)
      {
        MEMORY[0x277D82BD8](*v202);
      }

      if (v221)
      {
        MEMORY[0x277D82BD8](*(v202 + 2));
      }

      MEMORY[0x277D82BD8](delegate3);
      MEMORY[0x277D82BD8](v135);
      MEMORY[0x277D82BD8](v133);
      v85 = 0;
      objc_storeStrong(&v204, 0);
      objc_storeStrong(&v207, v85);
      objc_storeStrong(&v208, v85);
      objc_storeStrong(&v209, v85);
      objc_storeStrong(&v210, v85);
      objc_storeStrong(&v211, v85);
      objc_storeStrong(&v212, v85);
      objc_storeStrong(&v222, v85);
      objc_storeStrong(&v223, v85);
    }

    objc_storeStrong(&v225, 0);
    *(v202 + 40) = 0;
    v203 = 1;
  }

  else
  {
    [*(v202 + 39) performFullScan:*(v202 + 37)];
    *(v202 + 40) = 0;
    v203 = 1;
  }

  v84 = 0;
  objc_storeStrong(v247, 0);
  objc_storeStrong(location, v84);
  return *(v202 + 40);
}

- (int64_t)fsmAction_ReportUpdatesAvailable:(id)available error:(id *)error
{
  errorCopy = error;
  v139 = "[SUUIStatefulUIManager fsmAction_ReportUpdatesAvailable:error:]";
  v182 = *MEMORY[0x277D85DE8];
  val = self;
  v175 = a2;
  location = 0;
  objc_storeStrong(&location, available);
  oslog[1] = errorCopy;
  extendedStateQueue = [*(val + 25) extendedStateQueue];
  v136 = extendedStateQueue;
  dispatch_assert_queue_V2(v136);
  MEMORY[0x277D82BD8](v136);
  v135 = +[SUUILoggingContext statefulUILogger];
  v133 = v135;
  oslog = [v133 oslog];
  oslog[0] = oslog;
  MEMORY[0x277D82BD8](v133);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    *v130 = type;
    v131 = val;
    aClass = objc_opt_class();
    v128 = NSStringFromClass(aClass);
    v125 = v128;
    v126 = MEMORY[0x277D82BE0](v125);
    v171 = v126;
    v127 = SUUIStatefulUIStateToString(*(val + 5));
    v122 = v127;
    v123 = MEMORY[0x277D82BE0](v122);
    v170 = v123;
    currentState = [val currentState];
    delegate = [val delegate];
    v120 = delegate;
    v168 = 0;
    v166 = 0;
    if (v120)
    {
      delegate2 = [val delegate];
      v169 = delegate2;
      v168 = 1;
      v118 = objc_opt_class();
      v117 = NSStringFromClass(v118);
      v167 = v117;
      v166 = 1;
      v116 = v167;
    }

    else
    {
      v116 = @"(null)";
    }

    v114 = v116;
    delegate3 = [val delegate];
    v112 = delegate3;
    scanError = [val scanError];
    v110 = scanError;
    preferredStatefulDescriptor = [val preferredStatefulDescriptor];
    v108 = preferredStatefulDescriptor;
    alternateStatefulDescriptor = [val alternateStatefulDescriptor];
    v106 = alternateStatefulDescriptor;
    currentDownload = [val currentDownload];
    v105 = currentDownload;
    v164 = 0;
    v162 = 0;
    v160 = 0;
    if (v105)
    {
      currentDownload2 = [val currentDownload];
      v165 = currentDownload2;
      v164 = 1;
      descriptor = [v165 descriptor];
      v163 = descriptor;
      v162 = 1;
      updateName = [v163 updateName];
      v161 = updateName;
      v160 = 1;
      v101 = v161;
    }

    else
    {
      v101 = @"(null)";
    }

    v99 = v101;
    currentDownload3 = [val currentDownload];
    v97 = currentDownload3;
    currentUpdateOperationType = [val currentUpdateOperationType];
    v96 = SUUIUpdateContinuousOperationTypeToString(currentUpdateOperationType);
    v93 = v96;
    v94 = MEMORY[0x277D82BE0](v93);
    v159 = v94;
    isTargetedUpdateScheduledForAutoInstall = [val isTargetedUpdateScheduledForAutoInstall];
    v180 = isTargetedUpdateScheduledForAutoInstall;
    if (isTargetedUpdateScheduledForAutoInstall)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v92 = v4;
    v5 = v4;
    v89 = v92;
    v90 = MEMORY[0x277D82BE0](v89);
    v158 = v90;
    hidingPreferredDescriptor = [val hidingPreferredDescriptor];
    v179 = hidingPreferredDescriptor;
    if (hidingPreferredDescriptor)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v88 = v6;
    v7 = v6;
    v85 = v88;
    v86 = MEMORY[0x277D82BE0](v85);
    v157 = v86;
    hiddenPreferredStatefulDescriptor = [val hiddenPreferredStatefulDescriptor];
    v83 = hiddenPreferredStatefulDescriptor;
    updateName2 = [v83 updateName];
    v80 = updateName2;
    v81 = MEMORY[0x277D82BE0](v80);
    v156 = v81;
    hidingAlternateDescriptor = [val hidingAlternateDescriptor];
    v178 = hidingAlternateDescriptor;
    if (hidingAlternateDescriptor)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v79 = v8;
    v9 = v8;
    v76 = v79;
    v77 = MEMORY[0x277D82BE0](v76);
    v155 = v77;
    hiddenAlternateStatefulDescriptor = [val hiddenAlternateStatefulDescriptor];
    v74 = hiddenAlternateStatefulDescriptor;
    updateName3 = [v74 updateName];
    v71 = updateName3;
    v72 = MEMORY[0x277D82BE0](v71);
    v154 = v72;
    enrolledBetaProgram = [val enrolledBetaProgram];
    v70 = enrolledBetaProgram;
    v152 = 0;
    if (v70)
    {
      enrolledBetaProgram2 = [val enrolledBetaProgram];
      v153 = enrolledBetaProgram2;
      v152 = 1;
      programID = [v153 programID];
      v67 = programID;
    }

    else
    {
      v67 = 0;
    }

    v65 = v67;
    v66 = [*(val + 15) count];
    canEnrollInBetaUpdates = [val canEnrollInBetaUpdates];
    v177 = canEnrollInBetaUpdates;
    if (canEnrollInBetaUpdates)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v63 = v10;
    v11 = v10;
    v57 = v63;
    v58 = MEMORY[0x277D82BE0](v57);
    v151 = v58;
    v59 = *(val + 21);
    v60 = *(val + 22);
    v61 = *(val + 23);
    v62 = [*(val + 24) count];
    fullScanResults = [location fullScanResults];
    v54 = fullScanResults;
    preferredDescriptor = [v54 preferredDescriptor];
    v52 = preferredDescriptor;
    updateName4 = [v52 updateName];
    v49 = updateName4;
    v50 = MEMORY[0x277D82BE0](v49);
    v150 = v50;
    fullScanResults2 = [location fullScanResults];
    v47 = fullScanResults2;
    preferredDescriptor2 = [v47 preferredDescriptor];
    v45 = preferredDescriptor2;
    fullScanResults3 = [location fullScanResults];
    v43 = fullScanResults3;
    alternateDescriptor = [v43 alternateDescriptor];
    v41 = alternateDescriptor;
    updateName5 = [v41 updateName];
    v38 = updateName5;
    v39 = MEMORY[0x277D82BE0](v38);
    v149 = v39;
    fullScanResults4 = [location fullScanResults];
    v36 = fullScanResults4;
    alternateDescriptor2 = [v36 alternateDescriptor];
    v35 = alternateDescriptor2;
    v33 = &v13;
    buf = v181;
    __os_log_helper_16_2_29_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_0_8_66_8_0(v181, v139, v131, v126, v123, currentState, v114, v112, v110, v108, v106, v99, v97, v94, v90, v86, v81, v77, v72, v65, v66, v58, v59, v60, v61, v62, v50, v45, v39, v35);
    _os_log_impl(&dword_26ADE5000, log, v130[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nReporting on available updates:\n\tPreferred update: %{public}@ (%p)\n\tAlternate update: %{public}@ (%p)", buf, 0x124u);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v57);
    if (v152)
    {
      MEMORY[0x277D82BD8](v153);
    }

    MEMORY[0x277D82BD8](v70);
    MEMORY[0x277D82BD8](v71);
    MEMORY[0x277D82BD8](v74);
    MEMORY[0x277D82BD8](v76);
    MEMORY[0x277D82BD8](v80);
    MEMORY[0x277D82BD8](v83);
    MEMORY[0x277D82BD8](v85);
    MEMORY[0x277D82BD8](v89);
    MEMORY[0x277D82BD8](v93);
    MEMORY[0x277D82BD8](v97);
    if (v160)
    {
      MEMORY[0x277D82BD8](v161);
    }

    if (v162)
    {
      MEMORY[0x277D82BD8](v163);
    }

    if (v164)
    {
      MEMORY[0x277D82BD8](v165);
    }

    MEMORY[0x277D82BD8](v105);
    MEMORY[0x277D82BD8](v106);
    MEMORY[0x277D82BD8](v108);
    MEMORY[0x277D82BD8](v110);
    MEMORY[0x277D82BD8](v112);
    if (v166)
    {
      MEMORY[0x277D82BD8](v167);
    }

    if (v168)
    {
      MEMORY[0x277D82BD8](v169);
    }

    MEMORY[0x277D82BD8](v120);
    MEMORY[0x277D82BD8](v122);
    MEMORY[0x277D82BD8](v125);
    objc_storeStrong(&v149, 0);
    objc_storeStrong(&v150, 0);
    objc_storeStrong(&v151, 0);
    objc_storeStrong(&v154, 0);
    objc_storeStrong(&v155, 0);
    objc_storeStrong(&v156, 0);
    objc_storeStrong(&v157, 0);
    objc_storeStrong(&v158, 0);
    objc_storeStrong(&v159, 0);
    objc_storeStrong(&v170, 0);
    objc_storeStrong(&v171, 0);
  }

  objc_storeStrong(oslog, 0);
  [val setCurrentFullScanOperation:0];
  [val setCurrentRefreshScanOperation:0];
  v31 = val;
  fullScanResults5 = [location fullScanResults];
  v29 = fullScanResults5;
  error = [location error];
  v28 = error;
  [v31 notifyFullScanResultsDelegates:v29 andError:?];
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  delegate4 = [val delegate];
  v26 = delegate4;
  objc_initWeak(&v148, v26);
  MEMORY[0x277D82BD8](v26);
  v25 = objc_loadWeakRetained(&v148);
  MEMORY[0x277D82BD8](v25);
  if (v25)
  {
    v24 = objc_loadWeakRetained(&v148);
    v23 = objc_opt_respondsToSelector();
    MEMORY[0x277D82BD8](v24);
    if (v23)
    {
      objc_initWeak(&from, val);
      mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
      v20 = mEMORY[0x277D643F8];
      delegateCallbackQueue = [val delegateCallbackQueue];
      v18 = delegateCallbackQueue;
      v19 = [v20 selectDelegateCallbackQueue:?];
      queue = v19;
      v140 = MEMORY[0x277D85DD0];
      v141 = -1073741824;
      v142 = 0;
      v143 = __64__SUUIStatefulUIManager_fsmAction_ReportUpdatesAvailable_error___block_invoke;
      v144 = &unk_279CC6368;
      v17 = v146;
      objc_copyWeak(v146, &from);
      block = &v140;
      v146[1] = v175;
      v14 = &v145;
      v145 = MEMORY[0x277D82BE0](location);
      dispatch_async(queue, block);
      MEMORY[0x277D82BD8](queue);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v20);
      objc_storeStrong(v14, 0);
      objc_destroyWeak(v17);
      objc_destroyWeak(&from);
    }
  }

  objc_destroyWeak(&v148);
  objc_storeStrong(&location, 0);
  return 0;
}

void __64__SUUIStatefulUIManager_fsmAction_ReportUpdatesAvailable_error___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v13[2] = a1;
  v13[1] = a1;
  v13[0] = objc_loadWeakRetained((a1 + 40));
  v8 = 0;
  if (!v13[0])
  {
    v7 = +[SUUILoggingContext softwareUpdateUILogger];
    v12 = [v7 oslog];
    MEMORY[0x277D82BD8](v7);
    v11 = 16;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      log = v12;
      type = v11;
      v6 = NSStringFromSelector(*(a1 + 48));
      v10 = MEMORY[0x277D82BE0](v6);
      __os_log_helper_16_2_2_8_32_8_66(v14, "[SUUIStatefulUIManager fsmAction_ReportUpdatesAvailable:error:]_block_invoke", v10);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v14, 0x16u);
      MEMORY[0x277D82BD8](v6);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    v3 = [v13[0] delegate];
    v1 = v13[0];
    v2 = [*(a1 + 32) fullScanResults];
    [v3 statefulUIManager:v1 didFinishScanningForUpdatesWithResults:?];
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(v13, 0);
}

- (int64_t)fsmAction_ReportNoUpdateFound:(id)found error:(id *)error
{
  errorCopy = error;
  v117 = "[SUUIStatefulUIManager fsmAction_ReportNoUpdateFound:error:]";
  v158 = *MEMORY[0x277D85DE8];
  val = self;
  v151 = a2;
  location = 0;
  objc_storeStrong(&location, found);
  oslog[1] = errorCopy;
  extendedStateQueue = [*(val + 25) extendedStateQueue];
  v114 = extendedStateQueue;
  dispatch_assert_queue_V2(v114);
  MEMORY[0x277D82BD8](v114);
  v113 = +[SUUILoggingContext statefulUILogger];
  v111 = v113;
  oslog = [v111 oslog];
  oslog[0] = oslog;
  MEMORY[0x277D82BD8](v111);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    *v108 = type;
    v109 = val;
    aClass = objc_opt_class();
    v106 = NSStringFromClass(aClass);
    v103 = v106;
    v104 = MEMORY[0x277D82BE0](v103);
    v147 = v104;
    v105 = SUUIStatefulUIStateToString(*(val + 5));
    v100 = v105;
    v101 = MEMORY[0x277D82BE0](v100);
    v146 = v101;
    currentState = [val currentState];
    delegate = [val delegate];
    v98 = delegate;
    v144 = 0;
    v142 = 0;
    if (v98)
    {
      delegate2 = [val delegate];
      v145 = delegate2;
      v144 = 1;
      v96 = objc_opt_class();
      v95 = NSStringFromClass(v96);
      v143 = v95;
      v142 = 1;
      v94 = v143;
    }

    else
    {
      v94 = @"(null)";
    }

    v92 = v94;
    delegate3 = [val delegate];
    v90 = delegate3;
    scanError = [val scanError];
    v88 = scanError;
    preferredStatefulDescriptor = [val preferredStatefulDescriptor];
    v86 = preferredStatefulDescriptor;
    alternateStatefulDescriptor = [val alternateStatefulDescriptor];
    v84 = alternateStatefulDescriptor;
    currentDownload = [val currentDownload];
    v83 = currentDownload;
    v140 = 0;
    v138 = 0;
    v136 = 0;
    if (v83)
    {
      currentDownload2 = [val currentDownload];
      v141 = currentDownload2;
      v140 = 1;
      descriptor = [v141 descriptor];
      v139 = descriptor;
      v138 = 1;
      updateName = [v139 updateName];
      v137 = updateName;
      v136 = 1;
      v79 = v137;
    }

    else
    {
      v79 = @"(null)";
    }

    v77 = v79;
    currentDownload3 = [val currentDownload];
    v75 = currentDownload3;
    currentUpdateOperationType = [val currentUpdateOperationType];
    v74 = SUUIUpdateContinuousOperationTypeToString(currentUpdateOperationType);
    v71 = v74;
    v72 = MEMORY[0x277D82BE0](v71);
    v135 = v72;
    isTargetedUpdateScheduledForAutoInstall = [val isTargetedUpdateScheduledForAutoInstall];
    v156 = isTargetedUpdateScheduledForAutoInstall;
    if (isTargetedUpdateScheduledForAutoInstall)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v70 = v4;
    v5 = v4;
    v67 = v70;
    v68 = MEMORY[0x277D82BE0](v67);
    v134 = v68;
    hidingPreferredDescriptor = [val hidingPreferredDescriptor];
    v155 = hidingPreferredDescriptor;
    if (hidingPreferredDescriptor)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v66 = v6;
    v7 = v6;
    v63 = v66;
    v64 = MEMORY[0x277D82BE0](v63);
    v133 = v64;
    hiddenPreferredStatefulDescriptor = [val hiddenPreferredStatefulDescriptor];
    v61 = hiddenPreferredStatefulDescriptor;
    updateName2 = [v61 updateName];
    v58 = updateName2;
    v59 = MEMORY[0x277D82BE0](v58);
    v132 = v59;
    hidingAlternateDescriptor = [val hidingAlternateDescriptor];
    v154 = hidingAlternateDescriptor;
    if (hidingAlternateDescriptor)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v57 = v8;
    v9 = v8;
    v54 = v57;
    v55 = MEMORY[0x277D82BE0](v54);
    v131 = v55;
    hiddenAlternateStatefulDescriptor = [val hiddenAlternateStatefulDescriptor];
    v52 = hiddenAlternateStatefulDescriptor;
    updateName3 = [v52 updateName];
    v49 = updateName3;
    v50 = MEMORY[0x277D82BE0](v49);
    v130 = v50;
    enrolledBetaProgram = [val enrolledBetaProgram];
    v48 = enrolledBetaProgram;
    v128 = 0;
    if (v48)
    {
      enrolledBetaProgram2 = [val enrolledBetaProgram];
      v129 = enrolledBetaProgram2;
      v128 = 1;
      programID = [v129 programID];
      v45 = programID;
    }

    else
    {
      v45 = 0;
    }

    v43 = v45;
    v44 = [*(val + 15) count];
    canEnrollInBetaUpdates = [val canEnrollInBetaUpdates];
    v153 = canEnrollInBetaUpdates;
    if (canEnrollInBetaUpdates)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v41 = v10;
    v11 = v10;
    v35 = v41;
    v36 = MEMORY[0x277D82BE0](v35);
    v127 = v36;
    v37 = *(val + 21);
    v38 = *(val + 22);
    v39 = *(val + 23);
    v40 = [*(val + 24) count];
    v33 = &v13;
    buf = v157;
    __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v157, v117, v109, v104, v101, currentState, v92, v90, v88, v86, v84, v77, v75, v72, v68, v64, v59, v55, v50, v43, v44, v36, v37, v38, v39, v40);
    _os_log_impl(&dword_26ADE5000, log, v108[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\n", buf, 0xFCu);
    MEMORY[0x277D82BD8](v35);
    if (v128)
    {
      MEMORY[0x277D82BD8](v129);
    }

    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v63);
    MEMORY[0x277D82BD8](v67);
    MEMORY[0x277D82BD8](v71);
    MEMORY[0x277D82BD8](v75);
    if (v136)
    {
      MEMORY[0x277D82BD8](v137);
    }

    if (v138)
    {
      MEMORY[0x277D82BD8](v139);
    }

    if (v140)
    {
      MEMORY[0x277D82BD8](v141);
    }

    MEMORY[0x277D82BD8](v83);
    MEMORY[0x277D82BD8](v84);
    MEMORY[0x277D82BD8](v86);
    MEMORY[0x277D82BD8](v88);
    MEMORY[0x277D82BD8](v90);
    if (v142)
    {
      MEMORY[0x277D82BD8](v143);
    }

    if (v144)
    {
      MEMORY[0x277D82BD8](v145);
    }

    MEMORY[0x277D82BD8](v98);
    MEMORY[0x277D82BD8](v100);
    MEMORY[0x277D82BD8](v103);
    objc_storeStrong(&v127, 0);
    objc_storeStrong(&v130, 0);
    objc_storeStrong(&v131, 0);
    objc_storeStrong(&v132, 0);
    objc_storeStrong(&v133, 0);
    objc_storeStrong(&v134, 0);
    objc_storeStrong(&v135, 0);
    objc_storeStrong(&v146, 0);
    objc_storeStrong(&v147, 0);
  }

  objc_storeStrong(oslog, 0);
  [val setCurrentFullScanOperation:0];
  [val setCurrentRefreshScanOperation:0];
  v31 = val;
  fullScanResults = [location fullScanResults];
  v29 = fullScanResults;
  error = [location error];
  v28 = error;
  [v31 notifyFullScanResultsDelegates:v29 andError:?];
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  delegate4 = [val delegate];
  v26 = delegate4;
  objc_initWeak(&v126, v26);
  MEMORY[0x277D82BD8](v26);
  v25 = objc_loadWeakRetained(&v126);
  MEMORY[0x277D82BD8](v25);
  if (v25)
  {
    v24 = objc_loadWeakRetained(&v126);
    v23 = objc_opt_respondsToSelector();
    MEMORY[0x277D82BD8](v24);
    if (v23)
    {
      objc_initWeak(&from, val);
      mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
      v20 = mEMORY[0x277D643F8];
      delegateCallbackQueue = [val delegateCallbackQueue];
      v18 = delegateCallbackQueue;
      v19 = [v20 selectDelegateCallbackQueue:?];
      queue = v19;
      v118 = MEMORY[0x277D85DD0];
      v119 = -1073741824;
      v120 = 0;
      v121 = __61__SUUIStatefulUIManager_fsmAction_ReportNoUpdateFound_error___block_invoke;
      v122 = &unk_279CC6368;
      v17 = v124;
      objc_copyWeak(v124, &from);
      block = &v118;
      v124[1] = v151;
      v14 = &v123;
      v123 = MEMORY[0x277D82BE0](location);
      dispatch_async(queue, block);
      MEMORY[0x277D82BD8](queue);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v20);
      objc_storeStrong(v14, 0);
      objc_destroyWeak(v17);
      objc_destroyWeak(&from);
    }
  }

  objc_destroyWeak(&v126);
  objc_storeStrong(&location, 0);
  return 0;
}

void __61__SUUIStatefulUIManager_fsmAction_ReportNoUpdateFound_error___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v13[2] = a1;
  v13[1] = a1;
  v13[0] = objc_loadWeakRetained((a1 + 40));
  v8 = 0;
  if (!v13[0])
  {
    v7 = +[SUUILoggingContext softwareUpdateUILogger];
    v12 = [v7 oslog];
    MEMORY[0x277D82BD8](v7);
    v11 = 16;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      log = v12;
      type = v11;
      v6 = NSStringFromSelector(*(a1 + 48));
      v10 = MEMORY[0x277D82BE0](v6);
      __os_log_helper_16_2_2_8_32_8_66(v14, "[SUUIStatefulUIManager fsmAction_ReportNoUpdateFound:error:]_block_invoke", v10);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v14, 0x16u);
      MEMORY[0x277D82BD8](v6);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
    v8 = 1;
  }

  if ((v8 & 1) == 0)
  {
    v3 = [v13[0] delegate];
    v1 = v13[0];
    v2 = [*(a1 + 32) fullScanResults];
    [v3 statefulUIManager:v1 didFinishScanningForUpdatesWithResults:?];
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(v13, 0);
}

- (int64_t)fsmAction_ReportScanFailed:(id)failed error:(id *)error
{
  errorCopy = error;
  v117 = "[SUUIStatefulUIManager fsmAction_ReportScanFailed:error:]";
  v158 = *MEMORY[0x277D85DE8];
  val = self;
  v151 = a2;
  location = 0;
  objc_storeStrong(&location, failed);
  oslog[1] = errorCopy;
  extendedStateQueue = [*(val + 25) extendedStateQueue];
  v114 = extendedStateQueue;
  dispatch_assert_queue_V2(v114);
  MEMORY[0x277D82BD8](v114);
  v113 = +[SUUILoggingContext statefulUILogger];
  v111 = v113;
  oslog = [v111 oslog];
  oslog[0] = oslog;
  MEMORY[0x277D82BD8](v111);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    log = oslog[0];
    *v108 = type;
    v109 = val;
    aClass = objc_opt_class();
    v106 = NSStringFromClass(aClass);
    v103 = v106;
    v104 = MEMORY[0x277D82BE0](v103);
    v147 = v104;
    v105 = SUUIStatefulUIStateToString(*(val + 5));
    v100 = v105;
    v101 = MEMORY[0x277D82BE0](v100);
    v146 = v101;
    currentState = [val currentState];
    delegate = [val delegate];
    v98 = delegate;
    v144 = 0;
    v142 = 0;
    if (v98)
    {
      delegate2 = [val delegate];
      v145 = delegate2;
      v144 = 1;
      v96 = objc_opt_class();
      v95 = NSStringFromClass(v96);
      v143 = v95;
      v142 = 1;
      v94 = v143;
    }

    else
    {
      v94 = @"(null)";
    }

    v92 = v94;
    delegate3 = [val delegate];
    v90 = delegate3;
    scanError = [val scanError];
    v88 = scanError;
    preferredStatefulDescriptor = [val preferredStatefulDescriptor];
    v86 = preferredStatefulDescriptor;
    alternateStatefulDescriptor = [val alternateStatefulDescriptor];
    v84 = alternateStatefulDescriptor;
    currentDownload = [val currentDownload];
    v83 = currentDownload;
    v140 = 0;
    v138 = 0;
    v136 = 0;
    if (v83)
    {
      currentDownload2 = [val currentDownload];
      v141 = currentDownload2;
      v140 = 1;
      descriptor = [v141 descriptor];
      v139 = descriptor;
      v138 = 1;
      updateName = [v139 updateName];
      v137 = updateName;
      v136 = 1;
      v79 = v137;
    }

    else
    {
      v79 = @"(null)";
    }

    v77 = v79;
    currentDownload3 = [val currentDownload];
    v75 = currentDownload3;
    currentUpdateOperationType = [val currentUpdateOperationType];
    v74 = SUUIUpdateContinuousOperationTypeToString(currentUpdateOperationType);
    v71 = v74;
    v72 = MEMORY[0x277D82BE0](v71);
    v135 = v72;
    isTargetedUpdateScheduledForAutoInstall = [val isTargetedUpdateScheduledForAutoInstall];
    v156 = isTargetedUpdateScheduledForAutoInstall;
    if (isTargetedUpdateScheduledForAutoInstall)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v70 = v4;
    v5 = v4;
    v67 = v70;
    v68 = MEMORY[0x277D82BE0](v67);
    v134 = v68;
    hidingPreferredDescriptor = [val hidingPreferredDescriptor];
    v155 = hidingPreferredDescriptor;
    if (hidingPreferredDescriptor)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v66 = v6;
    v7 = v6;
    v63 = v66;
    v64 = MEMORY[0x277D82BE0](v63);
    v133 = v64;
    hiddenPreferredStatefulDescriptor = [val hiddenPreferredStatefulDescriptor];
    v61 = hiddenPreferredStatefulDescriptor;
    updateName2 = [v61 updateName];
    v58 = updateName2;
    v59 = MEMORY[0x277D82BE0](v58);
    v132 = v59;
    hidingAlternateDescriptor = [val hidingAlternateDescriptor];
    v154 = hidingAlternateDescriptor;
    if (hidingAlternateDescriptor)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v57 = v8;
    v9 = v8;
    v54 = v57;
    v55 = MEMORY[0x277D82BE0](v54);
    v131 = v55;
    hiddenAlternateStatefulDescriptor = [val hiddenAlternateStatefulDescriptor];
    v52 = hiddenAlternateStatefulDescriptor;
    updateName3 = [v52 updateName];
    v49 = updateName3;
    v50 = MEMORY[0x277D82BE0](v49);
    v130 = v50;
    enrolledBetaProgram = [val enrolledBetaProgram];
    v48 = enrolledBetaProgram;
    v128 = 0;
    if (v48)
    {
      enrolledBetaProgram2 = [val enrolledBetaProgram];
      v129 = enrolledBetaProgram2;
      v128 = 1;
      programID = [v129 programID];
      v45 = programID;
    }

    else
    {
      v45 = 0;
    }

    v43 = v45;
    v44 = [*(val + 15) count];
    canEnrollInBetaUpdates = [val canEnrollInBetaUpdates];
    v153 = canEnrollInBetaUpdates;
    if (canEnrollInBetaUpdates)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v41 = v10;
    v11 = v10;
    v35 = v41;
    v36 = MEMORY[0x277D82BE0](v35);
    v127 = v36;
    v37 = *(val + 21);
    v38 = *(val + 22);
    v39 = *(val + 23);
    v40 = [*(val + 24) count];
    v33 = &v13;
    buf = v157;
    __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v157, v117, v109, v104, v101, currentState, v92, v90, v88, v86, v84, v77, v75, v72, v68, v64, v59, v55, v50, v43, v44, v36, v37, v38, v39, v40);
    _os_log_impl(&dword_26ADE5000, log, v108[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\n", buf, 0xFCu);
    MEMORY[0x277D82BD8](v35);
    if (v128)
    {
      MEMORY[0x277D82BD8](v129);
    }

    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v63);
    MEMORY[0x277D82BD8](v67);
    MEMORY[0x277D82BD8](v71);
    MEMORY[0x277D82BD8](v75);
    if (v136)
    {
      MEMORY[0x277D82BD8](v137);
    }

    if (v138)
    {
      MEMORY[0x277D82BD8](v139);
    }

    if (v140)
    {
      MEMORY[0x277D82BD8](v141);
    }

    MEMORY[0x277D82BD8](v83);
    MEMORY[0x277D82BD8](v84);
    MEMORY[0x277D82BD8](v86);
    MEMORY[0x277D82BD8](v88);
    MEMORY[0x277D82BD8](v90);
    if (v142)
    {
      MEMORY[0x277D82BD8](v143);
    }

    if (v144)
    {
      MEMORY[0x277D82BD8](v145);
    }

    MEMORY[0x277D82BD8](v98);
    MEMORY[0x277D82BD8](v100);
    MEMORY[0x277D82BD8](v103);
    objc_storeStrong(&v127, 0);
    objc_storeStrong(&v130, 0);
    objc_storeStrong(&v131, 0);
    objc_storeStrong(&v132, 0);
    objc_storeStrong(&v133, 0);
    objc_storeStrong(&v134, 0);
    objc_storeStrong(&v135, 0);
    objc_storeStrong(&v146, 0);
    objc_storeStrong(&v147, 0);
  }

  objc_storeStrong(oslog, 0);
  [val setCurrentFullScanOperation:0];
  [val setCurrentRefreshScanOperation:0];
  v31 = val;
  fullScanResults = [location fullScanResults];
  v29 = fullScanResults;
  error = [location error];
  v28 = error;
  [v31 notifyFullScanResultsDelegates:v29 andError:?];
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  delegate4 = [val delegate];
  v26 = delegate4;
  objc_initWeak(&v126, v26);
  MEMORY[0x277D82BD8](v26);
  v25 = objc_loadWeakRetained(&v126);
  MEMORY[0x277D82BD8](v25);
  if (v25)
  {
    v24 = objc_loadWeakRetained(&v126);
    v23 = objc_opt_respondsToSelector();
    MEMORY[0x277D82BD8](v24);
    if (v23)
    {
      objc_initWeak(&from, val);
      mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
      v20 = mEMORY[0x277D643F8];
      delegateCallbackQueue = [val delegateCallbackQueue];
      v18 = delegateCallbackQueue;
      v19 = [v20 selectDelegateCallbackQueue:?];
      queue = v19;
      v118 = MEMORY[0x277D85DD0];
      v119 = -1073741824;
      v120 = 0;
      v121 = __58__SUUIStatefulUIManager_fsmAction_ReportScanFailed_error___block_invoke;
      v122 = &unk_279CC6368;
      v17 = v124;
      objc_copyWeak(v124, &from);
      block = &v118;
      v124[1] = v151;
      v14 = &v123;
      v123 = MEMORY[0x277D82BE0](location);
      dispatch_async(queue, block);
      MEMORY[0x277D82BD8](queue);
      MEMORY[0x277D82BD8](v18);
      MEMORY[0x277D82BD8](v20);
      objc_storeStrong(v14, 0);
      objc_destroyWeak(v17);
      objc_destroyWeak(&from);
    }
  }

  objc_destroyWeak(&v126);
  objc_storeStrong(&location, 0);
  return 0;
}

void __58__SUUIStatefulUIManager_fsmAction_ReportScanFailed_error___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v14[2] = a1;
  v14[1] = a1;
  v14[0] = objc_loadWeakRetained((a1 + 40));
  v6 = 0;
  if (!v14[0])
  {
    v5 = +[SUUILoggingContext softwareUpdateUILogger];
    v13 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v12 = 16;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      log = v13;
      type = v12;
      v4 = NSStringFromSelector(*(a1 + 48));
      v11 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v15, "[SUUIStatefulUIManager fsmAction_ReportScanFailed:error:]_block_invoke", v11);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v15, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v11, 0);
    }

    objc_storeStrong(&v13, 0);
    v10 = 1;
    v6 = 1;
  }

  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v8 = [*(a1 + 32) error];
    v1 = [v14[0] delegate];
    [v1 statefulUIManager:v14[0] didFailToScanForUpdatesWithError:v8];
    MEMORY[0x277D82BD8](v1);
    objc_storeStrong(&v8, 0);
    v9 = 0;
  }

  objc_storeStrong(v14, 0);
}

- (int64_t)fsmAction_RefreshScanResults:(id)results error:(id *)error
{
  errorCopy = error;
  v139 = "[SUUIStatefulUIManager fsmAction_RefreshScanResults:error:]";
  v203 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  oslog[1] = errorCopy;
  extendedStateQueue = [(SUCoreFSM *)selfCopy->_managerFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);
  MEMORY[0x277D82BD8](extendedStateQueue);
  currentRefreshScanOperation = [(SUUIStatefulUIManager *)selfCopy currentRefreshScanOperation];
  MEMORY[0x277D82BD8](currentRefreshScanOperation);
  if (currentRefreshScanOperation)
  {
    v138 = +[SUUILoggingContext statefulUILogger];
    oslog[0] = [v138 oslog];
    MEMORY[0x277D82BD8](v138);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      log = oslog[0];
      *v130 = type;
      v131 = selfCopy;
      v4 = objc_opt_class();
      v132 = NSStringFromClass(v4);
      v133 = MEMORY[0x277D82BE0](v132);
      v187 = v133;
      v134 = SUUIStatefulUIStateToString(selfCopy->_currentState);
      v135 = MEMORY[0x277D82BE0](v134);
      v186 = v135;
      currentState = [(SUUIStatefulUIManager *)selfCopy currentState];
      delegate = [(SUUIStatefulUIManager *)selfCopy delegate];
      v184 = 0;
      v182 = 0;
      if (delegate)
      {
        delegate2 = [(SUUIStatefulUIManager *)selfCopy delegate];
        v127 = 1;
        v184 = 1;
        v5 = objc_opt_class();
        v183 = NSStringFromClass(v5);
        v182 = 1;
        v128 = v183;
      }

      else
      {
        v128 = @"(null)";
      }

      v121 = v128;
      delegate3 = [(SUUIStatefulUIManager *)selfCopy delegate];
      scanError = [(SUUIStatefulUIManager *)selfCopy scanError];
      preferredStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy preferredStatefulDescriptor];
      alternateStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy alternateStatefulDescriptor];
      currentDownload = [(SUUIStatefulUIManager *)selfCopy currentDownload];
      v180 = 0;
      v178 = 0;
      v176 = 0;
      if (currentDownload)
      {
        currentDownload2 = [(SUUIStatefulUIManager *)selfCopy currentDownload];
        v119 = 1;
        v180 = 1;
        descriptor = [(SUUIDownload *)currentDownload2 descriptor];
        v178 = 1;
        updateName = [descriptor updateName];
        v176 = 1;
        v120 = updateName;
      }

      else
      {
        v120 = @"(null)";
      }

      v96 = v120;
      currentDownload3 = [(SUUIStatefulUIManager *)selfCopy currentDownload];
      v98 = SUUIUpdateContinuousOperationTypeToString([(SUUIStatefulUIManager *)selfCopy currentUpdateOperationType]);
      v99 = MEMORY[0x277D82BE0](v98);
      v175 = v99;
      isTargetedUpdateScheduledForAutoInstall = [(SUUIStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
      v109 = @"NO";
      v110 = @"YES";
      v117 = 1;
      if (isTargetedUpdateScheduledForAutoInstall)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v100 = v6;
      v7 = v6;
      v101 = v100;
      v102 = MEMORY[0x277D82BE0](v101);
      v174 = v102;
      if ([(SUUIStatefulUIManager *)selfCopy hidingPreferredDescriptor])
      {
        v8 = v110;
      }

      else
      {
        v8 = v109;
      }

      v103 = v8;
      v9 = v8;
      v104 = v103;
      v105 = MEMORY[0x277D82BE0](v104);
      v173 = v105;
      hiddenPreferredStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy hiddenPreferredStatefulDescriptor];
      updateName2 = [(SUUIStatefulDescriptor *)hiddenPreferredStatefulDescriptor updateName];
      v108 = MEMORY[0x277D82BE0](updateName2);
      v172 = v108;
      if ([(SUUIStatefulUIManager *)selfCopy hidingAlternateDescriptor])
      {
        v10 = v110;
      }

      else
      {
        v10 = v109;
      }

      v111 = v10;
      v11 = v10;
      v112 = v111;
      v113 = MEMORY[0x277D82BE0](v112);
      v171 = v113;
      hiddenAlternateStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy hiddenAlternateStatefulDescriptor];
      updateName3 = [(SUUIStatefulDescriptor *)hiddenAlternateStatefulDescriptor updateName];
      v116 = MEMORY[0x277D82BE0](updateName3);
      v170 = v116;
      enrolledBetaProgram = [(SUUIStatefulUIManager *)selfCopy enrolledBetaProgram];
      v168 = 0;
      if (enrolledBetaProgram)
      {
        enrolledBetaProgram2 = [(SUUIStatefulUIManager *)selfCopy enrolledBetaProgram];
        v168 = 1;
        programID = [(SDBetaProgram *)enrolledBetaProgram2 programID];
      }

      else
      {
        programID = 0;
      }

      v86 = programID;
      v87 = [(NSArray *)selfCopy->_betaPrograms count];
      if ([(SUUIStatefulUIManager *)selfCopy canEnrollInBetaUpdates])
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v85 = v12;
      v13 = v12;
      v94 = v85;
      v88 = MEMORY[0x277D82BE0](v94);
      v167 = v88;
      currentFullScanOperation = selfCopy->_currentFullScanOperation;
      currentRefreshScanOperation = selfCopy->_currentRefreshScanOperation;
      currentUpdateOperation = selfCopy->_currentUpdateOperation;
      v14 = [(NSMutableSet *)selfCopy->_auxiliaryOperations count];
      v92 = &v27;
      buf = v202;
      __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v202, v139, v131, v133, v135, currentState, v121, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v96, currentDownload3, v99, v102, v105, v108, v113, v116, v86, v87, v88, currentFullScanOperation, currentRefreshScanOperation, currentUpdateOperation, v14);
      _os_log_impl(&dword_26ADE5000, log, v130[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA refresh operation is already running. Skipping on this refresh request. This should never happen.", buf, 0xFCu);
      MEMORY[0x277D82BD8](v94);
      if (v168)
      {
        MEMORY[0x277D82BD8](enrolledBetaProgram2);
      }

      MEMORY[0x277D82BD8](enrolledBetaProgram);
      MEMORY[0x277D82BD8](updateName3);
      MEMORY[0x277D82BD8](hiddenAlternateStatefulDescriptor);
      MEMORY[0x277D82BD8](v112);
      MEMORY[0x277D82BD8](updateName2);
      MEMORY[0x277D82BD8](hiddenPreferredStatefulDescriptor);
      MEMORY[0x277D82BD8](v104);
      MEMORY[0x277D82BD8](v101);
      MEMORY[0x277D82BD8](v98);
      MEMORY[0x277D82BD8](currentDownload3);
      if (v176)
      {
        MEMORY[0x277D82BD8](updateName);
      }

      if (v178)
      {
        MEMORY[0x277D82BD8](descriptor);
      }

      if (v180)
      {
        MEMORY[0x277D82BD8](currentDownload2);
      }

      MEMORY[0x277D82BD8](currentDownload);
      MEMORY[0x277D82BD8](alternateStatefulDescriptor);
      MEMORY[0x277D82BD8](preferredStatefulDescriptor);
      MEMORY[0x277D82BD8](scanError);
      MEMORY[0x277D82BD8](delegate3);
      if (v182)
      {
        MEMORY[0x277D82BD8](v183);
      }

      if (v184)
      {
        MEMORY[0x277D82BD8](delegate2);
      }

      MEMORY[0x277D82BD8](delegate);
      MEMORY[0x277D82BD8](v134);
      MEMORY[0x277D82BD8](v132);
      obj = 0;
      objc_storeStrong(&v167, 0);
      objc_storeStrong(&v170, obj);
      objc_storeStrong(&v171, obj);
      objc_storeStrong(&v172, obj);
      objc_storeStrong(&v173, obj);
      objc_storeStrong(&v174, obj);
      objc_storeStrong(&v175, obj);
      objc_storeStrong(&v186, obj);
      objc_storeStrong(&v187, obj);
    }

    objc_storeStrong(oslog, 0);
    v192 = 0;
    v166 = 1;
  }

  else
  {
    currentFullScanOperation = [(SUUIStatefulUIManager *)selfCopy currentFullScanOperation];
    MEMORY[0x277D82BD8](currentFullScanOperation);
    if (currentFullScanOperation)
    {
      v82 = +[SUUILoggingContext statefulUILogger];
      oslog = [v82 oslog];
      MEMORY[0x277D82BD8](v82);
      v164 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v73 = oslog;
        *v74 = v164;
        v75 = selfCopy;
        v15 = objc_opt_class();
        v76 = NSStringFromClass(v15);
        v77 = MEMORY[0x277D82BE0](v76);
        v163 = v77;
        v78 = SUUIStatefulUIStateToString(selfCopy->_currentState);
        v79 = MEMORY[0x277D82BE0](v78);
        v162 = v79;
        currentState2 = [(SUUIStatefulUIManager *)selfCopy currentState];
        delegate4 = [(SUUIStatefulUIManager *)selfCopy delegate];
        v160 = 0;
        v158 = 0;
        if (delegate4)
        {
          delegate5 = [(SUUIStatefulUIManager *)selfCopy delegate];
          v71 = 1;
          v160 = 1;
          v16 = objc_opt_class();
          v159 = NSStringFromClass(v16);
          v158 = 1;
          v72 = v159;
        }

        else
        {
          v72 = @"(null)";
        }

        v65 = v72;
        delegate6 = [(SUUIStatefulUIManager *)selfCopy delegate];
        scanError2 = [(SUUIStatefulUIManager *)selfCopy scanError];
        preferredStatefulDescriptor2 = [(SUUIStatefulUIManager *)selfCopy preferredStatefulDescriptor];
        alternateStatefulDescriptor2 = [(SUUIStatefulUIManager *)selfCopy alternateStatefulDescriptor];
        currentDownload4 = [(SUUIStatefulUIManager *)selfCopy currentDownload];
        v156 = 0;
        v154 = 0;
        v152 = 0;
        if (currentDownload4)
        {
          currentDownload5 = [(SUUIStatefulUIManager *)selfCopy currentDownload];
          v63 = 1;
          v156 = 1;
          descriptor2 = [(SUUIDownload *)currentDownload5 descriptor];
          v154 = 1;
          updateName4 = [descriptor2 updateName];
          v152 = 1;
          v64 = updateName4;
        }

        else
        {
          v64 = @"(null)";
        }

        v40 = v64;
        currentDownload6 = [(SUUIStatefulUIManager *)selfCopy currentDownload];
        v42 = SUUIUpdateContinuousOperationTypeToString([(SUUIStatefulUIManager *)selfCopy currentUpdateOperationType]);
        v43 = MEMORY[0x277D82BE0](v42);
        v151 = v43;
        isTargetedUpdateScheduledForAutoInstall2 = [(SUUIStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
        v53 = @"NO";
        v54 = @"YES";
        v61 = 1;
        if (isTargetedUpdateScheduledForAutoInstall2)
        {
          v17 = @"YES";
        }

        else
        {
          v17 = @"NO";
        }

        v44 = v17;
        v18 = v17;
        v45 = v44;
        v46 = MEMORY[0x277D82BE0](v45);
        v150 = v46;
        if ([(SUUIStatefulUIManager *)selfCopy hidingPreferredDescriptor])
        {
          v19 = v54;
        }

        else
        {
          v19 = v53;
        }

        v47 = v19;
        v20 = v19;
        v48 = v47;
        v49 = MEMORY[0x277D82BE0](v48);
        v149 = v49;
        hiddenPreferredStatefulDescriptor2 = [(SUUIStatefulUIManager *)selfCopy hiddenPreferredStatefulDescriptor];
        updateName5 = [(SUUIStatefulDescriptor *)hiddenPreferredStatefulDescriptor2 updateName];
        v52 = MEMORY[0x277D82BE0](updateName5);
        v148 = v52;
        if ([(SUUIStatefulUIManager *)selfCopy hidingAlternateDescriptor])
        {
          v21 = v54;
        }

        else
        {
          v21 = v53;
        }

        v55 = v21;
        v22 = v21;
        v56 = v55;
        v57 = MEMORY[0x277D82BE0](v56);
        v147 = v57;
        hiddenAlternateStatefulDescriptor2 = [(SUUIStatefulUIManager *)selfCopy hiddenAlternateStatefulDescriptor];
        updateName6 = [(SUUIStatefulDescriptor *)hiddenAlternateStatefulDescriptor2 updateName];
        v60 = MEMORY[0x277D82BE0](updateName6);
        v146 = v60;
        enrolledBetaProgram3 = [(SUUIStatefulUIManager *)selfCopy enrolledBetaProgram];
        v144 = 0;
        if (enrolledBetaProgram3)
        {
          enrolledBetaProgram4 = [(SUUIStatefulUIManager *)selfCopy enrolledBetaProgram];
          v144 = 1;
          programID2 = [(SDBetaProgram *)enrolledBetaProgram4 programID];
        }

        else
        {
          programID2 = 0;
        }

        v30 = programID2;
        v31 = [(NSArray *)selfCopy->_betaPrograms count];
        if ([(SUUIStatefulUIManager *)selfCopy canEnrollInBetaUpdates])
        {
          v23 = @"YES";
        }

        else
        {
          v23 = @"NO";
        }

        v29 = v23;
        v24 = v23;
        v38 = v29;
        v32 = MEMORY[0x277D82BE0](v38);
        v143 = v32;
        v33 = selfCopy->_currentFullScanOperation;
        v34 = selfCopy->_currentRefreshScanOperation;
        v35 = selfCopy->_currentUpdateOperation;
        v25 = [(NSMutableSet *)selfCopy->_auxiliaryOperations count];
        v36 = &v27;
        v37 = v201;
        __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v201, v139, v75, v77, v79, currentState2, v65, delegate6, scanError2, preferredStatefulDescriptor2, alternateStatefulDescriptor2, v40, currentDownload6, v43, v46, v49, v52, v57, v60, v30, v31, v32, v33, v34, v35, v25);
        _os_log_impl(&dword_26ADE5000, v73, v74[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nA full scan operation is already running. Skipping on this refresh request. This should never happen.", v37, 0xFCu);
        MEMORY[0x277D82BD8](v38);
        if (v144)
        {
          MEMORY[0x277D82BD8](enrolledBetaProgram4);
        }

        MEMORY[0x277D82BD8](enrolledBetaProgram3);
        MEMORY[0x277D82BD8](updateName6);
        MEMORY[0x277D82BD8](hiddenAlternateStatefulDescriptor2);
        MEMORY[0x277D82BD8](v56);
        MEMORY[0x277D82BD8](updateName5);
        MEMORY[0x277D82BD8](hiddenPreferredStatefulDescriptor2);
        MEMORY[0x277D82BD8](v48);
        MEMORY[0x277D82BD8](v45);
        MEMORY[0x277D82BD8](v42);
        MEMORY[0x277D82BD8](currentDownload6);
        if (v152)
        {
          MEMORY[0x277D82BD8](updateName4);
        }

        if (v154)
        {
          MEMORY[0x277D82BD8](descriptor2);
        }

        if (v156)
        {
          MEMORY[0x277D82BD8](currentDownload5);
        }

        MEMORY[0x277D82BD8](currentDownload4);
        MEMORY[0x277D82BD8](alternateStatefulDescriptor2);
        MEMORY[0x277D82BD8](preferredStatefulDescriptor2);
        MEMORY[0x277D82BD8](scanError2);
        MEMORY[0x277D82BD8](delegate6);
        if (v158)
        {
          MEMORY[0x277D82BD8](v159);
        }

        if (v160)
        {
          MEMORY[0x277D82BD8](delegate5);
        }

        MEMORY[0x277D82BD8](delegate4);
        MEMORY[0x277D82BD8](v78);
        MEMORY[0x277D82BD8](v76);
        v28 = 0;
        objc_storeStrong(&v143, 0);
        objc_storeStrong(&v146, v28);
        objc_storeStrong(&v147, v28);
        objc_storeStrong(&v148, v28);
        objc_storeStrong(&v149, v28);
        objc_storeStrong(&v150, v28);
        objc_storeStrong(&v151, v28);
        objc_storeStrong(&v162, v28);
        objc_storeStrong(&v163, v28);
      }

      objc_storeStrong(&oslog, 0);
      v192 = 0;
      v166 = 1;
    }

    else
    {
      [(SUUIStatefulUIManager *)selfCopy performRefreshScan:location[0]];
      v192 = 0;
      v166 = 1;
    }
  }

  objc_storeStrong(location, 0);
  return v192;
}

- (int64_t)fsmAction_ReportRefreshScanResults:(id)results error:(id *)error
{
  errorCopy = error;
  v202 = "[SUUIStatefulUIManager fsmAction_ReportRefreshScanResults:error:]";
  v273 = *MEMORY[0x277D85DE8];
  val = self;
  v260 = a2;
  location = 0;
  objc_storeStrong(&location, results);
  from[1] = errorCopy;
  extendedStateQueue = [*(val + 25) extendedStateQueue];
  v199 = extendedStateQueue;
  dispatch_assert_queue_V2(v199);
  MEMORY[0x277D82BD8](v199);
  objc_initWeak(from, val);
  v256 = 0;
  currentState = [val currentState];
  refreshPreviousState = [location refreshPreviousState];
  v196 = 0;
  if (currentState == refreshPreviousState)
  {
    refreshHasAnyChanges = [location refreshHasAnyChanges];
    v196 = 0;
    if ((refreshHasAnyChanges & 1) == 0)
    {
      scanError = [val scanError];
      v257 = scanError;
      v256 = 1;
      v196 = v257 == 0;
    }
  }

  v193 = v196;
  if (v256)
  {
    MEMORY[0x277D82BD8](v257);
  }

  if (!v193)
  {
    goto LABEL_80;
  }

  forceReload = [location forceReload];
  if (forceReload)
  {
    v110 = +[SUUILoggingContext statefulUILogger];
    v108 = v110;
    oslog = [v108 oslog];
    v231 = oslog;
    MEMORY[0x277D82BD8](v108);
    v230 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
    {
      v104 = v231;
      *v105 = v230;
      v106 = val;
      v107 = objc_opt_class();
      v103 = NSStringFromClass(v107);
      v100 = v103;
      v101 = MEMORY[0x277D82BE0](v100);
      v229 = v101;
      v102 = SUUIStatefulUIStateToString(*(val + 5));
      v97 = v102;
      v98 = MEMORY[0x277D82BE0](v97);
      v228 = v98;
      currentState2 = [val currentState];
      v226 = 0;
      v224 = 0;
      delegate = [val delegate];
      v95 = delegate;
      if (v95)
      {
        delegate2 = [val delegate];
        v227 = delegate2;
        v226 = 1;
        v93 = objc_opt_class();
        v92 = NSStringFromClass(v93);
        v225 = v92;
        v224 = 1;
        v91 = v225;
      }

      else
      {
        v91 = @"(null)";
      }

      v89 = v91;
      delegate3 = [val delegate];
      v87 = delegate3;
      scanError2 = [val scanError];
      v85 = scanError2;
      preferredStatefulDescriptor = [val preferredStatefulDescriptor];
      v83 = preferredStatefulDescriptor;
      alternateStatefulDescriptor = [val alternateStatefulDescriptor];
      v81 = alternateStatefulDescriptor;
      v222 = 0;
      v220 = 0;
      v218 = 0;
      currentDownload = [val currentDownload];
      v80 = currentDownload;
      if (v80)
      {
        currentDownload2 = [val currentDownload];
        v223 = currentDownload2;
        v222 = 1;
        descriptor = [v223 descriptor];
        v221 = descriptor;
        v220 = 1;
        updateName = [v221 updateName];
        v219 = updateName;
        v218 = 1;
        v76 = v219;
      }

      else
      {
        v76 = @"(null)";
      }

      v74 = v76;
      currentDownload3 = [val currentDownload];
      v72 = currentDownload3;
      currentUpdateOperationType = [val currentUpdateOperationType];
      v71 = SUUIUpdateContinuousOperationTypeToString(currentUpdateOperationType);
      v68 = v71;
      v69 = MEMORY[0x277D82BE0](v68);
      v217 = v69;
      isTargetedUpdateScheduledForAutoInstall = [val isTargetedUpdateScheduledForAutoInstall];
      v266 = isTargetedUpdateScheduledForAutoInstall;
      if (isTargetedUpdateScheduledForAutoInstall)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v67 = v12;
      v13 = v12;
      v64 = v67;
      v65 = MEMORY[0x277D82BE0](v64);
      v216 = v65;
      hidingPreferredDescriptor = [val hidingPreferredDescriptor];
      v265 = hidingPreferredDescriptor;
      if (hidingPreferredDescriptor)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      v63 = v14;
      v15 = v14;
      v60 = v63;
      v61 = MEMORY[0x277D82BE0](v60);
      v215 = v61;
      hiddenPreferredStatefulDescriptor = [val hiddenPreferredStatefulDescriptor];
      v58 = hiddenPreferredStatefulDescriptor;
      updateName2 = [v58 updateName];
      v55 = updateName2;
      v56 = MEMORY[0x277D82BE0](v55);
      v214 = v56;
      hidingAlternateDescriptor = [val hidingAlternateDescriptor];
      v264 = hidingAlternateDescriptor;
      if (hidingAlternateDescriptor)
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      v54 = v16;
      v17 = v16;
      v51 = v54;
      v52 = MEMORY[0x277D82BE0](v51);
      v213 = v52;
      hiddenAlternateStatefulDescriptor = [val hiddenAlternateStatefulDescriptor];
      v49 = hiddenAlternateStatefulDescriptor;
      updateName3 = [v49 updateName];
      v46 = updateName3;
      v47 = MEMORY[0x277D82BE0](v46);
      v212 = v47;
      v210 = 0;
      enrolledBetaProgram = [val enrolledBetaProgram];
      v45 = enrolledBetaProgram;
      if (v45)
      {
        enrolledBetaProgram2 = [val enrolledBetaProgram];
        v211 = enrolledBetaProgram2;
        v210 = 1;
        programID = [v211 programID];
        v42 = programID;
      }

      else
      {
        v42 = 0;
      }

      v40 = v42;
      v41 = [*(val + 15) count];
      canEnrollInBetaUpdates = [val canEnrollInBetaUpdates];
      v263 = canEnrollInBetaUpdates;
      if (canEnrollInBetaUpdates)
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      v38 = v18;
      v19 = v18;
      v32 = v38;
      v33 = MEMORY[0x277D82BE0](v32);
      v209 = v33;
      v34 = *(val + 21);
      v35 = *(val + 22);
      v36 = *(val + 23);
      v37 = [*(val + 24) count];
      v30 = &v21;
      v31 = v271;
      __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v271, v202, v106, v101, v98, currentState2, v89, v87, v85, v83, v81, v74, v72, v69, v65, v61, v56, v52, v47, v40, v41, v33, v34, v35, v36, v37);
      _os_log_impl(&dword_26ADE5000, v104, v105[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nThe descriptors states and errors are identical to the previous values (refreshHasAnyChanges = YES). Force load was requested - proceeding to ask the delegate to reload the UI.", v31, 0xFCu);
      MEMORY[0x277D82BD8](v32);
      if (v210)
      {
        MEMORY[0x277D82BD8](v211);
      }

      MEMORY[0x277D82BD8](v45);
      MEMORY[0x277D82BD8](v46);
      MEMORY[0x277D82BD8](v49);
      MEMORY[0x277D82BD8](v51);
      MEMORY[0x277D82BD8](v55);
      MEMORY[0x277D82BD8](v58);
      MEMORY[0x277D82BD8](v60);
      MEMORY[0x277D82BD8](v64);
      MEMORY[0x277D82BD8](v68);
      MEMORY[0x277D82BD8](v72);
      if (v218)
      {
        MEMORY[0x277D82BD8](v219);
      }

      if (v220)
      {
        MEMORY[0x277D82BD8](v221);
      }

      if (v222)
      {
        MEMORY[0x277D82BD8](v223);
      }

      MEMORY[0x277D82BD8](v80);
      MEMORY[0x277D82BD8](v81);
      MEMORY[0x277D82BD8](v83);
      MEMORY[0x277D82BD8](v85);
      MEMORY[0x277D82BD8](v87);
      if (v224)
      {
        MEMORY[0x277D82BD8](v225);
      }

      if (v226)
      {
        MEMORY[0x277D82BD8](v227);
      }

      MEMORY[0x277D82BD8](v95);
      MEMORY[0x277D82BD8](v97);
      MEMORY[0x277D82BD8](v100);
      objc_storeStrong(&v209, 0);
      objc_storeStrong(&v212, 0);
      objc_storeStrong(&v213, 0);
      objc_storeStrong(&v214, 0);
      objc_storeStrong(&v215, 0);
      objc_storeStrong(&v216, 0);
      objc_storeStrong(&v217, 0);
      objc_storeStrong(&v228, 0);
      objc_storeStrong(&v229, 0);
    }

    objc_storeStrong(&v231, 0);
LABEL_80:
    [val setCurrentRefreshScanOperation:0];
    v28 = val;
    refreshScanResults = [location refreshScanResults];
    v26 = refreshScanResults;
    error = [location error];
    v25 = error;
    [v28 notifyRefreshScanResultsDelegates:v26 andError:?];
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    v22 = val;
    v23 = sel_statefulUIManagerDidRefreshState_;
    v203 = MEMORY[0x277D85DD0];
    v204 = -1073741824;
    v205 = 0;
    v206 = __66__SUUIStatefulUIManager_fsmAction_ReportRefreshScanResults_error___block_invoke;
    v207 = &unk_279CC63B8;
    v24 = v208;
    objc_copyWeak(v208, from);
    v208[1] = v260;
    [v22 executeOperationOnDelegate:v23 usingBlock:&v203];
    v262 = 0;
    v232 = 1;
    objc_destroyWeak(v24);
    goto LABEL_81;
  }

  v191 = +[SUUILoggingContext statefulUILogger];
  v189 = v191;
  oslog2 = [v189 oslog];
  oslog = oslog2;
  MEMORY[0x277D82BD8](v189);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v186 = type;
    v187 = val;
    aClass = objc_opt_class();
    v184 = NSStringFromClass(aClass);
    v181 = v184;
    v182 = MEMORY[0x277D82BE0](v181);
    v253 = v182;
    v183 = SUUIStatefulUIStateToString(*(val + 5));
    v178 = v183;
    v179 = MEMORY[0x277D82BE0](v178);
    v252 = v179;
    currentState3 = [val currentState];
    v250 = 0;
    v248 = 0;
    delegate4 = [val delegate];
    v176 = delegate4;
    if (v176)
    {
      delegate5 = [val delegate];
      v251 = delegate5;
      v250 = 1;
      v174 = objc_opt_class();
      v173 = NSStringFromClass(v174);
      v249 = v173;
      v248 = 1;
      v172 = v249;
    }

    else
    {
      v172 = @"(null)";
    }

    v170 = v172;
    delegate6 = [val delegate];
    v168 = delegate6;
    scanError3 = [val scanError];
    v166 = scanError3;
    preferredStatefulDescriptor2 = [val preferredStatefulDescriptor];
    v164 = preferredStatefulDescriptor2;
    alternateStatefulDescriptor2 = [val alternateStatefulDescriptor];
    v162 = alternateStatefulDescriptor2;
    v246 = 0;
    v244 = 0;
    v242 = 0;
    currentDownload4 = [val currentDownload];
    v161 = currentDownload4;
    if (v161)
    {
      currentDownload5 = [val currentDownload];
      v247 = currentDownload5;
      v246 = 1;
      descriptor2 = [v247 descriptor];
      v245 = descriptor2;
      v244 = 1;
      updateName4 = [v245 updateName];
      v243 = updateName4;
      v242 = 1;
      v157 = v243;
    }

    else
    {
      v157 = @"(null)";
    }

    v155 = v157;
    currentDownload6 = [val currentDownload];
    v153 = currentDownload6;
    currentUpdateOperationType2 = [val currentUpdateOperationType];
    v152 = SUUIUpdateContinuousOperationTypeToString(currentUpdateOperationType2);
    v149 = v152;
    v150 = MEMORY[0x277D82BE0](v149);
    v241 = v150;
    isTargetedUpdateScheduledForAutoInstall2 = [val isTargetedUpdateScheduledForAutoInstall];
    v270 = isTargetedUpdateScheduledForAutoInstall2;
    if (isTargetedUpdateScheduledForAutoInstall2)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v148 = v4;
    v5 = v4;
    v145 = v148;
    v146 = MEMORY[0x277D82BE0](v145);
    v240 = v146;
    hidingPreferredDescriptor2 = [val hidingPreferredDescriptor];
    v269 = hidingPreferredDescriptor2;
    if (hidingPreferredDescriptor2)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v144 = v6;
    v7 = v6;
    v141 = v144;
    v142 = MEMORY[0x277D82BE0](v141);
    v239 = v142;
    hiddenPreferredStatefulDescriptor2 = [val hiddenPreferredStatefulDescriptor];
    v139 = hiddenPreferredStatefulDescriptor2;
    updateName5 = [v139 updateName];
    v136 = updateName5;
    v137 = MEMORY[0x277D82BE0](v136);
    v238 = v137;
    hidingAlternateDescriptor2 = [val hidingAlternateDescriptor];
    v268 = hidingAlternateDescriptor2;
    if (hidingAlternateDescriptor2)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v135 = v8;
    v9 = v8;
    v132 = v135;
    v133 = MEMORY[0x277D82BE0](v132);
    v237 = v133;
    hiddenAlternateStatefulDescriptor2 = [val hiddenAlternateStatefulDescriptor];
    v130 = hiddenAlternateStatefulDescriptor2;
    updateName6 = [v130 updateName];
    v127 = updateName6;
    v128 = MEMORY[0x277D82BE0](v127);
    v236 = v128;
    v234 = 0;
    enrolledBetaProgram3 = [val enrolledBetaProgram];
    v126 = enrolledBetaProgram3;
    if (v126)
    {
      enrolledBetaProgram4 = [val enrolledBetaProgram];
      v235 = enrolledBetaProgram4;
      v234 = 1;
      programID2 = [v235 programID];
      v123 = programID2;
    }

    else
    {
      v123 = 0;
    }

    v121 = v123;
    v122 = [*(val + 15) count];
    canEnrollInBetaUpdates2 = [val canEnrollInBetaUpdates];
    v267 = canEnrollInBetaUpdates2;
    if (canEnrollInBetaUpdates2)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v119 = v10;
    v11 = v10;
    v113 = v119;
    v114 = MEMORY[0x277D82BE0](v113);
    v233 = v114;
    v115 = *(val + 21);
    v116 = *(val + 22);
    v117 = *(val + 23);
    v118 = [*(val + 24) count];
    v111 = &v21;
    buf = v272;
    __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v272, v202, v187, v182, v179, currentState3, v170, v168, v166, v164, v162, v155, v153, v150, v146, v142, v137, v133, v128, v121, v122, v114, v115, v116, v117, v118);
    _os_log_impl(&dword_26ADE5000, log, v186[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nThe descriptors states and errors are identical to the previous values (refreshHasAnyChanges = YES). Dropping the refresh request.", buf, 0xFCu);
    MEMORY[0x277D82BD8](v113);
    if (v234)
    {
      MEMORY[0x277D82BD8](v235);
    }

    MEMORY[0x277D82BD8](v126);
    MEMORY[0x277D82BD8](v127);
    MEMORY[0x277D82BD8](v130);
    MEMORY[0x277D82BD8](v132);
    MEMORY[0x277D82BD8](v136);
    MEMORY[0x277D82BD8](v139);
    MEMORY[0x277D82BD8](v141);
    MEMORY[0x277D82BD8](v145);
    MEMORY[0x277D82BD8](v149);
    MEMORY[0x277D82BD8](v153);
    if (v242)
    {
      MEMORY[0x277D82BD8](v243);
    }

    if (v244)
    {
      MEMORY[0x277D82BD8](v245);
    }

    if (v246)
    {
      MEMORY[0x277D82BD8](v247);
    }

    MEMORY[0x277D82BD8](v161);
    MEMORY[0x277D82BD8](v162);
    MEMORY[0x277D82BD8](v164);
    MEMORY[0x277D82BD8](v166);
    MEMORY[0x277D82BD8](v168);
    if (v248)
    {
      MEMORY[0x277D82BD8](v249);
    }

    if (v250)
    {
      MEMORY[0x277D82BD8](v251);
    }

    MEMORY[0x277D82BD8](v176);
    MEMORY[0x277D82BD8](v178);
    MEMORY[0x277D82BD8](v181);
    objc_storeStrong(&v233, 0);
    objc_storeStrong(&v236, 0);
    objc_storeStrong(&v237, 0);
    objc_storeStrong(&v238, 0);
    objc_storeStrong(&v239, 0);
    objc_storeStrong(&v240, 0);
    objc_storeStrong(&v241, 0);
    objc_storeStrong(&v252, 0);
    objc_storeStrong(&v253, 0);
  }

  objc_storeStrong(&oslog, 0);
  [val setCurrentRefreshScanOperation:0];
  v262 = 0;
  v232 = 1;
LABEL_81:
  objc_destroyWeak(from);
  objc_storeStrong(&location, 0);
  return v262;
}

void __66__SUUIStatefulUIManager_fsmAction_ReportRefreshScanResults_error___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[2] = a1;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 32));
  v6 = 0;
  if (!v11[0])
  {
    v5 = +[SUUILoggingContext softwareUpdateUILogger];
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 40));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v12, "[SUUIStatefulUIManager fsmAction_ReportRefreshScanResults:error:]_block_invoke", v8);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v12, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v10, 0);
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    v1 = [v11[0] delegate];
    [v1 statefulUIManagerDidRefreshState:v11[0]];
    MEMORY[0x277D82BD8](v1);
  }

  objc_storeStrong(v11, 0);
}

- (int64_t)fsmAction_ReportRefreshScanResultsFailed:(id)failed error:(id *)error
{
  selfCopy = self;
  v19 = a2;
  location = 0;
  objc_storeStrong(&location, failed);
  from[1] = error;
  extendedStateQueue = [(SUCoreFSM *)selfCopy->_managerFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);
  MEMORY[0x277D82BD8](extendedStateQueue);
  objc_initWeak(from, selfCopy);
  [(SUUIStatefulUIManager *)selfCopy setCurrentRefreshScanOperation:0];
  v8 = selfCopy;
  refreshScanResults = [location refreshScanResults];
  error = [location error];
  [(SUUIStatefulUIManager *)v8 notifyRefreshScanResultsDelegates:refreshScanResults andError:?];
  MEMORY[0x277D82BD8](error);
  MEMORY[0x277D82BD8](refreshScanResults);
  v5 = selfCopy;
  v11 = MEMORY[0x277D85DD0];
  v12 = -1073741824;
  v13 = 0;
  v14 = __72__SUUIStatefulUIManager_fsmAction_ReportRefreshScanResultsFailed_error___block_invoke;
  v15 = &unk_279CC63B8;
  objc_copyWeak(v16, from);
  v16[1] = v19;
  [(SUUIStatefulUIManager *)v5 executeOperationOnDelegate:sel_statefulUIManagerDidRefreshState_ usingBlock:&v11];
  objc_destroyWeak(v16);
  objc_destroyWeak(from);
  objc_storeStrong(&location, 0);
  return 0;
}

void __72__SUUIStatefulUIManager_fsmAction_ReportRefreshScanResultsFailed_error___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[2] = a1;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 32));
  v6 = 0;
  if (!v11[0])
  {
    v5 = +[SUUILoggingContext softwareUpdateUILogger];
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 40));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v12, "[SUUIStatefulUIManager fsmAction_ReportRefreshScanResultsFailed:error:]_block_invoke", v8);
      _os_log_error_impl(&dword_26ADE5000, log, type, "%s: Self is nil in %{public}@. Stopping.", v12, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v10, 0);
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    v1 = [v11[0] delegate];
    [v1 statefulUIManagerDidRefreshState:v11[0]];
    MEMORY[0x277D82BD8](v1);
  }

  objc_storeStrong(v11, 0);
}

- (int64_t)fsmAction_actionUnknownAction:(id)action error:(id *)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, action);
  v14[1] = error;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v14[0] = [v4 initWithFormat:location[0]];
  diag = [(SUCoreFSM *)selfCopy->_managerFSM diag];
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  v9 = [v5 initWithFormat:@"unknown action(%@)", location[0]];
  [diag dumpTracked:? dumpingTo:? usingFilename:? clearingStatistics:? clearingHistory:?];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](diag);
  mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
  v13 = [mEMORY[0x277D643F8] buildError:8116 underlying:0 description:v14[0]];
  MEMORY[0x277D82BD8](mEMORY[0x277D643F8]);
  diag2 = [(SUCoreFSM *)selfCopy->_managerFSM diag];
  code = [v13 code];
  [diag2 trackAnomaly:@"[SUUIStatefulUIManager]" forReason:@"Stateful UI FSM has reported an anomaly" withResult:code withError:v13];
  MEMORY[0x277D82BD8](diag2);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(v14, 0);
  objc_storeStrong(location, 0);
  return 0;
}

- (void)updateDescriptorsUsingScanResults:(id)results andWithConcreteError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  v7 = 0;
  objc_storeStrong(&v7, error);
  [(SUUIStatefulUIManager *)selfCopy hideNonTargetedUpdateDescriptors];
  preferredStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy preferredStatefulDescriptor];
  [(SUUIStatefulDescriptor *)preferredStatefulDescriptor updateStateWithScanResults:location[0] andWithConcreteError:v7];
  MEMORY[0x277D82BD8](preferredStatefulDescriptor);
  alternateStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy alternateStatefulDescriptor];
  [(SUUIStatefulDescriptor *)alternateStatefulDescriptor updateStateWithScanResults:location[0] andWithConcreteError:v7];
  MEMORY[0x277D82BD8](alternateStatefulDescriptor);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)hideNonTargetedUpdateDescriptors
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(SUUIStatefulUIManager *)self currentDownload];
  if (location[0] && ([location[0] isAutoDownload] & 1) == 0 && !-[SUUIStatefulUIManager hasHiddenDescriptors](selfCopy, "hasHiddenDescriptors"))
  {
    descriptor = [location[0] descriptor];
    preferredStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy preferredStatefulDescriptor];
    descriptor2 = [(SUUIStatefulDescriptor *)preferredStatefulDescriptor descriptor];
    v9 = [descriptor isEqual:?];
    MEMORY[0x277D82BD8](descriptor2);
    MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    MEMORY[0x277D82BD8](descriptor);
    if (v9)
    {
      [(SUUIStatefulUIManager *)selfCopy hideAlternateUpdate];
    }

    else
    {
      descriptor3 = [location[0] descriptor];
      alternateStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy alternateStatefulDescriptor];
      descriptor4 = [(SUUIStatefulDescriptor *)alternateStatefulDescriptor descriptor];
      v5 = [descriptor3 isEqual:?];
      MEMORY[0x277D82BD8](descriptor4);
      MEMORY[0x277D82BD8](alternateStatefulDescriptor);
      MEMORY[0x277D82BD8](descriptor3);
      if (v5)
      {
        [(SUUIStatefulUIManager *)selfCopy hidePreferredUpdate];
      }
    }
  }

  objc_storeStrong(location, 0);
}

- (void)executeOperationOnDelegate:(SEL)delegate usingBlock:(id)block
{
  selfCopy = self;
  location[2] = a2;
  location[1] = delegate;
  location[0] = 0;
  objc_storeStrong(location, block);
  delegate = [(SUUIStatefulUIManager *)selfCopy delegate];
  objc_initWeak(&v18, delegate);
  MEMORY[0x277D82BD8](delegate);
  v8 = objc_loadWeakRetained(&v18);
  v16 = 0;
  v9 = 0;
  if (v8)
  {
    v17 = objc_loadWeakRetained(&v18);
    v16 = 1;
    v9 = objc_opt_respondsToSelector();
  }

  if (v16)
  {
    MEMORY[0x277D82BD8](v17);
  }

  MEMORY[0x277D82BD8](v8);
  if (v9)
  {
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    delegateCallbackQueue = [(SUUIStatefulUIManager *)selfCopy delegateCallbackQueue];
    queue = [mEMORY[0x277D643F8] selectDelegateCallbackQueue:?];
    v10 = MEMORY[0x277D85DD0];
    v11 = -1073741824;
    v12 = 0;
    v13 = __63__SUUIStatefulUIManager_executeOperationOnDelegate_usingBlock___block_invoke;
    v14 = &unk_279CC61E0;
    v15 = MEMORY[0x277D82BE0](location[0]);
    dispatch_async(queue, &v10);
    MEMORY[0x277D82BD8](queue);
    MEMORY[0x277D82BD8](delegateCallbackQueue);
    MEMORY[0x277D82BD8](mEMORY[0x277D643F8]);
    objc_storeStrong(&v15, 0);
  }

  objc_destroyWeak(&v18);
  objc_storeStrong(location, 0);
}

- (int64_t)convertFSMStateToUIState:(id)state
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, state);
  if ([location[0] isEqualToString:@"Idle"])
  {
    v5 = 0;
  }

  else if ([location[0] isEqualToString:@"CheckingForAvailableUpdate"])
  {
    v5 = 1;
  }

  else if ([location[0] isEqualToString:@"ScanFailed"])
  {
    v5 = 2;
  }

  else if ([location[0] isEqualToString:@"NoUpdateFound"])
  {
    v5 = 3;
  }

  else if ([location[0] isEqualToString:@"UpdatesAvailable"])
  {
    v5 = 4;
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  objc_storeStrong(location, 0);
  return v5;
}

- (void)assignDescriptorOfType:(unint64_t)type fromSearchResults:(id)results
{
  v96 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v87 = a2;
  typeCopy = type;
  location = 0;
  objc_storeStrong(&location, results);
  if (typeCopy < 2)
  {
    v78 = 0;
    v76 = 0;
    if (typeCopy)
    {
      alternateStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy alternateStatefulDescriptor];
      v76 = 1;
      v4 = MEMORY[0x277D82BE0](alternateStatefulDescriptor);
    }

    else
    {
      preferredStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy preferredStatefulDescriptor];
      v78 = 1;
      v4 = MEMORY[0x277D82BE0](preferredStatefulDescriptor);
    }

    v80 = v4;
    if (v76)
    {
      MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    }

    if (v78)
    {
      MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    }

    v73 = 0;
    v71 = 0;
    if (typeCopy)
    {
      alternateDescriptor = [location alternateDescriptor];
      v71 = 1;
      v5 = MEMORY[0x277D82BE0](alternateDescriptor);
    }

    else
    {
      preferredDescriptor = [location preferredDescriptor];
      v73 = 1;
      v5 = MEMORY[0x277D82BE0](preferredDescriptor);
    }

    v75 = v5;
    if (v71)
    {
      MEMORY[0x277D82BD8](alternateDescriptor);
    }

    if (v73)
    {
      MEMORY[0x277D82BD8](preferredDescriptor);
    }

    if (v80 || v75)
    {
      if ([v80 isEqualToDescriptor:v75 includeDocumentationComparison:1])
      {
        v51 = +[SUUILoggingContext statefulUILogger];
        oslog = [v51 oslog];
        MEMORY[0x277D82BD8](v51);
        v69 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v44 = oslog;
          v45 = v69;
          v38 = selfCopy;
          v50 = SUUIStatefulDescriptorRoleToString(typeCopy);
          v39 = MEMORY[0x277D82BE0](v50);
          v68 = v39;
          updateName = [v80 updateName];
          v40 = MEMORY[0x277D82BE0](updateName);
          v67 = v40;
          v41 = v80;
          updateName2 = [v75 updateName];
          v42 = MEMORY[0x277D82BE0](updateName2);
          v66 = v42;
          v43 = v75;
          if ([(SUUIStatefulUIManager *)selfCopy hidingPreferredDescriptor])
          {
            v6 = @"YES";
          }

          else
          {
            v6 = @"NO";
          }

          v35 = v6;
          v7 = v6;
          v47 = v35;
          v37 = MEMORY[0x277D82BE0](v47);
          v65 = v37;
          if ([(SUUIStatefulUIManager *)selfCopy hidingAlternateDescriptor])
          {
            v8 = @"YES";
          }

          else
          {
            v8 = @"NO";
          }

          v36 = v8;
          v9 = v8;
          v46 = v36;
          v64 = MEMORY[0x277D82BE0](v46);
          __os_log_helper_16_2_9_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66(v94, "[SUUIStatefulUIManager assignDescriptorOfType:fromSearchResults:]", v38, v39, v40, v41, v42, v43, v37, v64);
          _os_log_impl(&dword_26ADE5000, v44, v45, "%s [%p]: %{public}@ descriptor assignment: the given descriptor is equal to the current stateful descriptor. Updating internal state instead of creation of an entirely new one.\n\tCurrent: %{public}@ (%p)\n\tNew: %{public}@ (%p)\n\tHiding: Preferred - %{public}@; Alternate: %{public}@", v94, 0x5Cu);
          MEMORY[0x277D82BD8](v46);
          MEMORY[0x277D82BD8](v47);
          MEMORY[0x277D82BD8](updateName2);
          MEMORY[0x277D82BD8](updateName);
          MEMORY[0x277D82BD8](v50);
          objc_storeStrong(&v64, 0);
          objc_storeStrong(&v65, 0);
          objc_storeStrong(&v66, 0);
          objc_storeStrong(&v67, 0);
          objc_storeStrong(&v68, 0);
        }

        objc_storeStrong(&oslog, 0);
        [(SUUIStatefulUIManager *)selfCopy hideNonTargetedUpdateDescriptors];
        [v80 updateStateWithScanResults:location andWithConcreteError:0];
        v81 = 1;
      }

      else
      {
        v34 = +[SUUILoggingContext statefulUILogger];
        oslog2 = [v34 oslog];
        MEMORY[0x277D82BD8](v34);
        v62 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
        {
          v27 = oslog2;
          v28 = v62;
          v21 = selfCopy;
          v33 = SUUIStatefulDescriptorRoleToString(typeCopy);
          v22 = MEMORY[0x277D82BE0](v33);
          v61 = v22;
          updateName3 = [v80 updateName];
          v23 = MEMORY[0x277D82BE0](updateName3);
          v60 = v23;
          v24 = v80;
          updateName4 = [v75 updateName];
          v25 = MEMORY[0x277D82BE0](updateName4);
          v59 = v25;
          v26 = v75;
          if ([(SUUIStatefulUIManager *)selfCopy hidingPreferredDescriptor])
          {
            v10 = @"YES";
          }

          else
          {
            v10 = @"NO";
          }

          v18 = v10;
          v11 = v10;
          v30 = v18;
          v20 = MEMORY[0x277D82BE0](v30);
          v58 = v20;
          if ([(SUUIStatefulUIManager *)selfCopy hidingAlternateDescriptor])
          {
            v12 = @"YES";
          }

          else
          {
            v12 = @"NO";
          }

          v19 = v12;
          v13 = v12;
          v29 = v19;
          v57 = MEMORY[0x277D82BE0](v29);
          __os_log_helper_16_2_9_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66(v93, "[SUUIStatefulUIManager assignDescriptorOfType:fromSearchResults:]", v21, v22, v23, v24, v25, v26, v20, v57);
          _os_log_impl(&dword_26ADE5000, v27, v28, "%s [%p]: %{public}@ descriptor assignment: Replacing the current descriptor with a new descriptor.\n\tCurrent: %{public}@ (%p)\n\tNew: %{public}@ (%p)\n\tHiding: Preferred - %{public}@; Alternate: %{public}@", v93, 0x5Cu);
          MEMORY[0x277D82BD8](v29);
          MEMORY[0x277D82BD8](v30);
          MEMORY[0x277D82BD8](updateName4);
          MEMORY[0x277D82BD8](updateName3);
          MEMORY[0x277D82BD8](v33);
          objc_storeStrong(&v57, 0);
          objc_storeStrong(&v58, 0);
          objc_storeStrong(&v59, 0);
          objc_storeStrong(&v60, 0);
          objc_storeStrong(&v61, 0);
        }

        objc_storeStrong(&oslog2, 0);
        if (typeCopy)
        {
          if (v75)
          {
            v15 = [SUUIStatefulDescriptor alloc];
            v16 = [(SUUIStatefulDescriptor *)v15 initForDescriptor:typeCopy fromScanResults:location managedBy:selfCopy];
            [(SUUIStatefulUIManager *)selfCopy setAlternateStatefulDescriptor:?];
            MEMORY[0x277D82BD8](v16);
          }

          else
          {
            [(SUUIStatefulUIManager *)selfCopy setAlternateStatefulDescriptor:0];
          }
        }

        else if (v75)
        {
          v14 = [SUUIStatefulDescriptor alloc];
          v17 = [(SUUIStatefulDescriptor *)v14 initForDescriptor:typeCopy fromScanResults:location managedBy:selfCopy];
          [(SUUIStatefulUIManager *)selfCopy setPreferredStatefulDescriptor:?];
          MEMORY[0x277D82BD8](v17);
        }

        else
        {
          [(SUUIStatefulUIManager *)selfCopy setPreferredStatefulDescriptor:0];
        }

        v81 = 0;
      }
    }

    else
    {
      v81 = 1;
    }

    objc_storeStrong(&v75, 0);
    objc_storeStrong(&v80, 0);
  }

  else
  {
    v56 = +[SUUILoggingContext statefulUILogger];
    oslog = [v56 oslog];
    MEMORY[0x277D82BD8](v56);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      typeCopy2 = type;
      v52 = selfCopy;
      v55 = SUUIStatefulDescriptorRoleToString(typeCopy);
      v82 = MEMORY[0x277D82BE0](v55);
      __os_log_helper_16_2_3_8_32_8_0_8_66(v95, "[SUUIStatefulUIManager assignDescriptorOfType:fromSearchResults:]", v52, v82);
      _os_log_error_impl(&dword_26ADE5000, log, typeCopy2, "%s [%p]: Invalid descriptor type: %{public}@", v95, 0x20u);
      MEMORY[0x277D82BD8](v55);
      objc_storeStrong(&v82, 0);
    }

    objc_storeStrong(&oslog, 0);
    v81 = 1;
  }

  objc_storeStrong(&location, 0);
}

- (void)performSelector:(SEL)selector onTarget:(id)target withObject:(id)object withObject:(id)withObject withObject:(id)a7 withObject:(id)a8
{
  obj = object;
  withObjectCopy = withObject;
  v11 = a7;
  v12 = a8;
  selfCopy = self;
  v21 = a2;
  selectorCopy = selector;
  location = 0;
  objc_storeStrong(&location, target);
  v18 = 0;
  objc_storeStrong(&v18, obj);
  v17 = 0;
  objc_storeStrong(&v17, withObjectCopy);
  v16 = 0;
  objc_storeStrong(&v16, v11);
  v15 = 0;
  objc_storeStrong(&v15, v12);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v8 = NSStringFromSelector(selectorCopy);
    _suui_precondition_failure_with_format(@"Target does not respond to selector %@", v8);
  }

  v14 = [location methodSignatureForSelector:selectorCopy];
  if (v14)
  {
    v13 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v14];
    [v13 setSelector:selectorCopy];
    [v13 setTarget:location];
    [v13 setArgument:&v18 atIndex:2];
    [v13 setArgument:&v17 atIndex:3];
    [v13 setArgument:&v16 atIndex:4];
    [v13 setArgument:&v15 atIndex:5];
    [v13 invoke];
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&location, 0);
}

- (SUUIStatefulUIManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SUUIStatefulUIEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (id)contextForFullScanOperation:(id)operation withThirdPartyScanResults:(id)results scanError:(id)error forceReloadScanResults:(BOOL)scanResults
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operation);
  v13 = 0;
  objc_storeStrong(&v13, results);
  v12 = 0;
  objc_storeStrong(&v12, error);
  v6 = [SUUIScanOperationFullScanContext alloc];
  v11 = [(SUUIScanOperationFullScanContext *)v6 initWithPreviousThirdPartyScanResults:v13 previousScanError:v12 forceReloadScanResults:scanResults];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);

  return v11;
}

- (id)contextForRefreshScanOperation:(id)operation withPreviouslyDiscoveredDownload:(id)download encounteredError:(id)error
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operation);
  v11 = 0;
  objc_storeStrong(&v11, download);
  v10 = 0;
  objc_storeStrong(&v10, error);
  v5 = [SUUIScanOperationRefreshScanContext alloc];
  v9 = [(SUUIScanOperationRefreshScanContext *)v5 initWithPreviousDownload:v11 previousEncounteredError:v10];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);

  return v9;
}

- (id)contextForDownloadUpdateOperation:(id)operation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operation);
  v4 = [SUUIUpdateOperationDownloadContext alloc];
  v5 = [(SUUIUpdateOperationDownloadContext *)v4 initWithUnattendedPurge:[(SUUIStatefulUIManager *)selfCopy updateOperationShouldPerformUnattendedPurge:location[0]]];
  objc_storeStrong(location, 0);

  return v5;
}

- (id)contextForDownloadAndInstallUpdateOperation:(id)operation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operation);
  v4 = [SUUIUpdateOperationDownloadAndInstallContext alloc];
  v5 = [(SUUIUpdateOperationDownloadAndInstallContext *)v4 initWithUnattendedPurge:[(SUUIStatefulUIManager *)selfCopy updateOperationShouldPerformUnattendedPurge:location[0]]];
  objc_storeStrong(location, 0);

  return v5;
}

- (id)contextForDownloadAndScheduleUpdateOperation:(id)operation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operation);
  v4 = [SUUIUpdateOperationDownloadAndScheduleContext alloc];
  v5 = [(SUUIUpdateOperationDownloadAndScheduleContext *)v4 initWithUnattendedPurge:[(SUUIStatefulUIManager *)selfCopy updateOperationShouldPerformUnattendedPurge:location[0]]];
  objc_storeStrong(location, 0);

  return v5;
}

- (id)contextForInstallUpdateOperation:(id)operation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operation);
  v4 = [SUUIUpdateOperationInstallContext alloc];
  v5 = [(SUUIUpdateOperationInstallContext *)v4 initWithUnattendedPurge:[(SUUIStatefulUIManager *)selfCopy updateOperationShouldPerformUnattendedPurge:location[0]]];
  objc_storeStrong(location, 0);

  return v5;
}

- (id)contextForUserPromotionUpdateOperation:(id)operation
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operation);
  v4 = objc_opt_new();
  objc_storeStrong(location, 0);

  return v4;
}

- (id)contextForPurgeUpdateOperation:(id)operation forUserRequestedOperation:(BOOL)requestedOperation notifyUser:(BOOL)user
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operation);
  v8 = [[SUUIUpdateOperationPurgeContext alloc] initAsUserRequest:requestedOperation notifyUser:user];
  objc_storeStrong(location, 0);

  return v8;
}

- (id)contextForScheduleUpdateOperation:(id)operation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operation);
  v4 = [SUUIUpdateOperationScheduleContext alloc];
  v5 = [(SUUIUpdateOperationScheduleContext *)v4 initWithUnattendedPurge:[(SUUIStatefulUIManager *)selfCopy updateOperationShouldPerformUnattendedPurge:location[0]]];
  objc_storeStrong(location, 0);

  return v5;
}

- (id)contextForUserUnscheduleUpdateOperation:(id)operation
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operation);
  v4 = objc_opt_new();
  objc_storeStrong(location, 0);

  return v4;
}

- (BOOL)updateOperationShouldPerformUnattendedPurge:(id)purge
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, purge);
  currentDownload = [(SUUIStatefulUIManager *)selfCopy currentDownload];
  preferredStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy preferredStatefulDescriptor];
  alternateStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy alternateStatefulDescriptor];
  if (!currentDownload)
  {
    goto LABEL_13;
  }

  v8 = 0;
  v5 = 0;
  if (preferredStatefulDescriptor)
  {
    descriptor = [currentDownload descriptor];
    v8 = 1;
    v5 = [preferredStatefulDescriptor isEqualToDescriptor:?];
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](descriptor);
  }

  v6 = 0;
  v4 = 0;
  if (alternateStatefulDescriptor)
  {
    descriptor2 = [currentDownload descriptor];
    v6 = 1;
    v4 = [alternateStatefulDescriptor isEqualToDescriptor:?];
  }

  if (v6)
  {
    MEMORY[0x277D82BD8](descriptor2);
  }

  if (v5 & 1) != 0 || (v4)
  {
LABEL_13:
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  objc_storeStrong(&alternateStatefulDescriptor, 0);
  objc_storeStrong(&preferredStatefulDescriptor, 0);
  objc_storeStrong(&currentDownload, 0);
  objc_storeStrong(location, 0);
  return v15 & 1;
}

- (BOOL)assignScanResults:(id)results
{
  v34 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  v29 = 0;
  isClearingSpaceForDownload = [(SUUIStatefulUIManager *)selfCopy isClearingSpaceForDownload];
  if (isClearingSpaceForDownload != [location[0] isClearingSpaceForDownload])
  {
    isClearingSpaceForDownload2 = [location[0] isClearingSpaceForDownload];
    [(SUUIStatefulUIManager *)selfCopy setClearingSpaceForDownload:isClearingSpaceForDownload2];
    v29 = 1;
  }

  currentDownload = [(SUUIStatefulUIManager *)selfCopy currentDownload];
  currentDownload2 = [location[0] currentDownload];
  v26 = 0;
  v20 = 0;
  if (currentDownload != currentDownload2)
  {
    LOBYTE(v18) = 1;
    if (currentDownload)
    {
      currentDownload3 = [location[0] currentDownload];
      v26 = 1;
      v18 = [currentDownload3 isEqual:currentDownload] ^ 1;
    }

    v20 = v18;
  }

  if (v26)
  {
    MEMORY[0x277D82BD8](currentDownload3);
  }

  MEMORY[0x277D82BD8](currentDownload2);
  if (v20)
  {
    v16 = selfCopy;
    currentDownload4 = [location[0] currentDownload];
    [(SUUIStatefulUIManager *)v16 setCurrentDownload:?];
    MEMORY[0x277D82BD8](currentDownload4);
    v29 = 1;
  }

  isAutoUpdateScheduled = selfCopy->_isAutoUpdateScheduled;
  if (isAutoUpdateScheduled != [location[0] isAutoUpdateScheduled])
  {
    isAutoUpdateScheduled = [location[0] isAutoUpdateScheduled];
    [(SUUIStatefulUIManager *)selfCopy setIsAutoUpdateScheduled:isAutoUpdateScheduled];
    v29 = 1;
  }

  getEnrollInBetaUpdatesStatus = [(SUUIStatefulUIManager *)selfCopy getEnrollInBetaUpdatesStatus];
  if (selfCopy->_canEnrollInBetaUpdates != getEnrollInBetaUpdatesStatus)
  {
    [(SUUIStatefulUIManager *)selfCopy setCanEnrollInBetaUpdates:getEnrollInBetaUpdatesStatus];
    v29 = 1;
    v14 = +[SUUILoggingContext statefulUILogger];
    oslog = [v14 oslog];
    MEMORY[0x277D82BD8](v14);
    v23 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      type = v23;
      v10 = selfCopy;
      v32 = getEnrollInBetaUpdatesStatus;
      if (getEnrollInBetaUpdatesStatus)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v9 = v5;
      v6 = v5;
      v13 = v9;
      v22 = MEMORY[0x277D82BE0](v13);
      __os_log_helper_16_2_3_8_32_8_0_8_66(v33, "[SUUIStatefulUIManager(OperationsResultsAssignment) assignScanResults:]", v10, v22);
      _os_log_impl(&dword_26ADE5000, log, type, "%s [%p]: canEnrollInBetaUpdates status changed to: %{public}@", v33, 0x20u);
      MEMORY[0x277D82BD8](v13);
      objc_storeStrong(&v22, 0);
    }

    objc_storeStrong(&oslog, 0);
  }

  v8 = v29;
  objc_storeStrong(&currentDownload, 0);
  objc_storeStrong(location, 0);
  return v8 & 1;
}

- (void)assignFullScanResults:(id)results
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  [(SUUIStatefulUIManager *)selfCopy assignScanResults:location[0]];
  scanError = [location[0] scanError];
  v13 = 0;
  if (scanError)
  {
    scanError2 = [location[0] scanError];
    v13 = 1;
    v10 = scanError2;
  }

  else
  {
    v10 = 0;
  }

  [(SUUIStatefulUIManager *)selfCopy setScanError:v10];
  if (v13)
  {
    MEMORY[0x277D82BD8](scanError2);
  }

  MEMORY[0x277D82BD8](scanError);
  mdmPathRestrictions = [location[0] mdmPathRestrictions];
  [(SUUIStatefulUIManager *)selfCopy setMdmPathRestrictions:mdmPathRestrictions];
  currentSeedingDevice = [location[0] currentSeedingDevice];
  [(SUUIStatefulUIManager *)selfCopy setCurrentSeedingDevice:?];
  MEMORY[0x277D82BD8](currentSeedingDevice);
  betaPrograms = [location[0] betaPrograms];
  [(SUUIStatefulUIManager *)selfCopy setBetaPrograms:?];
  MEMORY[0x277D82BD8](betaPrograms);
  enrolledBetaProgram = [location[0] enrolledBetaProgram];
  [(SUUIStatefulUIManager *)selfCopy setEnrolledBetaProgram:?];
  MEMORY[0x277D82BD8](enrolledBetaProgram);
  ddmDeclaration = [location[0] ddmDeclaration];
  [(SUUIStatefulUIManager *)selfCopy setDDMDeclaration:?];
  MEMORY[0x277D82BD8](ddmDeclaration);
  [(SUUIStatefulUIManager *)selfCopy willChangeValueForKey:?];
  v12[0] = selfCopy;
  v12[1] = @"rollingBackSplatUpdate";
  isRollingBackSplatUpdate = [location[0] isRollingBackSplatUpdate];
  selfCopy->_rollingBackSplatUpdate = isRollingBackSplatUpdate;
  v17 = v12;
  if (v12[0])
  {
    [*v17 didChangeValueForKey:v17[1]];
  }

  isDelayingUpdate = [location[0] isDelayingUpdate];
  selfCopy->_delayingUpdate = isDelayingUpdate;
  objc_storeStrong(location, 0);
}

- (void)assignDownloadUpdateResults:(id)results
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  v3 = selfCopy;
  download = [location[0] download];
  [(SUUIStatefulUIManager *)v3 setCurrentDownload:?];
  MEMORY[0x277D82BD8](download);
  objc_storeStrong(location, 0);
}

- (void)assignDownloadAndScheduleUpdateResults:(id)results
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  v3 = selfCopy;
  download = [location[0] download];
  [(SUUIStatefulUIManager *)v3 setCurrentDownload:?];
  MEMORY[0x277D82BD8](download);
  objc_storeStrong(location, 0);
}

- (void)assignInstallUpdateResults:(id)results
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  objc_storeStrong(location, 0);
}

- (void)assignScheduleUpdateResults:(id)results
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  objc_storeStrong(location, 0);
}

- (void)assignUserPromotionUpdateResults:(id)results
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  v3 = selfCopy;
  download = [location[0] download];
  [(SUUIStatefulUIManager *)v3 setCurrentDownload:?];
  MEMORY[0x277D82BD8](download);
  objc_storeStrong(location, 0);
}

- (void)assignUnscheduleUpdateResults:(id)results
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  objc_storeStrong(location, 0);
}

@end