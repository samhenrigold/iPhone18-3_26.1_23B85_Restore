@interface SUUIMobileStatefulUIManager
- (BOOL)assignScanResults:(id)results;
- (BOOL)isTargetedUpdateScheduledForAutoInstall;
- (NSString)description;
- (SUUIMobileStatefulUIManager)initWithEnvironment:(id)environment;
- (SUUIMobileStatefulUIManager)initWithEnvironment:(id)environment identifier:(id)identifier;
- (SUUIMobileStatefulUIManager)initWithEnvironment:(id)environment identifier:(id)identifier andSUManagerClient:(id)client;
- (id)contextForDownloadAndInstallUpdateOperation:(id)operation;
- (id)contextForDownloadAndScheduleUpdateOperation:(id)operation;
- (id)contextForDownloadUpdateOperation:(id)operation;
- (id)contextForFullScanOperation:(id)operation withThirdPartyScanResults:(id)results scanError:(id)error forceReloadScanResults:(BOOL)scanResults;
- (id)contextForInstallUpdateOperation:(id)operation;
- (id)contextForRefreshScanOperation:(id)operation withPreviouslyDiscoveredDownload:(id)download encounteredError:(id)error;
- (id)contextForScheduleUpdateOperation:(id)operation;
- (id)contextForUserUnscheduleUpdateOperation:(id)operation;
- (void)assignDownloadAndScheduleUpdateResults:(id)results;
- (void)assignFullScanResults:(id)results;
- (void)assignScheduleUpdateResults:(id)results;
- (void)assignUnscheduleUpdateResults:(id)results;
- (void)autoInstallOperationDidConsent:(id)consent;
- (void)autoInstallOperationDidExpire:(id)expire withError:(id)error;
- (void)autoInstallOperationIsReadyToInstall:(id)install withResponse:(id)response;
- (void)autoInstallOperationPasscodePolicyDidChange:(id)change passcodePolicyType:(unint64_t)type;
- (void)autoInstallOperationWasCancelled:(id)cancelled;
- (void)batteryLevelChanged:(id)changed;
- (void)batteryStateChanged:(id)changed;
- (void)clearPastDownload:(id)download;
- (void)clearPastScanResults;
- (void)client:(id)client clearingSpaceForDownload:(id)download clearingSpace:(BOOL)space;
- (void)client:(id)client downloadDidFail:(id)fail withError:(id)error;
- (void)client:(id)client downloadDidFinish:(id)finish withInstallPolicy:(id)policy;
- (void)client:(id)client downloadDidStart:(id)start;
- (void)client:(id)client downloadProgressDidChange:(id)change;
- (void)client:(id)client downloadWasInvalidatedForNewUpdatesAvailable:(id)available;
- (void)client:(id)client installDidFail:(id)fail withError:(id)error;
- (void)client:(id)client installDidStart:(id)start;
- (void)client:(id)client installTonightScheduled:(BOOL)scheduled operationID:(id)d;
- (void)client:(id)client scanRequestDidFinishForOptions:(id)options results:(id)results error:(id)error;
- (void)client:(id)client scanRequestDidStartForOptions:(id)options;
- (void)dealloc;
- (void)didBecomeActive:(id)active;
- (void)handleFullScanResults:(id)results;
- (void)handleScanFinishedRollbackApplied:(id)applied;
- (void)networkChangedFromNetworkType:(int)type toNetworkType:(int)networkType;
- (void)setupBatteryMonitoring;
- (void)setupNetworkMonitoring;
- (void)setupObservers;
- (void)unscheduleTargetedUpdateAutomaticInstallation:(id)installation delegateCallbackQueue:(id)queue completionHandler:(id)handler;
@end

@implementation SUUIMobileStatefulUIManager

- (SUUIMobileStatefulUIManager)initWithEnvironment:(id)environment
{
  selfCopy = self;
  v11 = a2;
  location = 0;
  objc_storeStrong(&location, environment);
  v6 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(v11);
  v7 = [v4 stringWithFormat:@"%@ is unavailable", v8];
  v9 = [v6 exceptionWithName:v5 reason:? userInfo:?];
  v3 = v9;
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  objc_exception_throw(v9);
}

- (SUUIMobileStatefulUIManager)initWithEnvironment:(id)environment identifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, environment);
  v8 = 0;
  objc_storeStrong(&v8, identifier);
  v4 = selfCopy;
  selfCopy = 0;
  selfCopy = [(SUUIMobileStatefulUIManager *)v4 initWithEnvironment:location[0] identifier:v8 andSUManagerClient:0];
  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (SUUIMobileStatefulUIManager)initWithEnvironment:(id)environment identifier:(id)identifier andSUManagerClient:(id)client
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, environment);
  v17 = 0;
  objc_storeStrong(&v17, identifier);
  v16 = 0;
  objc_storeStrong(&v16, client);
  v5 = selfCopy;
  selfCopy = 0;
  v15.receiver = v5;
  v15.super_class = SUUIMobileStatefulUIManager;
  v12 = [(SUUIStatefulUIManager *)&v15 initWithEnvironment:location[0]];
  selfCopy = v12;
  objc_storeStrong(&selfCopy, v12);
  if (v12)
  {
    objc_storeStrong(&selfCopy->_clientIdentifier, v17);
    v13 = 0;
    if (v16)
    {
      objc_storeStrong(&selfCopy->_client, v16);
    }

    else
    {
      v14 = [objc_alloc(MEMORY[0x277D648B8]) initWithDelegate:0 queue:? clientType:?];
      v13 = 1;
      objc_storeStrong(&selfCopy->_client, v14);
    }

    if (v13)
    {
      MEMORY[0x277D82BD8](v14);
    }

    [(SUManagerClient *)selfCopy->_client setDelegate:selfCopy];
    v6 = objc_alloc_init(SUUIMobileDescriptorAgreementStatusRegistry);
    agreementStatusRegistry = selfCopy->_agreementStatusRegistry;
    selfCopy->_agreementStatusRegistry = v6;
    MEMORY[0x277D82BD8](agreementStatusRegistry);
    [(SUUIMobileStatefulUIManager *)selfCopy setupNetworkMonitoring];
    [(SUUIMobileStatefulUIManager *)selfCopy setupBatteryMonitoring];
    [(SUUIMobileStatefulUIManager *)selfCopy setupObservers];
  }

  v9 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

- (void)dealloc
{
  selfCopy = self;
  v6 = a2;
  v2 = SBSSpringBoardServerPort();
  MEMORY[0x26D66E8F0](v2, selfCopy->_originalCellFlag, selfCopy->_originalWifiFlag);
  mEMORY[0x277D648C0] = [MEMORY[0x277D648C0] sharedInstance];
  [mEMORY[0x277D648C0] removeObserver:selfCopy];
  MEMORY[0x277D82BD8](mEMORY[0x277D648C0]);
  PSSetBatteryMonitoringEnabled();
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:selfCopy];
  MEMORY[0x277D82BD8](defaultCenter);
  v5.receiver = selfCopy;
  v5.super_class = SUUIMobileStatefulUIManager;
  [(SUUIMobileStatefulUIManager *)&v5 dealloc];
}

- (BOOL)isTargetedUpdateScheduledForAutoInstall
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(SUUIMobileStatefulUIManager *)self currentAutoInstallOperation];
  v4.receiver = selfCopy;
  v4.super_class = SUUIMobileStatefulUIManager;
  LOBYTE(v3) = 0;
  if ([(SUUIStatefulUIManager *)&v4 isTargetedUpdateScheduledForAutoInstall])
  {
    LOBYTE(v3) = 0;
    if (location[0])
    {
      LOBYTE(v3) = 0;
      if (([location[0] isCanceled] & 1) == 0)
      {
        v3 = [location[0] isExpired] ^ 1;
      }
    }
  }

  objc_storeStrong(location, 0);
  return v3 & 1;
}

- (void)unscheduleTargetedUpdateAutomaticInstallation:(id)installation delegateCallbackQueue:(id)queue completionHandler:(id)handler
{
  obj = queue;
  handlerCopy = handler;
  v80 = "[SUUIMobileStatefulUIManager unscheduleTargetedUpdateAutomaticInstallation:delegateCallbackQueue:completionHandler:]";
  v118 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, installation);
  v110 = 0;
  objc_storeStrong(&v110, obj);
  v109 = 0;
  objc_storeStrong(&v109, handlerCopy);
  currentAutoInstallOperation = [(SUUIMobileStatefulUIManager *)selfCopy currentAutoInstallOperation];
  MEMORY[0x277D82BD8](currentAutoInstallOperation);
  if (currentAutoInstallOperation)
  {
    v84.receiver = selfCopy;
    v84.super_class = SUUIMobileStatefulUIManager;
    [(SUUIStatefulUIManager *)&v84 unscheduleTargetedUpdateAutomaticInstallation:location[0] delegateCallbackQueue:v110 completionHandler:v109];
    v85 = 0;
  }

  else
  {
    statefulUILogger = [MEMORY[0x277D64B58] statefulUILogger];
    oslog = [statefulUILogger oslog];
    MEMORY[0x277D82BD8](statefulUILogger);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      *v71 = type;
      v72 = selfCopy;
      v5 = objc_opt_class();
      v73 = NSStringFromClass(v5);
      v74 = MEMORY[0x277D82BE0](v73);
      v106 = v74;
      v75 = SUUIStatefulUIStateToString();
      v76 = MEMORY[0x277D82BE0](v75);
      v105 = v76;
      currentState = [(SUUIStatefulUIManager *)selfCopy currentState];
      delegate = [(SUUIStatefulUIManager *)selfCopy delegate];
      v103 = 0;
      v101 = 0;
      if (delegate)
      {
        delegate2 = [(SUUIStatefulUIManager *)selfCopy delegate];
        v68 = 1;
        v103 = 1;
        v6 = objc_opt_class();
        v102 = NSStringFromClass(v6);
        v101 = 1;
        v69 = v102;
      }

      else
      {
        v69 = @"(null)";
      }

      v62 = v69;
      delegate3 = [(SUUIStatefulUIManager *)selfCopy delegate];
      scanError = [(SUUIStatefulUIManager *)selfCopy scanError];
      preferredStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy preferredStatefulDescriptor];
      alternateStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy alternateStatefulDescriptor];
      currentDownload = [(SUUIStatefulUIManager *)selfCopy currentDownload];
      v99 = 0;
      v97 = 0;
      v95 = 0;
      if (currentDownload)
      {
        currentDownload2 = [(SUUIStatefulUIManager *)selfCopy currentDownload];
        v60 = 1;
        v99 = 1;
        descriptor = [(SUUIDownload *)currentDownload2 descriptor];
        v97 = 1;
        updateName = [descriptor updateName];
        v95 = 1;
        v61 = updateName;
      }

      else
      {
        v61 = @"(null)";
      }

      v37 = v61;
      currentDownload3 = [(SUUIStatefulUIManager *)selfCopy currentDownload];
      [(SUUIStatefulUIManager *)selfCopy currentUpdateOperationType];
      v39 = SUUIUpdateContinuousOperationTypeToString();
      v40 = MEMORY[0x277D82BE0](v39);
      v94 = v40;
      isTargetedUpdateScheduledForAutoInstall = [(SUUIMobileStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
      v50 = @"NO";
      v51 = @"YES";
      v58 = 1;
      if (isTargetedUpdateScheduledForAutoInstall)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      v41 = v7;
      v8 = v7;
      v42 = v41;
      v43 = MEMORY[0x277D82BE0](v42);
      v93 = v43;
      if ([(SUUIStatefulUIManager *)selfCopy hidingPreferredDescriptor])
      {
        v9 = v51;
      }

      else
      {
        v9 = v50;
      }

      v44 = v9;
      v10 = v9;
      v45 = v44;
      v46 = MEMORY[0x277D82BE0](v45);
      v92 = v46;
      hiddenPreferredStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy hiddenPreferredStatefulDescriptor];
      updateName2 = [(SUUIStatefulDescriptor *)hiddenPreferredStatefulDescriptor updateName];
      v49 = MEMORY[0x277D82BE0](updateName2);
      v91 = v49;
      if ([(SUUIStatefulUIManager *)selfCopy hidingAlternateDescriptor])
      {
        v11 = v51;
      }

      else
      {
        v11 = v50;
      }

      v52 = v11;
      v12 = v11;
      v53 = v52;
      v54 = MEMORY[0x277D82BE0](v53);
      v90 = v54;
      hiddenAlternateStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy hiddenAlternateStatefulDescriptor];
      updateName3 = [(SUUIStatefulDescriptor *)hiddenAlternateStatefulDescriptor updateName];
      v57 = MEMORY[0x277D82BE0](updateName3);
      v89 = v57;
      enrolledBetaProgram = [(SUUIStatefulUIManager *)selfCopy enrolledBetaProgram];
      v87 = 0;
      if (enrolledBetaProgram)
      {
        enrolledBetaProgram2 = [(SUUIStatefulUIManager *)selfCopy enrolledBetaProgram];
        v87 = 1;
        programID = [(SDBetaProgram *)enrolledBetaProgram2 programID];
      }

      else
      {
        programID = 0;
      }

      v27 = programID;
      v28 = [*(&selfCopy->super.super.isa + *MEMORY[0x277D64BE8]) count];
      if ([(SUUIStatefulUIManager *)selfCopy canEnrollInBetaUpdates])
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      v26 = v13;
      v14 = v13;
      v35 = v26;
      v29 = MEMORY[0x277D82BE0](v35);
      v86 = v29;
      v30 = *(&selfCopy->super.super.isa + *MEMORY[0x277D64BF0]);
      v31 = *(&selfCopy->super.super.isa + *MEMORY[0x277D64BF8]);
      v32 = *(&selfCopy->super.super.isa + *MEMORY[0x277D64C08]);
      v15 = [*(&selfCopy->super.super.isa + *MEMORY[0x277D64BE0]) count];
      v33 = &v17;
      buf = v117;
      __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v117, v80, v72, v74, v76, currentState, v62, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v37, currentDownload3, v40, v43, v46, v49, v54, v57, v27, v28, v29, v30, v31, v32, v15);
      _os_log_impl(&dword_26B0B9000, log, v71[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCan not unschedule an update when the auto-install operation is nil.", buf, 0xFCu);
      MEMORY[0x277D82BD8](v35);
      if (v87)
      {
        MEMORY[0x277D82BD8](enrolledBetaProgram2);
      }

      MEMORY[0x277D82BD8](enrolledBetaProgram);
      MEMORY[0x277D82BD8](updateName3);
      MEMORY[0x277D82BD8](hiddenAlternateStatefulDescriptor);
      MEMORY[0x277D82BD8](v53);
      MEMORY[0x277D82BD8](updateName2);
      MEMORY[0x277D82BD8](hiddenPreferredStatefulDescriptor);
      MEMORY[0x277D82BD8](v45);
      MEMORY[0x277D82BD8](v42);
      MEMORY[0x277D82BD8](v39);
      MEMORY[0x277D82BD8](currentDownload3);
      if (v95)
      {
        MEMORY[0x277D82BD8](updateName);
      }

      if (v97)
      {
        MEMORY[0x277D82BD8](descriptor);
      }

      if (v99)
      {
        MEMORY[0x277D82BD8](currentDownload2);
      }

      MEMORY[0x277D82BD8](currentDownload);
      MEMORY[0x277D82BD8](alternateStatefulDescriptor);
      MEMORY[0x277D82BD8](preferredStatefulDescriptor);
      MEMORY[0x277D82BD8](scanError);
      MEMORY[0x277D82BD8](delegate3);
      if (v101)
      {
        MEMORY[0x277D82BD8](v102);
      }

      if (v103)
      {
        MEMORY[0x277D82BD8](delegate2);
      }

      MEMORY[0x277D82BD8](delegate);
      MEMORY[0x277D82BD8](v75);
      MEMORY[0x277D82BD8](v73);
      v25 = 0;
      objc_storeStrong(&v86, 0);
      objc_storeStrong(&v89, v25);
      objc_storeStrong(&v90, v25);
      objc_storeStrong(&v91, v25);
      objc_storeStrong(&v92, v25);
      objc_storeStrong(&v93, v25);
      objc_storeStrong(&v94, v25);
      objc_storeStrong(&v105, v25);
      objc_storeStrong(&v106, v25);
    }

    objc_storeStrong(&oslog, 0);
    v21 = v109;
    v20 = v109 + 16;
    v19 = [SUUIMobileStatefulError alloc];
    v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64C28] code:10 userInfo:0];
    v22 = [(SUUIStatefulError *)v19 initFromError:?];
    v16 = v21[2];
    v24 = 1;
    v16(v21, 0);
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    v85 = v24;
  }

  v18 = 0;
  objc_storeStrong(&v109, 0);
  objc_storeStrong(&v110, v18);
  objc_storeStrong(location, v18);
}

- (void)handleFullScanResults:(id)results
{
  v70 = "[SUUIMobileStatefulUIManager handleFullScanResults:]";
  v105 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  mEMORY[0x277D64418] = [MEMORY[0x277D64418] sharedDevice];
  hasSemiSplatActive = [mEMORY[0x277D64418] hasSemiSplatActive];
  MEMORY[0x277D82BD8](mEMORY[0x277D64418]);
  if (hasSemiSplatActive)
  {
    statefulUILogger = [MEMORY[0x277D64B58] statefulUILogger];
    oslog = [statefulUILogger oslog];
    MEMORY[0x277D82BD8](statefulUILogger);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      *v61 = type;
      v62 = selfCopy;
      v3 = objc_opt_class();
      v63 = NSStringFromClass(v3);
      v64 = MEMORY[0x277D82BE0](v63);
      v95 = v64;
      v65 = SUUIStatefulUIStateToString();
      v66 = MEMORY[0x277D82BE0](v65);
      v94 = v66;
      currentState = [(SUUIStatefulUIManager *)selfCopy currentState];
      delegate = [(SUUIStatefulUIManager *)selfCopy delegate];
      v92 = 0;
      v90 = 0;
      if (delegate)
      {
        delegate2 = [(SUUIStatefulUIManager *)selfCopy delegate];
        v58 = 1;
        v92 = 1;
        v4 = objc_opt_class();
        v91 = NSStringFromClass(v4);
        v90 = 1;
        v59 = v91;
      }

      else
      {
        v59 = @"(null)";
      }

      v52 = v59;
      delegate3 = [(SUUIStatefulUIManager *)selfCopy delegate];
      scanError = [(SUUIStatefulUIManager *)selfCopy scanError];
      preferredStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy preferredStatefulDescriptor];
      alternateStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy alternateStatefulDescriptor];
      currentDownload = [(SUUIStatefulUIManager *)selfCopy currentDownload];
      v88 = 0;
      v86 = 0;
      v84 = 0;
      if (currentDownload)
      {
        currentDownload2 = [(SUUIStatefulUIManager *)selfCopy currentDownload];
        v50 = 1;
        v88 = 1;
        descriptor = [(SUUIDownload *)currentDownload2 descriptor];
        v86 = 1;
        updateName = [descriptor updateName];
        v84 = 1;
        v51 = updateName;
      }

      else
      {
        v51 = @"(null)";
      }

      v27 = v51;
      currentDownload3 = [(SUUIStatefulUIManager *)selfCopy currentDownload];
      [(SUUIStatefulUIManager *)selfCopy currentUpdateOperationType];
      v29 = SUUIUpdateContinuousOperationTypeToString();
      v30 = MEMORY[0x277D82BE0](v29);
      v83 = v30;
      isTargetedUpdateScheduledForAutoInstall = [(SUUIMobileStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
      v40 = @"NO";
      v41 = @"YES";
      v48 = 1;
      if (isTargetedUpdateScheduledForAutoInstall)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v31 = v5;
      v6 = v5;
      v32 = v31;
      v33 = MEMORY[0x277D82BE0](v32);
      v82 = v33;
      if ([(SUUIStatefulUIManager *)selfCopy hidingPreferredDescriptor])
      {
        v7 = v41;
      }

      else
      {
        v7 = v40;
      }

      v34 = v7;
      v8 = v7;
      v35 = v34;
      v36 = MEMORY[0x277D82BE0](v35);
      v81 = v36;
      hiddenPreferredStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy hiddenPreferredStatefulDescriptor];
      updateName2 = [(SUUIStatefulDescriptor *)hiddenPreferredStatefulDescriptor updateName];
      v39 = MEMORY[0x277D82BE0](updateName2);
      v80 = v39;
      if ([(SUUIStatefulUIManager *)selfCopy hidingAlternateDescriptor])
      {
        v9 = v41;
      }

      else
      {
        v9 = v40;
      }

      v42 = v9;
      v10 = v9;
      v43 = v42;
      v44 = MEMORY[0x277D82BE0](v43);
      v79 = v44;
      hiddenAlternateStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy hiddenAlternateStatefulDescriptor];
      updateName3 = [(SUUIStatefulDescriptor *)hiddenAlternateStatefulDescriptor updateName];
      v47 = MEMORY[0x277D82BE0](updateName3);
      v78 = v47;
      enrolledBetaProgram = [(SUUIStatefulUIManager *)selfCopy enrolledBetaProgram];
      v76 = 0;
      if (enrolledBetaProgram)
      {
        enrolledBetaProgram2 = [(SUUIStatefulUIManager *)selfCopy enrolledBetaProgram];
        v76 = 1;
        programID = [(SDBetaProgram *)enrolledBetaProgram2 programID];
      }

      else
      {
        programID = 0;
      }

      v17 = programID;
      v18 = [*(&selfCopy->super.super.isa + *MEMORY[0x277D64BE8]) count];
      if ([(SUUIStatefulUIManager *)selfCopy canEnrollInBetaUpdates])
      {
        v11 = @"YES";
      }

      else
      {
        v11 = @"NO";
      }

      v16 = v11;
      v12 = v11;
      v25 = v16;
      v19 = MEMORY[0x277D82BE0](v25);
      v75 = v19;
      v20 = *(&selfCopy->super.super.isa + *MEMORY[0x277D64BF0]);
      v21 = *(&selfCopy->super.super.isa + *MEMORY[0x277D64BF8]);
      v22 = *(&selfCopy->super.super.isa + *MEMORY[0x277D64C08]);
      v13 = [*(&selfCopy->super.super.isa + *MEMORY[0x277D64BE0]) count];
      v23 = &v14;
      buf = v104;
      __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v104, v70, v62, v64, v66, currentState, v52, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v27, currentDownload3, v30, v33, v36, v39, v44, v47, v17, v18, v19, v20, v21, v22, v13);
      _os_log_impl(&dword_26B0B9000, log, v61[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nRollback already applied, show the user an alert to reboot, and show no available updates.", buf, 0xFCu);
      MEMORY[0x277D82BD8](v25);
      if (v76)
      {
        MEMORY[0x277D82BD8](enrolledBetaProgram2);
      }

      MEMORY[0x277D82BD8](enrolledBetaProgram);
      MEMORY[0x277D82BD8](updateName3);
      MEMORY[0x277D82BD8](hiddenAlternateStatefulDescriptor);
      MEMORY[0x277D82BD8](v43);
      MEMORY[0x277D82BD8](updateName2);
      MEMORY[0x277D82BD8](hiddenPreferredStatefulDescriptor);
      MEMORY[0x277D82BD8](v35);
      MEMORY[0x277D82BD8](v32);
      MEMORY[0x277D82BD8](v29);
      MEMORY[0x277D82BD8](currentDownload3);
      if (v84)
      {
        MEMORY[0x277D82BD8](updateName);
      }

      if (v86)
      {
        MEMORY[0x277D82BD8](descriptor);
      }

      if (v88)
      {
        MEMORY[0x277D82BD8](currentDownload2);
      }

      MEMORY[0x277D82BD8](currentDownload);
      MEMORY[0x277D82BD8](alternateStatefulDescriptor);
      MEMORY[0x277D82BD8](preferredStatefulDescriptor);
      MEMORY[0x277D82BD8](scanError);
      MEMORY[0x277D82BD8](delegate3);
      if (v90)
      {
        MEMORY[0x277D82BD8](v91);
      }

      if (v92)
      {
        MEMORY[0x277D82BD8](delegate2);
      }

      MEMORY[0x277D82BD8](delegate);
      MEMORY[0x277D82BD8](v65);
      MEMORY[0x277D82BD8](v63);
      obj = 0;
      objc_storeStrong(&v75, 0);
      objc_storeStrong(&v78, obj);
      objc_storeStrong(&v79, obj);
      objc_storeStrong(&v80, obj);
      objc_storeStrong(&v81, obj);
      objc_storeStrong(&v82, obj);
      objc_storeStrong(&v83, obj);
      objc_storeStrong(&v94, obj);
      objc_storeStrong(&v95, obj);
    }

    objc_storeStrong(&oslog, 0);
    [(SUUIMobileStatefulUIManager *)selfCopy clearPastScanResults];
    [(SUUIMobileStatefulUIManager *)selfCopy handleScanFinishedRollbackApplied:location[0]];
    [*(&selfCopy->super.super.isa + *MEMORY[0x277D64C10]) postEvent:*MEMORY[0x277D64D50] withInfo:location[0]];
    v74 = 1;
  }

  else
  {
    v73.receiver = selfCopy;
    v73.super_class = SUUIMobileStatefulUIManager;
    [(SUUIStatefulUIManager *)&v73 handleFullScanResults:location[0]];
    v74 = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)clearPastScanResults
{
  selfCopy = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = SUUIMobileStatefulUIManager;
  [(SUUIStatefulUIManager *)&v4 clearPastScanResults];
  currentAutoInstallOperation = [(SUUIMobileStatefulUIManager *)selfCopy currentAutoInstallOperation];
  MEMORY[0x277D82BD8](currentAutoInstallOperation);
  if (currentAutoInstallOperation)
  {
    currentAutoInstallOperation2 = [(SUUIMobileStatefulUIManager *)selfCopy currentAutoInstallOperation];
    [(SUAutoInstallOperation *)currentAutoInstallOperation2 setDelegate:?];
    MEMORY[0x277D82BD8](currentAutoInstallOperation2);
    [(SUUIMobileStatefulUIManager *)selfCopy setCurrentAutoInstallOperation:0];
  }
}

- (void)clearPastDownload:(id)download
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, download);
  v5.receiver = selfCopy;
  v5.super_class = SUUIMobileStatefulUIManager;
  [(SUUIStatefulUIManager *)&v5 clearPastDownload:location[0]];
  currentAutoInstallOperation = [(SUUIMobileStatefulUIManager *)selfCopy currentAutoInstallOperation];
  MEMORY[0x277D82BD8](currentAutoInstallOperation);
  if (currentAutoInstallOperation)
  {
    currentAutoInstallOperation2 = [(SUUIMobileStatefulUIManager *)selfCopy currentAutoInstallOperation];
    [(SUAutoInstallOperation *)currentAutoInstallOperation2 setDelegate:?];
    MEMORY[0x277D82BD8](currentAutoInstallOperation2);
    [(SUUIMobileStatefulUIManager *)selfCopy setCurrentAutoInstallOperation:0];
  }

  objc_storeStrong(location, 0);
}

- (NSString)description
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = SUUIMobileStatefulUIManager;
  return [(SUUIMobileStatefulUIManager *)&v3 description];
}

- (void)setupNetworkMonitoring
{
  selfCopy = self;
  v5[1] = a2;
  v5[0] = [MEMORY[0x277D648C0] sharedInstance];
  currentNetworkType = [v5[0] currentNetworkType];
  selfCopy->_networkType = currentNetworkType;
  [v5[0] addObserver:selfCopy];
  v3 = SBSSpringBoardServerPort();
  MEMORY[0x26D66E8D0](v3, &selfCopy->_originalCellFlag, &selfCopy->_originalWifiFlag);
  v4 = SBSSpringBoardServerPort();
  MEMORY[0x26D66E8F0](v4, 1);
  objc_storeStrong(v5, 0);
}

- (void)setupBatteryMonitoring
{
  PSSetBatteryMonitoringEnabled();
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  batteryState = [currentDevice batteryState];
  MEMORY[0x277D82BD8](currentDevice);
  v8 = 1;
  if (batteryState != 2)
  {
    v8 = batteryState == 3;
  }

  self->_connectedToPowerSource = v8;
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  [currentDevice2 batteryLevel];
  self->_batteryLevel = v2;
  MEMORY[0x277D82BD8](currentDevice2);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_batteryStateChanged_ name:*MEMORY[0x277D76870] object:?];
  MEMORY[0x277D82BD8](defaultCenter);
  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel_batteryLevelChanged_ name:*MEMORY[0x277D76868] object:0];
  MEMORY[0x277D82BD8](defaultCenter2);
}

- (void)setupObservers
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_didBecomeActive_ name:*MEMORY[0x277D76648] object:0];
  MEMORY[0x277D82BD8](defaultCenter);
}

- (void)networkChangedFromNetworkType:(int)type toNetworkType:(int)networkType
{
  selfCopy = self;
  v16 = a2;
  typeCopy = type;
  networkTypeCopy = networkType;
  objc_initWeak(&location, self);
  queue = *(&selfCopy->super.super.isa + *MEMORY[0x277D64C18]);
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __75__SUUIMobileStatefulUIManager_networkChangedFromNetworkType_toNetworkType___block_invoke;
  v9 = &unk_279CCF740;
  objc_copyWeak(v10, &location);
  v10[1] = v16;
  v11 = networkTypeCopy;
  v12 = typeCopy;
  dispatch_async(queue, &v5);
  objc_destroyWeak(v10);
  objc_destroyWeak(&location);
}

void __75__SUUIMobileStatefulUIManager_networkChangedFromNetworkType_toNetworkType___block_invoke(id *a1)
{
  v110 = &v128;
  v108 = a1;
  v109 = "[SUUIMobileStatefulUIManager networkChangedFromNetworkType:toNetworkType:]_block_invoke";
  v150 = *MEMORY[0x277D85DE8];
  v143[2] = a1;
  v143[1] = a1;
  v143[0] = objc_loadWeakRetained(a1 + 4);
  v107 = 0;
  if (!v143[0])
  {
    v106 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v1 = [v106 oslog];
    v2 = v106;
    *(v110 + 18) = v1;
    MEMORY[0x277D82BD8](v2);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(*(v110 + 18), OS_LOG_TYPE_ERROR))
    {
      log = *(v110 + 18);
      *v102 = type;
      v104 = NSStringFromSelector(v108[5]);
      v3 = MEMORY[0x277D82BE0](v104);
      v4 = v109;
      location = &v140;
      *(v110 + 16) = v3;
      buf = v149;
      __os_log_helper_16_2_2_8_32_8_66(v149, v4, v3);
      _os_log_error_impl(&dword_26B0B9000, log, v102[0], "%s: Self is nil in %{public}@. Stopping.", v149, 0x16u);
      MEMORY[0x277D82BD8](v104);
      objc_storeStrong(location, 0);
    }

    objc_storeStrong(&v142, 0);
    v5 = v110;
    *(v110 + 31) = 1;
    v107 = *(v5 + 31) != 0;
  }

  if (v107)
  {
    *(v110 + 30) = 1;
  }

  else
  {
    v139 = 0;
    v138 = 0;
    v137 = 0;
    v6 = [*(v110 + 19) networkType];
    v7 = v110;
    *(v110 + 28) = v6;
    v8 = [v7[19] currentState];
    v9 = v110;
    v10 = v108;
    *(v110 + 13) = v8;
    if (*(v9 + 28) != *(v10 + 12))
    {
      v100 = [MEMORY[0x277D64B58] statefulUILogger];
      v11 = [v100 oslog];
      v12 = v100;
      *(v110 + 12) = v11;
      MEMORY[0x277D82BD8](v12);
      v135 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(*(v110 + 12), OS_LOG_TYPE_DEFAULT))
      {
        v91 = *(v110 + 12);
        *v92 = v135;
        v93 = *(v110 + 19);
        v13 = objc_opt_class();
        v94 = NSStringFromClass(v13);
        v95 = MEMORY[0x277D82BE0](v94);
        *(v110 + 10) = v95;
        v96 = SUUIStatefulUIStateToString();
        v14 = MEMORY[0x277D82BE0](v96);
        v15 = v110;
        v97 = v14;
        *(v110 + 9) = v14;
        v98 = [v15[19] currentState];
        v99 = [*(v110 + 19) delegate];
        v132 = 0;
        v131 = 0;
        if (v99)
        {
          *(v110 + 8) = [*(v110 + 19) delegate];
          v89 = 1;
          v132 = 1;
          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          *(v110 + 6) = v17;
          v131 = 1;
          v90 = v17;
        }

        else
        {
          v90 = @"(null)";
        }

        v83 = v90;
        v84 = [*(v110 + 19) delegate];
        v85 = [*(v110 + 19) scanError];
        v86 = [*(v110 + 19) preferredStatefulDescriptor];
        v87 = [*(v110 + 19) alternateStatefulDescriptor];
        v88 = [*(v110 + 19) currentDownload];
        v130 = 0;
        v129 = 0;
        v127 = 0;
        if (v88)
        {
          v18 = [*(v110 + 19) currentDownload];
          *(v110 + 4) = v18;
          v81 = 1;
          v130 = 1;
          v19 = [v18 descriptor];
          *(v110 + 2) = v19;
          v129 = 1;
          v20 = [v19 updateName];
          v21 = v81;
          *v110 = v20;
          v127 = v21 & 1;
          v82 = v20;
        }

        else
        {
          v82 = @"(null)";
        }

        v58 = v82;
        v59 = [*(v110 + 19) currentDownload];
        [*(v110 + 19) currentUpdateOperationType];
        v60 = SUUIUpdateContinuousOperationTypeToString();
        v61 = MEMORY[0x277D82BE0](v60);
        v126 = v61;
        v147 = [*(v110 + 19) isTargetedUpdateScheduledForAutoInstall];
        v71 = @"NO";
        v72 = @"YES";
        v79 = 1;
        if (v147)
        {
          v22 = @"YES";
        }

        else
        {
          v22 = @"NO";
        }

        v62 = v22;
        v23 = v22;
        v63 = v62;
        v64 = MEMORY[0x277D82BE0](v63);
        v125 = v64;
        v146 = [*(v110 + 19) hidingPreferredDescriptor];
        if (v146)
        {
          v24 = v72;
        }

        else
        {
          v24 = v71;
        }

        v65 = v24;
        v25 = v24;
        v66 = v65;
        v67 = MEMORY[0x277D82BE0](v66);
        v124 = v67;
        v68 = [*(v110 + 19) hiddenPreferredStatefulDescriptor];
        v69 = [v68 updateName];
        v70 = MEMORY[0x277D82BE0](v69);
        v123 = v70;
        v145 = [*(v110 + 19) hidingAlternateDescriptor];
        if (v145)
        {
          v26 = v72;
        }

        else
        {
          v26 = v71;
        }

        v73 = v26;
        v27 = v26;
        v74 = v73;
        v75 = MEMORY[0x277D82BE0](v74);
        v122 = v75;
        v76 = [*(v110 + 19) hiddenAlternateStatefulDescriptor];
        v77 = [v76 updateName];
        v78 = MEMORY[0x277D82BE0](v77);
        v121 = v78;
        v80 = [*(v110 + 19) enrolledBetaProgram];
        v119 = 0;
        if (v80)
        {
          v120 = [*(v110 + 19) enrolledBetaProgram];
          v119 = 1;
          v57 = [v120 programID];
        }

        else
        {
          v57 = 0;
        }

        v28 = [*(*(v110 + 19) + *MEMORY[0x277D64BE8]) count];
        v144 = [*(v110 + 19) canEnrollInBetaUpdates];
        if (v144)
        {
          v29 = @"YES";
        }

        else
        {
          v29 = @"NO";
        }

        v42 = v29;
        v30 = v29;
        v56 = v42;
        v118 = MEMORY[0x277D82BE0](v56);
        v43 = *(*(v110 + 19) + *MEMORY[0x277D64BF0]);
        v44 = *(*(v110 + 19) + *MEMORY[0x277D64BF8]);
        v45 = *(*(v110 + 19) + *MEMORY[0x277D64C08]);
        v46 = [*(*(v110 + 19) + *MEMORY[0x277D64BE0]) count];
        v55 = SUStringFromNetworkType();
        v47 = MEMORY[0x277D82BE0](v55);
        v117 = v47;
        v48 = *(v108 + 13);
        v54 = SUStringFromNetworkType();
        v49 = MEMORY[0x277D82BE0](v54);
        v116 = v49;
        v50 = *(v108 + 12);
        v53 = SUStringFromNetworkType();
        v115 = MEMORY[0x277D82BE0](v53);
        v31 = *(v110 + 28);
        v51 = &v33;
        v52 = v148;
        __os_log_helper_16_2_31_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_64_4_0_8_66_4_0_8_66_4_0(v148, v109, v93, v95, v97, v98, v83, v84, v85, v86, v87, v58, v59, v61, v64, v67, v70, v75, v78, v57, v28, v118, v43, v44, v45, v46, v47, v48, v49, v50, v115, v31);
        _os_log_impl(&dword_26B0B9000, v91, v92[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nChanged network type: %@ (%d) -> %{public}@ (%d) (current network type: %{public}@ (%d))", v52, 0x12Cu);
        MEMORY[0x277D82BD8](v53);
        MEMORY[0x277D82BD8](v54);
        MEMORY[0x277D82BD8](v55);
        MEMORY[0x277D82BD8](v56);
        if (v119)
        {
          MEMORY[0x277D82BD8](v120);
        }

        MEMORY[0x277D82BD8](v80);
        MEMORY[0x277D82BD8](v77);
        MEMORY[0x277D82BD8](v76);
        MEMORY[0x277D82BD8](v74);
        MEMORY[0x277D82BD8](v69);
        MEMORY[0x277D82BD8](v68);
        MEMORY[0x277D82BD8](v66);
        MEMORY[0x277D82BD8](v63);
        MEMORY[0x277D82BD8](v60);
        MEMORY[0x277D82BD8](v59);
        if (v127)
        {
          MEMORY[0x277D82BD8](*v110);
        }

        if (v129)
        {
          MEMORY[0x277D82BD8](*(v110 + 2));
        }

        if (v130)
        {
          MEMORY[0x277D82BD8](*(v110 + 4));
        }

        MEMORY[0x277D82BD8](v88);
        MEMORY[0x277D82BD8](v87);
        MEMORY[0x277D82BD8](v86);
        MEMORY[0x277D82BD8](v85);
        MEMORY[0x277D82BD8](v84);
        if (v131)
        {
          MEMORY[0x277D82BD8](*(v110 + 6));
        }

        if (v132)
        {
          MEMORY[0x277D82BD8](*(v110 + 8));
        }

        MEMORY[0x277D82BD8](v99);
        MEMORY[0x277D82BD8](v96);
        MEMORY[0x277D82BD8](v94);
        obj = 0;
        objc_storeStrong(&v115, 0);
        objc_storeStrong(&v116, obj);
        objc_storeStrong(&v117, obj);
        objc_storeStrong(&v118, obj);
        objc_storeStrong(&v121, obj);
        objc_storeStrong(&v122, obj);
        objc_storeStrong(&v123, obj);
        objc_storeStrong(&v124, obj);
        objc_storeStrong(&v125, obj);
        objc_storeStrong(&v126, obj);
        objc_storeStrong(&v133, obj);
        objc_storeStrong(&v134, obj);
      }

      objc_storeStrong(&v136, 0);
      [*(v110 + 19) setNetworkType:*(v108 + 12)];
      if (*(v108 + 12))
      {
        v40 = [*(v110 + 19) preferredStatefulDescriptor];
        if (v40 || (v32 = *(v110 + 13) - 3, v39 = 1, !v32))
        {
          v39 = *(v110 + 13) == 2;
        }

        v38 = v39;
        MEMORY[0x277D82BD8](v40);
        if (v38)
        {
          v139 = 1;
        }

        else
        {
          [*(v110 + 19) setScanError:0];
          v137 = 1;
        }
      }

      else if (*(v110 + 13) != 2)
      {
        v37 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64910] code:7 userInfo:0];
        v113 = 0;
        v111 = 0;
        if (v37)
        {
          v34 = [SUUIMobileStatefulError alloc];
          v114 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D64910] code:7 userInfo:0];
          v35 = 1;
          v113 = 1;
          v112 = [(SUUIStatefulError *)v34 initFromError:?];
          v111 = v35 & 1;
          v36 = v112;
        }

        else
        {
          v36 = 0;
        }

        [*(v110 + 19) setScanError:v36];
        if (v111)
        {
          MEMORY[0x277D82BD8](v112);
        }

        if (v113)
        {
          MEMORY[0x277D82BD8](v114);
        }

        MEMORY[0x277D82BD8](v37);
        v138 = 1;
      }
    }

    if (v139)
    {
      [*(v110 + 19) checkForAvailableUpdatesWithRetriesCount:kSUUIMobileStatefulUINetworkErrorRetriesCount];
    }

    else if (v137)
    {
      [*(v110 + 19) refreshState:1];
    }

    else if (v138)
    {
      [*(v110 + 19) refreshState];
    }

    *(v110 + 30) = 0;
  }

  objc_storeStrong(v143, 0);
}

- (void)client:(id)client scanRequestDidStartForOptions:(id)options
{
  obj = options;
  v140 = "[SUUIMobileStatefulUIManager client:scanRequestDidStartForOptions:]";
  v205 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v192 = 0;
  objc_storeStrong(&v192, obj);
  v190 = 0;
  v142 = 1;
  if (v192)
  {
    identifier = [v192 identifier];
    v190 = 1;
    v142 = identifier == 0;
  }

  v139 = v142;
  if (v190)
  {
    MEMORY[0x277D82BD8](identifier);
  }

  if (v139)
  {
    statefulUILogger = [MEMORY[0x277D64B58] statefulUILogger];
    oslog = [statefulUILogger oslog];
    MEMORY[0x277D82BD8](statefulUILogger);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      *v130 = type;
      v131 = selfCopy;
      v4 = objc_opt_class();
      v132 = NSStringFromClass(v4);
      v133 = MEMORY[0x277D82BE0](v132);
      v187 = v133;
      v134 = SUUIStatefulUIStateToString();
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
      [(SUUIStatefulUIManager *)selfCopy currentUpdateOperationType];
      v98 = SUUIUpdateContinuousOperationTypeToString();
      v99 = MEMORY[0x277D82BE0](v98);
      v175 = v99;
      isTargetedUpdateScheduledForAutoInstall = [(SUUIMobileStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
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
      v87 = [*(&selfCopy->super.super.isa + *MEMORY[0x277D64BE8]) count];
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
      v89 = *(&selfCopy->super.super.isa + *MEMORY[0x277D64BF0]);
      v90 = *(&selfCopy->super.super.isa + *MEMORY[0x277D64BF8]);
      v91 = *(&selfCopy->super.super.isa + *MEMORY[0x277D64C08]);
      v14 = [*(&selfCopy->super.super.isa + *MEMORY[0x277D64BE0]) count];
      v92 = &v25;
      buf = v204;
      __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v204, v140, v131, v133, v135, currentState, v121, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v96, currentDownload3, v99, v102, v105, v108, v113, v116, v86, v87, v88, v89, v90, v91, v14);
      _os_log_impl(&dword_26B0B9000, log, v130[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nScan has finished, but we've been given a nil options. Skipping.", buf, 0xFCu);
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
      v84 = 0;
      objc_storeStrong(&v167, 0);
      objc_storeStrong(&v170, v84);
      objc_storeStrong(&v171, v84);
      objc_storeStrong(&v172, v84);
      objc_storeStrong(&v173, v84);
      objc_storeStrong(&v174, v84);
      objc_storeStrong(&v175, v84);
      objc_storeStrong(&v186, v84);
      objc_storeStrong(&v187, v84);
    }

    objc_storeStrong(&oslog, 0);
    v166 = 1;
  }

  else
  {
    statefulUILogger2 = [MEMORY[0x277D64B58] statefulUILogger];
    oslog = [statefulUILogger2 oslog];
    MEMORY[0x277D82BD8](statefulUILogger2);
    v164 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v74 = oslog;
      *v75 = v164;
      v76 = selfCopy;
      v15 = objc_opt_class();
      v77 = NSStringFromClass(v15);
      v78 = MEMORY[0x277D82BE0](v77);
      v163 = v78;
      v79 = SUUIStatefulUIStateToString();
      v80 = MEMORY[0x277D82BE0](v79);
      v162 = v80;
      currentState2 = [(SUUIStatefulUIManager *)selfCopy currentState];
      delegate4 = [(SUUIStatefulUIManager *)selfCopy delegate];
      v160 = 0;
      v158 = 0;
      if (delegate4)
      {
        delegate5 = [(SUUIStatefulUIManager *)selfCopy delegate];
        v72 = 1;
        v160 = 1;
        v16 = objc_opt_class();
        v159 = NSStringFromClass(v16);
        v158 = 1;
        v73 = v159;
      }

      else
      {
        v73 = @"(null)";
      }

      v66 = v73;
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
        v64 = 1;
        v156 = 1;
        descriptor2 = [(SUUIDownload *)currentDownload5 descriptor];
        v154 = 1;
        updateName4 = [descriptor2 updateName];
        v152 = 1;
        v65 = updateName4;
      }

      else
      {
        v65 = @"(null)";
      }

      v41 = v65;
      currentDownload6 = [(SUUIStatefulUIManager *)selfCopy currentDownload];
      [(SUUIStatefulUIManager *)selfCopy currentUpdateOperationType];
      v43 = SUUIUpdateContinuousOperationTypeToString();
      v44 = MEMORY[0x277D82BE0](v43);
      v151 = v44;
      isTargetedUpdateScheduledForAutoInstall2 = [(SUUIMobileStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
      v54 = @"NO";
      v55 = @"YES";
      v62 = 1;
      if (isTargetedUpdateScheduledForAutoInstall2)
      {
        v17 = @"YES";
      }

      else
      {
        v17 = @"NO";
      }

      v45 = v17;
      v18 = v17;
      v46 = v45;
      v47 = MEMORY[0x277D82BE0](v46);
      v150 = v47;
      if ([(SUUIStatefulUIManager *)selfCopy hidingPreferredDescriptor])
      {
        v19 = v55;
      }

      else
      {
        v19 = v54;
      }

      v48 = v19;
      v20 = v19;
      v49 = v48;
      v50 = MEMORY[0x277D82BE0](v49);
      v149 = v50;
      hiddenPreferredStatefulDescriptor2 = [(SUUIStatefulUIManager *)selfCopy hiddenPreferredStatefulDescriptor];
      updateName5 = [(SUUIStatefulDescriptor *)hiddenPreferredStatefulDescriptor2 updateName];
      v53 = MEMORY[0x277D82BE0](updateName5);
      v148 = v53;
      if ([(SUUIStatefulUIManager *)selfCopy hidingAlternateDescriptor])
      {
        v21 = v55;
      }

      else
      {
        v21 = v54;
      }

      v56 = v21;
      v22 = v21;
      v57 = v56;
      v58 = MEMORY[0x277D82BE0](v57);
      v147 = v58;
      hiddenAlternateStatefulDescriptor2 = [(SUUIStatefulUIManager *)selfCopy hiddenAlternateStatefulDescriptor];
      updateName6 = [(SUUIStatefulDescriptor *)hiddenAlternateStatefulDescriptor2 updateName];
      v61 = MEMORY[0x277D82BE0](updateName6);
      v146 = v61;
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

      v29 = programID2;
      v30 = [*(&selfCopy->super.super.isa + *MEMORY[0x277D64BE8]) count];
      if ([(SUUIStatefulUIManager *)selfCopy canEnrollInBetaUpdates])
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      v28 = v23;
      v24 = v23;
      v39 = v28;
      v31 = MEMORY[0x277D82BE0](v39);
      v143 = v31;
      v32 = *(&selfCopy->super.super.isa + *MEMORY[0x277D64BF0]);
      v33 = *(&selfCopy->super.super.isa + *MEMORY[0x277D64BF8]);
      v34 = *(&selfCopy->super.super.isa + *MEMORY[0x277D64C08]);
      v35 = [*(&selfCopy->super.super.isa + *MEMORY[0x277D64BE0]) count];
      identifier2 = [v192 identifier];
      v36 = &v25;
      v37 = v203;
      __os_log_helper_16_2_26_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66(v203, v140, v76, v78, v80, currentState2, v66, delegate6, scanError2, preferredStatefulDescriptor2, alternateStatefulDescriptor2, v41, currentDownload6, v44, v47, v50, v53, v58, v61, v29, v30, v31, v32, v33, v34, v35, identifier2);
      _os_log_impl(&dword_26B0B9000, v74, v75[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nScan has started on behalf of: %{public}@", v37, 0x106u);
      MEMORY[0x277D82BD8](identifier2);
      MEMORY[0x277D82BD8](v39);
      if (v144)
      {
        MEMORY[0x277D82BD8](enrolledBetaProgram4);
      }

      MEMORY[0x277D82BD8](enrolledBetaProgram3);
      MEMORY[0x277D82BD8](updateName6);
      MEMORY[0x277D82BD8](hiddenAlternateStatefulDescriptor2);
      MEMORY[0x277D82BD8](v57);
      MEMORY[0x277D82BD8](updateName5);
      MEMORY[0x277D82BD8](hiddenPreferredStatefulDescriptor2);
      MEMORY[0x277D82BD8](v49);
      MEMORY[0x277D82BD8](v46);
      MEMORY[0x277D82BD8](v43);
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
      MEMORY[0x277D82BD8](v79);
      MEMORY[0x277D82BD8](v77);
      v27 = 0;
      objc_storeStrong(&v143, 0);
      objc_storeStrong(&v146, v27);
      objc_storeStrong(&v147, v27);
      objc_storeStrong(&v148, v27);
      objc_storeStrong(&v149, v27);
      objc_storeStrong(&v150, v27);
      objc_storeStrong(&v151, v27);
      objc_storeStrong(&v162, v27);
      objc_storeStrong(&v163, v27);
    }

    objc_storeStrong(&oslog, 0);
    v166 = 0;
  }

  v26 = 0;
  objc_storeStrong(&v192, 0);
  objc_storeStrong(location, v26);
}

- (void)client:(id)client scanRequestDidFinishForOptions:(id)options results:(id)results error:(id)error
{
  obj = options;
  resultsCopy = results;
  errorCopy = error;
  v184 = "[SUUIMobileStatefulUIManager client:scanRequestDidFinishForOptions:results:error:]";
  v287 = *MEMORY[0x277D85DE8];
  val = self;
  v271 = a2;
  location = 0;
  objc_storeStrong(&location, client);
  v269 = 0;
  objc_storeStrong(&v269, obj);
  v268 = 0;
  objc_storeStrong(&v268, resultsCopy);
  v267 = 0;
  objc_storeStrong(&v267, errorCopy);
  v265 = 0;
  v188 = 1;
  if (v269)
  {
    identifier = [v269 identifier];
    v265 = 1;
    v188 = identifier == 0;
  }

  v183 = v188;
  if (v265)
  {
    MEMORY[0x277D82BD8](identifier);
  }

  if (v183)
  {
    statefulUILogger = [MEMORY[0x277D64B58] statefulUILogger];
    oslog = [statefulUILogger oslog];
    MEMORY[0x277D82BD8](statefulUILogger);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      *v174 = type;
      v175 = val;
      v6 = objc_opt_class();
      v176 = NSStringFromClass(v6);
      v177 = MEMORY[0x277D82BE0](v176);
      v262 = v177;
      v178 = SUUIStatefulUIStateToString();
      v179 = MEMORY[0x277D82BE0](v178);
      v261 = v179;
      currentState = [val currentState];
      delegate = [val delegate];
      v259 = 0;
      v257 = 0;
      if (delegate)
      {
        delegate2 = [val delegate];
        v171 = 1;
        v259 = 1;
        v7 = objc_opt_class();
        v258 = NSStringFromClass(v7);
        v257 = 1;
        v172 = v258;
      }

      else
      {
        v172 = @"(null)";
      }

      v165 = v172;
      delegate3 = [val delegate];
      scanError = [val scanError];
      preferredStatefulDescriptor = [val preferredStatefulDescriptor];
      alternateStatefulDescriptor = [val alternateStatefulDescriptor];
      currentDownload = [val currentDownload];
      v255 = 0;
      v253 = 0;
      v251 = 0;
      if (currentDownload)
      {
        currentDownload2 = [val currentDownload];
        v163 = 1;
        v255 = 1;
        descriptor = [currentDownload2 descriptor];
        v253 = 1;
        updateName = [descriptor updateName];
        v251 = 1;
        v164 = updateName;
      }

      else
      {
        v164 = @"(null)";
      }

      v140 = v164;
      currentDownload3 = [val currentDownload];
      [val currentUpdateOperationType];
      v142 = SUUIUpdateContinuousOperationTypeToString();
      v143 = MEMORY[0x277D82BE0](v142);
      v250 = v143;
      isTargetedUpdateScheduledForAutoInstall = [val isTargetedUpdateScheduledForAutoInstall];
      v153 = @"NO";
      v154 = @"YES";
      v161 = 1;
      if (isTargetedUpdateScheduledForAutoInstall)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      v144 = v8;
      v9 = v8;
      v145 = v144;
      v146 = MEMORY[0x277D82BE0](v145);
      v249 = v146;
      hidingPreferredDescriptor = [val hidingPreferredDescriptor];
      if (hidingPreferredDescriptor)
      {
        v10 = v154;
      }

      else
      {
        v10 = v153;
      }

      v147 = v10;
      v11 = v10;
      v148 = v147;
      v149 = MEMORY[0x277D82BE0](v148);
      v248 = v149;
      hiddenPreferredStatefulDescriptor = [val hiddenPreferredStatefulDescriptor];
      updateName2 = [hiddenPreferredStatefulDescriptor updateName];
      v152 = MEMORY[0x277D82BE0](updateName2);
      v247 = v152;
      hidingAlternateDescriptor = [val hidingAlternateDescriptor];
      if (hidingAlternateDescriptor)
      {
        v12 = v154;
      }

      else
      {
        v12 = v153;
      }

      v155 = v12;
      v13 = v12;
      v156 = v155;
      v157 = MEMORY[0x277D82BE0](v156);
      v246 = v157;
      hiddenAlternateStatefulDescriptor = [val hiddenAlternateStatefulDescriptor];
      updateName3 = [hiddenAlternateStatefulDescriptor updateName];
      v160 = MEMORY[0x277D82BE0](updateName3);
      v245 = v160;
      enrolledBetaProgram = [val enrolledBetaProgram];
      v243 = 0;
      if (enrolledBetaProgram)
      {
        enrolledBetaProgram2 = [val enrolledBetaProgram];
        v243 = 1;
        programID = [enrolledBetaProgram2 programID];
      }

      else
      {
        programID = 0;
      }

      v130 = programID;
      v131 = [*(val + *MEMORY[0x277D64BE8]) count];
      canEnrollInBetaUpdates = [val canEnrollInBetaUpdates];
      if (canEnrollInBetaUpdates)
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      v129 = v14;
      v15 = v14;
      v138 = v129;
      v132 = MEMORY[0x277D82BE0](v138);
      v242 = v132;
      v133 = *(val + *MEMORY[0x277D64BF0]);
      v134 = *(val + *MEMORY[0x277D64BF8]);
      v135 = *(val + *MEMORY[0x277D64C08]);
      v16 = [*(val + *MEMORY[0x277D64BE0]) count];
      v136 = &v31;
      buf = v286;
      __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v286, v184, v175, v177, v179, currentState, v165, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v140, currentDownload3, v143, v146, v149, v152, v157, v160, v130, v131, v132, v133, v134, v135, v16);
      _os_log_impl(&dword_26B0B9000, log, v174[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nScan has finished, but we've been given a nil options. Skipping.", buf, 0xFCu);
      MEMORY[0x277D82BD8](v138);
      if (v243)
      {
        MEMORY[0x277D82BD8](enrolledBetaProgram2);
      }

      MEMORY[0x277D82BD8](enrolledBetaProgram);
      MEMORY[0x277D82BD8](updateName3);
      MEMORY[0x277D82BD8](hiddenAlternateStatefulDescriptor);
      MEMORY[0x277D82BD8](v156);
      MEMORY[0x277D82BD8](updateName2);
      MEMORY[0x277D82BD8](hiddenPreferredStatefulDescriptor);
      MEMORY[0x277D82BD8](v148);
      MEMORY[0x277D82BD8](v145);
      MEMORY[0x277D82BD8](v142);
      MEMORY[0x277D82BD8](currentDownload3);
      if (v251)
      {
        MEMORY[0x277D82BD8](updateName);
      }

      if (v253)
      {
        MEMORY[0x277D82BD8](descriptor);
      }

      if (v255)
      {
        MEMORY[0x277D82BD8](currentDownload2);
      }

      MEMORY[0x277D82BD8](currentDownload);
      MEMORY[0x277D82BD8](alternateStatefulDescriptor);
      MEMORY[0x277D82BD8](preferredStatefulDescriptor);
      MEMORY[0x277D82BD8](scanError);
      MEMORY[0x277D82BD8](delegate3);
      if (v257)
      {
        MEMORY[0x277D82BD8](v258);
      }

      if (v259)
      {
        MEMORY[0x277D82BD8](delegate2);
      }

      MEMORY[0x277D82BD8](delegate);
      MEMORY[0x277D82BD8](v178);
      MEMORY[0x277D82BD8](v176);
      v128 = 0;
      objc_storeStrong(&v242, 0);
      objc_storeStrong(&v245, v128);
      objc_storeStrong(&v246, v128);
      objc_storeStrong(&v247, v128);
      objc_storeStrong(&v248, v128);
      objc_storeStrong(&v249, v128);
      objc_storeStrong(&v250, v128);
      objc_storeStrong(&v261, v128);
      objc_storeStrong(&v262, v128);
    }

    objc_storeStrong(&oslog, 0);
    v241 = 1;
    goto LABEL_116;
  }

  statefulUILogger2 = [MEMORY[0x277D64B58] statefulUILogger];
  oslog = [statefulUILogger2 oslog];
  MEMORY[0x277D82BD8](statefulUILogger2);
  v239 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v118 = oslog;
    *v119 = v239;
    v120 = val;
    v17 = objc_opt_class();
    v121 = NSStringFromClass(v17);
    v122 = MEMORY[0x277D82BE0](v121);
    v238 = v122;
    v123 = SUUIStatefulUIStateToString();
    v124 = MEMORY[0x277D82BE0](v123);
    v237 = v124;
    currentState2 = [val currentState];
    delegate4 = [val delegate];
    v235 = 0;
    v233 = 0;
    if (delegate4)
    {
      delegate5 = [val delegate];
      v116 = 1;
      v235 = 1;
      v18 = objc_opt_class();
      v234 = NSStringFromClass(v18);
      v233 = 1;
      v117 = v234;
    }

    else
    {
      v117 = @"(null)";
    }

    v110 = v117;
    delegate6 = [val delegate];
    scanError2 = [val scanError];
    preferredStatefulDescriptor2 = [val preferredStatefulDescriptor];
    alternateStatefulDescriptor2 = [val alternateStatefulDescriptor];
    currentDownload4 = [val currentDownload];
    v231 = 0;
    v229 = 0;
    v227 = 0;
    if (currentDownload4)
    {
      currentDownload5 = [val currentDownload];
      v108 = 1;
      v231 = 1;
      descriptor2 = [currentDownload5 descriptor];
      v229 = 1;
      updateName4 = [descriptor2 updateName];
      v227 = 1;
      v109 = updateName4;
    }

    else
    {
      v109 = @"(null)";
    }

    v85 = v109;
    currentDownload6 = [val currentDownload];
    [val currentUpdateOperationType];
    v87 = SUUIUpdateContinuousOperationTypeToString();
    v88 = MEMORY[0x277D82BE0](v87);
    v226 = v88;
    isTargetedUpdateScheduledForAutoInstall2 = [val isTargetedUpdateScheduledForAutoInstall];
    v98 = @"NO";
    v99 = @"YES";
    v106 = 1;
    if (isTargetedUpdateScheduledForAutoInstall2)
    {
      v19 = @"YES";
    }

    else
    {
      v19 = @"NO";
    }

    v89 = v19;
    v20 = v19;
    v90 = v89;
    v91 = MEMORY[0x277D82BE0](v90);
    v225 = v91;
    hidingPreferredDescriptor2 = [val hidingPreferredDescriptor];
    if (hidingPreferredDescriptor2)
    {
      v21 = v99;
    }

    else
    {
      v21 = v98;
    }

    v92 = v21;
    v22 = v21;
    v93 = v92;
    v94 = MEMORY[0x277D82BE0](v93);
    v224 = v94;
    hiddenPreferredStatefulDescriptor2 = [val hiddenPreferredStatefulDescriptor];
    updateName5 = [hiddenPreferredStatefulDescriptor2 updateName];
    v97 = MEMORY[0x277D82BE0](updateName5);
    v223 = v97;
    hidingAlternateDescriptor2 = [val hidingAlternateDescriptor];
    if (hidingAlternateDescriptor2)
    {
      v23 = v99;
    }

    else
    {
      v23 = v98;
    }

    v100 = v23;
    v24 = v23;
    v101 = v100;
    v102 = MEMORY[0x277D82BE0](v101);
    v222 = v102;
    hiddenAlternateStatefulDescriptor2 = [val hiddenAlternateStatefulDescriptor];
    updateName6 = [hiddenAlternateStatefulDescriptor2 updateName];
    v105 = MEMORY[0x277D82BE0](updateName6);
    v221 = v105;
    enrolledBetaProgram3 = [val enrolledBetaProgram];
    v219 = 0;
    if (enrolledBetaProgram3)
    {
      enrolledBetaProgram4 = [val enrolledBetaProgram];
      v219 = 1;
      programID2 = [enrolledBetaProgram4 programID];
    }

    else
    {
      programID2 = 0;
    }

    v73 = programID2;
    v74 = [*(val + *MEMORY[0x277D64BE8]) count];
    canEnrollInBetaUpdates2 = [val canEnrollInBetaUpdates];
    if (canEnrollInBetaUpdates2)
    {
      v25 = @"YES";
    }

    else
    {
      v25 = @"NO";
    }

    v72 = v25;
    v26 = v25;
    v83 = v72;
    v75 = MEMORY[0x277D82BE0](v83);
    v218 = v75;
    v76 = *(val + *MEMORY[0x277D64BF0]);
    v77 = *(val + *MEMORY[0x277D64BF8]);
    v78 = *(val + *MEMORY[0x277D64C08]);
    v79 = [*(val + *MEMORY[0x277D64BE0]) count];
    identifier2 = [v269 identifier];
    v80 = &v31;
    v81 = v285;
    __os_log_helper_16_2_26_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66(v285, v184, v120, v122, v124, currentState2, v110, delegate6, scanError2, preferredStatefulDescriptor2, alternateStatefulDescriptor2, v85, currentDownload6, v88, v91, v94, v97, v102, v105, v73, v74, v75, v76, v77, v78, v79, identifier2);
    _os_log_impl(&dword_26B0B9000, v118, v119[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nScan has finished, triggered by the initiator: %{public}@", v81, 0x106u);
    MEMORY[0x277D82BD8](identifier2);
    MEMORY[0x277D82BD8](v83);
    if (v219)
    {
      MEMORY[0x277D82BD8](enrolledBetaProgram4);
    }

    MEMORY[0x277D82BD8](enrolledBetaProgram3);
    MEMORY[0x277D82BD8](updateName6);
    MEMORY[0x277D82BD8](hiddenAlternateStatefulDescriptor2);
    MEMORY[0x277D82BD8](v101);
    MEMORY[0x277D82BD8](updateName5);
    MEMORY[0x277D82BD8](hiddenPreferredStatefulDescriptor2);
    MEMORY[0x277D82BD8](v93);
    MEMORY[0x277D82BD8](v90);
    MEMORY[0x277D82BD8](v87);
    MEMORY[0x277D82BD8](currentDownload6);
    if (v227)
    {
      MEMORY[0x277D82BD8](updateName4);
    }

    if (v229)
    {
      MEMORY[0x277D82BD8](descriptor2);
    }

    if (v231)
    {
      MEMORY[0x277D82BD8](currentDownload5);
    }

    MEMORY[0x277D82BD8](currentDownload4);
    MEMORY[0x277D82BD8](alternateStatefulDescriptor2);
    MEMORY[0x277D82BD8](preferredStatefulDescriptor2);
    MEMORY[0x277D82BD8](scanError2);
    MEMORY[0x277D82BD8](delegate6);
    if (v233)
    {
      MEMORY[0x277D82BD8](v234);
    }

    if (v235)
    {
      MEMORY[0x277D82BD8](delegate5);
    }

    MEMORY[0x277D82BD8](delegate4);
    MEMORY[0x277D82BD8](v123);
    MEMORY[0x277D82BD8](v121);
    v71 = 0;
    objc_storeStrong(&v218, 0);
    objc_storeStrong(&v221, v71);
    objc_storeStrong(&v222, v71);
    objc_storeStrong(&v223, v71);
    objc_storeStrong(&v224, v71);
    objc_storeStrong(&v225, v71);
    objc_storeStrong(&v226, v71);
    objc_storeStrong(&v237, v71);
    objc_storeStrong(&v238, v71);
  }

  objc_storeStrong(&oslog, 0);
  identifier3 = [v269 identifier];
  clientIdentifier = [val clientIdentifier];
  v70 = [identifier3 isEqualToString:?];
  MEMORY[0x277D82BD8](clientIdentifier);
  MEMORY[0x277D82BD8](identifier3);
  if (v70)
  {
    v241 = 1;
    goto LABEL_116;
  }

  preferredDescriptor = [v268 preferredDescriptor];
  v66 = preferredDescriptor != 0;
  MEMORY[0x277D82BD8](preferredDescriptor);
  v217 = v66;
  alternateDescriptor = [v268 alternateDescriptor];
  v67 = alternateDescriptor != 0;
  MEMORY[0x277D82BD8](alternateDescriptor);
  v216 = v67;
  v215 = 1;
  if (!v217 && !v216)
  {
LABEL_115:
    from = &v198;
    objc_initWeak(&v198, val);
    queue = *(val + *MEMORY[0x277D64C18]);
    block = &v189;
    v189 = MEMORY[0x277D85DD0];
    v190 = -1073741824;
    v191 = 0;
    v192 = __83__SUUIMobileStatefulUIManager_client_scanRequestDidFinishForOptions_results_error___block_invoke;
    v193 = &unk_279CCF768;
    v38 = v196;
    objc_copyWeak(v196, from);
    v196[1] = v271;
    v197 = v215 & 1;
    v36 = (block + 32);
    v194 = MEMORY[0x277D82BE0](v268);
    v35 = (block + 40);
    v195 = MEMORY[0x277D82BE0](v267);
    dispatch_async(queue, block);
    v37 = 0;
    objc_storeStrong(v35, 0);
    objc_storeStrong(v36, v37);
    objc_destroyWeak(v38);
    objc_destroyWeak(from);
    v241 = 0;
    goto LABEL_116;
  }

  v213 = 0;
  isSplatOnly = 0;
  if (v217)
  {
    isSplatOnly = 0;
    if (!v216)
    {
      preferredDescriptor2 = [v268 preferredDescriptor];
      v213 = 1;
      isSplatOnly = [preferredDescriptor2 isSplatOnly];
    }
  }

  v64 = isSplatOnly;
  if (v213)
  {
    MEMORY[0x277D82BD8](preferredDescriptor2);
  }

  if (v64)
  {
    statefulUILogger3 = [MEMORY[0x277D64B58] statefulUILogger];
    oslog2 = [statefulUILogger3 oslog];
    MEMORY[0x277D82BD8](statefulUILogger3);
    v211 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      v60 = oslog2;
      *v61 = v211;
      v62 = v284;
      __os_log_helper_16_2_2_8_32_8_0(v284, v184, val);
      _os_log_impl(&dword_26B0B9000, v60, v61[0], "%s [%p]: Dropping a 3rd party scan results notification: the results contains only a SPLAT preferred descriptor.", v62, 0x16u);
    }

    objc_storeStrong(&oslog2, 0);
    v241 = 1;
    goto LABEL_116;
  }

  v209 = 0;
  isSplatOnly2 = 0;
  if (!v217)
  {
    isSplatOnly2 = 0;
    if (v216)
    {
      alternateDescriptor2 = [v268 alternateDescriptor];
      v209 = 1;
      isSplatOnly2 = [alternateDescriptor2 isSplatOnly];
    }
  }

  v58 = isSplatOnly2;
  if (v209)
  {
    MEMORY[0x277D82BD8](alternateDescriptor2);
  }

  if (v58)
  {
    statefulUILogger4 = [MEMORY[0x277D64B58] statefulUILogger];
    oslog3 = [statefulUILogger4 oslog];
    MEMORY[0x277D82BD8](statefulUILogger4);
    v207 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
    {
      v54 = oslog3;
      *v55 = v207;
      v56 = v283;
      __os_log_helper_16_2_2_8_32_8_0(v283, v184, val);
      _os_log_impl(&dword_26B0B9000, v54, v55[0], "%s [%p]: Dropping a 3rd party scan results notification: the results contains only a SPLAT alternate descriptor.", v56, 0x16u);
    }

    objc_storeStrong(&oslog3, 0);
    v241 = 1;
    goto LABEL_116;
  }

  alternateDescriptor3 = [v268 alternateDescriptor];
  isSplatOnly3 = [alternateDescriptor3 isSplatOnly];
  v205 = 0;
  isSplatOnly4 = 0;
  if (isSplatOnly3)
  {
    alternateDescriptor4 = [v268 alternateDescriptor];
    v205 = 1;
    isSplatOnly4 = [alternateDescriptor4 isSplatOnly];
  }

  v51 = isSplatOnly4;
  if (v205)
  {
    MEMORY[0x277D82BD8](alternateDescriptor4);
  }

  MEMORY[0x277D82BD8](alternateDescriptor3);
  if ((v51 & 1) == 0)
  {
    alternateDescriptor5 = [v268 alternateDescriptor];
    isSplatOnly5 = [alternateDescriptor5 isSplatOnly];
    v201 = 0;
    isSplatOnly6 = 1;
    if ((isSplatOnly5 & 1) == 0)
    {
      alternateDescriptor6 = [v268 alternateDescriptor];
      v201 = 1;
      isSplatOnly6 = [alternateDescriptor6 isSplatOnly];
    }

    v44 = isSplatOnly6;
    if (v201)
    {
      MEMORY[0x277D82BD8](alternateDescriptor6);
    }

    MEMORY[0x277D82BD8](alternateDescriptor5);
    if (v44)
    {
      statefulUILogger5 = [MEMORY[0x277D64B58] statefulUILogger];
      oslog4 = [statefulUILogger5 oslog];
      MEMORY[0x277D82BD8](statefulUILogger5);
      v199 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
      {
        v40 = oslog4;
        *v41 = v199;
        v42 = v281;
        __os_log_helper_16_2_2_8_32_8_0(v281, v184, val);
        _os_log_impl(&dword_26B0B9000, v40, v41[0], "%s [%p]: Modifying the 3rd party scan pipeline: One of the 3rd party scan results was a SPLAT update, while the other wasn't. Requesting a fresh background full scan.", v42, 0x16u);
      }

      objc_storeStrong(&oslog4, 0);
      v215 = 0;
    }

    goto LABEL_115;
  }

  statefulUILogger6 = [MEMORY[0x277D64B58] statefulUILogger];
  oslog5 = [statefulUILogger6 oslog];
  MEMORY[0x277D82BD8](statefulUILogger6);
  v203 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog5, OS_LOG_TYPE_DEFAULT))
  {
    v47 = oslog5;
    *v48 = v203;
    v49 = v282;
    __os_log_helper_16_2_2_8_32_8_0(v282, v184, val);
    _os_log_impl(&dword_26B0B9000, v47, v48[0], "%s [%p]: Dropping a 3rd party scan results notification: the results contains a SPLAT update for both the preferred and alternate descriptors.", v49, 0x16u);
  }

  objc_storeStrong(&oslog5, 0);
  v241 = 1;
LABEL_116:
  v32 = 0;
  objc_storeStrong(&v267, 0);
  objc_storeStrong(&v268, v32);
  objc_storeStrong(&v269, v32);
  objc_storeStrong(&location, v32);
}

void __83__SUUIMobileStatefulUIManager_client_scanRequestDidFinishForOptions_results_error___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v14[2] = a1;
  v14[1] = a1;
  v14[0] = objc_loadWeakRetained((a1 + 48));
  v7 = 0;
  if (!v14[0])
  {
    v6 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v13 = [v6 oslog];
    MEMORY[0x277D82BD8](v6);
    v12 = 16;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      log = v13;
      type = v12;
      v5 = NSStringFromSelector(*(a1 + 56));
      v11 = MEMORY[0x277D82BE0](v5);
      __os_log_helper_16_2_2_8_32_8_66(v15, "[SUUIMobileStatefulUIManager client:scanRequestDidFinishForOptions:results:error:]_block_invoke", v11);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v15, 0x16u);
      MEMORY[0x277D82BD8](v5);
      objc_storeStrong(&v11, 0);
    }

    objc_storeStrong(&v13, 0);
    v7 = 1;
  }

  if ((v7 & 1) == 0)
  {
    if (*(a1 + 64))
    {
      v1 = v14[0];
      v2 = [objc_alloc(MEMORY[0x277D64B80]) initFromSUScanResults:*(a1 + 32)];
      v9 = 0;
      if (*(a1 + 40))
      {
        v10 = [(SUUIStatefulError *)[SUUIMobileStatefulError alloc] initFromError:*(a1 + 40)];
        v9 = 1;
        [v1 performFullScanWithScanResults:v2 andScanError:{v10, v10}];
      }

      else
      {
        [v1 performFullScanWithScanResults:v2 andScanError:{0, 0}];
      }

      if (v9)
      {
        MEMORY[0x277D82BD8](v10);
      }

      MEMORY[0x277D82BD8](v2);
    }

    else
    {
      [v14[0] checkForUpdatesInBackground:1];
    }
  }

  objc_storeStrong(v14, 0);
}

- (void)client:(id)client downloadDidStart:(id)start
{
  v279 = &v295;
  obj = start;
  v281 = "[SUUIMobileStatefulUIManager client:downloadDidStart:]";
  v343 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v331 = 0;
  objc_storeStrong(&v331, obj);
  statefulUILogger = [MEMORY[0x277D64B58] statefulUILogger];
  v276 = statefulUILogger;
  oslog = [v276 oslog];
  v330 = oslog;
  MEMORY[0x277D82BD8](v276);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v330, OS_LOG_TYPE_DEFAULT))
  {
    log = v279[48];
    *v273 = type;
    v274 = v279[52];
    aClass = objc_opt_class();
    v271 = NSStringFromClass(aClass);
    v268 = v271;
    v269 = MEMORY[0x277D82BE0](v268);
    v279[46] = v269;
    v270 = SUUIStatefulUIStateToString();
    v265 = v270;
    v4 = MEMORY[0x277D82BE0](v265);
    v5 = v279;
    v266 = v4;
    v279[45] = v4;
    currentState = [v5[52] currentState];
    delegate = [v279[52] delegate];
    v263 = delegate;
    v326 = 0;
    v325 = 0;
    if (v263)
    {
      delegate2 = [v279[52] delegate];
      v279[44] = delegate2;
      v326 = 1;
      v261 = objc_opt_class();
      v260 = NSStringFromClass(v261);
      v6 = v260;
      v279[42] = v6;
      v325 = 1;
      v259 = v6;
    }

    else
    {
      v259 = @"(null)";
    }

    v257 = v259;
    delegate3 = [v279[52] delegate];
    v255 = delegate3;
    scanError = [v279[52] scanError];
    v253 = scanError;
    preferredStatefulDescriptor = [v279[52] preferredStatefulDescriptor];
    v251 = preferredStatefulDescriptor;
    alternateStatefulDescriptor = [v279[52] alternateStatefulDescriptor];
    v249 = alternateStatefulDescriptor;
    currentDownload = [v279[52] currentDownload];
    v248 = currentDownload;
    v324 = 0;
    v323 = 0;
    v322 = 0;
    if (v248)
    {
      currentDownload2 = [v279[52] currentDownload];
      v7 = currentDownload2;
      v279[40] = v7;
      v324 = 1;
      descriptor = [v7 descriptor];
      v8 = descriptor;
      v279[38] = v8;
      v323 = 1;
      updateName = [v8 updateName];
      v9 = updateName;
      v279[36] = v9;
      v322 = 1;
      v244 = v9;
    }

    else
    {
      v244 = @"(null)";
    }

    v242 = v244;
    currentDownload3 = [v279[52] currentDownload];
    v240 = currentDownload3;
    currentUpdateOperationType = [v279[52] currentUpdateOperationType];
    v239 = SUUIUpdateContinuousOperationTypeToString();
    v236 = v239;
    v10 = MEMORY[0x277D82BE0](v236);
    v11 = v279;
    v237 = v10;
    v279[34] = v10;
    isTargetedUpdateScheduledForAutoInstall = [v11[52] isTargetedUpdateScheduledForAutoInstall];
    v340 = isTargetedUpdateScheduledForAutoInstall;
    if (isTargetedUpdateScheduledForAutoInstall)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v235 = v12;
    v13 = v12;
    v232 = v235;
    v14 = MEMORY[0x277D82BE0](v232);
    v15 = v279;
    v233 = v14;
    v279[33] = v14;
    hidingPreferredDescriptor = [v15[52] hidingPreferredDescriptor];
    v339 = hidingPreferredDescriptor;
    if (hidingPreferredDescriptor)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v231 = v16;
    v17 = v16;
    v228 = v231;
    v18 = MEMORY[0x277D82BE0](v228);
    v19 = v279;
    v229 = v18;
    v279[32] = v18;
    hiddenPreferredStatefulDescriptor = [v19[52] hiddenPreferredStatefulDescriptor];
    v226 = hiddenPreferredStatefulDescriptor;
    updateName2 = [v226 updateName];
    v223 = updateName2;
    v20 = MEMORY[0x277D82BE0](v223);
    v21 = v279;
    v224 = v20;
    v279[31] = v20;
    hidingAlternateDescriptor = [v21[52] hidingAlternateDescriptor];
    v338 = hidingAlternateDescriptor;
    if (hidingAlternateDescriptor)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    v222 = v22;
    v23 = v22;
    v219 = v222;
    v24 = MEMORY[0x277D82BE0](v219);
    v25 = v279;
    v220 = v24;
    v279[30] = v24;
    hiddenAlternateStatefulDescriptor = [v25[52] hiddenAlternateStatefulDescriptor];
    v217 = hiddenAlternateStatefulDescriptor;
    updateName3 = [v217 updateName];
    v214 = updateName3;
    v26 = MEMORY[0x277D82BE0](v214);
    v27 = v279;
    v215 = v26;
    v279[29] = v26;
    enrolledBetaProgram = [v27[52] enrolledBetaProgram];
    v213 = enrolledBetaProgram;
    v315 = 0;
    if (v213)
    {
      enrolledBetaProgram2 = [v279[52] enrolledBetaProgram];
      v28 = enrolledBetaProgram2;
      v279[28] = v28;
      v315 = 1;
      programID = [v28 programID];
      v210 = programID;
    }

    else
    {
      v210 = 0;
    }

    v208 = v210;
    v209 = [*(v279[52] + *MEMORY[0x277D64BE8]) count];
    canEnrollInBetaUpdates = [v279[52] canEnrollInBetaUpdates];
    v337 = canEnrollInBetaUpdates;
    if (canEnrollInBetaUpdates)
    {
      v29 = @"YES";
    }

    else
    {
      v29 = @"NO";
    }

    v206 = v29;
    v30 = v29;
    v200 = v206;
    v31 = MEMORY[0x277D82BE0](v200);
    v32 = v279;
    v201 = v31;
    v279[26] = v31;
    v202 = *(v32[52] + *MEMORY[0x277D64BF0]);
    v203 = *(v32[52] + *MEMORY[0x277D64BF8]);
    v204 = *(v32[52] + *MEMORY[0x277D64C08]);
    v205 = [*(v32[52] + *MEMORY[0x277D64BE0]) count];
    descriptor2 = [v279[49] descriptor];
    v197 = descriptor2;
    humanReadableUpdateName = [v197 humanReadableUpdateName];
    v33 = v220;
    v34 = v224;
    v35 = v229;
    v36 = v233;
    v37 = v237;
    v38 = v240;
    v39 = v242;
    v40 = v249;
    v41 = v251;
    v42 = v253;
    v196 = humanReadableUpdateName;
    v43 = MEMORY[0x277D82BE0](v196);
    v44 = v279;
    v45 = v215;
    v46 = v208;
    v47 = v209;
    v48 = v201;
    v49 = v202;
    v50 = v203;
    v51 = v204;
    v52 = v205;
    v53 = v281;
    v54 = v274;
    v55 = v269;
    v56 = v266;
    v57 = currentState;
    v58 = v257;
    v59 = v255;
    v279[25] = v43;
    v60 = v44[49];
    v194 = v95;
    buf = v342;
    __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_0(v342, v53, v54, v55, v56, v57, v58, v59, v42, v41, v40, v39, v38, v37, v36, v35, v34, v33, v45, v46, v47, v48, v49, v50, v51, v52, v43, v60);
    _os_log_impl(&dword_26B0B9000, log, v273[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nStarting to download an update targeting %{public}@ (%p)", buf, 0x110u);
    MEMORY[0x277D82BD8](v196);
    MEMORY[0x277D82BD8](v197);
    MEMORY[0x277D82BD8](v200);
    if (v315)
    {
      MEMORY[0x277D82BD8](v279[28]);
    }

    MEMORY[0x277D82BD8](v213);
    MEMORY[0x277D82BD8](v214);
    MEMORY[0x277D82BD8](v217);
    MEMORY[0x277D82BD8](v219);
    MEMORY[0x277D82BD8](v223);
    MEMORY[0x277D82BD8](v226);
    MEMORY[0x277D82BD8](v228);
    MEMORY[0x277D82BD8](v232);
    MEMORY[0x277D82BD8](v236);
    MEMORY[0x277D82BD8](v240);
    if (v322)
    {
      MEMORY[0x277D82BD8](v279[36]);
    }

    if (v323)
    {
      MEMORY[0x277D82BD8](v279[38]);
    }

    if (v324)
    {
      MEMORY[0x277D82BD8](v279[40]);
    }

    MEMORY[0x277D82BD8](v248);
    MEMORY[0x277D82BD8](v249);
    MEMORY[0x277D82BD8](v251);
    MEMORY[0x277D82BD8](v253);
    MEMORY[0x277D82BD8](v255);
    if (v325)
    {
      MEMORY[0x277D82BD8](v279[42]);
    }

    if (v326)
    {
      MEMORY[0x277D82BD8](v279[44]);
    }

    MEMORY[0x277D82BD8](v263);
    MEMORY[0x277D82BD8](v265);
    MEMORY[0x277D82BD8](v268);
    objc_storeStrong(&v313, 0);
    objc_storeStrong(&v314, 0);
    objc_storeStrong(&v316, 0);
    objc_storeStrong(&v317, 0);
    objc_storeStrong(&v318, 0);
    objc_storeStrong(&v319, 0);
    objc_storeStrong(&v320, 0);
    objc_storeStrong(&v321, 0);
    objc_storeStrong(&v327, 0);
    objc_storeStrong(&v328, 0);
  }

  objc_storeStrong(&v330, 0);
  if (v279[49])
  {
    currentUpdateOperation = [v279[52] currentUpdateOperation];
    v192 = currentUpdateOperation;
    MEMORY[0x277D82BD8](v192);
    if (v192)
    {
      v312 = 1;
    }

    else
    {
      v61 = v279[49];
      v309 = 0;
      if (v61)
      {
        v191 = [SUUIMobileDownload alloc];
        v190 = [(SUUIMobileDownload *)v191 initWithDownload:v279[49]];
        v62 = v190;
        v279[21] = v190;
        v309 = 1;
        v189 = v62;
      }

      else
      {
        v189 = 0;
      }

      v63 = MEMORY[0x277D82BE0](v189);
      v279[22] = v63;
      if (v309)
      {
        MEMORY[0x277D82BD8](v279[21]);
      }

      v188 = [v279[22] conformsToProtocol:&unk_287BBC258];
      if ((v188 & 1) == 0)
      {
        v187 = NSStringFromProtocol(&unk_287BBC258);
        v64 = v187;
        v95[0] = @"SUUIMobileDownloadFromSUDownload(download)";
        v95[1] = v64;
        _suui_precondition_failure_with_format();
        __break(1u);
      }

      v186 = &v310;
      v65 = MEMORY[0x277D82BE0](v279[22]);
      v66 = v186;
      v279[19] = v65;
      objc_storeStrong(v66, 0);
      v67 = v279;
      v279[23] = v279[19];
      v185 = [v67[52] targetedUpdateForDownload:v67[23]];
      v68 = v185;
      v69 = v279;
      v279[18] = v68;
      if (v69[18])
      {
        objc_initWeak(&from, v279[52]);
        v99 = v279[52];
        v100 = v279[23];
        v102 = &v282;
        v282 = MEMORY[0x277D85DD0];
        v283 = -1073741824;
        v284 = 0;
        v285 = __55__SUUIMobileStatefulUIManager_client_downloadDidStart___block_invoke;
        v286 = &unk_279CCF790;
        v101 = &v287;
        v287 = MEMORY[0x277D82BE0](v279[52]);
        v103 = v102 + 7;
        objc_copyWeak(v102 + 7, &from);
        v98 = &v282;
        v288[3] = v279[51];
        v96 = v288;
        v288[0] = MEMORY[0x277D82BE0](v279[18]);
        v97 = (v98 + 6);
        v288[1] = MEMORY[0x277D82BE0](v279[23]);
        [v99 performPostUpdateOperationRefreshWithDownload:v100 error:0 completionHandler:v98];
        objc_storeStrong(v97, 0);
        objc_storeStrong(v96, 0);
        objc_destroyWeak(v103);
        objc_storeStrong(v101, 0);
        objc_destroyWeak(&from);
        v312 = 0;
      }

      else
      {
        statefulUILogger2 = [MEMORY[0x277D64B58] statefulUILogger];
        v182 = statefulUILogger2;
        oslog2 = [v182 oslog];
        v70 = oslog2;
        v71 = v182;
        v279[17] = v70;
        MEMORY[0x277D82BD8](v71);
        v306 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v279[17], OS_LOG_TYPE_DEFAULT))
        {
          v178 = v279[17];
          *v179 = v306;
          v180 = v279[52];
          v181 = objc_opt_class();
          v177 = NSStringFromClass(v181);
          v174 = v177;
          v175 = MEMORY[0x277D82BE0](v174);
          v279[15] = v175;
          v176 = SUUIStatefulUIStateToString();
          v171 = v176;
          v72 = MEMORY[0x277D82BE0](v171);
          v73 = v279;
          v172 = v72;
          v279[14] = v72;
          currentState2 = [v73[52] currentState];
          delegate4 = [v279[52] delegate];
          v169 = delegate4;
          v303 = 0;
          v302 = 0;
          if (v169)
          {
            delegate5 = [v279[52] delegate];
            v74 = delegate5;
            v279[13] = v74;
            v303 = 1;
            v167 = objc_opt_class();
            v166 = NSStringFromClass(v167);
            v75 = v166;
            v279[11] = v75;
            v302 = 1;
            v165 = v75;
          }

          else
          {
            v165 = @"(null)";
          }

          v163 = v165;
          delegate6 = [v279[52] delegate];
          v161 = delegate6;
          scanError2 = [v279[52] scanError];
          v159 = scanError2;
          preferredStatefulDescriptor2 = [v279[52] preferredStatefulDescriptor];
          v157 = preferredStatefulDescriptor2;
          alternateStatefulDescriptor2 = [v279[52] alternateStatefulDescriptor];
          v155 = alternateStatefulDescriptor2;
          currentDownload4 = [v279[52] currentDownload];
          v154 = currentDownload4;
          v301 = 0;
          v300 = 0;
          v299 = 0;
          if (v154)
          {
            currentDownload5 = [v279[52] currentDownload];
            v76 = currentDownload5;
            v279[9] = v76;
            v301 = 1;
            descriptor3 = [v76 descriptor];
            v77 = descriptor3;
            v279[7] = v77;
            v300 = 1;
            updateName4 = [v77 updateName];
            v78 = updateName4;
            v279[5] = v78;
            v299 = 1;
            v150 = v78;
          }

          else
          {
            v150 = @"(null)";
          }

          v148 = v150;
          currentDownload6 = [v279[52] currentDownload];
          v146 = currentDownload6;
          currentUpdateOperationType2 = [v279[52] currentUpdateOperationType];
          v145 = SUUIUpdateContinuousOperationTypeToString();
          v142 = v145;
          v79 = MEMORY[0x277D82BE0](v142);
          v80 = v279;
          v143 = v79;
          v279[3] = v79;
          isTargetedUpdateScheduledForAutoInstall2 = [v80[52] isTargetedUpdateScheduledForAutoInstall];
          v336 = isTargetedUpdateScheduledForAutoInstall2;
          if (isTargetedUpdateScheduledForAutoInstall2)
          {
            v81 = @"YES";
          }

          else
          {
            v81 = @"NO";
          }

          v141 = v81;
          v82 = v81;
          v138 = v141;
          v83 = MEMORY[0x277D82BE0](v138);
          v84 = v279;
          v139 = v83;
          v279[2] = v83;
          hidingPreferredDescriptor2 = [v84[52] hidingPreferredDescriptor];
          v335 = hidingPreferredDescriptor2;
          if (hidingPreferredDescriptor2)
          {
            v85 = @"YES";
          }

          else
          {
            v85 = @"NO";
          }

          v137 = v85;
          v86 = v85;
          v134 = v137;
          v87 = MEMORY[0x277D82BE0](v134);
          v88 = v279;
          v135 = v87;
          v279[1] = v87;
          hiddenPreferredStatefulDescriptor2 = [v88[52] hiddenPreferredStatefulDescriptor];
          v132 = hiddenPreferredStatefulDescriptor2;
          updateName5 = [v132 updateName];
          v129 = updateName5;
          v89 = MEMORY[0x277D82BE0](v129);
          v90 = v279;
          v130 = v89;
          *v279 = v89;
          hidingAlternateDescriptor2 = [v90[52] hidingAlternateDescriptor];
          v334 = hidingAlternateDescriptor2;
          if (hidingAlternateDescriptor2)
          {
            v91 = @"YES";
          }

          else
          {
            v91 = @"NO";
          }

          v128 = v91;
          v92 = v91;
          v125 = v128;
          v126 = MEMORY[0x277D82BE0](v125);
          v294 = v126;
          hiddenAlternateStatefulDescriptor2 = [v279[52] hiddenAlternateStatefulDescriptor];
          v123 = hiddenAlternateStatefulDescriptor2;
          updateName6 = [v123 updateName];
          v120 = updateName6;
          v121 = MEMORY[0x277D82BE0](v120);
          v293 = v121;
          enrolledBetaProgram3 = [v279[52] enrolledBetaProgram];
          v119 = enrolledBetaProgram3;
          v291 = 0;
          if (v119)
          {
            enrolledBetaProgram4 = [v279[52] enrolledBetaProgram];
            v292 = enrolledBetaProgram4;
            v291 = 1;
            programID2 = [v292 programID];
            v116 = programID2;
          }

          else
          {
            v116 = 0;
          }

          v114 = v116;
          v115 = [*(v279[52] + *MEMORY[0x277D64BE8]) count];
          canEnrollInBetaUpdates2 = [v279[52] canEnrollInBetaUpdates];
          v333 = canEnrollInBetaUpdates2;
          if (canEnrollInBetaUpdates2)
          {
            v93 = @"YES";
          }

          else
          {
            v93 = @"NO";
          }

          v112 = v93;
          v94 = v93;
          v106 = v112;
          v107 = MEMORY[0x277D82BE0](v106);
          v290 = v107;
          v108 = *(v279[52] + *MEMORY[0x277D64BF0]);
          v109 = *(v279[52] + *MEMORY[0x277D64BF8]);
          v110 = *(v279[52] + *MEMORY[0x277D64C08]);
          v111 = [*(v279[52] + *MEMORY[0x277D64BE0]) count];
          v104 = v95;
          v105 = v341;
          __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v341, v281, v180, v175, v172, currentState2, v163, v161, v159, v157, v155, v148, v146, v143, v139, v135, v130, v126, v121, v114, v115, v107, v108, v109, v110, v111);
          _os_log_impl(&dword_26B0B9000, v178, v179[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCould not resolve the targeted update from the current download. Skipping on the downloadDidStart event and performing a new scan instead.", v105, 0xFCu);
          MEMORY[0x277D82BD8](v106);
          if (v291)
          {
            MEMORY[0x277D82BD8](v292);
          }

          MEMORY[0x277D82BD8](v119);
          MEMORY[0x277D82BD8](v120);
          MEMORY[0x277D82BD8](v123);
          MEMORY[0x277D82BD8](v125);
          MEMORY[0x277D82BD8](v129);
          MEMORY[0x277D82BD8](v132);
          MEMORY[0x277D82BD8](v134);
          MEMORY[0x277D82BD8](v138);
          MEMORY[0x277D82BD8](v142);
          MEMORY[0x277D82BD8](v146);
          if (v299)
          {
            MEMORY[0x277D82BD8](v279[5]);
          }

          if (v300)
          {
            MEMORY[0x277D82BD8](v279[7]);
          }

          if (v301)
          {
            MEMORY[0x277D82BD8](v279[9]);
          }

          MEMORY[0x277D82BD8](v154);
          MEMORY[0x277D82BD8](v155);
          MEMORY[0x277D82BD8](v157);
          MEMORY[0x277D82BD8](v159);
          MEMORY[0x277D82BD8](v161);
          if (v302)
          {
            MEMORY[0x277D82BD8](v279[11]);
          }

          if (v303)
          {
            MEMORY[0x277D82BD8](v279[13]);
          }

          MEMORY[0x277D82BD8](v169);
          MEMORY[0x277D82BD8](v171);
          MEMORY[0x277D82BD8](v174);
          objc_storeStrong(&v290, 0);
          objc_storeStrong(&v293, 0);
          objc_storeStrong(&v294, 0);
          objc_storeStrong(&v295, 0);
          objc_storeStrong(&v296, 0);
          objc_storeStrong(&v297, 0);
          objc_storeStrong(&v298, 0);
          objc_storeStrong(&v304, 0);
          objc_storeStrong(&v305, 0);
        }

        objc_storeStrong(&v307, 0);
        [v279[52] checkForUpdatesInBackground];
        v312 = 1;
      }

      objc_storeStrong(&v308, 0);
      objc_storeStrong(&v311, 0);
    }
  }

  else
  {
    v312 = 1;
  }

  objc_storeStrong(&v331, 0);
  objc_storeStrong(location, 0);
}

void __55__SUUIMobileStatefulUIManager_client_downloadDidStart___block_invoke(uint64_t a1, char a2)
{
  v13 = a1;
  v12 = a2;
  v11[2] = a1;
  v3 = *(a1 + 32);
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __55__SUUIMobileStatefulUIManager_client_downloadDidStart___block_invoke_2;
  v8 = &unk_279CCC7B0;
  objc_copyWeak(v11, (a1 + 56));
  v11[1] = *(a1 + 64);
  v9 = MEMORY[0x277D82BE0](*(a1 + 40));
  v10 = MEMORY[0x277D82BE0](*(a1 + 48));
  [v3 executeOperationOnDelegate:sel_statefulUIManager_didStartDownloadForDescriptor_withDownload_ usingBlock:&v4];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_destroyWeak(v11);
}

void __55__SUUIMobileStatefulUIManager_client_downloadDidStart___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[2] = a1;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 48));
  v6 = 0;
  if (!v11[0])
  {
    v5 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 56));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v12, "[SUUIMobileStatefulUIManager client:downloadDidStart:]_block_invoke_2", v8);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v12, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v10, 0);
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    v1 = [v11[0] delegate];
    [v1 statefulUIManager:v11[0] didStartDownloadForDescriptor:*(a1 + 32) withDownload:*(a1 + 40)];
    MEMORY[0x277D82BD8](v1);
  }

  objc_storeStrong(v11, 0);
}

- (void)client:(id)client downloadProgressDidChange:(id)change
{
  v36 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v33 = a2;
  location = 0;
  objc_storeStrong(&location, client);
  v31 = 0;
  objc_storeStrong(&v31, change);
  if (v31)
  {
    if ([(SUUIStatefulUIManager *)selfCopy currentState]== 4)
    {
      progress = [v31 progress];
      [progress normalizedPercentComplete];
      v28 = v4;
      phase = [progress phase];
      statefulUILogger = [MEMORY[0x277D64B58] statefulUILogger];
      oslog = [statefulUILogger oslog];
      MEMORY[0x277D82BD8](statefulUILogger);
      v25 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        log = oslog;
        type = v25;
        descriptor = [v31 descriptor];
        humanReadableUpdateName = [descriptor humanReadableUpdateName];
        v7 = MEMORY[0x277D82BE0](humanReadableUpdateName);
        v24 = v7;
        *&v8 = v28;
        v9 = phase;
        [progress timeRemaining];
        __os_log_helper_16_2_6_8_32_8_66_8_0_8_66_8_0_8_0(v35, "[SUUIMobileStatefulUIManager client:downloadProgressDidChange:]", v7, v8, v9, v5, v31);
        _os_log_impl(&dword_26B0B9000, log, type, "%s [->%{public}@]: progress: %.02f; phase: %{public}@; time remaining: %f, download: %p", v35, 0x3Eu);
        MEMORY[0x277D82BD8](humanReadableUpdateName);
        MEMORY[0x277D82BD8](descriptor);
        objc_storeStrong(&v24, 0);
      }

      objc_storeStrong(&oslog, 0);
      objc_initWeak(&v23, selfCopy);
      queue = *(&selfCopy->super.super.isa + *MEMORY[0x277D64C18]);
      v16 = MEMORY[0x277D85DD0];
      v17 = -1073741824;
      v18 = 0;
      v19 = __64__SUUIMobileStatefulUIManager_client_downloadProgressDidChange___block_invoke;
      v20 = &unk_279CCBD58;
      objc_copyWeak(v22, &v23);
      v22[1] = v33;
      v21 = MEMORY[0x277D82BE0](v31);
      dispatch_async(queue, &v16);
      objc_storeStrong(&v21, 0);
      objc_destroyWeak(v22);
      objc_destroyWeak(&v23);
      objc_storeStrong(&phase, 0);
      objc_storeStrong(&progress, 0);
      v30 = 0;
    }

    else
    {
      v30 = 1;
    }
  }

  else
  {
    [(SUUIStatefulUIManager *)selfCopy checkForAvailableUpdates:0 forceScan:1];
    v30 = 1;
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(&location, 0);
}

void __64__SUUIMobileStatefulUIManager_client_downloadProgressDidChange___block_invoke(id *a1)
{
  v135 = &v154;
  v136 = a1;
  v137 = "[SUUIMobileStatefulUIManager client:downloadProgressDidChange:]_block_invoke";
  v181 = *MEMORY[0x277D85DE8];
  v174[2] = a1;
  v174[1] = a1;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v174[0] = WeakRetained;
  v134 = 0;
  if (!WeakRetained)
  {
    v133 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v131 = v133;
    v132 = [v131 oslog];
    v1 = v132;
    v2 = v131;
    v135[25] = v1;
    MEMORY[0x277D82BD8](v2);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v135[25], OS_LOG_TYPE_ERROR))
    {
      log = v135[25];
      *v129 = type;
      v130 = NSStringFromSelector(v136[6]);
      v127 = v130;
      v3 = MEMORY[0x277D82BE0](v127);
      v4 = v137;
      v135[23] = v3;
      buf = v180;
      __os_log_helper_16_2_2_8_32_8_66(v180, v4, v3);
      _os_log_error_impl(&dword_26B0B9000, log, v129[0], "%s: Self is nil in %{public}@. Stopping.", v180, 0x16u);
      MEMORY[0x277D82BD8](v127);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v173, 0);
    v170 = 1;
    v134 = 1;
  }

  if (v134)
  {
    v169 = 1;
  }

  else
  {
    v5 = v136[4];
    v166 = 0;
    if (v5)
    {
      v125 = [SUUIMobileDownload alloc];
      v124 = [(SUUIMobileDownload *)v125 initWithDownload:v136[4]];
      v6 = v124;
      v135[19] = v124;
      v166 = 1;
      v123 = v6;
    }

    else
    {
      v123 = 0;
    }

    v135[20] = MEMORY[0x277D82BE0](v123);
    if (v166)
    {
      MEMORY[0x277D82BD8](v135[19]);
    }

    v122 = [v135[20] conformsToProtocol:&unk_287BBC258];
    if ((v122 & 1) == 0)
    {
      v121 = NSStringFromProtocol(&unk_287BBC258);
      v30 = @"SUUIMobileDownloadFromSUDownload(download)";
      v31 = v121;
      _suui_precondition_failure_with_format();
      __break(1u);
    }

    v120 = &v167;
    v135[17] = MEMORY[0x277D82BE0](v135[20]);
    objc_storeStrong(&v167, 0);
    v7 = v135;
    v135[21] = v135[17];
    [v7[26] setCurrentDownload:v7[21]];
    v119 = [v135[26] targetedUpdateForDownload:v135[21]];
    v8 = v119;
    v9 = v135;
    v135[16] = v8;
    if (v9[16])
    {
      [v135[16] updateStateFromProgressedDownload:v135[21]];
      v35 = v135[26];
      v36 = sel_statefulUIManager_didChangeProgressForDownloadOfDescriptor_withDownload_;
      v139 = MEMORY[0x277D85DD0];
      v140 = -1073741824;
      v141 = 0;
      v142 = __64__SUUIMobileStatefulUIManager_client_downloadProgressDidChange___block_invoke_409;
      v143 = &unk_279CCC7B0;
      v37 = v146;
      objc_copyWeak(v146, v136 + 5);
      v34 = &v139;
      v146[1] = v136[6];
      v32 = &v144;
      v144 = MEMORY[0x277D82BE0](v135[16]);
      v33 = &v145;
      v145 = MEMORY[0x277D82BE0](v135[21]);
      [v35 executeOperationOnDelegate:sel_statefulUIManager_didChangeProgressForDownloadOfDescriptor_withDownload_ usingBlock:&v139];
      objc_storeStrong(&v145, 0);
      objc_storeStrong(&v144, 0);
      objc_destroyWeak(v146);
      v169 = 0;
    }

    else
    {
      v118 = [MEMORY[0x277D64B58] statefulUILogger];
      v116 = v118;
      v117 = [v116 oslog];
      v10 = v117;
      v11 = v116;
      v135[15] = v10;
      MEMORY[0x277D82BD8](v11);
      v163 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v135[15], OS_LOG_TYPE_DEFAULT))
      {
        v112 = v135[15];
        *v113 = v163;
        v114 = v135[26];
        aClass = objc_opt_class();
        v111 = NSStringFromClass(aClass);
        v108 = v111;
        v109 = MEMORY[0x277D82BE0](v108);
        v135[13] = v109;
        v110 = SUUIStatefulUIStateToString();
        v105 = v110;
        v12 = MEMORY[0x277D82BE0](v105);
        v13 = v135;
        v106 = v12;
        v135[12] = v12;
        v107 = [v13[26] currentState];
        v104 = [v135[26] delegate];
        v103 = v104;
        v160 = 0;
        v159 = 0;
        if (v103)
        {
          v102 = [v135[26] delegate];
          v135[11] = v102;
          v160 = 1;
          v101 = objc_opt_class();
          v100 = NSStringFromClass(v101);
          v14 = v100;
          v135[9] = v14;
          v159 = 1;
          v99 = v14;
        }

        else
        {
          v99 = @"(null)";
        }

        v97 = v99;
        v98 = [v135[26] delegate];
        v95 = v98;
        v96 = [v135[26] scanError];
        v93 = v96;
        v94 = [v135[26] preferredStatefulDescriptor];
        v91 = v94;
        v92 = [v135[26] alternateStatefulDescriptor];
        v89 = v92;
        v90 = [v135[26] currentDownload];
        v88 = v90;
        v158 = 0;
        v157 = 0;
        v156 = 0;
        if (v88)
        {
          v87 = [v135[26] currentDownload];
          v15 = v87;
          v135[7] = v15;
          v158 = 1;
          v86 = [v15 descriptor];
          v16 = v86;
          v135[5] = v16;
          v157 = 1;
          v85 = [v16 updateName];
          v17 = v85;
          v135[3] = v17;
          v156 = 1;
          v84 = v17;
        }

        else
        {
          v84 = @"(null)";
        }

        v82 = v84;
        v83 = [v135[26] currentDownload];
        v80 = v83;
        v81 = [v135[26] currentUpdateOperationType];
        v79 = SUUIUpdateContinuousOperationTypeToString();
        v76 = v79;
        v18 = MEMORY[0x277D82BE0](v76);
        v19 = v135;
        v77 = v18;
        v135[1] = v18;
        v78 = [v19[26] isTargetedUpdateScheduledForAutoInstall];
        v178 = v78;
        if (v78)
        {
          v20 = @"YES";
        }

        else
        {
          v20 = @"NO";
        }

        v75 = v20;
        v21 = v20;
        v72 = v75;
        v22 = MEMORY[0x277D82BE0](v72);
        v23 = v135;
        v73 = v22;
        *v135 = v22;
        v74 = [v23[26] hidingPreferredDescriptor];
        v177 = v74;
        if (v74)
        {
          v24 = @"YES";
        }

        else
        {
          v24 = @"NO";
        }

        v71 = v24;
        v25 = v24;
        v68 = v71;
        v69 = MEMORY[0x277D82BE0](v68);
        v153 = v69;
        v70 = [v135[26] hiddenPreferredStatefulDescriptor];
        v66 = v70;
        v67 = [v66 updateName];
        v63 = v67;
        v64 = MEMORY[0x277D82BE0](v63);
        v152 = v64;
        v65 = [v135[26] hidingAlternateDescriptor];
        v176 = v65;
        if (v65)
        {
          v26 = @"YES";
        }

        else
        {
          v26 = @"NO";
        }

        v62 = v26;
        v27 = v26;
        v59 = v62;
        v60 = MEMORY[0x277D82BE0](v59);
        v151 = v60;
        v61 = [v135[26] hiddenAlternateStatefulDescriptor];
        v57 = v61;
        v58 = [v57 updateName];
        v54 = v58;
        v55 = MEMORY[0x277D82BE0](v54);
        v150 = v55;
        v56 = [v135[26] enrolledBetaProgram];
        v53 = v56;
        v148 = 0;
        if (v53)
        {
          v52 = [v135[26] enrolledBetaProgram];
          v149 = v52;
          v148 = 1;
          v51 = [v149 programID];
          v50 = v51;
        }

        else
        {
          v50 = 0;
        }

        v48 = v50;
        v49 = [*(v135[26] + *MEMORY[0x277D64BE8]) count];
        v47 = [v135[26] canEnrollInBetaUpdates];
        v175 = v47;
        if (v47)
        {
          v28 = @"YES";
        }

        else
        {
          v28 = @"NO";
        }

        v46 = v28;
        v29 = v28;
        v40 = v46;
        v41 = MEMORY[0x277D82BE0](v40);
        v147 = v41;
        v42 = *(v135[26] + *MEMORY[0x277D64BF0]);
        v43 = *(v135[26] + *MEMORY[0x277D64BF8]);
        v44 = *(v135[26] + *MEMORY[0x277D64C08]);
        v45 = [*(v135[26] + *MEMORY[0x277D64BE0]) count];
        v38 = &v30;
        v39 = v179;
        __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v179, v137, v114, v109, v106, v107, v97, v95, v93, v91, v89, v82, v80, v77, v73, v69, v64, v60, v55, v48, v49, v41, v42, v43, v44, v45);
        _os_log_impl(&dword_26B0B9000, v112, v113[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCould not resolve the targeted update from the current download. Skipping on the downloadProgressDidChange event and performing a new scan instead.", v39, 0xFCu);
        MEMORY[0x277D82BD8](v40);
        if (v148)
        {
          MEMORY[0x277D82BD8](v149);
        }

        MEMORY[0x277D82BD8](v53);
        MEMORY[0x277D82BD8](v54);
        MEMORY[0x277D82BD8](v57);
        MEMORY[0x277D82BD8](v59);
        MEMORY[0x277D82BD8](v63);
        MEMORY[0x277D82BD8](v66);
        MEMORY[0x277D82BD8](v68);
        MEMORY[0x277D82BD8](v72);
        MEMORY[0x277D82BD8](v76);
        MEMORY[0x277D82BD8](v80);
        if (v156)
        {
          MEMORY[0x277D82BD8](v135[3]);
        }

        if (v157)
        {
          MEMORY[0x277D82BD8](v135[5]);
        }

        if (v158)
        {
          MEMORY[0x277D82BD8](v135[7]);
        }

        MEMORY[0x277D82BD8](v88);
        MEMORY[0x277D82BD8](v89);
        MEMORY[0x277D82BD8](v91);
        MEMORY[0x277D82BD8](v93);
        MEMORY[0x277D82BD8](v95);
        if (v159)
        {
          MEMORY[0x277D82BD8](v135[9]);
        }

        if (v160)
        {
          MEMORY[0x277D82BD8](v135[11]);
        }

        MEMORY[0x277D82BD8](v103);
        MEMORY[0x277D82BD8](v105);
        MEMORY[0x277D82BD8](v108);
        objc_storeStrong(&v147, 0);
        objc_storeStrong(&v150, 0);
        objc_storeStrong(&v151, 0);
        objc_storeStrong(&v152, 0);
        objc_storeStrong(&v153, 0);
        objc_storeStrong(&v154, 0);
        objc_storeStrong(&v155, 0);
        objc_storeStrong(&v161, 0);
        objc_storeStrong(&v162, 0);
      }

      objc_storeStrong(&v164, 0);
      [v135[26] checkForAvailableUpdates:1 forceScan:1];
      v169 = 1;
    }

    objc_storeStrong(&v165, 0);
    objc_storeStrong(&v168, 0);
  }

  objc_storeStrong(v174, 0);
}

void __64__SUUIMobileStatefulUIManager_client_downloadProgressDidChange___block_invoke_409(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[2] = a1;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 48));
  v6 = 0;
  if (!v11[0])
  {
    v5 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 56));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v12, "[SUUIMobileStatefulUIManager client:downloadProgressDidChange:]_block_invoke", v8);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v12, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v10, 0);
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    v1 = [v11[0] delegate];
    [v1 statefulUIManager:v11[0] didChangeProgressForDownloadOfDescriptor:*(a1 + 32) withDownload:*(a1 + 40)];
    MEMORY[0x277D82BD8](v1);
  }

  objc_storeStrong(v11, 0);
}

- (void)client:(id)client downloadDidFinish:(id)finish withInstallPolicy:(id)policy
{
  v280 = &v297;
  obj = finish;
  policyCopy = policy;
  v283 = "[SUUIMobileStatefulUIManager client:downloadDidFinish:withInstallPolicy:]";
  v346 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v334 = 0;
  objc_storeStrong(&v334, obj);
  v333 = 0;
  objc_storeStrong(&v333, policyCopy);
  statefulUILogger = [MEMORY[0x277D64B58] statefulUILogger];
  v277 = statefulUILogger;
  oslog = [v277 oslog];
  v332 = oslog;
  MEMORY[0x277D82BD8](v277);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v332, OS_LOG_TYPE_DEFAULT))
  {
    log = v280[48];
    *v274 = type;
    v275 = v280[53];
    aClass = objc_opt_class();
    v272 = NSStringFromClass(aClass);
    v269 = v272;
    v270 = MEMORY[0x277D82BE0](v269);
    v280[46] = v270;
    v271 = SUUIStatefulUIStateToString();
    v266 = v271;
    v5 = MEMORY[0x277D82BE0](v266);
    v6 = v280;
    v267 = v5;
    v280[45] = v5;
    currentState = [v6[53] currentState];
    delegate = [v280[53] delegate];
    v264 = delegate;
    v328 = 0;
    v327 = 0;
    if (v264)
    {
      delegate2 = [v280[53] delegate];
      v280[44] = delegate2;
      v328 = 1;
      v262 = objc_opt_class();
      v261 = NSStringFromClass(v262);
      v7 = v261;
      v280[42] = v7;
      v327 = 1;
      v260 = v7;
    }

    else
    {
      v260 = @"(null)";
    }

    v258 = v260;
    delegate3 = [v280[53] delegate];
    v256 = delegate3;
    scanError = [v280[53] scanError];
    v254 = scanError;
    preferredStatefulDescriptor = [v280[53] preferredStatefulDescriptor];
    v252 = preferredStatefulDescriptor;
    alternateStatefulDescriptor = [v280[53] alternateStatefulDescriptor];
    v250 = alternateStatefulDescriptor;
    currentDownload = [v280[53] currentDownload];
    v249 = currentDownload;
    v326 = 0;
    v325 = 0;
    v324 = 0;
    if (v249)
    {
      currentDownload2 = [v280[53] currentDownload];
      v8 = currentDownload2;
      v280[40] = v8;
      v326 = 1;
      descriptor = [v8 descriptor];
      v9 = descriptor;
      v280[38] = v9;
      v325 = 1;
      updateName = [v9 updateName];
      v10 = updateName;
      v280[36] = v10;
      v324 = 1;
      v245 = v10;
    }

    else
    {
      v245 = @"(null)";
    }

    v243 = v245;
    currentDownload3 = [v280[53] currentDownload];
    v241 = currentDownload3;
    currentUpdateOperationType = [v280[53] currentUpdateOperationType];
    v240 = SUUIUpdateContinuousOperationTypeToString();
    v237 = v240;
    v11 = MEMORY[0x277D82BE0](v237);
    v12 = v280;
    v238 = v11;
    v280[34] = v11;
    isTargetedUpdateScheduledForAutoInstall = [v12[53] isTargetedUpdateScheduledForAutoInstall];
    v343 = isTargetedUpdateScheduledForAutoInstall;
    if (isTargetedUpdateScheduledForAutoInstall)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v236 = v13;
    v14 = v13;
    v233 = v236;
    v15 = MEMORY[0x277D82BE0](v233);
    v16 = v280;
    v234 = v15;
    v280[33] = v15;
    hidingPreferredDescriptor = [v16[53] hidingPreferredDescriptor];
    v342 = hidingPreferredDescriptor;
    if (hidingPreferredDescriptor)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    v232 = v17;
    v18 = v17;
    v229 = v232;
    v19 = MEMORY[0x277D82BE0](v229);
    v20 = v280;
    v230 = v19;
    v280[32] = v19;
    hiddenPreferredStatefulDescriptor = [v20[53] hiddenPreferredStatefulDescriptor];
    v227 = hiddenPreferredStatefulDescriptor;
    updateName2 = [v227 updateName];
    v224 = updateName2;
    v21 = MEMORY[0x277D82BE0](v224);
    v22 = v280;
    v225 = v21;
    v280[31] = v21;
    hidingAlternateDescriptor = [v22[53] hidingAlternateDescriptor];
    v341 = hidingAlternateDescriptor;
    if (hidingAlternateDescriptor)
    {
      v23 = @"YES";
    }

    else
    {
      v23 = @"NO";
    }

    v223 = v23;
    v24 = v23;
    v220 = v223;
    v25 = MEMORY[0x277D82BE0](v220);
    v26 = v280;
    v221 = v25;
    v280[30] = v25;
    hiddenAlternateStatefulDescriptor = [v26[53] hiddenAlternateStatefulDescriptor];
    v218 = hiddenAlternateStatefulDescriptor;
    updateName3 = [v218 updateName];
    v215 = updateName3;
    v27 = MEMORY[0x277D82BE0](v215);
    v28 = v280;
    v216 = v27;
    v280[29] = v27;
    enrolledBetaProgram = [v28[53] enrolledBetaProgram];
    v214 = enrolledBetaProgram;
    v317 = 0;
    if (v214)
    {
      enrolledBetaProgram2 = [v280[53] enrolledBetaProgram];
      v29 = enrolledBetaProgram2;
      v280[28] = v29;
      v317 = 1;
      programID = [v29 programID];
      v211 = programID;
    }

    else
    {
      v211 = 0;
    }

    v209 = v211;
    v210 = [*(v280[53] + *MEMORY[0x277D64BE8]) count];
    canEnrollInBetaUpdates = [v280[53] canEnrollInBetaUpdates];
    v340 = canEnrollInBetaUpdates;
    if (canEnrollInBetaUpdates)
    {
      v30 = @"YES";
    }

    else
    {
      v30 = @"NO";
    }

    v207 = v30;
    v31 = v30;
    v201 = v207;
    v32 = MEMORY[0x277D82BE0](v201);
    v33 = v280;
    v202 = v32;
    v280[26] = v32;
    v203 = *(v33[53] + *MEMORY[0x277D64BF0]);
    v204 = *(v33[53] + *MEMORY[0x277D64BF8]);
    v205 = *(v33[53] + *MEMORY[0x277D64C08]);
    v206 = [*(v33[53] + *MEMORY[0x277D64BE0]) count];
    descriptor2 = [v280[50] descriptor];
    v198 = descriptor2;
    humanReadableUpdateName = [v198 humanReadableUpdateName];
    v34 = v221;
    v35 = v225;
    v36 = v230;
    v37 = v234;
    v38 = v238;
    v39 = v241;
    v40 = v243;
    v41 = v250;
    v42 = v252;
    v43 = v254;
    v197 = humanReadableUpdateName;
    v44 = MEMORY[0x277D82BE0](v197);
    v45 = v280;
    v46 = v216;
    v47 = v209;
    v48 = v210;
    v49 = v202;
    v50 = v203;
    v51 = v204;
    v52 = v205;
    v53 = v206;
    v54 = v283;
    v55 = v275;
    v56 = v270;
    v57 = v267;
    v58 = currentState;
    v59 = v258;
    v60 = v256;
    v280[25] = v44;
    v61 = v45[50];
    v195 = v96;
    buf = v345;
    __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_0(v345, v54, v55, v56, v57, v58, v59, v60, v43, v42, v41, v40, v39, v38, v37, v36, v35, v34, v46, v47, v48, v49, v50, v51, v52, v53, v44, v61);
    _os_log_impl(&dword_26B0B9000, log, v274[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFinished to download an update targeting %{public}@: (%p)", buf, 0x110u);
    MEMORY[0x277D82BD8](v197);
    MEMORY[0x277D82BD8](v198);
    MEMORY[0x277D82BD8](v201);
    if (v317)
    {
      MEMORY[0x277D82BD8](v280[28]);
    }

    MEMORY[0x277D82BD8](v214);
    MEMORY[0x277D82BD8](v215);
    MEMORY[0x277D82BD8](v218);
    MEMORY[0x277D82BD8](v220);
    MEMORY[0x277D82BD8](v224);
    MEMORY[0x277D82BD8](v227);
    MEMORY[0x277D82BD8](v229);
    MEMORY[0x277D82BD8](v233);
    MEMORY[0x277D82BD8](v237);
    MEMORY[0x277D82BD8](v241);
    if (v324)
    {
      MEMORY[0x277D82BD8](v280[36]);
    }

    if (v325)
    {
      MEMORY[0x277D82BD8](v280[38]);
    }

    if (v326)
    {
      MEMORY[0x277D82BD8](v280[40]);
    }

    MEMORY[0x277D82BD8](v249);
    MEMORY[0x277D82BD8](v250);
    MEMORY[0x277D82BD8](v252);
    MEMORY[0x277D82BD8](v254);
    MEMORY[0x277D82BD8](v256);
    if (v327)
    {
      MEMORY[0x277D82BD8](v280[42]);
    }

    if (v328)
    {
      MEMORY[0x277D82BD8](v280[44]);
    }

    MEMORY[0x277D82BD8](v264);
    MEMORY[0x277D82BD8](v266);
    MEMORY[0x277D82BD8](v269);
    objc_storeStrong(&v315, 0);
    objc_storeStrong(&v316, 0);
    objc_storeStrong(&v318, 0);
    objc_storeStrong(&v319, 0);
    objc_storeStrong(&v320, 0);
    objc_storeStrong(&v321, 0);
    objc_storeStrong(&v322, 0);
    objc_storeStrong(&v323, 0);
    objc_storeStrong(&v329, 0);
    objc_storeStrong(&v330, 0);
  }

  objc_storeStrong(&v332, 0);
  if (v280[50])
  {
    currentUpdateOperation = [v280[53] currentUpdateOperation];
    v193 = currentUpdateOperation;
    MEMORY[0x277D82BD8](v193);
    if (v193)
    {
      v314 = 1;
    }

    else
    {
      v62 = v280[50];
      v311 = 0;
      if (v62)
      {
        v192 = [SUUIMobileDownload alloc];
        v191 = [(SUUIMobileDownload *)v192 initWithDownload:v280[50]];
        v63 = v191;
        v280[21] = v191;
        v311 = 1;
        v190 = v63;
      }

      else
      {
        v190 = 0;
      }

      v64 = MEMORY[0x277D82BE0](v190);
      v280[22] = v64;
      if (v311)
      {
        MEMORY[0x277D82BD8](v280[21]);
      }

      v189 = [v280[22] conformsToProtocol:&unk_287BBC258];
      if ((v189 & 1) == 0)
      {
        v188 = NSStringFromProtocol(&unk_287BBC258);
        v65 = v188;
        v96[0] = @"SUUIMobileDownloadFromSUDownload(download)";
        v96[1] = v65;
        _suui_precondition_failure_with_format();
        __break(1u);
      }

      v187 = &v312;
      v66 = MEMORY[0x277D82BE0](v280[22]);
      v67 = v187;
      v280[19] = v66;
      objc_storeStrong(v67, 0);
      v68 = v280;
      v280[23] = v280[19];
      v186 = [v68[53] targetedUpdateForDownload:v68[23]];
      v69 = v186;
      v70 = v280;
      v280[18] = v69;
      if (v70[18])
      {
        objc_initWeak(&from, v280[53]);
        v100 = v280[53];
        v101 = v280[23];
        v103 = &v284;
        v284 = MEMORY[0x277D85DD0];
        v285 = -1073741824;
        v286 = 0;
        v287 = __74__SUUIMobileStatefulUIManager_client_downloadDidFinish_withInstallPolicy___block_invoke;
        v288 = &unk_279CCF790;
        v102 = &v289;
        v289 = MEMORY[0x277D82BE0](v280[53]);
        v104 = v103 + 7;
        objc_copyWeak(v103 + 7, &from);
        v99 = &v284;
        v290[3] = v280[52];
        v97 = v290;
        v290[0] = MEMORY[0x277D82BE0](v280[18]);
        v98 = (v99 + 6);
        v290[1] = MEMORY[0x277D82BE0](v280[23]);
        [v100 performPostUpdateOperationRefreshWithDownload:v101 error:0 completionHandler:v99];
        objc_storeStrong(v98, 0);
        objc_storeStrong(v97, 0);
        objc_destroyWeak(v104);
        objc_storeStrong(v102, 0);
        objc_destroyWeak(&from);
        v314 = 0;
      }

      else
      {
        statefulUILogger2 = [MEMORY[0x277D64B58] statefulUILogger];
        v183 = statefulUILogger2;
        oslog2 = [v183 oslog];
        v71 = oslog2;
        v72 = v183;
        v280[17] = v71;
        MEMORY[0x277D82BD8](v72);
        v308 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(v280[17], OS_LOG_TYPE_DEFAULT))
        {
          v179 = v280[17];
          *v180 = v308;
          v181 = v280[53];
          v182 = objc_opt_class();
          v178 = NSStringFromClass(v182);
          v175 = v178;
          v176 = MEMORY[0x277D82BE0](v175);
          v280[15] = v176;
          v177 = SUUIStatefulUIStateToString();
          v172 = v177;
          v73 = MEMORY[0x277D82BE0](v172);
          v74 = v280;
          v173 = v73;
          v280[14] = v73;
          currentState2 = [v74[53] currentState];
          delegate4 = [v280[53] delegate];
          v170 = delegate4;
          v305 = 0;
          v304 = 0;
          if (v170)
          {
            delegate5 = [v280[53] delegate];
            v75 = delegate5;
            v280[13] = v75;
            v305 = 1;
            v168 = objc_opt_class();
            v167 = NSStringFromClass(v168);
            v76 = v167;
            v280[11] = v76;
            v304 = 1;
            v166 = v76;
          }

          else
          {
            v166 = @"(null)";
          }

          v164 = v166;
          delegate6 = [v280[53] delegate];
          v162 = delegate6;
          scanError2 = [v280[53] scanError];
          v160 = scanError2;
          preferredStatefulDescriptor2 = [v280[53] preferredStatefulDescriptor];
          v158 = preferredStatefulDescriptor2;
          alternateStatefulDescriptor2 = [v280[53] alternateStatefulDescriptor];
          v156 = alternateStatefulDescriptor2;
          currentDownload4 = [v280[53] currentDownload];
          v155 = currentDownload4;
          v303 = 0;
          v302 = 0;
          v301 = 0;
          if (v155)
          {
            currentDownload5 = [v280[53] currentDownload];
            v77 = currentDownload5;
            v280[9] = v77;
            v303 = 1;
            descriptor3 = [v77 descriptor];
            v78 = descriptor3;
            v280[7] = v78;
            v302 = 1;
            updateName4 = [v78 updateName];
            v79 = updateName4;
            v280[5] = v79;
            v301 = 1;
            v151 = v79;
          }

          else
          {
            v151 = @"(null)";
          }

          v149 = v151;
          currentDownload6 = [v280[53] currentDownload];
          v147 = currentDownload6;
          currentUpdateOperationType2 = [v280[53] currentUpdateOperationType];
          v146 = SUUIUpdateContinuousOperationTypeToString();
          v143 = v146;
          v80 = MEMORY[0x277D82BE0](v143);
          v81 = v280;
          v144 = v80;
          v280[3] = v80;
          isTargetedUpdateScheduledForAutoInstall2 = [v81[53] isTargetedUpdateScheduledForAutoInstall];
          v339 = isTargetedUpdateScheduledForAutoInstall2;
          if (isTargetedUpdateScheduledForAutoInstall2)
          {
            v82 = @"YES";
          }

          else
          {
            v82 = @"NO";
          }

          v142 = v82;
          v83 = v82;
          v139 = v142;
          v84 = MEMORY[0x277D82BE0](v139);
          v85 = v280;
          v140 = v84;
          v280[2] = v84;
          hidingPreferredDescriptor2 = [v85[53] hidingPreferredDescriptor];
          v338 = hidingPreferredDescriptor2;
          if (hidingPreferredDescriptor2)
          {
            v86 = @"YES";
          }

          else
          {
            v86 = @"NO";
          }

          v138 = v86;
          v87 = v86;
          v135 = v138;
          v88 = MEMORY[0x277D82BE0](v135);
          v89 = v280;
          v136 = v88;
          v280[1] = v88;
          hiddenPreferredStatefulDescriptor2 = [v89[53] hiddenPreferredStatefulDescriptor];
          v133 = hiddenPreferredStatefulDescriptor2;
          updateName5 = [v133 updateName];
          v130 = updateName5;
          v90 = MEMORY[0x277D82BE0](v130);
          v91 = v280;
          v131 = v90;
          *v280 = v90;
          hidingAlternateDescriptor2 = [v91[53] hidingAlternateDescriptor];
          v337 = hidingAlternateDescriptor2;
          if (hidingAlternateDescriptor2)
          {
            v92 = @"YES";
          }

          else
          {
            v92 = @"NO";
          }

          v129 = v92;
          v93 = v92;
          v126 = v129;
          v127 = MEMORY[0x277D82BE0](v126);
          v296 = v127;
          hiddenAlternateStatefulDescriptor2 = [v280[53] hiddenAlternateStatefulDescriptor];
          v124 = hiddenAlternateStatefulDescriptor2;
          updateName6 = [v124 updateName];
          v121 = updateName6;
          v122 = MEMORY[0x277D82BE0](v121);
          v295 = v122;
          enrolledBetaProgram3 = [v280[53] enrolledBetaProgram];
          v120 = enrolledBetaProgram3;
          v293 = 0;
          if (v120)
          {
            enrolledBetaProgram4 = [v280[53] enrolledBetaProgram];
            v294 = enrolledBetaProgram4;
            v293 = 1;
            programID2 = [v294 programID];
            v117 = programID2;
          }

          else
          {
            v117 = 0;
          }

          v115 = v117;
          v116 = [*(v280[53] + *MEMORY[0x277D64BE8]) count];
          canEnrollInBetaUpdates2 = [v280[53] canEnrollInBetaUpdates];
          v336 = canEnrollInBetaUpdates2;
          if (canEnrollInBetaUpdates2)
          {
            v94 = @"YES";
          }

          else
          {
            v94 = @"NO";
          }

          v113 = v94;
          v95 = v94;
          v107 = v113;
          v108 = MEMORY[0x277D82BE0](v107);
          v292 = v108;
          v109 = *(v280[53] + *MEMORY[0x277D64BF0]);
          v110 = *(v280[53] + *MEMORY[0x277D64BF8]);
          v111 = *(v280[53] + *MEMORY[0x277D64C08]);
          v112 = [*(v280[53] + *MEMORY[0x277D64BE0]) count];
          v105 = v96;
          v106 = v344;
          __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v344, v283, v181, v176, v173, currentState2, v164, v162, v160, v158, v156, v149, v147, v144, v140, v136, v131, v127, v122, v115, v116, v108, v109, v110, v111, v112);
          _os_log_impl(&dword_26B0B9000, v179, v180[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nCould not resolve the targeted update from the current download. Skipping on the downloadDidStart event and performing a new scan instead.", v106, 0xFCu);
          MEMORY[0x277D82BD8](v107);
          if (v293)
          {
            MEMORY[0x277D82BD8](v294);
          }

          MEMORY[0x277D82BD8](v120);
          MEMORY[0x277D82BD8](v121);
          MEMORY[0x277D82BD8](v124);
          MEMORY[0x277D82BD8](v126);
          MEMORY[0x277D82BD8](v130);
          MEMORY[0x277D82BD8](v133);
          MEMORY[0x277D82BD8](v135);
          MEMORY[0x277D82BD8](v139);
          MEMORY[0x277D82BD8](v143);
          MEMORY[0x277D82BD8](v147);
          if (v301)
          {
            MEMORY[0x277D82BD8](v280[5]);
          }

          if (v302)
          {
            MEMORY[0x277D82BD8](v280[7]);
          }

          if (v303)
          {
            MEMORY[0x277D82BD8](v280[9]);
          }

          MEMORY[0x277D82BD8](v155);
          MEMORY[0x277D82BD8](v156);
          MEMORY[0x277D82BD8](v158);
          MEMORY[0x277D82BD8](v160);
          MEMORY[0x277D82BD8](v162);
          if (v304)
          {
            MEMORY[0x277D82BD8](v280[11]);
          }

          if (v305)
          {
            MEMORY[0x277D82BD8](v280[13]);
          }

          MEMORY[0x277D82BD8](v170);
          MEMORY[0x277D82BD8](v172);
          MEMORY[0x277D82BD8](v175);
          objc_storeStrong(&v292, 0);
          objc_storeStrong(&v295, 0);
          objc_storeStrong(&v296, 0);
          objc_storeStrong(&v297, 0);
          objc_storeStrong(&v298, 0);
          objc_storeStrong(&v299, 0);
          objc_storeStrong(&v300, 0);
          objc_storeStrong(&v306, 0);
          objc_storeStrong(&v307, 0);
        }

        objc_storeStrong(&v309, 0);
        [v280[53] checkForAvailableUpdates:1 forceScan:1];
        v314 = 1;
      }

      objc_storeStrong(&v310, 0);
      objc_storeStrong(&v313, 0);
    }
  }

  else
  {
    [v280[53] checkForAvailableUpdates:0 forceScan:1];
    v314 = 1;
  }

  objc_storeStrong(&v333, 0);
  objc_storeStrong(&v334, 0);
  objc_storeStrong(location, 0);
}

void __74__SUUIMobileStatefulUIManager_client_downloadDidFinish_withInstallPolicy___block_invoke(uint64_t a1, char a2)
{
  v13 = a1;
  v12 = a2;
  v11[2] = a1;
  v3 = *(a1 + 32);
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __74__SUUIMobileStatefulUIManager_client_downloadDidFinish_withInstallPolicy___block_invoke_2;
  v8 = &unk_279CCC7B0;
  objc_copyWeak(v11, (a1 + 56));
  v11[1] = *(a1 + 64);
  v9 = MEMORY[0x277D82BE0](*(a1 + 40));
  v10 = MEMORY[0x277D82BE0](*(a1 + 48));
  [v3 executeOperationOnDelegate:sel_statefulUIManager_didStartDownloadForDescriptor_withDownload_ usingBlock:&v4];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v9, 0);
  objc_destroyWeak(v11);
}

void __74__SUUIMobileStatefulUIManager_client_downloadDidFinish_withInstallPolicy___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[2] = a1;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 48));
  v6 = 0;
  if (!v11[0])
  {
    v5 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 56));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v12, "[SUUIMobileStatefulUIManager client:downloadDidFinish:withInstallPolicy:]_block_invoke_2", v8);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v12, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v10, 0);
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    v1 = [v11[0] delegate];
    [v1 statefulUIManager:v11[0] didFinishDownloadForDescriptor:*(a1 + 32) withDownload:*(a1 + 40)];
    MEMORY[0x277D82BD8](v1);
  }

  objc_storeStrong(v11, 0);
}

- (void)client:(id)client downloadWasInvalidatedForNewUpdatesAvailable:(id)available
{
  obj = available;
  v72 = "[SUUIMobileStatefulUIManager client:downloadWasInvalidatedForNewUpdatesAvailable:]";
  v105 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v97 = 0;
  objc_storeStrong(&v97, obj);
  statefulUILogger = [MEMORY[0x277D64B58] statefulUILogger];
  oslog = [statefulUILogger oslog];
  MEMORY[0x277D82BD8](statefulUILogger);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v63 = type;
    v64 = selfCopy;
    v4 = objc_opt_class();
    v65 = NSStringFromClass(v4);
    v66 = MEMORY[0x277D82BE0](v65);
    v94 = v66;
    v67 = SUUIStatefulUIStateToString();
    v68 = MEMORY[0x277D82BE0](v67);
    v93 = v68;
    currentState = [(SUUIStatefulUIManager *)selfCopy currentState];
    delegate = [(SUUIStatefulUIManager *)selfCopy delegate];
    v91 = 0;
    v89 = 0;
    if (delegate)
    {
      delegate2 = [(SUUIStatefulUIManager *)selfCopy delegate];
      v60 = 1;
      v91 = 1;
      v5 = objc_opt_class();
      v90 = NSStringFromClass(v5);
      v89 = 1;
      v61 = v90;
    }

    else
    {
      v61 = @"(null)";
    }

    v54 = v61;
    delegate3 = [(SUUIStatefulUIManager *)selfCopy delegate];
    scanError = [(SUUIStatefulUIManager *)selfCopy scanError];
    preferredStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy preferredStatefulDescriptor];
    alternateStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy alternateStatefulDescriptor];
    currentDownload = [(SUUIStatefulUIManager *)selfCopy currentDownload];
    v87 = 0;
    v85 = 0;
    v83 = 0;
    if (currentDownload)
    {
      currentDownload2 = [(SUUIStatefulUIManager *)selfCopy currentDownload];
      v52 = 1;
      v87 = 1;
      descriptor = [(SUUIDownload *)currentDownload2 descriptor];
      v85 = 1;
      updateName = [descriptor updateName];
      v83 = 1;
      v53 = updateName;
    }

    else
    {
      v53 = @"(null)";
    }

    v29 = v53;
    currentDownload3 = [(SUUIStatefulUIManager *)selfCopy currentDownload];
    [(SUUIStatefulUIManager *)selfCopy currentUpdateOperationType];
    v31 = SUUIUpdateContinuousOperationTypeToString();
    v32 = MEMORY[0x277D82BE0](v31);
    v82 = v32;
    isTargetedUpdateScheduledForAutoInstall = [(SUUIMobileStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
    v42 = @"NO";
    v43 = @"YES";
    v50 = 1;
    if (isTargetedUpdateScheduledForAutoInstall)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v33 = v6;
    v7 = v6;
    v34 = v33;
    v35 = MEMORY[0x277D82BE0](v34);
    v81 = v35;
    if ([(SUUIStatefulUIManager *)selfCopy hidingPreferredDescriptor])
    {
      v8 = v43;
    }

    else
    {
      v8 = v42;
    }

    v36 = v8;
    v9 = v8;
    v37 = v36;
    v38 = MEMORY[0x277D82BE0](v37);
    v80 = v38;
    hiddenPreferredStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy hiddenPreferredStatefulDescriptor];
    updateName2 = [(SUUIStatefulDescriptor *)hiddenPreferredStatefulDescriptor updateName];
    v41 = MEMORY[0x277D82BE0](updateName2);
    v79 = v41;
    if ([(SUUIStatefulUIManager *)selfCopy hidingAlternateDescriptor])
    {
      v10 = v43;
    }

    else
    {
      v10 = v42;
    }

    v44 = v10;
    v11 = v10;
    v45 = v44;
    v46 = MEMORY[0x277D82BE0](v45);
    v78 = v46;
    hiddenAlternateStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy hiddenAlternateStatefulDescriptor];
    updateName3 = [(SUUIStatefulDescriptor *)hiddenAlternateStatefulDescriptor updateName];
    v49 = MEMORY[0x277D82BE0](updateName3);
    v77 = v49;
    enrolledBetaProgram = [(SUUIStatefulUIManager *)selfCopy enrolledBetaProgram];
    v75 = 0;
    if (enrolledBetaProgram)
    {
      enrolledBetaProgram2 = [(SUUIStatefulUIManager *)selfCopy enrolledBetaProgram];
      v75 = 1;
      programID = [(SDBetaProgram *)enrolledBetaProgram2 programID];
    }

    else
    {
      programID = 0;
    }

    v19 = programID;
    v20 = [*(&selfCopy->super.super.isa + *MEMORY[0x277D64BE8]) count];
    if ([(SUUIStatefulUIManager *)selfCopy canEnrollInBetaUpdates])
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v18 = v12;
    v13 = v12;
    v27 = v18;
    v21 = MEMORY[0x277D82BE0](v27);
    v74 = v21;
    v22 = *(&selfCopy->super.super.isa + *MEMORY[0x277D64BF0]);
    v23 = *(&selfCopy->super.super.isa + *MEMORY[0x277D64BF8]);
    v24 = *(&selfCopy->super.super.isa + *MEMORY[0x277D64C08]);
    v14 = [*(&selfCopy->super.super.isa + *MEMORY[0x277D64BE0]) count];
    v25 = &v15;
    buf = v104;
    __os_log_helper_16_2_26_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66(v104, v72, v64, v66, v68, currentState, v54, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v29, currentDownload3, v32, v35, v38, v41, v46, v49, v19, v20, v21, v22, v23, v24, v14, v97);
    _os_log_impl(&dword_26B0B9000, log, v63[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nDownload was invalidated for new updates available: %{public}@", buf, 0x106u);
    MEMORY[0x277D82BD8](v27);
    if (v75)
    {
      MEMORY[0x277D82BD8](enrolledBetaProgram2);
    }

    MEMORY[0x277D82BD8](enrolledBetaProgram);
    MEMORY[0x277D82BD8](updateName3);
    MEMORY[0x277D82BD8](hiddenAlternateStatefulDescriptor);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](updateName2);
    MEMORY[0x277D82BD8](hiddenPreferredStatefulDescriptor);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](currentDownload3);
    if (v83)
    {
      MEMORY[0x277D82BD8](updateName);
    }

    if (v85)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v87)
    {
      MEMORY[0x277D82BD8](currentDownload2);
    }

    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    MEMORY[0x277D82BD8](scanError);
    MEMORY[0x277D82BD8](delegate3);
    if (v89)
    {
      MEMORY[0x277D82BD8](v90);
    }

    if (v91)
    {
      MEMORY[0x277D82BD8](delegate2);
    }

    MEMORY[0x277D82BD8](delegate);
    MEMORY[0x277D82BD8](v67);
    MEMORY[0x277D82BD8](v65);
    v17 = 0;
    objc_storeStrong(&v74, 0);
    objc_storeStrong(&v77, v17);
    objc_storeStrong(&v78, v17);
    objc_storeStrong(&v79, v17);
    objc_storeStrong(&v80, v17);
    objc_storeStrong(&v81, v17);
    objc_storeStrong(&v82, v17);
    objc_storeStrong(&v93, v17);
    objc_storeStrong(&v94, v17);
  }

  objc_storeStrong(&oslog, 0);
  [(SUUIStatefulUIManager *)selfCopy checkForAvailableUpdates:1 forceScan:1];
  v16 = 0;
  objc_storeStrong(&v97, 0);
  objc_storeStrong(location, v16);
}

- (void)client:(id)client downloadDidFail:(id)fail withError:(id)error
{
  obj = fail;
  errorCopy = error;
  v82 = "[SUUIMobileStatefulUIManager client:downloadDidFail:withError:]";
  v129 = *MEMORY[0x277D85DE8];
  val = self;
  v122 = a2;
  location = 0;
  objc_storeStrong(&location, client);
  v120 = 0;
  objc_storeStrong(&v120, obj);
  v119 = 0;
  objc_storeStrong(&v119, errorCopy);
  statefulUILogger = [MEMORY[0x277D64B58] statefulUILogger];
  oslog = [statefulUILogger oslog];
  MEMORY[0x277D82BD8](statefulUILogger);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v73 = type;
    v74 = val;
    v5 = objc_opt_class();
    v75 = NSStringFromClass(v5);
    v76 = MEMORY[0x277D82BE0](v75);
    v116 = v76;
    v77 = SUUIStatefulUIStateToString();
    v78 = MEMORY[0x277D82BE0](v77);
    v115 = v78;
    currentState = [val currentState];
    delegate = [val delegate];
    v113 = 0;
    v111 = 0;
    if (delegate)
    {
      delegate2 = [val delegate];
      v70 = 1;
      v113 = 1;
      v6 = objc_opt_class();
      v112 = NSStringFromClass(v6);
      v111 = 1;
      v71 = v112;
    }

    else
    {
      v71 = @"(null)";
    }

    v64 = v71;
    delegate3 = [val delegate];
    scanError = [val scanError];
    preferredStatefulDescriptor = [val preferredStatefulDescriptor];
    alternateStatefulDescriptor = [val alternateStatefulDescriptor];
    currentDownload = [val currentDownload];
    v109 = 0;
    v107 = 0;
    v105 = 0;
    if (currentDownload)
    {
      currentDownload2 = [val currentDownload];
      v62 = 1;
      v109 = 1;
      descriptor = [currentDownload2 descriptor];
      v107 = 1;
      updateName = [descriptor updateName];
      v105 = 1;
      v63 = updateName;
    }

    else
    {
      v63 = @"(null)";
    }

    v39 = v63;
    currentDownload3 = [val currentDownload];
    [val currentUpdateOperationType];
    v41 = SUUIUpdateContinuousOperationTypeToString();
    v42 = MEMORY[0x277D82BE0](v41);
    v104 = v42;
    isTargetedUpdateScheduledForAutoInstall = [val isTargetedUpdateScheduledForAutoInstall];
    v52 = @"NO";
    v53 = @"YES";
    v60 = 1;
    if (isTargetedUpdateScheduledForAutoInstall)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v43 = v7;
    v8 = v7;
    v44 = v43;
    v45 = MEMORY[0x277D82BE0](v44);
    v103 = v45;
    hidingPreferredDescriptor = [val hidingPreferredDescriptor];
    if (hidingPreferredDescriptor)
    {
      v9 = v53;
    }

    else
    {
      v9 = v52;
    }

    v46 = v9;
    v10 = v9;
    v47 = v46;
    v48 = MEMORY[0x277D82BE0](v47);
    v102 = v48;
    hiddenPreferredStatefulDescriptor = [val hiddenPreferredStatefulDescriptor];
    updateName2 = [hiddenPreferredStatefulDescriptor updateName];
    v51 = MEMORY[0x277D82BE0](updateName2);
    v101 = v51;
    hidingAlternateDescriptor = [val hidingAlternateDescriptor];
    if (hidingAlternateDescriptor)
    {
      v11 = v53;
    }

    else
    {
      v11 = v52;
    }

    v54 = v11;
    v12 = v11;
    v55 = v54;
    v56 = MEMORY[0x277D82BE0](v55);
    v100 = v56;
    hiddenAlternateStatefulDescriptor = [val hiddenAlternateStatefulDescriptor];
    updateName3 = [hiddenAlternateStatefulDescriptor updateName];
    v59 = MEMORY[0x277D82BE0](updateName3);
    v99 = v59;
    enrolledBetaProgram = [val enrolledBetaProgram];
    v97 = 0;
    if (enrolledBetaProgram)
    {
      enrolledBetaProgram2 = [val enrolledBetaProgram];
      v97 = 1;
      programID = [enrolledBetaProgram2 programID];
    }

    else
    {
      programID = 0;
    }

    v26 = programID;
    v27 = [*(val + *MEMORY[0x277D64BE8]) count];
    canEnrollInBetaUpdates = [val canEnrollInBetaUpdates];
    if (canEnrollInBetaUpdates)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v25 = v13;
    v14 = v13;
    v37 = v25;
    v28 = MEMORY[0x277D82BE0](v37);
    v96 = v28;
    v29 = *(val + *MEMORY[0x277D64BF0]);
    v30 = *(val + *MEMORY[0x277D64BF8]);
    v31 = *(val + *MEMORY[0x277D64C08]);
    v32 = [*(val + *MEMORY[0x277D64BE0]) count];
    descriptor2 = [v120 descriptor];
    humanReadableUpdateName = [descriptor2 humanReadableUpdateName];
    v95 = MEMORY[0x277D82BE0](humanReadableUpdateName);
    v33 = &v15;
    buf = v128;
    __os_log_helper_16_2_28_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_0_8_66(v128, v82, v74, v76, v78, currentState, v64, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v39, currentDownload3, v42, v45, v48, v51, v56, v59, v26, v27, v28, v29, v30, v31, v32, v95, v120, v119);
    _os_log_impl(&dword_26B0B9000, log, v73[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nDownload of update %{public}@ (%p) failed: %{public}@", buf, 0x11Au);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor2);
    MEMORY[0x277D82BD8](v37);
    if (v97)
    {
      MEMORY[0x277D82BD8](enrolledBetaProgram2);
    }

    MEMORY[0x277D82BD8](enrolledBetaProgram);
    MEMORY[0x277D82BD8](updateName3);
    MEMORY[0x277D82BD8](hiddenAlternateStatefulDescriptor);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](updateName2);
    MEMORY[0x277D82BD8](hiddenPreferredStatefulDescriptor);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](currentDownload3);
    if (v105)
    {
      MEMORY[0x277D82BD8](updateName);
    }

    if (v107)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v109)
    {
      MEMORY[0x277D82BD8](currentDownload2);
    }

    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    MEMORY[0x277D82BD8](scanError);
    MEMORY[0x277D82BD8](delegate3);
    if (v111)
    {
      MEMORY[0x277D82BD8](v112);
    }

    if (v113)
    {
      MEMORY[0x277D82BD8](delegate2);
    }

    MEMORY[0x277D82BD8](delegate);
    MEMORY[0x277D82BD8](v77);
    MEMORY[0x277D82BD8](v75);
    v24 = 0;
    objc_storeStrong(&v95, 0);
    objc_storeStrong(&v96, v24);
    objc_storeStrong(&v99, v24);
    objc_storeStrong(&v100, v24);
    objc_storeStrong(&v101, v24);
    objc_storeStrong(&v102, v24);
    objc_storeStrong(&v103, v24);
    objc_storeStrong(&v104, v24);
    objc_storeStrong(&v115, v24);
    objc_storeStrong(&v116, v24);
  }

  objc_storeStrong(&oslog, 0);
  if (v120)
  {
    from = &v93;
    objc_initWeak(&v93, val);
    queue = *(val + *MEMORY[0x277D64C18]);
    block = &v85;
    v85 = MEMORY[0x277D85DD0];
    v86 = -1073741824;
    v87 = 0;
    v88 = __64__SUUIMobileStatefulUIManager_client_downloadDidFail_withError___block_invoke;
    v89 = &unk_279CCC7B0;
    v22 = v92;
    objc_copyWeak(v92, from);
    v92[1] = v122;
    v20 = (block + 32);
    v90 = MEMORY[0x277D82BE0](v120);
    v19 = (block + 40);
    v91 = MEMORY[0x277D82BE0](v119);
    dispatch_async(queue, block);
    v21 = 0;
    objc_storeStrong(v19, 0);
    objc_storeStrong(v20, v21);
    objc_destroyWeak(v22);
    objc_destroyWeak(from);
    v94 = 0;
  }

  else
  {
    v94 = 1;
  }

  v16 = 0;
  objc_storeStrong(&v119, 0);
  objc_storeStrong(&v120, v16);
  objc_storeStrong(&location, v16);
}

void __64__SUUIMobileStatefulUIManager_client_downloadDidFail_withError___block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x277D85DE8];
  v56[2] = a1;
  v56[1] = a1;
  v56[0] = objc_loadWeakRetained((a1 + 48));
  v28 = 0;
  if (!v56[0])
  {
    v27 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v55 = [v27 oslog];
    MEMORY[0x277D82BD8](v27);
    v54 = 16;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      log = v55;
      type = v54;
      v26 = NSStringFromSelector(*(a1 + 56));
      v53 = MEMORY[0x277D82BE0](v26);
      __os_log_helper_16_2_2_8_32_8_66(v60, "[SUUIMobileStatefulUIManager client:downloadDidFail:withError:]_block_invoke", v53);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v60, 0x16u);
      MEMORY[0x277D82BD8](v26);
      objc_storeStrong(&v53, 0);
    }

    objc_storeStrong(&v55, 0);
    v52 = 1;
    v28 = 1;
  }

  if (v28)
  {
    v51 = 1;
  }

  else
  {
    v1 = *(a1 + 32);
    v47 = 0;
    if (v1)
    {
      v48 = [[SUUIMobileDownload alloc] initWithDownload:*(a1 + 32)];
      v47 = 1;
      v2 = MEMORY[0x277D82BE0](v48);
    }

    else
    {
      v2 = MEMORY[0x277D82BE0](0);
    }

    v49 = v2;
    if (v47)
    {
      MEMORY[0x277D82BD8](v48);
    }

    if (([v49 conformsToProtocol:&unk_287BBC258] & 1) == 0)
    {
      v7 = @"SUUIMobileDownloadFromSUDownload(download)";
      v8 = NSStringFromProtocol(&unk_287BBC258);
      _suui_precondition_failure_with_format();
    }

    v46 = MEMORY[0x277D82BE0](v49);
    objc_storeStrong(&v49, 0);
    v50 = v46;
    v45 = [v56[0] targetedUpdateForDownload:v46];
    v44 = 1;
    v43 = 1;
    v22 = [*(a1 + 40) domain];
    v23 = 0;
    if ([v22 isEqualToString:*MEMORY[0x277D64910]])
    {
      v23 = [*(a1 + 40) code] == 16;
    }

    MEMORY[0x277D82BD8](v22);
    if (v23)
    {
      v19 = [*(a1 + 40) userInfo];
      v20 = [v19 objectForKey:*MEMORY[0x277D64A90]];
      v21 = 0;
      if ([v20 BOOLValue])
      {
        v21 = [v56[0] hasHiddenDescriptors];
      }

      MEMORY[0x277D82BD8](v20);
      MEMORY[0x277D82BD8](v19);
      if (v21)
      {
        v44 = 0;
      }

      else
      {
        v43 = 0;
      }
    }

    v18 = [MEMORY[0x277D64B58] statefulUILogger];
    v42 = [v18 oslog];
    MEMORY[0x277D82BD8](v18);
    v41 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v42;
      v15 = v41;
      v12 = v56[0];
      v58 = v44 & 1;
      if (v44)
      {
        v3 = @"YES";
      }

      else
      {
        v3 = @"NO";
      }

      v10 = v3;
      v4 = v3;
      v17 = v10;
      v13 = MEMORY[0x277D82BE0](v17);
      v40 = v13;
      v57 = v43 & 1;
      if (v43)
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v11 = v5;
      v6 = v5;
      v16 = v11;
      v39 = MEMORY[0x277D82BE0](v16);
      __os_log_helper_16_2_4_8_32_8_0_8_66_8_66(v59, "[SUUIMobileStatefulUIManager client:downloadDidFail:withError:]_block_invoke", v12, v13, v39);
      _os_log_impl(&dword_26B0B9000, v14, v15, "%s [%p]: Cleaning up the manager state after a download failure.\n\t- fullScan: %{public}@\n\t- bgScan: %{public}@", v59, 0x2Au);
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      objc_storeStrong(&v39, 0);
      objc_storeStrong(&v40, 0);
    }

    objc_storeStrong(&v42, 0);
    [*(v56[0] + 35) destroyInstallationKeybag];
    if (v44)
    {
      if (v43)
      {
        [v56[0] checkForUpdatesInBackground:1 forceScan:1];
      }

      else
      {
        [v56[0] checkForAvailableUpdates:1 forceScan:1];
      }
    }

    else
    {
      [v56[0] clearPastDownload:v50];
    }

    v9 = v56[0];
    v30 = MEMORY[0x277D85DD0];
    v31 = -1073741824;
    v32 = 0;
    v33 = __64__SUUIMobileStatefulUIManager_client_downloadDidFail_withError___block_invoke_412;
    v34 = &unk_279CCF7B8;
    v35 = MEMORY[0x277D82BE0](v56[0]);
    v36 = MEMORY[0x277D82BE0](v45);
    v37 = MEMORY[0x277D82BE0](*(a1 + 40));
    v38 = MEMORY[0x277D82BE0](v50);
    [v9 executeOperationOnDelegate:sel_statefulUIManager_didFailToDownloadUpdateForDescriptor_withError_download_ usingBlock:&v30];
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v37, 0);
    objc_storeStrong(&v36, 0);
    objc_storeStrong(&v35, 0);
    objc_storeStrong(&v45, 0);
    objc_storeStrong(&v50, 0);
    v51 = 0;
  }

  objc_storeStrong(v56, 0);
}

uint64_t __64__SUUIMobileStatefulUIManager_client_downloadDidFail_withError___block_invoke_412(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  v4 = v1;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = 0;
  if (*(a1 + 48))
  {
    v8 = [(SUUIStatefulError *)[SUUIMobileStatefulError alloc] initFromError:*(a1 + 48)];
    v7 = 1;
    [v4 statefulUIManager:v5 didFailToDownloadUpdateForDescriptor:v6 withError:v8 download:*(a1 + 56)];
  }

  else
  {
    [v1 statefulUIManager:v5 didFailToDownloadUpdateForDescriptor:v6 withError:0 download:*(a1 + 56)];
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  return MEMORY[0x277D82BD8](v4);
}

- (void)client:(id)client clearingSpaceForDownload:(id)download clearingSpace:(BOOL)space
{
  obj = download;
  spaceCopy = space;
  v88 = "[SUUIMobileStatefulUIManager client:clearingSpaceForDownload:clearingSpace:]";
  v135 = *MEMORY[0x277D85DE8];
  val = self;
  v127 = a2;
  location = 0;
  objc_storeStrong(&location, client);
  v125 = 0;
  objc_storeStrong(&v125, obj);
  v124 = spaceCopy;
  statefulUILogger = [MEMORY[0x277D64B58] statefulUILogger];
  oslog = [statefulUILogger oslog];
  MEMORY[0x277D82BD8](statefulUILogger);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v79 = type;
    v80 = val;
    v5 = objc_opt_class();
    v81 = NSStringFromClass(v5);
    v82 = MEMORY[0x277D82BE0](v81);
    v121 = v82;
    v83 = SUUIStatefulUIStateToString();
    v84 = MEMORY[0x277D82BE0](v83);
    v120 = v84;
    currentState = [val currentState];
    delegate = [val delegate];
    v118 = 0;
    v116 = 0;
    if (delegate)
    {
      delegate2 = [val delegate];
      v76 = 1;
      v118 = 1;
      v6 = objc_opt_class();
      v117 = NSStringFromClass(v6);
      v116 = 1;
      v77 = v117;
    }

    else
    {
      v77 = @"(null)";
    }

    v70 = v77;
    delegate3 = [val delegate];
    scanError = [val scanError];
    preferredStatefulDescriptor = [val preferredStatefulDescriptor];
    alternateStatefulDescriptor = [val alternateStatefulDescriptor];
    currentDownload = [val currentDownload];
    v114 = 0;
    v112 = 0;
    v110 = 0;
    if (currentDownload)
    {
      currentDownload2 = [val currentDownload];
      v68 = 1;
      v114 = 1;
      descriptor = [currentDownload2 descriptor];
      v112 = 1;
      updateName = [descriptor updateName];
      v110 = 1;
      v69 = updateName;
    }

    else
    {
      v69 = @"(null)";
    }

    v45 = v69;
    currentDownload3 = [val currentDownload];
    [val currentUpdateOperationType];
    v47 = SUUIUpdateContinuousOperationTypeToString();
    v48 = MEMORY[0x277D82BE0](v47);
    v109 = v48;
    isTargetedUpdateScheduledForAutoInstall = [val isTargetedUpdateScheduledForAutoInstall];
    v58 = @"NO";
    v59 = @"YES";
    v66 = 1;
    if (isTargetedUpdateScheduledForAutoInstall)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v49 = v7;
    v8 = v7;
    v50 = v49;
    v51 = MEMORY[0x277D82BE0](v50);
    v108 = v51;
    hidingPreferredDescriptor = [val hidingPreferredDescriptor];
    if (hidingPreferredDescriptor)
    {
      v9 = v59;
    }

    else
    {
      v9 = v58;
    }

    v52 = v9;
    v10 = v9;
    v53 = v52;
    v54 = MEMORY[0x277D82BE0](v53);
    v107 = v54;
    hiddenPreferredStatefulDescriptor = [val hiddenPreferredStatefulDescriptor];
    updateName2 = [hiddenPreferredStatefulDescriptor updateName];
    v57 = MEMORY[0x277D82BE0](updateName2);
    v106 = v57;
    hidingAlternateDescriptor = [val hidingAlternateDescriptor];
    if (hidingAlternateDescriptor)
    {
      v11 = v59;
    }

    else
    {
      v11 = v58;
    }

    v60 = v11;
    v12 = v11;
    v61 = v60;
    v62 = MEMORY[0x277D82BE0](v61);
    v105 = v62;
    hiddenAlternateStatefulDescriptor = [val hiddenAlternateStatefulDescriptor];
    updateName3 = [hiddenAlternateStatefulDescriptor updateName];
    v65 = MEMORY[0x277D82BE0](updateName3);
    v104 = v65;
    enrolledBetaProgram = [val enrolledBetaProgram];
    v102 = 0;
    if (enrolledBetaProgram)
    {
      enrolledBetaProgram2 = [val enrolledBetaProgram];
      v102 = 1;
      programID = [enrolledBetaProgram2 programID];
    }

    else
    {
      programID = 0;
    }

    v29 = programID;
    v30 = [*(val + *MEMORY[0x277D64BE8]) count];
    canEnrollInBetaUpdates = [val canEnrollInBetaUpdates];
    v26 = @"NO";
    v27 = @"YES";
    v25 = 1;
    if (canEnrollInBetaUpdates)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v24 = v13;
    v14 = v13;
    v43 = v24;
    v31 = MEMORY[0x277D82BE0](v43);
    v101 = v31;
    v32 = *(val + *MEMORY[0x277D64BF0]);
    v33 = *(val + *MEMORY[0x277D64BF8]);
    v34 = *(val + *MEMORY[0x277D64C08]);
    v35 = [*(val + *MEMORY[0x277D64BE0]) count];
    descriptor2 = [v125 descriptor];
    humanReadableUpdateName = [descriptor2 humanReadableUpdateName];
    v36 = MEMORY[0x277D82BE0](humanReadableUpdateName);
    v100 = v36;
    v37 = v125;
    v129 = v124 & v25;
    if (v124 & v25)
    {
      v15 = v27;
    }

    else
    {
      v15 = v26;
    }

    v28 = v15;
    v16 = v15;
    v40 = v28;
    v99 = MEMORY[0x277D82BE0](v40);
    v38 = &v17;
    buf = v134;
    __os_log_helper_16_2_28_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_0_8_66(v134, v88, v80, v82, v84, currentState, v70, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v45, currentDownload3, v48, v51, v54, v57, v62, v65, v29, v30, v31, v32, v33, v34, v35, v36, v37, v99);
    _os_log_impl(&dword_26B0B9000, log, v79[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nClearing space for update %{public}@ (%p): %{public}@", buf, 0x11Au);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](humanReadableUpdateName);
    MEMORY[0x277D82BD8](descriptor2);
    MEMORY[0x277D82BD8](v43);
    if (v102)
    {
      MEMORY[0x277D82BD8](enrolledBetaProgram2);
    }

    MEMORY[0x277D82BD8](enrolledBetaProgram);
    MEMORY[0x277D82BD8](updateName3);
    MEMORY[0x277D82BD8](hiddenAlternateStatefulDescriptor);
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](updateName2);
    MEMORY[0x277D82BD8](hiddenPreferredStatefulDescriptor);
    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](currentDownload3);
    if (v110)
    {
      MEMORY[0x277D82BD8](updateName);
    }

    if (v112)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v114)
    {
      MEMORY[0x277D82BD8](currentDownload2);
    }

    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    MEMORY[0x277D82BD8](scanError);
    MEMORY[0x277D82BD8](delegate3);
    if (v116)
    {
      MEMORY[0x277D82BD8](v117);
    }

    if (v118)
    {
      MEMORY[0x277D82BD8](delegate2);
    }

    MEMORY[0x277D82BD8](delegate);
    MEMORY[0x277D82BD8](v83);
    MEMORY[0x277D82BD8](v81);
    v23 = 0;
    objc_storeStrong(&v99, 0);
    objc_storeStrong(&v100, v23);
    objc_storeStrong(&v101, v23);
    objc_storeStrong(&v104, v23);
    objc_storeStrong(&v105, v23);
    objc_storeStrong(&v106, v23);
    objc_storeStrong(&v107, v23);
    objc_storeStrong(&v108, v23);
    objc_storeStrong(&v109, v23);
    objc_storeStrong(&v120, v23);
    objc_storeStrong(&v121, v23);
  }

  objc_storeStrong(&oslog, 0);
  from = &v98;
  objc_initWeak(&v98, val);
  queue = *(val + *MEMORY[0x277D64C18]);
  block = &v91;
  v91 = MEMORY[0x277D85DD0];
  v92 = -1073741824;
  v93 = 0;
  v94 = __77__SUUIMobileStatefulUIManager_client_clearingSpaceForDownload_clearingSpace___block_invoke;
  v95 = &unk_279CCF7E0;
  v20 = v96;
  objc_copyWeak(v96, from);
  v96[1] = v127;
  v97 = v124;
  dispatch_async(queue, block);
  objc_destroyWeak(v20);
  objc_destroyWeak(from);
  v22 = 0;
  objc_storeStrong(&v125, 0);
  objc_storeStrong(&location, v22);
}

void __77__SUUIMobileStatefulUIManager_client_clearingSpaceForDownload_clearingSpace___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v17[2] = a1;
  v17[1] = a1;
  v17[0] = objc_loadWeakRetained((a1 + 32));
  v4 = 0;
  if (!v17[0])
  {
    v3 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v16 = [v3 oslog];
    MEMORY[0x277D82BD8](v3);
    v15 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v2 = NSStringFromSelector(*(a1 + 40));
      location = MEMORY[0x277D82BE0](v2);
      __os_log_helper_16_2_2_8_32_8_66(v18, "[SUUIMobileStatefulUIManager client:clearingSpaceForDownload:clearingSpace:]_block_invoke", location);
      _os_log_error_impl(&dword_26B0B9000, v16, v15, "%s: Self is nil in %{public}@. Stopping.", v18, 0x16u);
      MEMORY[0x277D82BD8](v2);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v16, 0);
    v13 = 1;
    v4 = 1;
  }

  if (v4)
  {
    v12 = 1;
  }

  else
  {
    [v17[0] setClearingSpaceForDownload:*(a1 + 48) & 1];
    v1 = v17[0];
    v6 = MEMORY[0x277D85DD0];
    v7 = -1073741824;
    v8 = 0;
    v9 = __77__SUUIMobileStatefulUIManager_client_clearingSpaceForDownload_clearingSpace___block_invoke_415;
    v10 = &unk_279CCC6E8;
    objc_copyWeak(v11, (a1 + 32));
    v11[1] = *(a1 + 40);
    [v1 executeOperationOnDelegate:sel_statefulUIManagerDidRefreshState_ usingBlock:&v6];
    objc_destroyWeak(v11);
    v12 = 0;
  }

  objc_storeStrong(v17, 0);
}

void __77__SUUIMobileStatefulUIManager_client_clearingSpaceForDownload_clearingSpace___block_invoke_415(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[2] = a1;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 32));
  v6 = 0;
  if (!v11[0])
  {
    v5 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 40));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v12, "[SUUIMobileStatefulUIManager client:clearingSpaceForDownload:clearingSpace:]_block_invoke", v8);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v12, 0x16u);
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

- (void)client:(id)client installTonightScheduled:(BOOL)scheduled operationID:(id)d
{
  scheduledCopy = scheduled;
  obj = d;
  v73 = "[SUUIMobileStatefulUIManager client:installTonightScheduled:operationID:]";
  v108 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v100 = scheduledCopy;
  v99 = 0;
  objc_storeStrong(&v99, obj);
  statefulUILogger = [MEMORY[0x277D64B58] statefulUILogger];
  oslog = [statefulUILogger oslog];
  MEMORY[0x277D82BD8](statefulUILogger);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v64 = type;
    v65 = selfCopy;
    v5 = objc_opt_class();
    v66 = NSStringFromClass(v5);
    v67 = MEMORY[0x277D82BE0](v66);
    v96 = v67;
    v68 = SUUIStatefulUIStateToString();
    v69 = MEMORY[0x277D82BE0](v68);
    v95 = v69;
    currentState = [(SUUIStatefulUIManager *)selfCopy currentState];
    delegate = [(SUUIStatefulUIManager *)selfCopy delegate];
    v93 = 0;
    v91 = 0;
    if (delegate)
    {
      delegate2 = [(SUUIStatefulUIManager *)selfCopy delegate];
      v61 = 1;
      v93 = 1;
      v6 = objc_opt_class();
      v92 = NSStringFromClass(v6);
      v91 = 1;
      v62 = v92;
    }

    else
    {
      v62 = @"(null)";
    }

    v55 = v62;
    delegate3 = [(SUUIStatefulUIManager *)selfCopy delegate];
    scanError = [(SUUIStatefulUIManager *)selfCopy scanError];
    preferredStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy preferredStatefulDescriptor];
    alternateStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy alternateStatefulDescriptor];
    currentDownload = [(SUUIStatefulUIManager *)selfCopy currentDownload];
    v89 = 0;
    v87 = 0;
    v85 = 0;
    if (currentDownload)
    {
      currentDownload2 = [(SUUIStatefulUIManager *)selfCopy currentDownload];
      v53 = 1;
      v89 = 1;
      descriptor = [(SUUIDownload *)currentDownload2 descriptor];
      v87 = 1;
      updateName = [descriptor updateName];
      v85 = 1;
      v54 = updateName;
    }

    else
    {
      v54 = @"(null)";
    }

    v30 = v54;
    currentDownload3 = [(SUUIStatefulUIManager *)selfCopy currentDownload];
    [(SUUIStatefulUIManager *)selfCopy currentUpdateOperationType];
    v32 = SUUIUpdateContinuousOperationTypeToString();
    v33 = MEMORY[0x277D82BE0](v32);
    v84 = v33;
    isTargetedUpdateScheduledForAutoInstall = [(SUUIMobileStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
    v43 = @"NO";
    v44 = @"YES";
    v51 = 1;
    if (isTargetedUpdateScheduledForAutoInstall)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v34 = v7;
    v8 = v7;
    v35 = v34;
    v36 = MEMORY[0x277D82BE0](v35);
    v83 = v36;
    if ([(SUUIStatefulUIManager *)selfCopy hidingPreferredDescriptor])
    {
      v9 = v44;
    }

    else
    {
      v9 = v43;
    }

    v37 = v9;
    v10 = v9;
    v38 = v37;
    v39 = MEMORY[0x277D82BE0](v38);
    v82 = v39;
    hiddenPreferredStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy hiddenPreferredStatefulDescriptor];
    updateName2 = [(SUUIStatefulDescriptor *)hiddenPreferredStatefulDescriptor updateName];
    v42 = MEMORY[0x277D82BE0](updateName2);
    v81 = v42;
    if ([(SUUIStatefulUIManager *)selfCopy hidingAlternateDescriptor])
    {
      v11 = v44;
    }

    else
    {
      v11 = v43;
    }

    v45 = v11;
    v12 = v11;
    v46 = v45;
    v47 = MEMORY[0x277D82BE0](v46);
    v80 = v47;
    hiddenAlternateStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy hiddenAlternateStatefulDescriptor];
    updateName3 = [(SUUIStatefulDescriptor *)hiddenAlternateStatefulDescriptor updateName];
    v50 = MEMORY[0x277D82BE0](updateName3);
    v79 = v50;
    enrolledBetaProgram = [(SUUIStatefulUIManager *)selfCopy enrolledBetaProgram];
    v77 = 0;
    if (enrolledBetaProgram)
    {
      enrolledBetaProgram2 = [(SUUIStatefulUIManager *)selfCopy enrolledBetaProgram];
      v77 = 1;
      programID = [(SDBetaProgram *)enrolledBetaProgram2 programID];
    }

    else
    {
      programID = 0;
    }

    v20 = programID;
    v21 = [*(&selfCopy->super.super.isa + *MEMORY[0x277D64BE8]) count];
    if ([(SUUIStatefulUIManager *)selfCopy canEnrollInBetaUpdates])
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v19 = v13;
    v14 = v13;
    v28 = v19;
    v22 = MEMORY[0x277D82BE0](v28);
    v76 = v22;
    v23 = *(&selfCopy->super.super.isa + *MEMORY[0x277D64BF0]);
    v24 = *(&selfCopy->super.super.isa + *MEMORY[0x277D64BF8]);
    v25 = *(&selfCopy->super.super.isa + *MEMORY[0x277D64C08]);
    v15 = [*(&selfCopy->super.super.isa + *MEMORY[0x277D64BE0]) count];
    v26 = &v16;
    buf = v107;
    __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v107, v73, v65, v67, v69, currentState, v55, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v30, currentDownload3, v33, v36, v39, v42, v47, v50, v20, v21, v22, v23, v24, v25, v15);
    _os_log_impl(&dword_26B0B9000, log, v64[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\ninstallTonightScheduled called, start to refresh state", buf, 0xFCu);
    MEMORY[0x277D82BD8](v28);
    if (v77)
    {
      MEMORY[0x277D82BD8](enrolledBetaProgram2);
    }

    MEMORY[0x277D82BD8](enrolledBetaProgram);
    MEMORY[0x277D82BD8](updateName3);
    MEMORY[0x277D82BD8](hiddenAlternateStatefulDescriptor);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](updateName2);
    MEMORY[0x277D82BD8](hiddenPreferredStatefulDescriptor);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](currentDownload3);
    if (v85)
    {
      MEMORY[0x277D82BD8](updateName);
    }

    if (v87)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v89)
    {
      MEMORY[0x277D82BD8](currentDownload2);
    }

    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    MEMORY[0x277D82BD8](scanError);
    MEMORY[0x277D82BD8](delegate3);
    if (v91)
    {
      MEMORY[0x277D82BD8](v92);
    }

    if (v93)
    {
      MEMORY[0x277D82BD8](delegate2);
    }

    MEMORY[0x277D82BD8](delegate);
    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](v66);
    v18 = 0;
    objc_storeStrong(&v76, 0);
    objc_storeStrong(&v79, v18);
    objc_storeStrong(&v80, v18);
    objc_storeStrong(&v81, v18);
    objc_storeStrong(&v82, v18);
    objc_storeStrong(&v83, v18);
    objc_storeStrong(&v84, v18);
    objc_storeStrong(&v95, v18);
    objc_storeStrong(&v96, v18);
  }

  objc_storeStrong(&oslog, 0);
  [(SUUIStatefulUIManager *)selfCopy refreshState];
  v17 = 0;
  objc_storeStrong(&v99, 0);
  objc_storeStrong(location, v17);
}

- (void)client:(id)client installDidStart:(id)start
{
  v161 = &v179;
  obj = start;
  v163 = "[SUUIMobileStatefulUIManager client:installDidStart:]";
  v204 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v197 = 0;
  objc_storeStrong(&v197, obj);
  statefulUILogger = [MEMORY[0x277D64B58] statefulUILogger];
  v158 = statefulUILogger;
  oslog = [v158 oslog];
  v196 = oslog;
  MEMORY[0x277D82BD8](v158);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v196, OS_LOG_TYPE_DEFAULT))
  {
    log = v161[23];
    *v155 = type;
    v156 = v161[27];
    aClass = objc_opt_class();
    v153 = NSStringFromClass(aClass);
    v150 = v153;
    v151 = MEMORY[0x277D82BE0](v150);
    v161[21] = v151;
    v152 = SUUIStatefulUIStateToString();
    v147 = v152;
    v4 = MEMORY[0x277D82BE0](v147);
    v5 = v161;
    v148 = v4;
    v161[20] = v4;
    currentState = [v5[27] currentState];
    delegate = [v161[27] delegate];
    v145 = delegate;
    v192 = 0;
    v191 = 0;
    if (v145)
    {
      delegate2 = [v161[27] delegate];
      v161[19] = delegate2;
      v192 = 1;
      v143 = objc_opt_class();
      v142 = NSStringFromClass(v143);
      v6 = v142;
      v161[17] = v6;
      v191 = 1;
      v141 = v6;
    }

    else
    {
      v141 = @"(null)";
    }

    v139 = v141;
    delegate3 = [v161[27] delegate];
    v137 = delegate3;
    scanError = [v161[27] scanError];
    v135 = scanError;
    preferredStatefulDescriptor = [v161[27] preferredStatefulDescriptor];
    v133 = preferredStatefulDescriptor;
    alternateStatefulDescriptor = [v161[27] alternateStatefulDescriptor];
    v131 = alternateStatefulDescriptor;
    currentDownload = [v161[27] currentDownload];
    v130 = currentDownload;
    v190 = 0;
    v189 = 0;
    v188 = 0;
    if (v130)
    {
      currentDownload2 = [v161[27] currentDownload];
      v7 = currentDownload2;
      v161[15] = v7;
      v190 = 1;
      descriptor = [v7 descriptor];
      v8 = descriptor;
      v161[13] = v8;
      v189 = 1;
      updateName = [v8 updateName];
      v9 = updateName;
      v161[11] = v9;
      v188 = 1;
      v126 = v9;
    }

    else
    {
      v126 = @"(null)";
    }

    v124 = v126;
    currentDownload3 = [v161[27] currentDownload];
    v122 = currentDownload3;
    currentUpdateOperationType = [v161[27] currentUpdateOperationType];
    v121 = SUUIUpdateContinuousOperationTypeToString();
    v118 = v121;
    v10 = MEMORY[0x277D82BE0](v118);
    v11 = v161;
    v119 = v10;
    v161[9] = v10;
    isTargetedUpdateScheduledForAutoInstall = [v11[27] isTargetedUpdateScheduledForAutoInstall];
    v202 = isTargetedUpdateScheduledForAutoInstall;
    if (isTargetedUpdateScheduledForAutoInstall)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v117 = v12;
    v13 = v12;
    v114 = v117;
    v14 = MEMORY[0x277D82BE0](v114);
    v15 = v161;
    v115 = v14;
    v161[8] = v14;
    hidingPreferredDescriptor = [v15[27] hidingPreferredDescriptor];
    v201 = hidingPreferredDescriptor;
    if (hidingPreferredDescriptor)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v113 = v16;
    v17 = v16;
    v110 = v113;
    v18 = MEMORY[0x277D82BE0](v110);
    v19 = v161;
    v111 = v18;
    v161[7] = v18;
    hiddenPreferredStatefulDescriptor = [v19[27] hiddenPreferredStatefulDescriptor];
    v108 = hiddenPreferredStatefulDescriptor;
    updateName2 = [v108 updateName];
    v105 = updateName2;
    v20 = MEMORY[0x277D82BE0](v105);
    v21 = v161;
    v106 = v20;
    v161[6] = v20;
    hidingAlternateDescriptor = [v21[27] hidingAlternateDescriptor];
    v200 = hidingAlternateDescriptor;
    if (hidingAlternateDescriptor)
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    v104 = v22;
    v23 = v22;
    v101 = v104;
    v24 = MEMORY[0x277D82BE0](v101);
    v25 = v161;
    v102 = v24;
    v161[5] = v24;
    hiddenAlternateStatefulDescriptor = [v25[27] hiddenAlternateStatefulDescriptor];
    v99 = hiddenAlternateStatefulDescriptor;
    updateName3 = [v99 updateName];
    v96 = updateName3;
    v26 = MEMORY[0x277D82BE0](v96);
    v27 = v161;
    v97 = v26;
    v161[4] = v26;
    enrolledBetaProgram = [v27[27] enrolledBetaProgram];
    v95 = enrolledBetaProgram;
    v181 = 0;
    if (v95)
    {
      enrolledBetaProgram2 = [v161[27] enrolledBetaProgram];
      v28 = enrolledBetaProgram2;
      v161[3] = v28;
      v181 = 1;
      programID = [v28 programID];
      v92 = programID;
    }

    else
    {
      v92 = 0;
    }

    v90 = v92;
    v91 = [*(v161[27] + *MEMORY[0x277D64BE8]) count];
    canEnrollInBetaUpdates = [v161[27] canEnrollInBetaUpdates];
    v199 = canEnrollInBetaUpdates;
    if (canEnrollInBetaUpdates)
    {
      v29 = @"YES";
    }

    else
    {
      v29 = @"NO";
    }

    v88 = v29;
    v30 = v29;
    v82 = v88;
    v31 = MEMORY[0x277D82BE0](v82);
    v32 = v161;
    v83 = v31;
    v161[1] = v31;
    v84 = *(v32[27] + *MEMORY[0x277D64BF0]);
    v85 = *(v32[27] + *MEMORY[0x277D64BF8]);
    v86 = *(v32[27] + *MEMORY[0x277D64C08]);
    v87 = [*(v32[27] + *MEMORY[0x277D64BE0]) count];
    humanReadableUpdateName = [v161[24] humanReadableUpdateName];
    v33 = v102;
    v34 = v106;
    v35 = v111;
    v36 = v115;
    v37 = v119;
    v38 = v122;
    v39 = v124;
    v40 = v131;
    v41 = v133;
    v42 = v135;
    v80 = humanReadableUpdateName;
    v43 = MEMORY[0x277D82BE0](v80);
    v44 = v161;
    v45 = v97;
    v46 = v90;
    v47 = v91;
    v48 = v83;
    v49 = v84;
    v50 = v85;
    v51 = v86;
    v52 = v87;
    v53 = v163;
    v54 = v156;
    v55 = v151;
    v56 = v148;
    v57 = currentState;
    v58 = v139;
    v59 = v137;
    *v161 = v43;
    v60 = v44[24];
    v78 = v63;
    buf = v203;
    __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_0(v203, v53, v54, v55, v56, v57, v58, v59, v42, v41, v40, v39, v38, v37, v36, v35, v34, v33, v45, v46, v47, v48, v49, v50, v51, v52, v43, v60);
    _os_log_impl(&dword_26B0B9000, log, v155[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nStarting to install an update targeting %{public}@ (%p)", buf, 0x110u);
    MEMORY[0x277D82BD8](v80);
    MEMORY[0x277D82BD8](v82);
    if (v181)
    {
      MEMORY[0x277D82BD8](v161[3]);
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
    if (v188)
    {
      MEMORY[0x277D82BD8](v161[11]);
    }

    if (v189)
    {
      MEMORY[0x277D82BD8](v161[13]);
    }

    if (v190)
    {
      MEMORY[0x277D82BD8](v161[15]);
    }

    MEMORY[0x277D82BD8](v130);
    MEMORY[0x277D82BD8](v131);
    MEMORY[0x277D82BD8](v133);
    MEMORY[0x277D82BD8](v135);
    MEMORY[0x277D82BD8](v137);
    if (v191)
    {
      MEMORY[0x277D82BD8](v161[17]);
    }

    if (v192)
    {
      MEMORY[0x277D82BD8](v161[19]);
    }

    MEMORY[0x277D82BD8](v145);
    MEMORY[0x277D82BD8](v147);
    MEMORY[0x277D82BD8](v150);
    objc_storeStrong(&v179, 0);
    objc_storeStrong(&v180, 0);
    objc_storeStrong(&v182, 0);
    objc_storeStrong(&v183, 0);
    objc_storeStrong(&v184, 0);
    objc_storeStrong(&v185, 0);
    objc_storeStrong(&v186, 0);
    objc_storeStrong(&v187, 0);
    objc_storeStrong(&v193, 0);
    objc_storeStrong(&v194, 0);
  }

  objc_storeStrong(&v196, 0);
  if (v161[24])
  {
    currentUpdateOperation = [v161[27] currentUpdateOperation];
    v76 = currentUpdateOperation;
    MEMORY[0x277D82BD8](v76);
    if (v76)
    {
      v178 = 1;
    }

    else
    {
      v61 = v161[24];
      v174 = 0;
      if (v61)
      {
        v75 = [SUUIMobileDescriptor alloc];
        v74 = [(SUUIMobileDescriptor *)v75 initWithDescriptor:v161[24]];
        v175 = v74;
        v174 = 1;
        v73 = v74;
      }

      else
      {
        v73 = 0;
      }

      v176 = MEMORY[0x277D82BE0](v73);
      if (v174)
      {
        MEMORY[0x277D82BD8](v175);
      }

      v72 = [v176 conformsToProtocol:&unk_287BB9698];
      if ((v72 & 1) == 0)
      {
        v71 = NSStringFromProtocol(&unk_287BB9698);
        v62 = v71;
        v63[0] = @"SUUIMobileDescriptorFromSUDescriptor(update)";
        v63[1] = v62;
        _suui_precondition_failure_with_format();
        __break(1u);
      }

      v70 = &v176;
      v173 = MEMORY[0x277D82BE0](v176);
      objc_storeStrong(v70, 0);
      v177 = v173;
      v69 = [v161[27] targetedUpdateMatchingDescriptor:v173];
      v172 = v69;
      if (v172)
      {
        objc_initWeak(&from, v161[27]);
        v66 = v161[27];
        v67 = sel_statefulUIManager_didStartInstallingUpdateWithDescriptor_;
        v164 = MEMORY[0x277D85DD0];
        v165 = -1073741824;
        v166 = 0;
        v167 = __54__SUUIMobileStatefulUIManager_client_installDidStart___block_invoke;
        v168 = &unk_279CCBD58;
        v68 = v170;
        objc_copyWeak(v170, &from);
        v65 = &v164;
        v170[1] = v161[26];
        v64 = &v169;
        v169 = MEMORY[0x277D82BE0](v172);
        [v66 executeOperationOnDelegate:v67 usingBlock:v65];
        objc_storeStrong(v64, 0);
        objc_destroyWeak(v68);
        objc_destroyWeak(&from);
        v178 = 0;
      }

      else
      {
        [v161[27] checkForAvailableUpdates:1 forceScan:1];
        v178 = 1;
      }

      objc_storeStrong(&v172, 0);
      objc_storeStrong(&v177, 0);
    }
  }

  else
  {
    v178 = 1;
  }

  objc_storeStrong(&v197, 0);
  objc_storeStrong(location, 0);
}

void __54__SUUIMobileStatefulUIManager_client_installDidStart___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[2] = a1;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 40));
  v6 = 0;
  if (!v11[0])
  {
    v5 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 48));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v12, "[SUUIMobileStatefulUIManager client:installDidStart:]_block_invoke", v8);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v12, 0x16u);
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

- (void)client:(id)client installDidFail:(id)fail withError:(id)error
{
  obj = fail;
  errorCopy = error;
  v73 = "[SUUIMobileStatefulUIManager client:installDidFail:withError:]";
  v108 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, client);
  v100 = 0;
  objc_storeStrong(&v100, obj);
  v99 = 0;
  objc_storeStrong(&v99, errorCopy);
  statefulUILogger = [MEMORY[0x277D64B58] statefulUILogger];
  oslog = [statefulUILogger oslog];
  MEMORY[0x277D82BD8](statefulUILogger);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v64 = type;
    v65 = selfCopy;
    v5 = objc_opt_class();
    v66 = NSStringFromClass(v5);
    v67 = MEMORY[0x277D82BE0](v66);
    v96 = v67;
    v68 = SUUIStatefulUIStateToString();
    v69 = MEMORY[0x277D82BE0](v68);
    v95 = v69;
    currentState = [(SUUIStatefulUIManager *)selfCopy currentState];
    delegate = [(SUUIStatefulUIManager *)selfCopy delegate];
    v93 = 0;
    v91 = 0;
    if (delegate)
    {
      delegate2 = [(SUUIStatefulUIManager *)selfCopy delegate];
      v61 = 1;
      v93 = 1;
      v6 = objc_opt_class();
      v92 = NSStringFromClass(v6);
      v91 = 1;
      v62 = v92;
    }

    else
    {
      v62 = @"(null)";
    }

    v55 = v62;
    delegate3 = [(SUUIStatefulUIManager *)selfCopy delegate];
    scanError = [(SUUIStatefulUIManager *)selfCopy scanError];
    preferredStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy preferredStatefulDescriptor];
    alternateStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy alternateStatefulDescriptor];
    currentDownload = [(SUUIStatefulUIManager *)selfCopy currentDownload];
    v89 = 0;
    v87 = 0;
    v85 = 0;
    if (currentDownload)
    {
      currentDownload2 = [(SUUIStatefulUIManager *)selfCopy currentDownload];
      v53 = 1;
      v89 = 1;
      descriptor = [(SUUIDownload *)currentDownload2 descriptor];
      v87 = 1;
      updateName = [descriptor updateName];
      v85 = 1;
      v54 = updateName;
    }

    else
    {
      v54 = @"(null)";
    }

    v30 = v54;
    currentDownload3 = [(SUUIStatefulUIManager *)selfCopy currentDownload];
    [(SUUIStatefulUIManager *)selfCopy currentUpdateOperationType];
    v32 = SUUIUpdateContinuousOperationTypeToString();
    v33 = MEMORY[0x277D82BE0](v32);
    v84 = v33;
    isTargetedUpdateScheduledForAutoInstall = [(SUUIMobileStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
    v43 = @"NO";
    v44 = @"YES";
    v51 = 1;
    if (isTargetedUpdateScheduledForAutoInstall)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v34 = v7;
    v8 = v7;
    v35 = v34;
    v36 = MEMORY[0x277D82BE0](v35);
    v83 = v36;
    if ([(SUUIStatefulUIManager *)selfCopy hidingPreferredDescriptor])
    {
      v9 = v44;
    }

    else
    {
      v9 = v43;
    }

    v37 = v9;
    v10 = v9;
    v38 = v37;
    v39 = MEMORY[0x277D82BE0](v38);
    v82 = v39;
    hiddenPreferredStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy hiddenPreferredStatefulDescriptor];
    updateName2 = [(SUUIStatefulDescriptor *)hiddenPreferredStatefulDescriptor updateName];
    v42 = MEMORY[0x277D82BE0](updateName2);
    v81 = v42;
    if ([(SUUIStatefulUIManager *)selfCopy hidingAlternateDescriptor])
    {
      v11 = v44;
    }

    else
    {
      v11 = v43;
    }

    v45 = v11;
    v12 = v11;
    v46 = v45;
    v47 = MEMORY[0x277D82BE0](v46);
    v80 = v47;
    hiddenAlternateStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy hiddenAlternateStatefulDescriptor];
    updateName3 = [(SUUIStatefulDescriptor *)hiddenAlternateStatefulDescriptor updateName];
    v50 = MEMORY[0x277D82BE0](updateName3);
    v79 = v50;
    enrolledBetaProgram = [(SUUIStatefulUIManager *)selfCopy enrolledBetaProgram];
    v77 = 0;
    if (enrolledBetaProgram)
    {
      enrolledBetaProgram2 = [(SUUIStatefulUIManager *)selfCopy enrolledBetaProgram];
      v77 = 1;
      programID = [(SDBetaProgram *)enrolledBetaProgram2 programID];
    }

    else
    {
      programID = 0;
    }

    v20 = programID;
    v21 = [*(&selfCopy->super.super.isa + *MEMORY[0x277D64BE8]) count];
    if ([(SUUIStatefulUIManager *)selfCopy canEnrollInBetaUpdates])
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v19 = v13;
    v14 = v13;
    v28 = v19;
    v22 = MEMORY[0x277D82BE0](v28);
    v76 = v22;
    v23 = *(&selfCopy->super.super.isa + *MEMORY[0x277D64BF0]);
    v24 = *(&selfCopy->super.super.isa + *MEMORY[0x277D64BF8]);
    v25 = *(&selfCopy->super.super.isa + *MEMORY[0x277D64C08]);
    v15 = [*(&selfCopy->super.super.isa + *MEMORY[0x277D64BE0]) count];
    v26 = &v16;
    buf = v107;
    __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66_8_66(v107, v73, v65, v67, v69, currentState, v55, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v30, currentDownload3, v33, v36, v39, v42, v47, v50, v20, v21, v22, v23, v24, v25, v15, v100, v99);
    _os_log_impl(&dword_26B0B9000, log, v64[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nFailed to install an update. Error: %{public}@; Descriptor: %{public}@", buf, 0x110u);
    MEMORY[0x277D82BD8](v28);
    if (v77)
    {
      MEMORY[0x277D82BD8](enrolledBetaProgram2);
    }

    MEMORY[0x277D82BD8](enrolledBetaProgram);
    MEMORY[0x277D82BD8](updateName3);
    MEMORY[0x277D82BD8](hiddenAlternateStatefulDescriptor);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](updateName2);
    MEMORY[0x277D82BD8](hiddenPreferredStatefulDescriptor);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](currentDownload3);
    if (v85)
    {
      MEMORY[0x277D82BD8](updateName);
    }

    if (v87)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v89)
    {
      MEMORY[0x277D82BD8](currentDownload2);
    }

    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    MEMORY[0x277D82BD8](scanError);
    MEMORY[0x277D82BD8](delegate3);
    if (v91)
    {
      MEMORY[0x277D82BD8](v92);
    }

    if (v93)
    {
      MEMORY[0x277D82BD8](delegate2);
    }

    MEMORY[0x277D82BD8](delegate);
    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](v66);
    v18 = 0;
    objc_storeStrong(&v76, 0);
    objc_storeStrong(&v79, v18);
    objc_storeStrong(&v80, v18);
    objc_storeStrong(&v81, v18);
    objc_storeStrong(&v82, v18);
    objc_storeStrong(&v83, v18);
    objc_storeStrong(&v84, v18);
    objc_storeStrong(&v95, v18);
    objc_storeStrong(&v96, v18);
  }

  objc_storeStrong(&oslog, 0);
  [(SUUIStatefulUIManager *)selfCopy checkForAvailableUpdates:1 forceScan:1];
  v17 = 0;
  objc_storeStrong(&v99, 0);
  objc_storeStrong(&v100, v17);
  objc_storeStrong(location, v17);
}

- (void)autoInstallOperationDidConsent:(id)consent
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, consent);
  objc_storeStrong(location, 0);
}

- (void)autoInstallOperationIsReadyToInstall:(id)install withResponse:(id)response
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, install);
  v5 = 0;
  objc_storeStrong(&v5, response);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)autoInstallOperationPasscodePolicyDidChange:(id)change passcodePolicyType:(unint64_t)type
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  objc_storeStrong(location, 0);
}

- (void)autoInstallOperationWasCancelled:(id)cancelled
{
  v74 = "[SUUIMobileStatefulUIManager autoInstallOperationWasCancelled:]";
  v113 = *MEMORY[0x277D85DE8];
  val = self;
  v106 = a2;
  location = 0;
  objc_storeStrong(&location, cancelled);
  statefulUILogger = [MEMORY[0x277D64B58] statefulUILogger];
  oslog = [statefulUILogger oslog];
  MEMORY[0x277D82BD8](statefulUILogger);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v65 = type;
    v66 = val;
    v3 = objc_opt_class();
    v67 = NSStringFromClass(v3);
    v68 = MEMORY[0x277D82BE0](v67);
    v102 = v68;
    v69 = SUUIStatefulUIStateToString();
    v70 = MEMORY[0x277D82BE0](v69);
    v101 = v70;
    currentState = [val currentState];
    delegate = [val delegate];
    v99 = 0;
    v97 = 0;
    if (delegate)
    {
      delegate2 = [val delegate];
      v62 = 1;
      v99 = 1;
      v4 = objc_opt_class();
      v98 = NSStringFromClass(v4);
      v97 = 1;
      v63 = v98;
    }

    else
    {
      v63 = @"(null)";
    }

    v56 = v63;
    delegate3 = [val delegate];
    scanError = [val scanError];
    preferredStatefulDescriptor = [val preferredStatefulDescriptor];
    alternateStatefulDescriptor = [val alternateStatefulDescriptor];
    currentDownload = [val currentDownload];
    v95 = 0;
    v93 = 0;
    v91 = 0;
    if (currentDownload)
    {
      currentDownload2 = [val currentDownload];
      v54 = 1;
      v95 = 1;
      descriptor = [currentDownload2 descriptor];
      v93 = 1;
      updateName = [descriptor updateName];
      v91 = 1;
      v55 = updateName;
    }

    else
    {
      v55 = @"(null)";
    }

    v31 = v55;
    currentDownload3 = [val currentDownload];
    [val currentUpdateOperationType];
    v33 = SUUIUpdateContinuousOperationTypeToString();
    v34 = MEMORY[0x277D82BE0](v33);
    v90 = v34;
    isTargetedUpdateScheduledForAutoInstall = [val isTargetedUpdateScheduledForAutoInstall];
    v44 = @"NO";
    v45 = @"YES";
    v52 = 1;
    if (isTargetedUpdateScheduledForAutoInstall)
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    v35 = v5;
    v6 = v5;
    v36 = v35;
    v37 = MEMORY[0x277D82BE0](v36);
    v89 = v37;
    hidingPreferredDescriptor = [val hidingPreferredDescriptor];
    if (hidingPreferredDescriptor)
    {
      v7 = v45;
    }

    else
    {
      v7 = v44;
    }

    v38 = v7;
    v8 = v7;
    v39 = v38;
    v40 = MEMORY[0x277D82BE0](v39);
    v88 = v40;
    hiddenPreferredStatefulDescriptor = [val hiddenPreferredStatefulDescriptor];
    updateName2 = [hiddenPreferredStatefulDescriptor updateName];
    v43 = MEMORY[0x277D82BE0](updateName2);
    v87 = v43;
    hidingAlternateDescriptor = [val hidingAlternateDescriptor];
    if (hidingAlternateDescriptor)
    {
      v9 = v45;
    }

    else
    {
      v9 = v44;
    }

    v46 = v9;
    v10 = v9;
    v47 = v46;
    v48 = MEMORY[0x277D82BE0](v47);
    v86 = v48;
    hiddenAlternateStatefulDescriptor = [val hiddenAlternateStatefulDescriptor];
    updateName3 = [hiddenAlternateStatefulDescriptor updateName];
    v51 = MEMORY[0x277D82BE0](updateName3);
    v85 = v51;
    enrolledBetaProgram = [val enrolledBetaProgram];
    v83 = 0;
    if (enrolledBetaProgram)
    {
      enrolledBetaProgram2 = [val enrolledBetaProgram];
      v83 = 1;
      programID = [enrolledBetaProgram2 programID];
    }

    else
    {
      programID = 0;
    }

    v21 = programID;
    v22 = [*(val + *MEMORY[0x277D64BE8]) count];
    canEnrollInBetaUpdates = [val canEnrollInBetaUpdates];
    if (canEnrollInBetaUpdates)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v20 = v11;
    v12 = v11;
    v29 = v20;
    v23 = MEMORY[0x277D82BE0](v29);
    v82 = v23;
    v24 = *(val + *MEMORY[0x277D64BF0]);
    v25 = *(val + *MEMORY[0x277D64BF8]);
    v26 = *(val + *MEMORY[0x277D64C08]);
    v13 = [*(val + *MEMORY[0x277D64BE0]) count];
    v27 = &v14;
    buf = v112;
    __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v112, v74, v66, v68, v70, currentState, v56, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v31, currentDownload3, v34, v37, v40, v43, v48, v51, v21, v22, v23, v24, v25, v26, v13);
    _os_log_impl(&dword_26B0B9000, log, v65[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\n", buf, 0xFCu);
    MEMORY[0x277D82BD8](v29);
    if (v83)
    {
      MEMORY[0x277D82BD8](enrolledBetaProgram2);
    }

    MEMORY[0x277D82BD8](enrolledBetaProgram);
    MEMORY[0x277D82BD8](updateName3);
    MEMORY[0x277D82BD8](hiddenAlternateStatefulDescriptor);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](updateName2);
    MEMORY[0x277D82BD8](hiddenPreferredStatefulDescriptor);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](currentDownload3);
    if (v91)
    {
      MEMORY[0x277D82BD8](updateName);
    }

    if (v93)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v95)
    {
      MEMORY[0x277D82BD8](currentDownload2);
    }

    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    MEMORY[0x277D82BD8](scanError);
    MEMORY[0x277D82BD8](delegate3);
    if (v97)
    {
      MEMORY[0x277D82BD8](v98);
    }

    if (v99)
    {
      MEMORY[0x277D82BD8](delegate2);
    }

    MEMORY[0x277D82BD8](delegate);
    MEMORY[0x277D82BD8](v69);
    MEMORY[0x277D82BD8](v67);
    obj = 0;
    objc_storeStrong(&v82, 0);
    objc_storeStrong(&v85, obj);
    objc_storeStrong(&v86, obj);
    objc_storeStrong(&v87, obj);
    objc_storeStrong(&v88, obj);
    objc_storeStrong(&v89, obj);
    objc_storeStrong(&v90, obj);
    objc_storeStrong(&v101, obj);
    objc_storeStrong(&v102, obj);
  }

  objc_storeStrong(&oslog, 0);
  from = &v81;
  objc_initWeak(&v81, val);
  queue = *(val + *MEMORY[0x277D64C18]);
  block = &v75;
  v75 = MEMORY[0x277D85DD0];
  v76 = -1073741824;
  v77 = 0;
  v78 = __64__SUUIMobileStatefulUIManager_autoInstallOperationWasCancelled___block_invoke;
  v79 = &unk_279CCC6E8;
  v17 = v80;
  objc_copyWeak(v80, from);
  v80[1] = v106;
  dispatch_async(queue, block);
  objc_destroyWeak(v17);
  objc_destroyWeak(from);
  objc_storeStrong(&location, 0);
}

void __64__SUUIMobileStatefulUIManager_autoInstallOperationWasCancelled___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v17[2] = a1;
  v17[1] = a1;
  v17[0] = objc_loadWeakRetained((a1 + 32));
  v4 = 0;
  if (!v17[0])
  {
    v3 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v16 = [v3 oslog];
    MEMORY[0x277D82BD8](v3);
    v15 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v2 = NSStringFromSelector(*(a1 + 40));
      location = MEMORY[0x277D82BE0](v2);
      __os_log_helper_16_2_2_8_32_8_66(v18, "[SUUIMobileStatefulUIManager autoInstallOperationWasCancelled:]_block_invoke", location);
      _os_log_error_impl(&dword_26B0B9000, v16, v15, "%s: Self is nil in %{public}@. Stopping.", v18, 0x16u);
      MEMORY[0x277D82BD8](v2);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v16, 0);
    v13 = 1;
    v4 = 1;
  }

  if (v4)
  {
    v12 = 1;
  }

  else
  {
    [v17[0] setIsAutoUpdateScheduled:0];
    [v17[0] setCurrentAutoInstallOperation:0];
    v1 = v17[0];
    v6 = MEMORY[0x277D85DD0];
    v7 = -1073741824;
    v8 = 0;
    v9 = __64__SUUIMobileStatefulUIManager_autoInstallOperationWasCancelled___block_invoke_470;
    v10 = &unk_279CCC6E8;
    objc_copyWeak(v11, (a1 + 32));
    v11[1] = *(a1 + 40);
    [v1 executeOperationOnDelegate:sel_statefulUIManagerDidRefreshState_ usingBlock:&v6];
    objc_destroyWeak(v11);
    v12 = 0;
  }

  objc_storeStrong(v17, 0);
}

void __64__SUUIMobileStatefulUIManager_autoInstallOperationWasCancelled___block_invoke_470(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[2] = a1;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 32));
  v6 = 0;
  if (!v11[0])
  {
    v5 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 40));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v12, "[SUUIMobileStatefulUIManager autoInstallOperationWasCancelled:]_block_invoke", v8);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v12, 0x16u);
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

- (void)autoInstallOperationDidExpire:(id)expire withError:(id)error
{
  obj = error;
  v76 = "[SUUIMobileStatefulUIManager autoInstallOperationDidExpire:withError:]";
  v117 = *MEMORY[0x277D85DE8];
  val = self;
  v110 = a2;
  location = 0;
  objc_storeStrong(&location, expire);
  v108 = 0;
  objc_storeStrong(&v108, obj);
  statefulUILogger = [MEMORY[0x277D64B58] statefulUILogger];
  oslog = [statefulUILogger oslog];
  MEMORY[0x277D82BD8](statefulUILogger);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v67 = type;
    v68 = val;
    v4 = objc_opt_class();
    v69 = NSStringFromClass(v4);
    v70 = MEMORY[0x277D82BE0](v69);
    v105 = v70;
    v71 = SUUIStatefulUIStateToString();
    v72 = MEMORY[0x277D82BE0](v71);
    v104 = v72;
    currentState = [val currentState];
    delegate = [val delegate];
    v102 = 0;
    v100 = 0;
    if (delegate)
    {
      delegate2 = [val delegate];
      v64 = 1;
      v102 = 1;
      v5 = objc_opt_class();
      v101 = NSStringFromClass(v5);
      v100 = 1;
      v65 = v101;
    }

    else
    {
      v65 = @"(null)";
    }

    v58 = v65;
    delegate3 = [val delegate];
    scanError = [val scanError];
    preferredStatefulDescriptor = [val preferredStatefulDescriptor];
    alternateStatefulDescriptor = [val alternateStatefulDescriptor];
    currentDownload = [val currentDownload];
    v98 = 0;
    v96 = 0;
    v94 = 0;
    if (currentDownload)
    {
      currentDownload2 = [val currentDownload];
      v56 = 1;
      v98 = 1;
      descriptor = [currentDownload2 descriptor];
      v96 = 1;
      updateName = [descriptor updateName];
      v94 = 1;
      v57 = updateName;
    }

    else
    {
      v57 = @"(null)";
    }

    v33 = v57;
    currentDownload3 = [val currentDownload];
    [val currentUpdateOperationType];
    v35 = SUUIUpdateContinuousOperationTypeToString();
    v36 = MEMORY[0x277D82BE0](v35);
    v93 = v36;
    isTargetedUpdateScheduledForAutoInstall = [val isTargetedUpdateScheduledForAutoInstall];
    v46 = @"NO";
    v47 = @"YES";
    v54 = 1;
    if (isTargetedUpdateScheduledForAutoInstall)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v37 = v6;
    v7 = v6;
    v38 = v37;
    v39 = MEMORY[0x277D82BE0](v38);
    v92 = v39;
    hidingPreferredDescriptor = [val hidingPreferredDescriptor];
    if (hidingPreferredDescriptor)
    {
      v8 = v47;
    }

    else
    {
      v8 = v46;
    }

    v40 = v8;
    v9 = v8;
    v41 = v40;
    v42 = MEMORY[0x277D82BE0](v41);
    v91 = v42;
    hiddenPreferredStatefulDescriptor = [val hiddenPreferredStatefulDescriptor];
    updateName2 = [hiddenPreferredStatefulDescriptor updateName];
    v45 = MEMORY[0x277D82BE0](updateName2);
    v90 = v45;
    hidingAlternateDescriptor = [val hidingAlternateDescriptor];
    if (hidingAlternateDescriptor)
    {
      v10 = v47;
    }

    else
    {
      v10 = v46;
    }

    v48 = v10;
    v11 = v10;
    v49 = v48;
    v50 = MEMORY[0x277D82BE0](v49);
    v89 = v50;
    hiddenAlternateStatefulDescriptor = [val hiddenAlternateStatefulDescriptor];
    updateName3 = [hiddenAlternateStatefulDescriptor updateName];
    v53 = MEMORY[0x277D82BE0](updateName3);
    v88 = v53;
    enrolledBetaProgram = [val enrolledBetaProgram];
    v86 = 0;
    if (enrolledBetaProgram)
    {
      enrolledBetaProgram2 = [val enrolledBetaProgram];
      v86 = 1;
      programID = [enrolledBetaProgram2 programID];
    }

    else
    {
      programID = 0;
    }

    v23 = programID;
    v24 = [*(val + *MEMORY[0x277D64BE8]) count];
    canEnrollInBetaUpdates = [val canEnrollInBetaUpdates];
    if (canEnrollInBetaUpdates)
    {
      v12 = @"YES";
    }

    else
    {
      v12 = @"NO";
    }

    v22 = v12;
    v13 = v12;
    v31 = v22;
    v25 = MEMORY[0x277D82BE0](v31);
    v85 = v25;
    v26 = *(val + *MEMORY[0x277D64BF0]);
    v27 = *(val + *MEMORY[0x277D64BF8]);
    v28 = *(val + *MEMORY[0x277D64C08]);
    v14 = [*(val + *MEMORY[0x277D64BE0]) count];
    v29 = &v15;
    buf = v116;
    __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v116, v76, v68, v70, v72, currentState, v58, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v33, currentDownload3, v36, v39, v42, v45, v50, v53, v23, v24, v25, v26, v27, v28, v14);
    _os_log_impl(&dword_26B0B9000, log, v67[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\n", buf, 0xFCu);
    MEMORY[0x277D82BD8](v31);
    if (v86)
    {
      MEMORY[0x277D82BD8](enrolledBetaProgram2);
    }

    MEMORY[0x277D82BD8](enrolledBetaProgram);
    MEMORY[0x277D82BD8](updateName3);
    MEMORY[0x277D82BD8](hiddenAlternateStatefulDescriptor);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](updateName2);
    MEMORY[0x277D82BD8](hiddenPreferredStatefulDescriptor);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](currentDownload3);
    if (v94)
    {
      MEMORY[0x277D82BD8](updateName);
    }

    if (v96)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v98)
    {
      MEMORY[0x277D82BD8](currentDownload2);
    }

    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    MEMORY[0x277D82BD8](scanError);
    MEMORY[0x277D82BD8](delegate3);
    if (v100)
    {
      MEMORY[0x277D82BD8](v101);
    }

    if (v102)
    {
      MEMORY[0x277D82BD8](delegate2);
    }

    MEMORY[0x277D82BD8](delegate);
    MEMORY[0x277D82BD8](v71);
    MEMORY[0x277D82BD8](v69);
    v21 = 0;
    objc_storeStrong(&v85, 0);
    objc_storeStrong(&v88, v21);
    objc_storeStrong(&v89, v21);
    objc_storeStrong(&v90, v21);
    objc_storeStrong(&v91, v21);
    objc_storeStrong(&v92, v21);
    objc_storeStrong(&v93, v21);
    objc_storeStrong(&v104, v21);
    objc_storeStrong(&v105, v21);
  }

  objc_storeStrong(&oslog, 0);
  from = &v84;
  objc_initWeak(&v84, val);
  queue = *(val + *MEMORY[0x277D64C18]);
  block = &v78;
  v78 = MEMORY[0x277D85DD0];
  v79 = -1073741824;
  v80 = 0;
  v81 = __71__SUUIMobileStatefulUIManager_autoInstallOperationDidExpire_withError___block_invoke;
  v82 = &unk_279CCC6E8;
  v18 = v83;
  objc_copyWeak(v83, from);
  v83[1] = v110;
  dispatch_async(queue, block);
  objc_destroyWeak(v18);
  objc_destroyWeak(from);
  v20 = 0;
  objc_storeStrong(&v108, 0);
  objc_storeStrong(&location, v20);
}

void __71__SUUIMobileStatefulUIManager_autoInstallOperationDidExpire_withError___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v17[2] = a1;
  v17[1] = a1;
  v17[0] = objc_loadWeakRetained((a1 + 32));
  v4 = 0;
  if (!v17[0])
  {
    v3 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v16 = [v3 oslog];
    MEMORY[0x277D82BD8](v3);
    v15 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v2 = NSStringFromSelector(*(a1 + 40));
      location = MEMORY[0x277D82BE0](v2);
      __os_log_helper_16_2_2_8_32_8_66(v18, "[SUUIMobileStatefulUIManager autoInstallOperationDidExpire:withError:]_block_invoke", location);
      _os_log_error_impl(&dword_26B0B9000, v16, v15, "%s: Self is nil in %{public}@. Stopping.", v18, 0x16u);
      MEMORY[0x277D82BD8](v2);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v16, 0);
    v13 = 1;
    v4 = 1;
  }

  if (v4)
  {
    v12 = 1;
  }

  else
  {
    [v17[0] setIsAutoUpdateScheduled:0];
    [v17[0] setCurrentAutoInstallOperation:0];
    v1 = v17[0];
    v6 = MEMORY[0x277D85DD0];
    v7 = -1073741824;
    v8 = 0;
    v9 = __71__SUUIMobileStatefulUIManager_autoInstallOperationDidExpire_withError___block_invoke_471;
    v10 = &unk_279CCC6E8;
    objc_copyWeak(v11, (a1 + 32));
    v11[1] = *(a1 + 40);
    [v1 executeOperationOnDelegate:sel_statefulUIManagerDidRefreshState_ usingBlock:&v6];
    objc_destroyWeak(v11);
    v12 = 0;
  }

  objc_storeStrong(v17, 0);
}

void __71__SUUIMobileStatefulUIManager_autoInstallOperationDidExpire_withError___block_invoke_471(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[2] = a1;
  v11[1] = a1;
  v11[0] = objc_loadWeakRetained((a1 + 32));
  v6 = 0;
  if (!v11[0])
  {
    v5 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v10 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      v4 = NSStringFromSelector(*(a1 + 40));
      v8 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v12, "[SUUIMobileStatefulUIManager autoInstallOperationDidExpire:withError:]_block_invoke", v8);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v12, 0x16u);
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

- (void)didBecomeActive:(id)active
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, active);
  if ([(SUUIStatefulUIManager *)selfCopy currentState]>= 2)
  {
    [(SUUIStatefulUIManager *)selfCopy refreshState];
  }

  objc_storeStrong(location, 0);
}

- (void)batteryStateChanged:(id)changed
{
  v70 = "[SUUIMobileStatefulUIManager batteryStateChanged:]";
  v107 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, changed);
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  batteryState = [currentDevice batteryState];
  MEMORY[0x277D82BD8](currentDevice);
  v99 = batteryState;
  v73 = 1;
  if (batteryState != 2)
  {
    v73 = v99 == 3;
  }

  v98 = v73;
  connectedToPowerSource = [(SUUIMobileStatefulUIManager *)selfCopy connectedToPowerSource];
  statefulUILogger = [MEMORY[0x277D64B58] statefulUILogger];
  oslog = [statefulUILogger oslog];
  MEMORY[0x277D82BD8](statefulUILogger);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v61 = type;
    v62 = selfCopy;
    v3 = objc_opt_class();
    v63 = NSStringFromClass(v3);
    v64 = MEMORY[0x277D82BE0](v63);
    v94 = v64;
    v65 = SUUIStatefulUIStateToString();
    v66 = MEMORY[0x277D82BE0](v65);
    v93 = v66;
    currentState = [(SUUIStatefulUIManager *)selfCopy currentState];
    delegate = [(SUUIStatefulUIManager *)selfCopy delegate];
    v91 = 0;
    v89 = 0;
    if (delegate)
    {
      delegate2 = [(SUUIStatefulUIManager *)selfCopy delegate];
      v58 = 1;
      v91 = 1;
      v4 = objc_opt_class();
      v90 = NSStringFromClass(v4);
      v89 = 1;
      v59 = v90;
    }

    else
    {
      v59 = @"(null)";
    }

    v52 = v59;
    delegate3 = [(SUUIStatefulUIManager *)selfCopy delegate];
    scanError = [(SUUIStatefulUIManager *)selfCopy scanError];
    preferredStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy preferredStatefulDescriptor];
    alternateStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy alternateStatefulDescriptor];
    currentDownload = [(SUUIStatefulUIManager *)selfCopy currentDownload];
    v87 = 0;
    v85 = 0;
    v83 = 0;
    if (currentDownload)
    {
      currentDownload2 = [(SUUIStatefulUIManager *)selfCopy currentDownload];
      v50 = 1;
      v87 = 1;
      descriptor = [(SUUIDownload *)currentDownload2 descriptor];
      v85 = 1;
      updateName = [descriptor updateName];
      v83 = 1;
      v51 = updateName;
    }

    else
    {
      v51 = @"(null)";
    }

    v27 = v51;
    currentDownload3 = [(SUUIStatefulUIManager *)selfCopy currentDownload];
    [(SUUIStatefulUIManager *)selfCopy currentUpdateOperationType];
    v29 = SUUIUpdateContinuousOperationTypeToString();
    v30 = MEMORY[0x277D82BE0](v29);
    v82 = v30;
    isTargetedUpdateScheduledForAutoInstall = [(SUUIMobileStatefulUIManager *)selfCopy isTargetedUpdateScheduledForAutoInstall];
    v40 = @"NO";
    v41 = @"YES";
    v48 = 1;
    if (isTargetedUpdateScheduledForAutoInstall)
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    v31 = v5;
    v6 = v5;
    v32 = v31;
    v33 = MEMORY[0x277D82BE0](v32);
    v81 = v33;
    if ([(SUUIStatefulUIManager *)selfCopy hidingPreferredDescriptor])
    {
      v7 = v41;
    }

    else
    {
      v7 = v40;
    }

    v34 = v7;
    v8 = v7;
    v35 = v34;
    v36 = MEMORY[0x277D82BE0](v35);
    v80 = v36;
    hiddenPreferredStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy hiddenPreferredStatefulDescriptor];
    updateName2 = [(SUUIStatefulDescriptor *)hiddenPreferredStatefulDescriptor updateName];
    v39 = MEMORY[0x277D82BE0](updateName2);
    v79 = v39;
    if ([(SUUIStatefulUIManager *)selfCopy hidingAlternateDescriptor])
    {
      v9 = v41;
    }

    else
    {
      v9 = v40;
    }

    v42 = v9;
    v10 = v9;
    v43 = v42;
    v44 = MEMORY[0x277D82BE0](v43);
    v78 = v44;
    hiddenAlternateStatefulDescriptor = [(SUUIStatefulUIManager *)selfCopy hiddenAlternateStatefulDescriptor];
    updateName3 = [(SUUIStatefulDescriptor *)hiddenAlternateStatefulDescriptor updateName];
    v47 = MEMORY[0x277D82BE0](updateName3);
    v77 = v47;
    enrolledBetaProgram = [(SUUIStatefulUIManager *)selfCopy enrolledBetaProgram];
    v75 = 0;
    if (enrolledBetaProgram)
    {
      enrolledBetaProgram2 = [(SUUIStatefulUIManager *)selfCopy enrolledBetaProgram];
      v75 = 1;
      programID = [(SDBetaProgram *)enrolledBetaProgram2 programID];
    }

    else
    {
      programID = 0;
    }

    v17 = programID;
    v18 = [*(&selfCopy->super.super.isa + *MEMORY[0x277D64BE8]) count];
    if ([(SUUIStatefulUIManager *)selfCopy canEnrollInBetaUpdates])
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v16 = v11;
    v12 = v11;
    v25 = v16;
    v19 = MEMORY[0x277D82BE0](v25);
    v74 = v19;
    v20 = *(&selfCopy->super.super.isa + *MEMORY[0x277D64BF0]);
    v21 = *(&selfCopy->super.super.isa + *MEMORY[0x277D64BF8]);
    v22 = *(&selfCopy->super.super.isa + *MEMORY[0x277D64C08]);
    v13 = [*(&selfCopy->super.super.isa + *MEMORY[0x277D64BE0]) count];
    v23 = &v14;
    buf = v106;
    __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_4_0_4_0(v106, v70, v62, v64, v66, currentState, v52, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v27, currentDownload3, v30, v33, v36, v39, v44, v47, v17, v18, v19, v20, v21, v22, v13, connectedToPowerSource, v98);
    _os_log_impl(&dword_26B0B9000, log, v61[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nBattery state changed: %d -> %d", buf, 0x108u);
    MEMORY[0x277D82BD8](v25);
    if (v75)
    {
      MEMORY[0x277D82BD8](enrolledBetaProgram2);
    }

    MEMORY[0x277D82BD8](enrolledBetaProgram);
    MEMORY[0x277D82BD8](updateName3);
    MEMORY[0x277D82BD8](hiddenAlternateStatefulDescriptor);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](updateName2);
    MEMORY[0x277D82BD8](hiddenPreferredStatefulDescriptor);
    MEMORY[0x277D82BD8](v35);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](currentDownload3);
    if (v83)
    {
      MEMORY[0x277D82BD8](updateName);
    }

    if (v85)
    {
      MEMORY[0x277D82BD8](descriptor);
    }

    if (v87)
    {
      MEMORY[0x277D82BD8](currentDownload2);
    }

    MEMORY[0x277D82BD8](currentDownload);
    MEMORY[0x277D82BD8](alternateStatefulDescriptor);
    MEMORY[0x277D82BD8](preferredStatefulDescriptor);
    MEMORY[0x277D82BD8](scanError);
    MEMORY[0x277D82BD8](delegate3);
    if (v89)
    {
      MEMORY[0x277D82BD8](v90);
    }

    if (v91)
    {
      MEMORY[0x277D82BD8](delegate2);
    }

    MEMORY[0x277D82BD8](delegate);
    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](v63);
    obj = 0;
    objc_storeStrong(&v74, 0);
    objc_storeStrong(&v77, obj);
    objc_storeStrong(&v78, obj);
    objc_storeStrong(&v79, obj);
    objc_storeStrong(&v80, obj);
    objc_storeStrong(&v81, obj);
    objc_storeStrong(&v82, obj);
    objc_storeStrong(&v93, obj);
    objc_storeStrong(&v94, obj);
  }

  objc_storeStrong(&oslog, 0);
  if (connectedToPowerSource != v98)
  {
    [(SUUIMobileStatefulUIManager *)selfCopy setConnectedToPowerSource:v98];
    [(SUUIStatefulUIManager *)selfCopy refreshState];
  }

  objc_storeStrong(location, 0);
}

- (void)batteryLevelChanged:(id)changed
{
  v72 = "[SUUIMobileStatefulUIManager batteryLevelChanged:]";
  v112 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, changed);
  v77 = 1045220557;
  v104 = 1045220557;
  v103 = 0.5;
  v102 = selfCopy[66];
  v75 = 0x277D75000uLL;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  [currentDevice batteryLevel];
  v74 = v3;
  MEMORY[0x277D82BD8](currentDevice);
  v101 = v74;
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  [currentDevice2 batteryLevel];
  [selfCopy setBatteryLevel:?];
  MEMORY[0x277D82BD8](currentDevice2);
  if (v74 < 0.2 && (*&v4 = v102, v102 >= 0.2) || v101 >= 0.2 && (*&v4 = v102, v102 < 0.2) || v101 < 0.5 && (*&v4 = v102, v102 >= 0.5) || v101 >= 0.5 && (*&v4 = v102, v102 < 0.5))
  {
    statefulUILogger = [MEMORY[0x277D64B58] statefulUILogger];
    oslog = [statefulUILogger oslog];
    MEMORY[0x277D82BD8](statefulUILogger);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      *v63 = type;
      v64 = selfCopy;
      v5 = objc_opt_class();
      v65 = NSStringFromClass(v5);
      v66 = MEMORY[0x277D82BE0](v65);
      v98 = v66;
      v67 = SUUIStatefulUIStateToString();
      v68 = MEMORY[0x277D82BE0](v67);
      v97 = v68;
      currentState = [selfCopy currentState];
      delegate = [selfCopy delegate];
      v95 = 0;
      v93 = 0;
      if (delegate)
      {
        delegate2 = [selfCopy delegate];
        v60 = 1;
        v95 = 1;
        v6 = objc_opt_class();
        v94 = NSStringFromClass(v6);
        v93 = 1;
        v61 = v94;
      }

      else
      {
        v61 = @"(null)";
      }

      v54 = v61;
      delegate3 = [selfCopy delegate];
      scanError = [selfCopy scanError];
      preferredStatefulDescriptor = [selfCopy preferredStatefulDescriptor];
      alternateStatefulDescriptor = [selfCopy alternateStatefulDescriptor];
      currentDownload = [selfCopy currentDownload];
      v91 = 0;
      v89 = 0;
      v87 = 0;
      if (currentDownload)
      {
        currentDownload2 = [selfCopy currentDownload];
        v52 = 1;
        v91 = 1;
        descriptor = [currentDownload2 descriptor];
        v89 = 1;
        updateName = [descriptor updateName];
        v87 = 1;
        v53 = updateName;
      }

      else
      {
        v53 = @"(null)";
      }

      v29 = v53;
      currentDownload3 = [selfCopy currentDownload];
      [selfCopy currentUpdateOperationType];
      v31 = SUUIUpdateContinuousOperationTypeToString();
      v32 = MEMORY[0x277D82BE0](v31);
      v86 = v32;
      isTargetedUpdateScheduledForAutoInstall = [selfCopy isTargetedUpdateScheduledForAutoInstall];
      v42 = @"NO";
      v43 = @"YES";
      v50 = 1;
      if (isTargetedUpdateScheduledForAutoInstall)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      v33 = v7;
      v8 = v7;
      v34 = v33;
      v35 = MEMORY[0x277D82BE0](v34);
      v85 = v35;
      hidingPreferredDescriptor = [selfCopy hidingPreferredDescriptor];
      if (hidingPreferredDescriptor)
      {
        v9 = v43;
      }

      else
      {
        v9 = v42;
      }

      v36 = v9;
      v10 = v9;
      v37 = v36;
      v38 = MEMORY[0x277D82BE0](v37);
      v84 = v38;
      hiddenPreferredStatefulDescriptor = [selfCopy hiddenPreferredStatefulDescriptor];
      updateName2 = [hiddenPreferredStatefulDescriptor updateName];
      v41 = MEMORY[0x277D82BE0](updateName2);
      v83 = v41;
      hidingAlternateDescriptor = [selfCopy hidingAlternateDescriptor];
      if (hidingAlternateDescriptor)
      {
        v11 = v43;
      }

      else
      {
        v11 = v42;
      }

      v44 = v11;
      v12 = v11;
      v45 = v44;
      v46 = MEMORY[0x277D82BE0](v45);
      v82 = v46;
      hiddenAlternateStatefulDescriptor = [selfCopy hiddenAlternateStatefulDescriptor];
      updateName3 = [hiddenAlternateStatefulDescriptor updateName];
      v49 = MEMORY[0x277D82BE0](updateName3);
      v81 = v49;
      enrolledBetaProgram = [selfCopy enrolledBetaProgram];
      v79 = 0;
      if (enrolledBetaProgram)
      {
        enrolledBetaProgram2 = [selfCopy enrolledBetaProgram];
        v79 = 1;
        programID = [enrolledBetaProgram2 programID];
      }

      else
      {
        programID = 0;
      }

      v19 = programID;
      v20 = [*(selfCopy + *MEMORY[0x277D64BE8]) count];
      canEnrollInBetaUpdates = [selfCopy canEnrollInBetaUpdates];
      if (canEnrollInBetaUpdates)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      v18 = v13;
      v14 = v13;
      v27 = v18;
      v21 = MEMORY[0x277D82BE0](v27);
      v78 = v21;
      v22 = *(selfCopy + *MEMORY[0x277D64BF0]);
      v23 = *(selfCopy + *MEMORY[0x277D64BF8]);
      v24 = *(selfCopy + *MEMORY[0x277D64C08]);
      v15 = [*(selfCopy + *MEMORY[0x277D64BE0]) count];
      v25 = &v16;
      buf = v111;
      __os_log_helper_16_2_27_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_0_8_0(v111, v72, v64, v66, v68, currentState, v54, delegate3, scanError, preferredStatefulDescriptor, alternateStatefulDescriptor, v29, currentDownload3, v32, v35, v38, v41, v46, v49, v19, v20, v21, v22, v23, v24, v15, COERCE__INT64(v102), COERCE__INT64(v101));
      _os_log_impl(&dword_26B0B9000, log, v63[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nBattery level changed: %f -> %f", buf, 0x110u);
      MEMORY[0x277D82BD8](v27);
      if (v79)
      {
        MEMORY[0x277D82BD8](enrolledBetaProgram2);
      }

      MEMORY[0x277D82BD8](enrolledBetaProgram);
      MEMORY[0x277D82BD8](updateName3);
      MEMORY[0x277D82BD8](hiddenAlternateStatefulDescriptor);
      MEMORY[0x277D82BD8](v45);
      MEMORY[0x277D82BD8](updateName2);
      MEMORY[0x277D82BD8](hiddenPreferredStatefulDescriptor);
      MEMORY[0x277D82BD8](v37);
      MEMORY[0x277D82BD8](v34);
      MEMORY[0x277D82BD8](v31);
      MEMORY[0x277D82BD8](currentDownload3);
      if (v87)
      {
        MEMORY[0x277D82BD8](updateName);
      }

      if (v89)
      {
        MEMORY[0x277D82BD8](descriptor);
      }

      if (v91)
      {
        MEMORY[0x277D82BD8](currentDownload2);
      }

      MEMORY[0x277D82BD8](currentDownload);
      MEMORY[0x277D82BD8](alternateStatefulDescriptor);
      MEMORY[0x277D82BD8](preferredStatefulDescriptor);
      MEMORY[0x277D82BD8](scanError);
      MEMORY[0x277D82BD8](delegate3);
      if (v93)
      {
        MEMORY[0x277D82BD8](v94);
      }

      if (v95)
      {
        MEMORY[0x277D82BD8](delegate2);
      }

      MEMORY[0x277D82BD8](delegate);
      MEMORY[0x277D82BD8](v67);
      MEMORY[0x277D82BD8](v65);
      obj = 0;
      objc_storeStrong(&v78, 0);
      objc_storeStrong(&v81, obj);
      objc_storeStrong(&v82, obj);
      objc_storeStrong(&v83, obj);
      objc_storeStrong(&v84, obj);
      objc_storeStrong(&v85, obj);
      objc_storeStrong(&v86, obj);
      objc_storeStrong(&v97, obj);
      objc_storeStrong(&v98, obj);
    }

    objc_storeStrong(&oslog, 0);
    [selfCopy refreshState];
  }

  objc_storeStrong(location, 0);
}

- (void)handleScanFinishedRollbackApplied:(id)applied
{
  v98 = "[SUUIMobileStatefulUIManager handleScanFinishedRollbackApplied:]";
  v138 = *MEMORY[0x277D85DE8];
  val = self;
  v131 = a2;
  location = 0;
  objc_storeStrong(&location, applied);
  statefulUILogger = [MEMORY[0x277D64B58] statefulUILogger];
  v95 = statefulUILogger;
  oslog = [v95 oslog];
  oslog = oslog;
  MEMORY[0x277D82BD8](v95);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    *v92 = type;
    v93 = val;
    aClass = objc_opt_class();
    v90 = NSStringFromClass(aClass);
    v87 = v90;
    v88 = MEMORY[0x277D82BE0](v87);
    v127 = v88;
    v89 = SUUIStatefulUIStateToString();
    v84 = v89;
    v85 = MEMORY[0x277D82BE0](v84);
    v126 = v85;
    currentState = [val currentState];
    delegate = [val delegate];
    v82 = delegate;
    v124 = 0;
    v122 = 0;
    if (v82)
    {
      delegate2 = [val delegate];
      v125 = delegate2;
      v124 = 1;
      v80 = objc_opt_class();
      v79 = NSStringFromClass(v80);
      v123 = v79;
      v122 = 1;
      v78 = v123;
    }

    else
    {
      v78 = @"(null)";
    }

    v76 = v78;
    delegate3 = [val delegate];
    v74 = delegate3;
    scanError = [val scanError];
    v72 = scanError;
    preferredStatefulDescriptor = [val preferredStatefulDescriptor];
    v70 = preferredStatefulDescriptor;
    alternateStatefulDescriptor = [val alternateStatefulDescriptor];
    v68 = alternateStatefulDescriptor;
    currentDownload = [val currentDownload];
    v67 = currentDownload;
    v120 = 0;
    v118 = 0;
    v116 = 0;
    if (v67)
    {
      currentDownload2 = [val currentDownload];
      v121 = currentDownload2;
      v120 = 1;
      descriptor = [v121 descriptor];
      v119 = descriptor;
      v118 = 1;
      updateName = [v119 updateName];
      v117 = updateName;
      v116 = 1;
      v63 = v117;
    }

    else
    {
      v63 = @"(null)";
    }

    v61 = v63;
    currentDownload3 = [val currentDownload];
    v59 = currentDownload3;
    currentUpdateOperationType = [val currentUpdateOperationType];
    v58 = SUUIUpdateContinuousOperationTypeToString();
    v55 = v58;
    v56 = MEMORY[0x277D82BE0](v55);
    v115 = v56;
    isTargetedUpdateScheduledForAutoInstall = [val isTargetedUpdateScheduledForAutoInstall];
    v136 = isTargetedUpdateScheduledForAutoInstall;
    if (isTargetedUpdateScheduledForAutoInstall)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v54 = v3;
    v4 = v3;
    v51 = v54;
    v52 = MEMORY[0x277D82BE0](v51);
    v114 = v52;
    hidingPreferredDescriptor = [val hidingPreferredDescriptor];
    v135 = hidingPreferredDescriptor;
    if (hidingPreferredDescriptor)
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    v50 = v5;
    v6 = v5;
    v47 = v50;
    v48 = MEMORY[0x277D82BE0](v47);
    v113 = v48;
    hiddenPreferredStatefulDescriptor = [val hiddenPreferredStatefulDescriptor];
    v45 = hiddenPreferredStatefulDescriptor;
    updateName2 = [v45 updateName];
    v42 = updateName2;
    v43 = MEMORY[0x277D82BE0](v42);
    v112 = v43;
    hidingAlternateDescriptor = [val hidingAlternateDescriptor];
    v134 = hidingAlternateDescriptor;
    if (hidingAlternateDescriptor)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v41 = v7;
    v8 = v7;
    v38 = v41;
    v39 = MEMORY[0x277D82BE0](v38);
    v111 = v39;
    hiddenAlternateStatefulDescriptor = [val hiddenAlternateStatefulDescriptor];
    v36 = hiddenAlternateStatefulDescriptor;
    updateName3 = [v36 updateName];
    v33 = updateName3;
    v34 = MEMORY[0x277D82BE0](v33);
    v110 = v34;
    enrolledBetaProgram = [val enrolledBetaProgram];
    v32 = enrolledBetaProgram;
    v108 = 0;
    if (v32)
    {
      enrolledBetaProgram2 = [val enrolledBetaProgram];
      v109 = enrolledBetaProgram2;
      v108 = 1;
      programID = [v109 programID];
      v29 = programID;
    }

    else
    {
      v29 = 0;
    }

    v27 = v29;
    v28 = [*(val + *MEMORY[0x277D64BE8]) count];
    canEnrollInBetaUpdates = [val canEnrollInBetaUpdates];
    v133 = canEnrollInBetaUpdates;
    if (canEnrollInBetaUpdates)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v25 = v9;
    v10 = v9;
    v19 = v25;
    v20 = MEMORY[0x277D82BE0](v19);
    v107 = v20;
    v21 = *(val + *MEMORY[0x277D64BF0]);
    v22 = *(val + *MEMORY[0x277D64BF8]);
    v23 = *(val + *MEMORY[0x277D64C08]);
    v24 = [*(val + *MEMORY[0x277D64BE0]) count];
    v17 = &v11;
    buf = v137;
    __os_log_helper_16_2_25_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0(v137, v98, v93, v88, v85, currentState, v76, v74, v72, v70, v68, v61, v59, v56, v52, v48, v43, v39, v34, v27, v28, v20, v21, v22, v23, v24);
    _os_log_impl(&dword_26B0B9000, log, v92[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nRollback applied. Attempts to ask to reboot the device.", buf, 0xFCu);
    MEMORY[0x277D82BD8](v19);
    if (v108)
    {
      MEMORY[0x277D82BD8](v109);
    }

    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v59);
    if (v116)
    {
      MEMORY[0x277D82BD8](v117);
    }

    if (v118)
    {
      MEMORY[0x277D82BD8](v119);
    }

    if (v120)
    {
      MEMORY[0x277D82BD8](v121);
    }

    MEMORY[0x277D82BD8](v67);
    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](v70);
    MEMORY[0x277D82BD8](v72);
    MEMORY[0x277D82BD8](v74);
    if (v122)
    {
      MEMORY[0x277D82BD8](v123);
    }

    if (v124)
    {
      MEMORY[0x277D82BD8](v125);
    }

    MEMORY[0x277D82BD8](v82);
    MEMORY[0x277D82BD8](v84);
    MEMORY[0x277D82BD8](v87);
    objc_storeStrong(&v107, 0);
    objc_storeStrong(&v110, 0);
    objc_storeStrong(&v111, 0);
    objc_storeStrong(&v112, 0);
    objc_storeStrong(&v113, 0);
    objc_storeStrong(&v114, 0);
    objc_storeStrong(&v115, 0);
    objc_storeStrong(&v126, 0);
    objc_storeStrong(&v127, 0);
  }

  objc_storeStrong(&oslog, 0);
  objc_initWeak(&from, val);
  delegateCallbackQueue = [val delegateCallbackQueue];
  queue = delegateCallbackQueue;
  v99 = MEMORY[0x277D85DD0];
  v100 = -1073741824;
  v101 = 0;
  v102 = __65__SUUIMobileStatefulUIManager_handleScanFinishedRollbackApplied___block_invoke;
  v103 = &unk_279CCBD58;
  v15 = v105;
  objc_copyWeak(v105, &from);
  block = &v99;
  v105[1] = v131;
  v12 = &v104;
  v104 = MEMORY[0x277D82BE0](location);
  dispatch_async(queue, block);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v12, 0);
  objc_destroyWeak(v15);
  objc_destroyWeak(&from);
  objc_storeStrong(&location, 0);
}

void __65__SUUIMobileStatefulUIManager_handleScanFinishedRollbackApplied___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v19[2] = a1;
  v19[1] = a1;
  v19[0] = objc_loadWeakRetained((a1 + 40));
  v5 = 0;
  if (!v19[0])
  {
    v4 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v18 = [v4 oslog];
    MEMORY[0x277D82BD8](v4);
    v17 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v3 = NSStringFromSelector(*(a1 + 48));
      location = MEMORY[0x277D82BE0](v3);
      __os_log_helper_16_2_2_8_32_8_66(v20, "[SUUIMobileStatefulUIManager handleScanFinishedRollbackApplied:]_block_invoke", location);
      _os_log_error_impl(&dword_26B0B9000, v18, v17, "%s: Self is nil in %{public}@. Stopping.", v20, 0x16u);
      MEMORY[0x277D82BD8](v3);
      objc_storeStrong(&location, 0);
    }

    objc_storeStrong(&v18, 0);
    v15 = 1;
    v5 = 1;
  }

  if (v5)
  {
    v14 = 1;
  }

  else
  {
    v1 = [v19[0] delegate];
    v2 = v19[0];
    v7 = MEMORY[0x277D85DD0];
    v8 = -1073741824;
    v9 = 0;
    v10 = __65__SUUIMobileStatefulUIManager_handleScanFinishedRollbackApplied___block_invoke_472;
    v11 = &unk_279CCC8A0;
    objc_copyWeak(v13, (a1 + 40));
    v13[1] = *(a1 + 48);
    v12 = MEMORY[0x277D82BE0](*(a1 + 32));
    [v1 statefulUIManager:v2 requestRollbackRestartApprovalWithCompletion:&v7];
    MEMORY[0x277D82BD8](v1);
    objc_storeStrong(&v12, 0);
    objc_destroyWeak(v13);
    v14 = 0;
  }

  objc_storeStrong(v19, 0);
}

void __65__SUUIMobileStatefulUIManager_handleScanFinishedRollbackApplied___block_invoke_472(id *a1, void *a2)
{
  v81 = a1;
  v82 = "[SUUIMobileStatefulUIManager handleScanFinishedRollbackApplied:]_block_invoke";
  v128 = *MEMORY[0x277D85DE8];
  v121 = a1;
  v120 = a2;
  v119[1] = a1;
  v119[0] = objc_loadWeakRetained(a1 + 5);
  v80 = 0;
  if (!v119[0])
  {
    v79 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    oslog = [v79 oslog];
    MEMORY[0x277D82BD8](v79);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      log = oslog;
      *v75 = type;
      v77 = NSStringFromSelector(v81[6]);
      location = &v116;
      v116 = MEMORY[0x277D82BE0](v77);
      buf = v127;
      __os_log_helper_16_2_2_8_32_8_66(v127, v82, v116);
      _os_log_error_impl(&dword_26B0B9000, log, v75[0], "%s: Self is nil in %{public}@. Stopping.", v127, 0x16u);
      MEMORY[0x277D82BD8](v77);
      objc_storeStrong(&v116, 0);
    }

    objc_storeStrong(&oslog, 0);
    v115 = 1;
    v80 = 1;
  }

  if (v80)
  {
    v114 = 1;
  }

  else
  {
    v73 = [MEMORY[0x277D64B58] statefulUILogger];
    v113 = [v73 oslog];
    MEMORY[0x277D82BD8](v73);
    v112 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
    {
      v64 = v113;
      *v65 = v112;
      v66 = v119[0];
      v2 = objc_opt_class();
      v67 = NSStringFromClass(v2);
      v68 = MEMORY[0x277D82BE0](v67);
      v111 = v68;
      v69 = SUUIStatefulUIStateToString();
      v70 = MEMORY[0x277D82BE0](v69);
      v110 = v70;
      v71 = [v119[0] currentState];
      v72 = [v119[0] delegate];
      v108 = 0;
      v106 = 0;
      if (v72)
      {
        v109 = [v119[0] delegate];
        v62 = 1;
        v108 = 1;
        v3 = objc_opt_class();
        v107 = NSStringFromClass(v3);
        v106 = 1;
        v63 = v107;
      }

      else
      {
        v63 = @"(null)";
      }

      v56 = v63;
      v57 = [v119[0] delegate];
      v58 = [v119[0] scanError];
      v59 = [v119[0] preferredStatefulDescriptor];
      v60 = [v119[0] alternateStatefulDescriptor];
      v61 = [v119[0] currentDownload];
      v104 = 0;
      v102 = 0;
      v100 = 0;
      if (v61)
      {
        v105 = [v119[0] currentDownload];
        v54 = 1;
        v104 = 1;
        v103 = [v105 descriptor];
        v102 = 1;
        v101 = [v103 updateName];
        v100 = 1;
        v55 = v101;
      }

      else
      {
        v55 = @"(null)";
      }

      v31 = v55;
      v32 = [v119[0] currentDownload];
      [v119[0] currentUpdateOperationType];
      v33 = SUUIUpdateContinuousOperationTypeToString();
      v34 = MEMORY[0x277D82BE0](v33);
      v99 = v34;
      v125 = [v119[0] isTargetedUpdateScheduledForAutoInstall];
      v44 = @"NO";
      v45 = @"YES";
      v52 = 1;
      if (v125)
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      v35 = v4;
      v5 = v4;
      v36 = v35;
      v37 = MEMORY[0x277D82BE0](v36);
      v98 = v37;
      v124 = [v119[0] hidingPreferredDescriptor];
      if (v124)
      {
        v6 = v45;
      }

      else
      {
        v6 = v44;
      }

      v38 = v6;
      v7 = v6;
      v39 = v38;
      v40 = MEMORY[0x277D82BE0](v39);
      v97 = v40;
      v41 = [v119[0] hiddenPreferredStatefulDescriptor];
      v42 = [v41 updateName];
      v43 = MEMORY[0x277D82BE0](v42);
      v96 = v43;
      v123 = [v119[0] hidingAlternateDescriptor];
      if (v123)
      {
        v8 = v45;
      }

      else
      {
        v8 = v44;
      }

      v46 = v8;
      v9 = v8;
      v47 = v46;
      v48 = MEMORY[0x277D82BE0](v47);
      v95 = v48;
      v49 = [v119[0] hiddenAlternateStatefulDescriptor];
      v50 = [v49 updateName];
      v51 = MEMORY[0x277D82BE0](v50);
      v94 = v51;
      v53 = [v119[0] enrolledBetaProgram];
      v92 = 0;
      if (v53)
      {
        v93 = [v119[0] enrolledBetaProgram];
        v92 = 1;
        v30 = [v93 programID];
      }

      else
      {
        v30 = 0;
      }

      v19 = v30;
      v20 = [*(v119[0] + *MEMORY[0x277D64BE8]) count];
      v122 = [v119[0] canEnrollInBetaUpdates];
      if (v122)
      {
        v10 = @"YES";
      }

      else
      {
        v10 = @"NO";
      }

      v18 = v10;
      v11 = v10;
      v29 = v18;
      v21 = MEMORY[0x277D82BE0](v29);
      v91 = v21;
      v22 = *(v119[0] + *MEMORY[0x277D64BF0]);
      v23 = *(v119[0] + *MEMORY[0x277D64BF8]);
      v24 = *(v119[0] + *MEMORY[0x277D64C08]);
      v25 = [*(v119[0] + *MEMORY[0x277D64BE0]) count];
      v28 = SUUIUserInteractionResponseToString();
      v90 = MEMORY[0x277D82BE0](v28);
      v26 = &v12;
      v27 = v126;
      __os_log_helper_16_2_26_8_32_8_0_8_66_8_66_8_0_8_66_8_0_8_66_8_66_8_66_8_66_8_0_8_66_8_66_8_66_8_66_8_66_8_66_8_0_8_0_8_66_8_0_8_0_8_0_8_0_8_66(v126, v82, v66, v68, v70, v71, v56, v57, v58, v59, v60, v31, v32, v34, v37, v40, v43, v48, v51, v19, v20, v21, v22, v23, v24, v25, v90);
      _os_log_impl(&dword_26B0B9000, v64, v65[0], "%s [%p]: %{public}@ Checkpoint\n\tcurrentState: %{public}@ (%ld)\n\tdelegate: %{public}@ (%p)\n\tscanError: %{public}@\n\tpreferredDescriptor: %{public}@\n\talternateDescriptor: %{public}@\n\tdownload: %{public}@ (%p)\n\tcurrentUpdateOperationType: %{public}@\n\tscheduledForAutoInstall: %{public}@\n\thiddenUpdatesPostSelection: preferred[%{public}@, %{public}@]; alternate[%{public}@, %{public}@];\n\tselectedBetaProgram: %lu (count: %ld, enrollable: %{public}@)\n\tOpFSMs: scan[%p]; refresh[%p]; update[%p]; auxiliaryOperationsCount[%lu]\n\nUser responded to the rollback reboot request: %{public}@", v27, 0x106u);
      MEMORY[0x277D82BD8](v28);
      MEMORY[0x277D82BD8](v29);
      if (v92)
      {
        MEMORY[0x277D82BD8](v93);
      }

      MEMORY[0x277D82BD8](v53);
      MEMORY[0x277D82BD8](v50);
      MEMORY[0x277D82BD8](v49);
      MEMORY[0x277D82BD8](v47);
      MEMORY[0x277D82BD8](v42);
      MEMORY[0x277D82BD8](v41);
      MEMORY[0x277D82BD8](v39);
      MEMORY[0x277D82BD8](v36);
      MEMORY[0x277D82BD8](v33);
      MEMORY[0x277D82BD8](v32);
      if (v100)
      {
        MEMORY[0x277D82BD8](v101);
      }

      if (v102)
      {
        MEMORY[0x277D82BD8](v103);
      }

      if (v104)
      {
        MEMORY[0x277D82BD8](v105);
      }

      MEMORY[0x277D82BD8](v61);
      MEMORY[0x277D82BD8](v60);
      MEMORY[0x277D82BD8](v59);
      MEMORY[0x277D82BD8](v58);
      MEMORY[0x277D82BD8](v57);
      if (v106)
      {
        MEMORY[0x277D82BD8](v107);
      }

      if (v108)
      {
        MEMORY[0x277D82BD8](v109);
      }

      MEMORY[0x277D82BD8](v72);
      MEMORY[0x277D82BD8](v69);
      MEMORY[0x277D82BD8](v67);
      obj = 0;
      objc_storeStrong(&v90, 0);
      objc_storeStrong(&v91, obj);
      objc_storeStrong(&v94, obj);
      objc_storeStrong(&v95, obj);
      objc_storeStrong(&v96, obj);
      objc_storeStrong(&v97, obj);
      objc_storeStrong(&v98, obj);
      objc_storeStrong(&v99, obj);
      objc_storeStrong(&v110, obj);
      objc_storeStrong(&v111, obj);
    }

    objc_storeStrong(&v113, 0);
    queue = *(v119[0] + *MEMORY[0x277D64C18]);
    block = &v83;
    v83 = MEMORY[0x277D85DD0];
    v84 = -1073741824;
    v85 = 0;
    v86 = __65__SUUIMobileStatefulUIManager_handleScanFinishedRollbackApplied___block_invoke_473;
    v87 = &unk_279CCC878;
    v16 = v89;
    objc_copyWeak(v89, v81 + 5);
    v89[1] = v81[6];
    v89[2] = v120;
    v15 = (block + 32);
    v88 = MEMORY[0x277D82BE0](v81[4]);
    dispatch_async(queue, block);
    objc_storeStrong(v15, 0);
    objc_destroyWeak(v16);
    v114 = 0;
  }

  objc_storeStrong(v119, 0);
}

void __65__SUUIMobileStatefulUIManager_handleScanFinishedRollbackApplied___block_invoke_473(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v15[2] = a1;
  v15[1] = a1;
  v15[0] = objc_loadWeakRetained((a1 + 40));
  v6 = 0;
  if (!v15[0])
  {
    v5 = [MEMORY[0x277D64B58] softwareUpdateUILogger];
    v14 = [v5 oslog];
    MEMORY[0x277D82BD8](v5);
    v13 = 16;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      log = v14;
      type = v13;
      v4 = NSStringFromSelector(*(a1 + 48));
      v12 = MEMORY[0x277D82BE0](v4);
      __os_log_helper_16_2_2_8_32_8_66(v16, "[SUUIMobileStatefulUIManager handleScanFinishedRollbackApplied:]_block_invoke", v12);
      _os_log_error_impl(&dword_26B0B9000, log, type, "%s: Self is nil in %{public}@. Stopping.", v16, 0x16u);
      MEMORY[0x277D82BD8](v4);
      objc_storeStrong(&v12, 0);
    }

    objc_storeStrong(&v14, 0);
    v11 = 1;
    v6 = 1;
  }

  if (v6)
  {
    v10 = 1;
  }

  else if (*(a1 + 56))
  {
    v1 = [v15[0] managerFSM];
    [v1 postEvent:*MEMORY[0x277D64D48] withInfo:*(a1 + 32)];
    MEMORY[0x277D82BD8](v1);
    v10 = 0;
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277D0AE10]) initWithReason:@"Reboot for rollback apply"];
    [v9 setRebootType:1];
    v8 = objc_alloc_init(MEMORY[0x277D0AE18]);
    [v8 shutdownWithOptions:v9];
    v10 = 1;
    objc_storeStrong(&v8, 0);
    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(v15, 0);
}

- (id)contextForFullScanOperation:(id)operation withThirdPartyScanResults:(id)results scanError:(id)error forceReloadScanResults:(BOOL)scanResults
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operation);
  v22 = 0;
  objc_storeStrong(&v22, results);
  v21 = 0;
  objc_storeStrong(&v21, error);
  scanResultsCopy = scanResults;
  v19 = objc_alloc_init(MEMORY[0x277D648F8]);
  [v19 setForced:1];
  clientIdentifier = [(SUUIMobileStatefulUIManager *)selfCopy clientIdentifier];
  [v19 setIdentifier:?];
  MEMORY[0x277D82BD8](clientIdentifier);
  if (_os_feature_enabled_impl())
  {
    [v19 addType:?];
    [v19 addType:2];
    [v19 addType:3];
    [v19 addType:1];
    [v19 removeType:4];
    [v19 setScanForSplatIfNecessary:0];
  }

  v12 = [SUUIMobileScanOperationFullScanContext alloc];
  v7 = v22;
  v8 = v21;
  v9 = scanResultsCopy;
  v10 = v19;
  agreementStatusRegistry = selfCopy->_agreementStatusRegistry;
  currentSeedingDevice = [(SUUIStatefulUIManager *)selfCopy currentSeedingDevice];
  v14 = [(SUUIMobileScanOperationFullScanContext *)v12 initWithPreviousThirdPartyScanResults:v7 previousScanError:v8 forceReloadScanResults:v9 scanOptions:v10 agreementStatusRegistry:agreementStatusRegistry currentSeedingDevice:?];
  MEMORY[0x277D82BD8](currentSeedingDevice);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);

  return v14;
}

- (id)contextForRefreshScanOperation:(id)operation withPreviouslyDiscoveredDownload:(id)download encounteredError:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operation);
  v14 = 0;
  objc_storeStrong(&v14, download);
  v13 = 0;
  objc_storeStrong(&v13, error);
  v10 = [SUUIMobileScanOperationRefreshScanContext alloc];
  v8 = v14;
  v9 = v13;
  currentAutoInstallOperation = [(SUUIMobileStatefulUIManager *)selfCopy currentAutoInstallOperation];
  v12 = [SUUIMobileScanOperationRefreshScanContext initWithPreviousDownload:v10 previousEncounteredError:"initWithPreviousDownload:previousEncounteredError:currentAutoInstallOperation:andAgreementStatusRegistry:" currentAutoInstallOperation:v8 andAgreementStatusRegistry:v9];
  MEMORY[0x277D82BD8](currentAutoInstallOperation);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);

  return v12;
}

- (id)contextForDownloadUpdateOperation:(id)operation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operation);
  v5 = [SUUIMobileUpdateOperationDownloadContext alloc];
  v3 = [(SUUIStatefulUIManager *)selfCopy updateOperationShouldPerformUnattendedPurge:location[0]];
  v6 = [(SUUIMobileUpdateOperationDownloadContext *)v5 initWithUnattendedPurge:v3 andAgreementStatusRegistry:selfCopy->_agreementStatusRegistry];
  objc_storeStrong(location, 0);

  return v6;
}

- (id)contextForDownloadAndInstallUpdateOperation:(id)operation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operation);
  v5 = [SUUIMobileUpdateOperationDownloadAndInstallContext alloc];
  v3 = [(SUUIStatefulUIManager *)selfCopy updateOperationShouldPerformUnattendedPurge:location[0]];
  v6 = [(SUUIMobileUpdateOperationDownloadAndInstallContext *)v5 initWithUnattendedPurge:v3 andAgreementStatusRegistry:selfCopy->_agreementStatusRegistry];
  objc_storeStrong(location, 0);

  return v6;
}

- (id)contextForDownloadAndScheduleUpdateOperation:(id)operation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operation);
  v5 = [SUUIMobileUpdateOperationDownloadAndScheduleContext alloc];
  v3 = [(SUUIStatefulUIManager *)selfCopy updateOperationShouldPerformUnattendedPurge:location[0]];
  v6 = [(SUUIMobileUpdateOperationDownloadAndScheduleContext *)v5 initWithUnattendedPurge:v3 andAgreementStatusRegistry:selfCopy->_agreementStatusRegistry];
  objc_storeStrong(location, 0);

  return v6;
}

- (id)contextForInstallUpdateOperation:(id)operation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operation);
  v5 = [SUUIMobileUpdateOperationInstallContext alloc];
  v3 = [(SUUIStatefulUIManager *)selfCopy updateOperationShouldPerformUnattendedPurge:location[0]];
  v6 = [(SUUIMobileUpdateOperationInstallContext *)v5 initWithUnattendedPurge:v3 andAgreementStatusRegistry:selfCopy->_agreementStatusRegistry];
  objc_storeStrong(location, 0);

  return v6;
}

- (id)contextForScheduleUpdateOperation:(id)operation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operation);
  v5 = [SUUIMobileUpdateOperationScheduleContext alloc];
  v3 = [(SUUIStatefulUIManager *)selfCopy updateOperationShouldPerformUnattendedPurge:location[0]];
  v6 = [(SUUIMobileUpdateOperationScheduleContext *)v5 initWithUnattendedPurge:v3 andAgreementStatusRegistry:selfCopy->_agreementStatusRegistry];
  objc_storeStrong(location, 0);

  return v6;
}

- (id)contextForUserUnscheduleUpdateOperation:(id)operation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, operation);
  v3 = [SUUIMobileUpdateOperationUnscheduleContext alloc];
  v5 = [(SUUIMobileUpdateOperationUnscheduleContext *)v3 initWithAutoInstallOperation:selfCopy->_currentAutoInstallOperation];
  objc_storeStrong(location, 0);

  return v5;
}

- (BOOL)assignScanResults:(id)results
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  v24.receiver = selfCopy;
  v24.super_class = SUUIMobileStatefulUIManager;
  v25 = [(SUUIStatefulUIManager *)&v24 assignScanResults:location[0]];
  v22 = MEMORY[0x277D82BE0](location[0]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = MEMORY[0x277D82BE0](v22);
  }

  else
  {
    v3 = MEMORY[0x277D82BE0](0);
  }

  v21 = v3;
  objc_storeStrong(&v22, 0);
  v23 = v21;
  v19 = MEMORY[0x277D82BE0](location[0]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x277D82BE0](v19);
  }

  else
  {
    v4 = MEMORY[0x277D82BE0](0);
  }

  v18 = v4;
  objc_storeStrong(&v19, 0);
  v20 = v18;
  v11 = 1;
  if (!v18)
  {
    v11 = v23 != 0;
  }

  if (!v11)
  {
    _suui_precondition_failure_with_format();
  }

  v15 = 0;
  v13 = 0;
  if (v23)
  {
    currentAutoInstallOperation = [v23 currentAutoInstallOperation];
    v15 = 1;
    v5 = MEMORY[0x277D82BE0](currentAutoInstallOperation);
  }

  else
  {
    currentAutoInstallOperation2 = [v20 currentAutoInstallOperation];
    v13 = 1;
    v5 = MEMORY[0x277D82BE0](currentAutoInstallOperation2);
  }

  v17 = v5;
  if (v13)
  {
    MEMORY[0x277D82BD8](currentAutoInstallOperation2);
  }

  if (v15)
  {
    MEMORY[0x277D82BD8](currentAutoInstallOperation);
  }

  currentAutoInstallOperation3 = [(SUUIMobileStatefulUIManager *)selfCopy currentAutoInstallOperation];
  if (currentAutoInstallOperation3 != v17 && (!currentAutoInstallOperation3 || ([v17 isEqual:currentAutoInstallOperation3] & 1) == 0))
  {
    if (currentAutoInstallOperation3)
    {
      currentAutoInstallOperation4 = [(SUUIMobileStatefulUIManager *)selfCopy currentAutoInstallOperation];
      [(SUAutoInstallOperation *)currentAutoInstallOperation4 setDelegate:0];
      MEMORY[0x277D82BD8](currentAutoInstallOperation4);
    }

    [(SUUIMobileStatefulUIManager *)selfCopy setCurrentAutoInstallOperation:v17];
    v25 = 1;
    if (currentAutoInstallOperation3)
    {
      v8 = selfCopy;
      currentAutoInstallOperation5 = [(SUUIMobileStatefulUIManager *)selfCopy currentAutoInstallOperation];
      [(SUAutoInstallOperation *)currentAutoInstallOperation5 setDelegate:v8];
      MEMORY[0x277D82BD8](currentAutoInstallOperation5);
    }
  }

  v7 = v25;
  objc_storeStrong(&currentAutoInstallOperation3, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  return v7 & 1;
}

- (void)assignFullScanResults:(id)results
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  v9.receiver = selfCopy;
  v9.super_class = SUUIMobileStatefulUIManager;
  [(SUUIStatefulUIManager *)&v9 assignFullScanResults:location[0]];
  [(SUUIMobileStatefulUIManager *)selfCopy willChangeValueForKey:?];
  v8[0] = selfCopy;
  v8[1] = @"rollbackDescriptor";
  v6 = MEMORY[0x277D82BE0](location[0]);
  v5 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  rollbackDescriptor = [v5 rollbackDescriptor];
  rollbackDescriptor = selfCopy->_rollbackDescriptor;
  selfCopy->_rollbackDescriptor = rollbackDescriptor;
  MEMORY[0x277D82BD8](rollbackDescriptor);
  MEMORY[0x277D82BD8](v5);
  v7 = 2;
  v12 = v8;
  if (v8[0])
  {
    [*v12 didChangeValueForKey:v12[1]];
  }

  objc_storeStrong(location, 0);
}

- (void)assignDownloadAndScheduleUpdateResults:(id)results
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  v11.receiver = selfCopy;
  v11.super_class = SUUIMobileStatefulUIManager;
  [(SUUIStatefulUIManager *)&v11 assignDownloadAndScheduleUpdateResults:location[0]];
  v9 = MEMORY[0x277D82BE0](location[0]);
  v8 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  v10 = v8;
  isScheduled = [v8 isScheduled];
  [(SUUIStatefulUIManager *)selfCopy setIsAutoUpdateScheduled:isScheduled];
  currentAutoInstallOperation = [v10 currentAutoInstallOperation];
  [(SUUIMobileStatefulUIManager *)selfCopy setCurrentAutoInstallOperation:?];
  MEMORY[0x277D82BD8](currentAutoInstallOperation);
  currentAutoInstallOperation2 = [v10 currentAutoInstallOperation];
  MEMORY[0x277D82BD8](currentAutoInstallOperation2);
  if (currentAutoInstallOperation2)
  {
    v4 = selfCopy;
    currentAutoInstallOperation3 = [(SUUIMobileStatefulUIManager *)selfCopy currentAutoInstallOperation];
    [(SUAutoInstallOperation *)currentAutoInstallOperation3 setDelegate:v4];
    MEMORY[0x277D82BD8](currentAutoInstallOperation3);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)assignScheduleUpdateResults:(id)results
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  v10.receiver = selfCopy;
  v10.super_class = SUUIMobileStatefulUIManager;
  [(SUUIStatefulUIManager *)&v10 assignScheduleUpdateResults:location[0]];
  v8 = MEMORY[0x277D82BE0](location[0]);
  v7 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(&v8, 0);
  v9 = v7;
  isSuccess = [v7 isSuccess];
  [(SUUIStatefulUIManager *)selfCopy setIsAutoUpdateScheduled:isSuccess];
  currentAutoInstallOperation = [v9 currentAutoInstallOperation];
  [(SUUIMobileStatefulUIManager *)selfCopy setCurrentAutoInstallOperation:?];
  MEMORY[0x277D82BD8](currentAutoInstallOperation);
  v5 = selfCopy;
  currentAutoInstallOperation2 = [(SUUIMobileStatefulUIManager *)selfCopy currentAutoInstallOperation];
  [(SUAutoInstallOperation *)currentAutoInstallOperation2 setDelegate:v5];
  MEMORY[0x277D82BD8](currentAutoInstallOperation2);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)assignUnscheduleUpdateResults:(id)results
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, results);
  v3.receiver = selfCopy;
  v3.super_class = SUUIMobileStatefulUIManager;
  [(SUUIStatefulUIManager *)&v3 assignUnscheduleUpdateResults:location[0]];
  [(SUUIMobileStatefulUIManager *)selfCopy setCurrentAutoInstallOperation:0];
  objc_storeStrong(location, 0);
}

@end