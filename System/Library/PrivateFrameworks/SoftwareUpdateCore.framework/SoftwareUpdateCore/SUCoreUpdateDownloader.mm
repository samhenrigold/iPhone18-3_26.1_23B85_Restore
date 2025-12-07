@interface SUCoreUpdateDownloader
+ (id)_generateStateTable;
- (BOOL)_isPreSUStagingEnabled;
- (BOOL)_shouldStageOptionalPSUSAssets;
- (NSString)description;
- (SUCoreUpdateDownloader)initWithDelegate:(id)delegate forUpdate:(id)update updateUUID:(id)d;
- (SUCoreUpdateDownloaderDelegate)delegate;
- (id)_createEvent:(id)event;
- (int64_t)_psusStageTimeout;
- (int64_t)actionCheckRemoveCompleted:(id)completed error:(id *)error;
- (int64_t)actionDownloadPSUSAssets:(id)assets error:(id *)error;
- (int64_t)actionDownloadSU:(id)u error:(id *)error;
- (int64_t)actionDownloadSplat:(id)splat error:(id *)error;
- (int64_t)actionRemoveUpdate:(id)update error:(id *)error;
- (int64_t)actionReportDownloadProgress:(id)progress error:(id *)error;
- (int64_t)actionReportDownloadStalled:(id)stalled error:(id *)error;
- (int64_t)actionReportUpdateDownloaded:(id)downloaded error:(id *)error;
- (int64_t)actionReportUpdateFailedToDownload:(id)download error:(id *)error;
- (int64_t)actionReportUpdateFailedToRemove:(id)remove error:(id *)error;
- (int64_t)actionReportUpdateRemoved:(id)removed error:(id *)error;
- (int64_t)actionUnknownAction:(id)action error:(id *)error;
- (int64_t)performAction:(id)action onEvent:(id)event inState:(id)state withInfo:(id)info nextState:(id)nextState error:(id *)error;
- (void)_prepareForDownloading;
- (void)_reportPSUSFinishedEvent:(id)event;
- (void)_reportPSUSStartedEvent;
- (void)_reportUpdateFailedToDownload:(id)download;
- (void)_skipCurrentOperationFor:(id)for;
- (void)_trackAnomaly:(id)anomaly reason:(id)reason result:(int64_t)result error:(id)error;
- (void)_trackBegin:(id)begin withIdentifier:(id)identifier;
- (void)_trackEnd:(id)end withIdentifier:(id)identifier withResult:(int64_t)result withError:(id)error;
- (void)_verifyNoPendingOperations:(id)operations reason:(id)reason;
- (void)alterPolicy:(id)policy;
- (void)downloadUpdateWithPolicy:(id)policy;
- (void)maAnomaly:(id)anomaly;
- (void)maDownloadProgress:(id)progress;
- (void)maDownloadStalled:(id)stalled;
- (void)removeUpdate;
@end

@implementation SUCoreUpdateDownloader

- (SUCoreUpdateDownloader)initWithDelegate:(id)delegate forUpdate:(id)update updateUUID:(id)d
{
  v47 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  updateCopy = update;
  dCopy = d;
  v11 = dCopy;
  if (updateCopy && dCopy)
  {
    v44.receiver = self;
    v44.super_class = SUCoreUpdateDownloader;
    v12 = [(SUCoreUpdateDownloader *)&v44 init];
    self = v12;
    if (!v12)
    {
LABEL_18:
      self = self;
      selfCopy = self;
      goto LABEL_19;
    }

    v12->_shouldDownloadSplat = 0;
    if ([updateCopy descriptorType] == 1 || objc_msgSend(updateCopy, "descriptorType") == 3 || objc_msgSend(updateCopy, "descriptorType") == 5)
    {
      v13 = [SUCoreMobileAsset alloc];
      softwareUpdateAsset = [updateCopy softwareUpdateAsset];
      v15 = [(SUCoreMobileAsset *)v13 initWithDelegate:self forAsset:softwareUpdateAsset updateUUID:v11];
      maControl = self->_maControl;
      self->_maControl = v15;

      associatedSplatDescriptor = [updateCopy associatedSplatDescriptor];
      v18 = associatedSplatDescriptor;
      if (associatedSplatDescriptor)
      {
        if ([associatedSplatDescriptor descriptorType] != 1)
        {
          mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
          oslog = [mEMORY[0x277D64460] oslog];

          if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
          {
            [SUCoreUpdateDownloader initWithDelegate:v18 forUpdate:? updateUUID:?];
          }

          goto LABEL_13;
        }

        v19 = [SUCoreMobileAsset alloc];
        softwareUpdateAsset2 = [v18 softwareUpdateAsset];
        v21 = [(SUCoreMobileAsset *)v19 initWithDelegate:self forAsset:softwareUpdateAsset2 updateUUID:v11];
        maControlSplombo = self->_maControlSplombo;
        self->_maControlSplombo = v21;

        self->_shouldDownloadSplat = 1;
      }

      else
      {
        mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
        oslog2 = [mEMORY[0x277D64460]2 oslog];

        if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
        {
          v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"init: not creating ma for Splat"];
          *buf = 138543362;
          v46 = v28;
          _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[SUCoreUpdateDownloader] %{public}@", buf, 0xCu);
        }
      }

      policy = self->_policy;
      self->_policy = 0;

      objc_storeWeak(&self->_delegate, delegateCopy);
      objc_storeStrong(&self->_updateDescriptor, update);
      objc_storeStrong(&self->_updateUUID, d);
      self->_numPendingOperations = 0;
      self->_shouldReportDownloadFailureIfCanceled = 0;
      self->_maxAllowedPreSUStagingOptionalSize = 0;
      mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
      v31 = [mEMORY[0x277D643F8] selectDelegateCallbackQueue:0];
      delegateCallBackQueue = self->_delegateCallBackQueue;
      self->_delegateCallBackQueue = v31;

      v33 = +[SUCoreUpdateDownloader _generateStateTable];
      stateTable = self->_stateTable;
      self->_stateTable = v33;

      v35 = objc_alloc(MEMORY[0x277D64458]);
      _versionedModuleName = [(SUCoreUpdateDownloader *)self _versionedModuleName];
      v37 = [v35 initMachine:_versionedModuleName ofInstance:self->_updateUUID withTable:self->_stateTable startingIn:@"Idle" usingDelegate:self registeringAllInfoClass:objc_opt_class()];
      downloadFSM = self->_downloadFSM;
      self->_downloadFSM = v37;

      if (self->_downloadFSM)
      {
        goto LABEL_18;
      }

      mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
      oslog3 = [mEMORY[0x277D64460]3 oslog];

      if (os_log_type_enabled(oslog3, OS_LOG_TYPE_ERROR))
      {
        [SUCoreUpdateDownloader initWithDelegate:forUpdate:updateUUID:];
      }
    }

    else
    {
      mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
      oslog3 = [mEMORY[0x277D64460]4 oslog];

      if (os_log_type_enabled(oslog3, OS_LOG_TYPE_ERROR))
      {
        [SUCoreUpdateDownloader initWithDelegate:updateCopy forUpdate:? updateUUID:?];
      }
    }
  }

  else
  {
    mEMORY[0x277D64460]5 = [MEMORY[0x277D64460] sharedLogger];
    oslog3 = [mEMORY[0x277D64460]5 oslog];

    if (os_log_type_enabled(oslog3, OS_LOG_TYPE_ERROR))
    {
      [SUCoreUpdateDownloader initWithDelegate:forUpdate:updateUUID:];
    }
  }

LABEL_13:
  selfCopy = 0;
LABEL_19:

  return selfCopy;
}

- (void)downloadUpdateWithPolicy:(id)policy
{
  policyCopy = policy;
  downloadFSM = [(SUCoreUpdateDownloader *)self downloadFSM];
  extendedStateQueue = [downloadFSM extendedStateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__SUCoreUpdateDownloader_downloadUpdateWithPolicy___block_invoke;
  v8[3] = &unk_27892D478;
  v8[4] = self;
  v9 = policyCopy;
  v7 = policyCopy;
  dispatch_async(extendedStateQueue, v8);
}

void __51__SUCoreUpdateDownloader_downloadUpdateWithPolicy___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPolicy:*(a1 + 40)];
  v3 = [*(a1 + 32) downloadFSM];
  v2 = objc_alloc_init(SUCoreUpdateDownloaderParam);
  [v3 postProtectedEvent:@"DownloadUpdate" withInfo:v2];
}

- (void)removeUpdate
{
  downloadFSM = [(SUCoreUpdateDownloader *)self downloadFSM];
  extendedStateQueue = [downloadFSM extendedStateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SUCoreUpdateDownloader_removeUpdate__block_invoke;
  block[3] = &unk_27892C8A8;
  block[4] = self;
  dispatch_async(extendedStateQueue, block);
}

void __38__SUCoreUpdateDownloader_removeUpdate__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) shouldReportDownloadFailureIfCanceled])
  {
    [*(a1 + 32) setShouldReportDownloadFailureIfCanceled:0];
    v2 = [MEMORY[0x277D643F8] sharedCore];
    v3 = [v2 buildError:8124 underlying:0 description:@"update attempt was canceled"];

    [*(a1 + 32) _reportUpdateFailedToDownload:v3];
  }

  v5 = [*(a1 + 32) downloadFSM];
  v4 = objc_alloc_init(SUCoreUpdateDownloaderParam);
  [v5 postProtectedEvent:@"RemoveUpdate" withInfo:v4];
}

- (void)alterPolicy:(id)policy
{
  policyCopy = policy;
  downloadFSM = [(SUCoreUpdateDownloader *)self downloadFSM];
  extendedStateQueue = [downloadFSM extendedStateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__SUCoreUpdateDownloader_alterPolicy___block_invoke;
  v8[3] = &unk_27892D478;
  v9 = policyCopy;
  selfCopy = self;
  v7 = policyCopy;
  dispatch_async(extendedStateQueue, v8);
}

void __38__SUCoreUpdateDownloader_alterPolicy___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    [*(a1 + 40) setPolicy:?];
    v2 = objc_alloc_init(MEMORY[0x277D28A00]);
    v3 = [*(a1 + 32) softwareUpdateDownloadPolicy];
    [v2 setDiscretionary:{objc_msgSend(v3, "discretionary")}];

    v4 = [MEMORY[0x277D64460] sharedLogger];
    v5 = [v4 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = MEMORY[0x277CCACA8];
      v8 = [SUCoreMobileAsset downloadConfigSummary:v2];
      v9 = [v7 stringWithFormat:@"adjusting configuration: %@", v8];
      *buf = 138543618;
      v13 = v6;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_23193C000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", buf, 0x16u);
    }

    v10 = [*(a1 + 40) maControl];
    [v10 alterDownloadOptions:v2];

    v11 = [*(a1 + 40) maControlSplombo];
    [v11 alterDownloadOptions:v2];
  }
}

+ (id)_generateStateTable
{
  v125[6] = *MEMORY[0x277D85DE8];
  v124[0] = @"Idle";
  v122[0] = @"DownloadUpdate";
  v3 = *MEMORY[0x277D644B8];
  v120[0] = *MEMORY[0x277D64800];
  v2 = v120[0];
  v120[1] = v3;
  v121[0] = @"DownloadingSU";
  v121[1] = @"DownloadSU";
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v121 forKeys:v120 count:2];
  v122[1] = @"RemoveUpdate";
  v123[0] = v45;
  v118[0] = v2;
  v118[1] = v3;
  v119[0] = @"RemovingUpdate";
  v119[1] = @"RemoveUpdate";
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v119 forKeys:v118 count:2];
  v123[1] = v44;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v123 forKeys:v122 count:2];
  v125[0] = v43;
  v124[1] = @"DownloadingSU";
  v116[0] = @"DownloadUpdate";
  v114 = v3;
  v115 = *MEMORY[0x277D647D0];
  v4 = v115;
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
  v117[0] = v42;
  v116[1] = @"RemoveUpdate";
  v112[0] = v2;
  v112[1] = v3;
  v113[0] = @"RemovingUpdate";
  v113[1] = @"RemoveUpdate";
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:v112 count:2];
  v117[1] = v41;
  v116[2] = @"DownloadSucceeded";
  v110[0] = v2;
  v110[1] = v3;
  v111[0] = @"DownloadingSplat";
  v111[1] = @"DownloadSplat";
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:v110 count:2];
  v117[2] = v40;
  v116[3] = @"DownloadFailed";
  v108[0] = v2;
  v108[1] = v3;
  v109[0] = @"Idle";
  v109[1] = @"ReportUpdateFailedToDownload";
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v108 count:2];
  v117[3] = v39;
  v116[4] = @"DownloadProgress";
  v106 = v3;
  v107 = @"ReportDownloadProgress";
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
  v117[4] = v38;
  v116[5] = @"DownloadStalled";
  v104 = v3;
  v105 = @"ReportDownloadStalled";
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
  v117[5] = v37;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v117 forKeys:v116 count:6];
  v125[1] = v36;
  v124[2] = @"DownloadingSplat";
  v102[0] = @"DownloadUpdate";
  v100 = v3;
  v101 = v4;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
  v103[0] = v35;
  v102[1] = @"RemoveUpdate";
  v98[0] = v2;
  v98[1] = v3;
  v99[0] = @"RemovingUpdate";
  v99[1] = @"RemoveUpdate";
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v98 count:2];
  v103[1] = v34;
  v102[2] = @"DownloadSucceeded";
  v96[0] = v2;
  v96[1] = v3;
  v97[0] = @"DownloadingPSUSAssets";
  v97[1] = @"DownloadPSUSAssets";
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:2];
  v103[2] = v33;
  v102[3] = @"OperationSkipped";
  v94[0] = v2;
  v94[1] = v3;
  v95[0] = @"DownloadingPSUSAssets";
  v95[1] = @"DownloadPSUSAssets";
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:2];
  v103[3] = v32;
  v102[4] = @"DownloadFailed";
  v92[0] = v2;
  v92[1] = v3;
  v93[0] = @"Idle";
  v93[1] = @"ReportUpdateFailedToDownload";
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:2];
  v103[4] = v31;
  v102[5] = @"DownloadProgress";
  v90 = v3;
  v91 = @"ReportDownloadProgress";
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
  v103[5] = v30;
  v102[6] = @"DownloadStalled";
  v88 = v3;
  v89 = @"ReportDownloadStalled";
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
  v103[6] = v29;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:7];
  v125[2] = v28;
  v124[3] = @"DownloadingPSUSAssets";
  v86[0] = @"DownloadUpdate";
  v84 = v3;
  v85 = v4;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
  v87[0] = v27;
  v86[1] = @"RemoveUpdate";
  v82[0] = v2;
  v82[1] = v3;
  v83[0] = @"RemovingUpdate";
  v83[1] = @"RemoveUpdate";
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:2];
  v87[1] = v26;
  v86[2] = @"DownloadSucceeded";
  v80[0] = v2;
  v80[1] = v3;
  v81[0] = @"Downloaded";
  v81[1] = @"ReportUpdateDownloaded";
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:2];
  v87[2] = v25;
  v86[3] = @"OperationSkipped";
  v78[0] = v2;
  v78[1] = v3;
  v79[0] = @"Downloaded";
  v79[1] = @"ReportUpdateDownloaded";
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:2];
  v87[3] = v24;
  v86[4] = @"DownloadFailed";
  v76[0] = v2;
  v76[1] = v3;
  v77[0] = @"Idle";
  v77[1] = @"ReportUpdateFailedToDownload";
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:2];
  v87[4] = v23;
  v86[5] = @"DownloadProgress";
  v74 = v3;
  v75 = @"ReportDownloadProgress";
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
  v87[5] = v22;
  v86[6] = @"DownloadStalled";
  v72 = v3;
  v73 = @"ReportDownloadStalled";
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
  v87[6] = v21;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:7];
  v125[3] = v20;
  v124[4] = @"Downloaded";
  v70[0] = @"DownloadUpdate";
  v68 = v3;
  v69 = @"ReportUpdateDownloaded";
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
  v71[0] = v19;
  v70[1] = @"RemoveUpdate";
  v66[0] = v2;
  v66[1] = v3;
  v67[0] = @"RemovingUpdate";
  v67[1] = @"RemoveUpdate";
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:2];
  v71[1] = v18;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:2];
  v125[4] = v17;
  v124[5] = @"RemovingUpdate";
  v63 = v4;
  v64[0] = @"DownloadUpdate";
  v62 = v3;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
  v65[0] = v16;
  v64[1] = @"RemoveUpdate";
  v60 = v3;
  v61 = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
  v65[1] = v5;
  v64[2] = @"RemoveSucceeded";
  v58 = v3;
  v59 = @"CheckRemoveCompleted";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
  v65[2] = v6;
  v64[3] = @"RemoveFailed";
  v56 = v3;
  v57 = @"CheckRemoveCompleted";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
  v65[3] = v7;
  v64[4] = @"DownloadSucceeded";
  v54 = v3;
  v55 = @"CheckRemoveCompleted";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
  v65[4] = v8;
  v64[5] = @"DownloadFailed";
  v52 = v3;
  v53 = @"CheckRemoveCompleted";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  v65[5] = v9;
  v64[6] = @"DownloadProgress";
  v50 = v3;
  v51 = v4;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
  v65[6] = v10;
  v64[7] = @"DownloadStalled";
  v48 = v3;
  v49 = v4;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
  v65[7] = v11;
  v64[8] = @"RemoveCompleted";
  v46[0] = v2;
  v46[1] = v3;
  v47[0] = @"Idle";
  v47[1] = @"ReportUpdateRemoved";
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
  v65[8] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:9];
  v125[5] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v125 forKeys:v124 count:6];

  return v14;
}

- (int64_t)performAction:(id)action onEvent:(id)event inState:(id)state withInfo:(id)info nextState:(id)nextState error:(id *)error
{
  actionCopy = action;
  infoCopy = info;
  downloadFSM = [(SUCoreUpdateDownloader *)self downloadFSM];
  extendedStateQueue = [downloadFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([actionCopy isEqualToString:*MEMORY[0x277D647D0]])
  {
    v15 = 0;
  }

  else
  {
    if ([actionCopy isEqualToString:@"DownloadSU"])
    {
      v16 = [(SUCoreUpdateDownloader *)self actionDownloadSU:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"DownloadSplat"])
    {
      v16 = [(SUCoreUpdateDownloader *)self actionDownloadSplat:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"DownloadPSUSAssets"])
    {
      v16 = [(SUCoreUpdateDownloader *)self actionDownloadPSUSAssets:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportUpdateDownloaded"])
    {
      v16 = [(SUCoreUpdateDownloader *)self actionReportUpdateDownloaded:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportUpdateFailedToDownload"])
    {
      v16 = [(SUCoreUpdateDownloader *)self actionReportUpdateFailedToDownload:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportDownloadStalled"])
    {
      v16 = [(SUCoreUpdateDownloader *)self actionReportDownloadStalled:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportDownloadProgress"])
    {
      v16 = [(SUCoreUpdateDownloader *)self actionReportDownloadProgress:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"RemoveUpdate"])
    {
      v16 = [(SUCoreUpdateDownloader *)self actionRemoveUpdate:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"CheckRemoveCompleted"])
    {
      v16 = [(SUCoreUpdateDownloader *)self actionCheckRemoveCompleted:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportUpdateRemoved"])
    {
      v16 = [(SUCoreUpdateDownloader *)self actionReportUpdateRemoved:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ReportUpdateFailedToRemove"])
    {
      v16 = [(SUCoreUpdateDownloader *)self actionReportUpdateFailedToRemove:infoCopy error:error];
    }

    else
    {
      v16 = [(SUCoreUpdateDownloader *)self actionUnknownAction:actionCopy error:error];
    }

    v15 = v16;
  }

  return v15;
}

- (int64_t)actionUnknownAction:(id)action error:(id *)error
{
  actionCopy = action;
  downloadFSM = [(SUCoreUpdateDownloader *)self downloadFSM];
  extendedStateQueue = [downloadFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  downloadFSM2 = [(SUCoreUpdateDownloader *)self downloadFSM];
  diag = [downloadFSM2 diag];
  actionCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ unknown action(%@)", self, actionCopy];

  [diag dumpTracked:actionCopy dumpingTo:5 usingFilename:0 clearingStatistics:0 clearingHistory:0];
  return 8102;
}

- (int64_t)actionDownloadSU:(id)u error:(id *)error
{
  v5 = [(SUCoreUpdateDownloader *)self downloadFSM:u];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUCoreUpdateDownloader *)self _prepareForDownloading];
  maControl = [(SUCoreUpdateDownloader *)self maControl];

  if (maControl)
  {
    updateDescriptor = [(SUCoreUpdateDownloader *)self updateDescriptor];
    -[SUCoreUpdateDownloader setTotalToWriteBytesForPhase:](self, "setTotalToWriteBytesForPhase:", [updateDescriptor suDownloadSize]);

    [(SUCoreUpdateDownloader *)self _trackBegin:@"downloadSoftwareUpdateAssetWithPolicy" withIdentifier:@"su"];
    maControl2 = [(SUCoreUpdateDownloader *)self maControl];
    policy = [(SUCoreUpdateDownloader *)self policy];
    updateUUID = [(SUCoreUpdateDownloader *)self updateUUID];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __49__SUCoreUpdateDownloader_actionDownloadSU_error___block_invoke;
    v18[3] = &unk_27892D228;
    v18[4] = self;
    [maControl2 downloadSoftwareUpdateAssetWithPolicy:policy withUUID:updateUUID completion:v18];

    return 0;
  }

  else
  {
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    v12 = 8116;
    v14 = [mEMORY[0x277D643F8] buildError:8116 underlying:0 description:@"unexpected no maControl when trying to download SU"];

    [(SUCoreUpdateDownloader *)self _trackAnomaly:@"[DOWNLOAD_SU]" reason:@"unexpected no maControl when trying to download SU" result:8116 error:v14];
    downloadFSM = [(SUCoreUpdateDownloader *)self downloadFSM];
    v16 = [[SUCoreUpdateDownloaderParam alloc] initWithError:v14];
    [downloadFSM followupEvent:@"DownloadFailed" withInfo:v16];
  }

  return v12;
}

void __49__SUCoreUpdateDownloader_actionDownloadSU_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) downloadFSM];
  v5 = [v4 extendedStateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SUCoreUpdateDownloader_actionDownloadSU_error___block_invoke_2;
  v7[3] = &unk_27892D478;
  v7[4] = *(a1 + 32);
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __49__SUCoreUpdateDownloader_actionDownloadSU_error___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _trackEnd:@"downloadSoftwareUpdateAssetWithPolicy" withIdentifier:@"su" withResult:objc_msgSend(*(a1 + 40) withError:{"code"), *(a1 + 40)}];
  v2 = *(a1 + 40);
  v5 = [*(a1 + 32) downloadFSM];
  if (v2)
  {
    v3 = [[SUCoreUpdateDownloaderParam alloc] initWithError:*(a1 + 40)];
    v4 = @"DownloadFailed";
  }

  else
  {
    v3 = objc_alloc_init(SUCoreUpdateDownloaderParam);
    v4 = @"DownloadSucceeded";
  }

  [v5 postProtectedEvent:v4 withInfo:v3];
}

- (int64_t)actionDownloadSplat:(id)splat error:(id *)error
{
  v5 = [(SUCoreUpdateDownloader *)self downloadFSM:splat];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([(SUCoreUpdateDownloader *)self shouldDownloadSplat])
  {
    maControlSplombo = [(SUCoreUpdateDownloader *)self maControlSplombo];

    if (!maControlSplombo)
    {
      mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
      v13 = 8116;
      v16 = [mEMORY[0x277D643F8] buildError:8116 underlying:0 description:@"unexpected no maControlSplombo when tyring to download Splat"];

      [(SUCoreUpdateDownloader *)self _trackAnomaly:@"[DOWNLOAD_SPLAT]" reason:@"unexpected no maControlSplombo when tyring to download Splat" result:8116 error:v16];
      downloadFSM = [(SUCoreUpdateDownloader *)self downloadFSM];
      v18 = [[SUCoreUpdateDownloaderParam alloc] initWithError:v16];
      [downloadFSM followupEvent:@"DownloadFailed" withInfo:v18];

      return v13;
    }

    [(SUCoreUpdateDownloader *)self setTotalWrittenBytesUpToLastPhase:[(SUCoreUpdateDownloader *)self totalWrittenBytesUpToLastPhase]+ [(SUCoreUpdateDownloader *)self totalToWriteBytesForPhase]];
    updateDescriptor = [(SUCoreUpdateDownloader *)self updateDescriptor];
    associatedSplatDescriptor = [updateDescriptor associatedSplatDescriptor];
    -[SUCoreUpdateDownloader setTotalToWriteBytesForPhase:](self, "setTotalToWriteBytesForPhase:", [associatedSplatDescriptor downloadSize]);

    [(SUCoreUpdateDownloader *)self _trackBegin:@"downloadSoftwareUpdateAssetWithPolicy" withIdentifier:@"splat"];
    maControlSplombo2 = [(SUCoreUpdateDownloader *)self maControlSplombo];
    policy = [(SUCoreUpdateDownloader *)self policy];
    updateUUID = [(SUCoreUpdateDownloader *)self updateUUID];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __52__SUCoreUpdateDownloader_actionDownloadSplat_error___block_invoke;
    v19[3] = &unk_27892D228;
    v19[4] = self;
    [maControlSplombo2 downloadSoftwareUpdateAssetWithPolicy:policy withUUID:updateUUID completion:v19];
  }

  else
  {
    [(SUCoreUpdateDownloader *)self _skipCurrentOperationFor:@"[Splombo] No splat to download; skip downloading splat"];
  }

  return 0;
}

void __52__SUCoreUpdateDownloader_actionDownloadSplat_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) downloadFSM];
  v5 = [v4 extendedStateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__SUCoreUpdateDownloader_actionDownloadSplat_error___block_invoke_2;
  v7[3] = &unk_27892D478;
  v7[4] = *(a1 + 32);
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __52__SUCoreUpdateDownloader_actionDownloadSplat_error___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _trackEnd:@"downloadSoftwareUpdateAssetWithPolicy" withIdentifier:@"splat" withResult:objc_msgSend(*(a1 + 40) withError:{"code"), *(a1 + 40)}];
  v2 = *(a1 + 40);
  v5 = [*(a1 + 32) downloadFSM];
  if (v2)
  {
    v3 = [[SUCoreUpdateDownloaderParam alloc] initWithError:*(a1 + 40)];
    v4 = @"DownloadFailed";
  }

  else
  {
    v3 = objc_alloc_init(SUCoreUpdateDownloaderParam);
    v4 = @"DownloadSucceeded";
  }

  [v5 postProtectedEvent:v4 withInfo:v3];
}

- (int64_t)actionDownloadPSUSAssets:(id)assets error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = [(SUCoreUpdateDownloader *)self downloadFSM:assets];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  array = [MEMORY[0x277CBEB18] array];
  if (![(SUCoreUpdateDownloader *)self _isPreSUStagingEnabled])
  {
    v10 = @"[PreSUStaging] disabled; skip downloading assets";
LABEL_19:
    [(SUCoreUpdateDownloader *)self _skipCurrentOperationFor:v10];
    goto LABEL_20;
  }

  updateDescriptor = [(SUCoreUpdateDownloader *)self updateDescriptor];
  preSUStagingRequiredSize = [updateDescriptor preSUStagingRequiredSize];

  if (preSUStagingRequiredSize)
  {
    [array addObject:@"STAGE_GROUP_REQUIRED"];
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"[PreSUStaging] No required assets to stage"];
      *buf = 138543618;
      selfCopy3 = self;
      v39 = 2114;
      v40 = v13;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", buf, 0x16u);
    }
  }

  if ([(SUCoreUpdateDownloader *)self _shouldStageOptionalPSUSAssets])
  {
    [array addObject:@"STAGE_GROUP_OPTIONAL"];
  }

  if (![array count])
  {
    v10 = @"[PreSUStaging] No assets to download; skip downloading assets";
    goto LABEL_19;
  }

  mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
  oslog2 = [mEMORY[0x277D64460]2 oslog];

  if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"[PreSUStaging] PSUS groups to stage: %@", array];
    *buf = 138543618;
    selfCopy3 = self;
    v39 = 2114;
    v40 = v16;
    _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", buf, 0x16u);
  }

  [(SUCoreUpdateDownloader *)self setTotalWrittenBytesUpToLastPhase:[(SUCoreUpdateDownloader *)self totalWrittenBytesUpToLastPhase]+ [(SUCoreUpdateDownloader *)self totalToWriteBytesForPhase]];
  updateDescriptor2 = [(SUCoreUpdateDownloader *)self updateDescriptor];
  -[SUCoreUpdateDownloader setTotalToWriteBytesForPhase:](self, "setTotalToWriteBytesForPhase:", -[SUCoreUpdateDownloader maxAllowedPreSUStagingOptionalSize](self, "maxAllowedPreSUStagingOptionalSize") + [updateDescriptor2 preSUStagingRequiredSize]);

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __57__SUCoreUpdateDownloader_actionDownloadPSUSAssets_error___block_invoke;
  v36[3] = &unk_27892DBC0;
  v36[4] = self;
  v18 = MEMORY[0x2383746D0](v36);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __57__SUCoreUpdateDownloader_actionDownloadPSUSAssets_error___block_invoke_476;
  v35[3] = &unk_27892DBE8;
  v35[4] = self;
  v19 = MEMORY[0x2383746D0](v35);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  updateDescriptor3 = [(SUCoreUpdateDownloader *)self updateDescriptor];
  productVersion = [updateDescriptor3 productVersion];
  [dictionary setSafeObject:productVersion forKey:@"OSVersion"];

  updateDescriptor4 = [(SUCoreUpdateDownloader *)self updateDescriptor];
  productBuildVersion = [updateDescriptor4 productBuildVersion];
  [dictionary setSafeObject:productBuildVersion forKey:@"Build"];

  updateDescriptor5 = [(SUCoreUpdateDownloader *)self updateDescriptor];
  trainName = [updateDescriptor5 trainName];
  [dictionary setSafeObject:trainName forKey:@"TrainName"];

  updateDescriptor6 = [(SUCoreUpdateDownloader *)self updateDescriptor];
  restoreVersion = [updateDescriptor6 restoreVersion];
  [dictionary setSafeObject:restoreVersion forKey:@"RestoreVersion"];

  [dictionary setSafeObject:array forKey:@"GroupNames"];
  if ([array containsObject:@"STAGE_GROUP_OPTIONAL"])
  {
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreUpdateDownloader maxAllowedPreSUStagingOptionalSize](self, "maxAllowedPreSUStagingOptionalSize")}];
    [dictionary setSafeObject:v29 forKey:@"OptionalAssetSizeAllowed"];
  }

  mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
  oslog3 = [mEMORY[0x277D64460]3 oslog];

  if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"[PreSUStaging] staging assets with attributes: %@", dictionary];
    *buf = 138543618;
    selfCopy3 = self;
    v39 = 2114;
    v40 = v32;
    _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", buf, 0x16u);
  }

  [(SUCoreUpdateDownloader *)self _reportPSUSStartedEvent];
  [(SUCoreUpdateDownloader *)self _trackBegin:@"stageDownloadGroups" withIdentifier:@"presustaging"];
  v33 = [MEMORY[0x277D289E0] SUCoreBorder_stageDownloadGroups:dictionary awaitingAllGroups:0 withStagingTimeout:-[SUCoreUpdateDownloader _psusStageTimeout](self reportingProgress:"_psusStageTimeout") completion:{v19, v18}];

LABEL_20:
  return 0;
}

void __57__SUCoreUpdateDownloader_actionDownloadPSUSAssets_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [*(a1 + 32) downloadFSM];
  v7 = [v6 extendedStateQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__SUCoreUpdateDownloader_actionDownloadPSUSAssets_error___block_invoke_2;
  v9[3] = &unk_27892D478;
  v9[4] = *(a1 + 32);
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, v9);
}

void __57__SUCoreUpdateDownloader_actionDownloadPSUSAssets_error___block_invoke_2(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) _trackEnd:@"stageDownloadGroups" withIdentifier:@"presustaging" withResult:objc_msgSend(*(a1 + 40) withError:{"code"), *(a1 + 40)}];
  [*(a1 + 32) _reportPSUSFinishedEvent:*(a1 + 40)];
  v2 = [[SUCoreUpdatePreSUStagingOutcome alloc] initWithError:*(a1 + 40)];
  v3 = [*(a1 + 32) delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [*(a1 + 32) delegateCallBackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__SUCoreUpdateDownloader_actionDownloadPSUSAssets_error___block_invoke_3;
    block[3] = &unk_27892D478;
    block[4] = *(a1 + 32);
    v34 = v2;
    dispatch_async(v5, block);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = [v6 checkedDescription];
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = [*(a1 + 40) domain];
      v8 = [v9 stringWithFormat:@"%@.%ld", v10, objc_msgSend(*(a1 + 40), "code")];

      if (!v8)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v8 = @"success";
  }

  v11 = MEMORY[0x277CBEB38];
  v12 = [*(a1 + 32) policy];
  v13 = [v12 updateMetricEventFields];
  v14 = [v11 dictionaryWithDictionary:v13];

  [v14 setObject:v8 forKey:@"psusOutcome"];
  v15 = [*(a1 + 32) policy];
  v16 = [v15 setUpdateMetricEventFieldsFromDictionary:v14];

LABEL_9:
  v17 = *(a1 + 40);
  if (!v17)
  {
    v20 = [*(a1 + 32) downloadFSM];
    v21 = objc_alloc_init(SUCoreUpdateDownloaderParam);
    v22 = @"DownloadSucceeded";
LABEL_18:
    [v20 postProtectedEvent:v22 withInfo:v21];
    goto LABEL_27;
  }

  v18 = [v17 domain];
  if ([v18 isEqualToString:@"com.apple.MobileAssetError.AutoAsset"])
  {
    v19 = [*(a1 + 40) code];

    if (v19 == 6611)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v23 = [*(a1 + 40) domain];
  if ([v23 isEqualToString:@"com.apple.MobileAssetError.AutoAsset"])
  {
    v24 = [*(a1 + 40) code];

    if (v24 == 6609)
    {
LABEL_17:
      v20 = [*(a1 + 32) downloadFSM];
      v21 = [[SUCoreUpdateDownloaderParam alloc] initWithError:*(a1 + 40)];
      v22 = @"DownloadFailed";
      goto LABEL_18;
    }
  }

  else
  {
  }

  v25 = [*(a1 + 40) domain];
  if ([v25 isEqualToString:*MEMORY[0x277D646E8]])
  {
    v26 = [*(a1 + 40) code];

    if (v26 == 8119)
    {
      notify_post("com.apple.SUCore.PSUS.TimedOut");
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __57__SUCoreUpdateDownloader_actionDownloadPSUSAssets_error___block_invoke_4;
      v32[3] = &unk_27892D228;
      v32[4] = *(a1 + 32);
      [MEMORY[0x277D289E0] SUCoreBorder_stagePurgeAll:v32];
    }
  }

  else
  {
  }

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"download failed with %@, but this is non-fatal", *(a1 + 40)];
  v27 = [MEMORY[0x277D64460] sharedLogger];
  v28 = [v27 oslog];

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = *(a1 + 32);
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"[PreSUStaging] %@", v20];
    *buf = 138543618;
    v36 = v29;
    v37 = 2114;
    v38 = v30;
    _os_log_impl(&dword_23193C000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", buf, 0x16u);
  }

  v21 = [*(a1 + 32) downloadFSM];
  v31 = [[SUCoreUpdateDownloaderParam alloc] initWithNote:v20];
  [(SUCoreUpdateDownloaderParam *)v21 postProtectedEvent:@"DownloadSucceeded" withInfo:v31];

LABEL_27:
}

void __57__SUCoreUpdateDownloader_actionDownloadPSUSAssets_error___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 preSUStagingFinished:*(a1 + 40)];
}

void __57__SUCoreUpdateDownloader_actionDownloadPSUSAssets_error___block_invoke_4(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277D64460] sharedLogger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"[PreSUStaging] purge after a timeout: %@", v3];
    *buf = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&dword_23193C000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", buf, 0x16u);
  }
}

void __57__SUCoreUpdateDownloader_actionDownloadPSUSAssets_error___block_invoke_476(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v22 = v5;
  if (v5)
  {
    [*(a1 + 32) _trackAnomaly:@"[DOWNLOAD_PSUS]" reason:@"unexpected progress error" result:objc_msgSend(v5 error:{"code"), v5}];
  }

  else
  {
    v6 = [a2 downloadProgress];
    v7 = v6;
    if (v6)
    {
      v8 = 0.0;
      if ([v6 totalWrittenBytes] >= 1 && objc_msgSend(v7, "totalExpectedBytes") >= 1)
      {
        v9 = [v7 totalWrittenBytes];
        v8 = v9 / [v7 totalExpectedBytes];
      }

      v10 = objc_alloc(MEMORY[0x277D64488]);
      v11 = *MEMORY[0x277D64828];
      v12 = [v7 isStalled];
      v13 = [v7 totalWrittenBytes];
      v14 = [v7 totalExpectedBytes];
      [v7 expectedTimeRemainingSecs];
      v16 = v15;
      v17 = [v7 description];
      *&v18 = v8;
      v19 = [v10 initWithPhase:v11 isStalled:v12 portionComplete:v13 totalWrittenBytes:v14 totalExpectedBytes:v17 remaining:v18 taskDescription:v16];

      v20 = [*(a1 + 32) downloadFSM];
      v21 = [[SUCoreUpdateDownloaderParam alloc] initWithProgress:v19];
      [v20 postEvent:@"DownloadProgress" withInfo:v21];
    }
  }
}

- (int64_t)actionReportDownloadProgress:(id)progress error:(id *)error
{
  v82 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  downloadFSM = [(SUCoreUpdateDownloader *)self downloadFSM];
  extendedStateQueue = [downloadFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  progress = [progressCopy progress];
  unifiedProgress = [(SUCoreUpdateDownloader *)self unifiedProgress];
  [unifiedProgress setIsStalled:0];

  totalWrittenBytes = [progress totalWrittenBytes];
  v11 = [(SUCoreUpdateDownloader *)self totalWrittenBytesUpToLastPhase]+ totalWrittenBytes;
  unifiedProgress2 = [(SUCoreUpdateDownloader *)self unifiedProgress];
  totalExpectedBytes = [unifiedProgress2 totalExpectedBytes];

  if (v11 > totalExpectedBytes)
  {
    v14 = MEMORY[0x277CCACA8];
    unifiedProgress3 = [(SUCoreUpdateDownloader *)self unifiedProgress];
    firstObject = [v14 stringWithFormat:@"unexpected written bytes (%lld) > expected bytes (%lld)", v11, objc_msgSend(unifiedProgress3, "totalExpectedBytes")];

    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    v18 = 8116;
    v19 = [mEMORY[0x277D643F8] buildError:8116 underlying:0 description:firstObject];

    [(SUCoreUpdateDownloader *)self _trackAnomaly:@"[PROGRESS]" reason:firstObject result:8116 error:v19];
LABEL_20:

    goto LABEL_21;
  }

  unifiedProgress4 = [(SUCoreUpdateDownloader *)self unifiedProgress];
  [unifiedProgress4 setTotalWrittenBytes:v11];

  v21 = [MEMORY[0x277CBEAA8] now];
  [v21 timeIntervalSince1970];
  v23 = v22;

  progressHistory = [(SUCoreUpdateDownloader *)self progressHistory];
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __61__SUCoreUpdateDownloader_actionReportDownloadProgress_error___block_invoke;
  v77[3] = &__block_descriptor_40_e51_B24__0__SUCoreDownloadCheckpoint_8__NSDictionary_16l;
  *&v77[4] = v23;
  v25 = [MEMORY[0x277CCAC30] predicateWithBlock:v77];
  [progressHistory filterUsingPredicate:v25];

  progressHistory2 = [(SUCoreUpdateDownloader *)self progressHistory];
  v27 = [[SUCoreDownloadCheckpoint alloc] initWithTimestamp:v11 downloadedBytes:v23];
  [progressHistory2 addObject:v27];

  progressHistory3 = [(SUCoreUpdateDownloader *)self progressHistory];
  v29 = [progressHistory3 count];

  if (v29 > 1)
  {
    progressHistory4 = [(SUCoreUpdateDownloader *)self progressHistory];
    firstObject = [progressHistory4 firstObject];

    progressHistory5 = [(SUCoreUpdateDownloader *)self progressHistory];
    lastObject = [progressHistory5 lastObject];

    [lastObject timestamp];
    v37 = v36;
    [firstObject timestamp];
    v39 = v38;
    downloadedBytes = [lastObject downloadedBytes];
    v41 = downloadedBytes - [firstObject downloadedBytes];
    if (v41 < 0)
    {
      v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"unexpected written bytes decreased (delta = %lld)", v41];
      mEMORY[0x277D643F8]2 = [MEMORY[0x277D643F8] sharedCore];
      v18 = 8116;
      v68 = [mEMORY[0x277D643F8]2 buildError:8116 underlying:0 description:v66];

      [(SUCoreUpdateDownloader *)self _trackAnomaly:@"[PROGRESS]" reason:v66 result:8116 error:v68];
    }

    else
    {
      if (v37 - v39 > 1.0)
      {
        v42 = v41 / (v37 - v39);
        if (v42 > 0.0)
        {
          unifiedProgress5 = [(SUCoreUpdateDownloader *)self unifiedProgress];
          totalExpectedBytes2 = [unifiedProgress5 totalExpectedBytes];
          unifiedProgress6 = [(SUCoreUpdateDownloader *)self unifiedProgress];
          v46 = totalExpectedBytes2 - [unifiedProgress6 totalWrittenBytes];

          v47 = v46 / v42;
          mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
          oslog = [mEMORY[0x277D64460] oslog];

          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            v50 = MEMORY[0x277CCACA8];
            unifiedProgress7 = [(SUCoreUpdateDownloader *)self unifiedProgress];
            v52 = [v50 stringWithFormat:@"[Progress] %lld/%lld bytes downloaded estimated speed: %.2lf MBps; estimated time remaining = %.2lf secs", v11, objc_msgSend(unifiedProgress7, "totalExpectedBytes"), v42 / 1000000.0, *&v47];;
            *buf = 138543618;
            selfCopy3 = self;
            v80 = 2114;
            v81 = v52;
            _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", buf, 0x16u);
          }

          unifiedProgress8 = [(SUCoreUpdateDownloader *)self unifiedProgress];
          [unifiedProgress8 setEstimatedTimeRemaining:v47];

          unifiedProgress9 = [(SUCoreUpdateDownloader *)self unifiedProgress];
          totalWrittenBytes2 = [unifiedProgress9 totalWrittenBytes];
          unifiedProgress10 = [(SUCoreUpdateDownloader *)self unifiedProgress];
          *&totalWrittenBytes2 = totalWrittenBytes2 / [unifiedProgress10 totalExpectedBytes];
          unifiedProgress11 = [(SUCoreUpdateDownloader *)self unifiedProgress];
          LODWORD(v58) = LODWORD(totalWrittenBytes2);
          [unifiedProgress11 setPortionComplete:v58];

          progress2 = [progressCopy progress];
          taskDescription = [progress2 taskDescription];
          unifiedProgress12 = [(SUCoreUpdateDownloader *)self unifiedProgress];
          [unifiedProgress12 setTaskDescription:taskDescription];

          delegate = [(SUCoreUpdateDownloader *)self delegate];
          LOBYTE(taskDescription) = objc_opt_respondsToSelector();

          if (taskDescription)
          {
            unifiedProgress13 = [(SUCoreUpdateDownloader *)self unifiedProgress];
            v64 = [unifiedProgress13 copy];

            delegateCallBackQueue = [(SUCoreUpdateDownloader *)self delegateCallBackQueue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __61__SUCoreUpdateDownloader_actionReportDownloadProgress_error___block_invoke_529;
            block[3] = &unk_27892D478;
            block[4] = self;
            progress = v64;
            v76 = progress;
            dispatch_async(delegateCallBackQueue, block);
          }

          else
          {
            mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
            oslog2 = [mEMORY[0x277D64460]2 oslog];

            if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
            {
              v71 = MEMORY[0x277CCACA8];
              unifiedProgress14 = [(SUCoreUpdateDownloader *)self unifiedProgress];
              v73 = [v71 stringWithFormat:@"delegate does not respond to selector(downloadProgress:) so not reporting progress=%@", unifiedProgress14];
              *buf = 138543618;
              selfCopy3 = self;
              v80 = 2114;
              v81 = v73;
              _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", buf, 0x16u);
            }
          }
        }
      }

      v18 = 0;
    }

    goto LABEL_20;
  }

  mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
  oslog3 = [mEMORY[0x277D64460]3 oslog];

  if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"[Progress] Too few progress records to report"];
    *buf = 138543618;
    selfCopy3 = self;
    v80 = 2114;
    v81 = v32;
    _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", buf, 0x16u);
  }

  v18 = 0;
LABEL_21:

  return v18;
}

void __61__SUCoreUpdateDownloader_actionReportDownloadProgress_error___block_invoke_529(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 downloadProgress:*(a1 + 40)];
}

- (int64_t)actionReportDownloadStalled:(id)stalled error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [(SUCoreUpdateDownloader *)self downloadFSM:stalled];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  unifiedProgress = [(SUCoreUpdateDownloader *)self unifiedProgress];
  [unifiedProgress setIsStalled:1];

  delegate = [(SUCoreUpdateDownloader *)self delegate];
  LOBYTE(extendedStateQueue) = objc_opt_respondsToSelector();

  if (extendedStateQueue)
  {
    unifiedProgress2 = [(SUCoreUpdateDownloader *)self unifiedProgress];
    v10 = [unifiedProgress2 copy];

    delegateCallBackQueue = [(SUCoreUpdateDownloader *)self delegateCallBackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__SUCoreUpdateDownloader_actionReportDownloadStalled_error___block_invoke;
    block[3] = &unk_27892D478;
    block[4] = self;
    v19 = v10;
    oslog = v10;
    dispatch_async(delegateCallBackQueue, block);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v14 = MEMORY[0x277CCACA8];
      unifiedProgress3 = [(SUCoreUpdateDownloader *)self unifiedProgress];
      v16 = [v14 stringWithFormat:@"delegate does not respond to selector(downloadStalled:) so not reporting progress=%@", unifiedProgress3];
      *buf = 138543618;
      selfCopy = self;
      v22 = 2114;
      v23 = v16;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", buf, 0x16u);
    }
  }

  return 0;
}

void __60__SUCoreUpdateDownloader_actionReportDownloadStalled_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 downloadStalled:*(a1 + 40)];
}

- (int64_t)actionReportUpdateDownloaded:(id)downloaded error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [(SUCoreUpdateDownloader *)self downloadFSM:downloaded];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUCoreUpdateDownloader *)self _verifyNoPendingOperations:@"DOWNLOAD" reason:@"Should have no pending operations: UpdateDownloaded"];
  v7 = objc_alloc(MEMORY[0x277D64488]);
  LODWORD(v8) = 1.0;
  v9 = [v7 initWithPhase:*MEMORY[0x277D64828] isStalled:0 portionComplete:-1 totalWrittenBytes:-1 totalExpectedBytes:v8 remaining:0.0];
  [(SUCoreUpdateDownloader *)self setUnifiedProgress:v9];
  delegate = [(SUCoreUpdateDownloader *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    delegateCallBackQueue = [(SUCoreUpdateDownloader *)self delegateCallBackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__SUCoreUpdateDownloader_actionReportUpdateDownloaded_error___block_invoke;
    block[3] = &unk_27892D478;
    block[4] = self;
    v18 = v9;
    dispatch_async(delegateCallBackQueue, block);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"delegate does not respond to selector(downloaded:) so not reporting progress=%@", v9];
      *buf = 138543618;
      selfCopy = self;
      v21 = 2114;
      v22 = v15;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", buf, 0x16u);
    }
  }

  [(SUCoreUpdateDownloader *)self setShouldReportDownloadFailureIfCanceled:0];

  return 0;
}

void __61__SUCoreUpdateDownloader_actionReportUpdateDownloaded_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 downloaded:*(a1 + 40)];
}

- (void)_reportUpdateFailedToDownload:(id)download
{
  v17 = *MEMORY[0x277D85DE8];
  downloadCopy = download;
  delegate = [(SUCoreUpdateDownloader *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegateCallBackQueue = [(SUCoreUpdateDownloader *)self delegateCallBackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__SUCoreUpdateDownloader__reportUpdateFailedToDownload___block_invoke;
    block[3] = &unk_27892D478;
    block[4] = self;
    v12 = downloadCopy;
    dispatch_async(delegateCallBackQueue, block);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      downloadCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"delegate does not respond to selector(downloadedFailed:) so not reporting error=%@", downloadCopy];
      *buf = 138543618;
      selfCopy = self;
      v15 = 2114;
      v16 = downloadCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", buf, 0x16u);
    }
  }
}

void __56__SUCoreUpdateDownloader__reportUpdateFailedToDownload___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 downloadFailed:*(a1 + 40)];
}

- (int64_t)actionReportUpdateFailedToDownload:(id)download error:(id *)error
{
  downloadCopy = download;
  downloadFSM = [(SUCoreUpdateDownloader *)self downloadFSM];
  extendedStateQueue = [downloadFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUCoreUpdateDownloader *)self _verifyNoPendingOperations:@"DOWNLOAD" reason:@"Should have no pending operations: UpdateFailedToDownload"];
  error = [downloadCopy error];

  [(SUCoreUpdateDownloader *)self _reportUpdateFailedToDownload:error];
  [(SUCoreUpdateDownloader *)self setShouldReportDownloadFailureIfCanceled:0];
  return 0;
}

- (int64_t)actionRemoveUpdate:(id)update error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = [(SUCoreUpdateDownloader *)self downloadFSM:update];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  maControl = [(SUCoreUpdateDownloader *)self maControl];

  if (maControl)
  {
    [(SUCoreUpdateDownloader *)self _trackBegin:@"removeAsset" withIdentifier:@"su"];
    maControl2 = [(SUCoreUpdateDownloader *)self maControl];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __51__SUCoreUpdateDownloader_actionRemoveUpdate_error___block_invoke;
    v28[3] = &unk_27892D228;
    v28[4] = self;
    [maControl2 removeAsset:v28];

    v9 = 0;
  }

  else
  {
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    v9 = 8116;
    v11 = [mEMORY[0x277D643F8] buildError:8116 underlying:0 description:@"unexpected no maControl when tyring to remove SU"];

    [(SUCoreUpdateDownloader *)self _trackAnomaly:@"[REMOVE_SU]" reason:@"unexpected no maControl when tyring to remove SU" result:8116 error:v11];
    downloadFSM = [(SUCoreUpdateDownloader *)self downloadFSM];
    v13 = [[SUCoreUpdateDownloaderParam alloc] initWithError:v11];
    [downloadFSM followupEvent:@"RemoveFailed" withInfo:v13];
  }

  if (![(SUCoreUpdateDownloader *)self shouldDownloadSplat])
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"[Splombo] No need to remove Splat (no Splat)"];
      *buf = 138543618;
      selfCopy2 = self;
      v31 = 2114;
      v32 = v17;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", buf, 0x16u);
    }

    goto LABEL_9;
  }

  maControlSplombo = [(SUCoreUpdateDownloader *)self maControlSplombo];

  if (maControlSplombo)
  {
    [(SUCoreUpdateDownloader *)self _trackBegin:@"removeAsset" withIdentifier:@"splat"];
    oslog = [(SUCoreUpdateDownloader *)self maControlSplombo];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __51__SUCoreUpdateDownloader_actionRemoveUpdate_error___block_invoke_566;
    v27[3] = &unk_27892D228;
    v27[4] = self;
    [oslog removeAsset:v27];
LABEL_9:

    goto LABEL_10;
  }

  mEMORY[0x277D643F8]2 = [MEMORY[0x277D643F8] sharedCore];
  v9 = 8116;
  v23 = [mEMORY[0x277D643F8]2 buildError:8116 underlying:0 description:@"unexpected no maControlSplombo when tyring to remove Splat"];

  [(SUCoreUpdateDownloader *)self _trackAnomaly:@"[REMOVE_SPLAT]" reason:@"unexpected no maControlSplombo when tyring to remove Splat" result:8116 error:v23];
  downloadFSM2 = [(SUCoreUpdateDownloader *)self downloadFSM];
  v25 = [[SUCoreUpdateDownloaderParam alloc] initWithError:v23];
  [downloadFSM2 followupEvent:@"RemoveFailed" withInfo:v25];

LABEL_10:
  if ([(SUCoreUpdateDownloader *)self _isPreSUStagingEnabled])
  {
    [(SUCoreUpdateDownloader *)self _trackBegin:@"stagePurgeAll" withIdentifier:@"presustaging"];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __51__SUCoreUpdateDownloader_actionRemoveUpdate_error___block_invoke_3;
    v26[3] = &unk_27892D228;
    v26[4] = self;
    [MEMORY[0x277D289E0] SUCoreBorder_stagePurgeAll:v26];
  }

  else
  {
    mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
    oslog2 = [mEMORY[0x277D64460]2 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"[PreSUStaging] No need to remove PSUS assets (disabled)"];
      *buf = 138543618;
      selfCopy2 = self;
      v31 = 2114;
      v32 = v20;
      _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", buf, 0x16u);
    }
  }

  return v9;
}

void __51__SUCoreUpdateDownloader_actionRemoveUpdate_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) downloadFSM];
  v5 = [v4 extendedStateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__SUCoreUpdateDownloader_actionRemoveUpdate_error___block_invoke_2;
  v7[3] = &unk_27892D478;
  v7[4] = *(a1 + 32);
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __51__SUCoreUpdateDownloader_actionRemoveUpdate_error___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _trackEnd:@"removeAsset" withIdentifier:@"su" withResult:objc_msgSend(*(a1 + 40) withError:{"code"), *(a1 + 40)}];
  v2 = *(a1 + 40);
  v5 = [*(a1 + 32) downloadFSM];
  if (v2)
  {
    v3 = [[SUCoreUpdateDownloaderParam alloc] initWithError:*(a1 + 40)];
    v4 = @"RemoveFailed";
  }

  else
  {
    v3 = objc_alloc_init(SUCoreUpdateDownloaderParam);
    v4 = @"RemoveSucceeded";
  }

  [v5 postProtectedEvent:v4 withInfo:v3];
}

void __51__SUCoreUpdateDownloader_actionRemoveUpdate_error___block_invoke_566(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) downloadFSM];
  v5 = [v4 extendedStateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__SUCoreUpdateDownloader_actionRemoveUpdate_error___block_invoke_2_567;
  v7[3] = &unk_27892D478;
  v7[4] = *(a1 + 32);
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __51__SUCoreUpdateDownloader_actionRemoveUpdate_error___block_invoke_2_567(uint64_t a1)
{
  [*(a1 + 32) _trackEnd:@"removeAsset" withIdentifier:@"splat" withResult:objc_msgSend(*(a1 + 40) withError:{"code"), *(a1 + 40)}];
  v2 = *(a1 + 40);
  v5 = [*(a1 + 32) downloadFSM];
  if (v2)
  {
    v3 = [[SUCoreUpdateDownloaderParam alloc] initWithError:*(a1 + 40)];
    v4 = @"RemoveFailed";
  }

  else
  {
    v3 = objc_alloc_init(SUCoreUpdateDownloaderParam);
    v4 = @"RemoveSucceeded";
  }

  [v5 postProtectedEvent:v4 withInfo:v3];
}

void __51__SUCoreUpdateDownloader_actionRemoveUpdate_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) downloadFSM];
  v5 = [v4 extendedStateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__SUCoreUpdateDownloader_actionRemoveUpdate_error___block_invoke_4;
  v7[3] = &unk_27892D478;
  v7[4] = *(a1 + 32);
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __51__SUCoreUpdateDownloader_actionRemoveUpdate_error___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _trackEnd:@"stagePurgeAll" withIdentifier:@"presustaging" withResult:objc_msgSend(*(a1 + 40) withError:{"code"), *(a1 + 40)}];
  v2 = *(a1 + 40);
  v5 = [*(a1 + 32) downloadFSM];
  if (v2)
  {
    v3 = [[SUCoreUpdateDownloaderParam alloc] initWithError:*(a1 + 40)];
    v4 = @"RemoveFailed";
  }

  else
  {
    v3 = objc_alloc_init(SUCoreUpdateDownloaderParam);
    v4 = @"RemoveSucceeded";
  }

  [v5 postProtectedEvent:v4 withInfo:v3];
}

- (int64_t)actionCheckRemoveCompleted:(id)completed error:(id *)error
{
  v5 = [(SUCoreUpdateDownloader *)self downloadFSM:completed];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if (![(SUCoreUpdateDownloader *)self numPendingOperations])
  {
    downloadFSM = [(SUCoreUpdateDownloader *)self downloadFSM];
    v8 = objc_alloc_init(SUCoreUpdateDownloaderParam);
    [downloadFSM followupEvent:@"RemoveCompleted" withInfo:v8];
  }

  return 0;
}

- (int64_t)actionReportUpdateRemoved:(id)removed error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [(SUCoreUpdateDownloader *)self downloadFSM:removed];
  extendedStateQueue = [v5 extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUCoreUpdateDownloader *)self _verifyNoPendingOperations:@"REMOVE" reason:@"Should have no pending operations: UpdateRemoved"];
  delegate = [(SUCoreUpdateDownloader *)self delegate];
  LOBYTE(extendedStateQueue) = objc_opt_respondsToSelector();

  if (extendedStateQueue)
  {
    delegateCallBackQueue = [(SUCoreUpdateDownloader *)self delegateCallBackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __58__SUCoreUpdateDownloader_actionReportUpdateRemoved_error___block_invoke;
    block[3] = &unk_27892C8A8;
    block[4] = self;
    dispatch_async(delegateCallBackQueue, block);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    delegateCallBackQueue = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(delegateCallBackQueue, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"delegate does not respond to selector(updateRemoved) so not reporting updateRemoved"];
      *buf = 138543618;
      selfCopy = self;
      v15 = 2114;
      v16 = v10;
      _os_log_impl(&dword_23193C000, delegateCallBackQueue, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", buf, 0x16u);
    }
  }

  return 0;
}

void __58__SUCoreUpdateDownloader_actionReportUpdateRemoved_error___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 updateRemoved];
}

- (int64_t)actionReportUpdateFailedToRemove:(id)remove error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  removeCopy = remove;
  downloadFSM = [(SUCoreUpdateDownloader *)self downloadFSM];
  extendedStateQueue = [downloadFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUCoreUpdateDownloader *)self _verifyNoPendingOperations:@"REMOVE" reason:@"Should have no pending operations: UpdateFailedToRemove"];
  delegate = [(SUCoreUpdateDownloader *)self delegate];
  LOBYTE(extendedStateQueue) = objc_opt_respondsToSelector();

  if (extendedStateQueue)
  {
    delegateCallBackQueue = [(SUCoreUpdateDownloader *)self delegateCallBackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__SUCoreUpdateDownloader_actionReportUpdateFailedToRemove_error___block_invoke;
    block[3] = &unk_27892D478;
    block[4] = self;
    v17 = removeCopy;
    dispatch_async(delegateCallBackQueue, block);
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = MEMORY[0x277CCACA8];
      error = [removeCopy error];
      v14 = [v12 stringWithFormat:@"delegate does not respond to selector(updateRemoveFailed:) so not reporting error=%@", error];
      *buf = 138543618;
      selfCopy = self;
      v20 = 2114;
      v21 = v14;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", buf, 0x16u);
    }
  }

  return 0;
}

void __65__SUCoreUpdateDownloader_actionReportUpdateFailedToRemove_error___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  v2 = [*(a1 + 40) error];
  [v3 updateRemoveFailed:v2];
}

- (void)maDownloadProgress:(id)progress
{
  progressCopy = progress;
  downloadFSM = [(SUCoreUpdateDownloader *)self downloadFSM];
  v5 = [[SUCoreUpdateDownloaderParam alloc] initWithProgress:progressCopy];

  [downloadFSM postEvent:@"DownloadProgress" withInfo:v5];
}

- (void)maDownloadStalled:(id)stalled
{
  stalledCopy = stalled;
  downloadFSM = [(SUCoreUpdateDownloader *)self downloadFSM];
  v5 = [[SUCoreUpdateDownloaderParam alloc] initWithProgress:stalledCopy];

  [downloadFSM postEvent:@"DownloadStalled" withInfo:v5];
}

- (void)maAnomaly:(id)anomaly
{
  anomalyCopy = anomaly;
  -[SUCoreUpdateDownloader _trackAnomaly:reason:result:error:](self, "_trackAnomaly:reason:result:error:", @"[MA_ANOMALY]", @"maAnomaly called", [anomalyCopy code], anomalyCopy);
}

- (int64_t)_psusStageTimeout
{
  v2 = _MSUPreferencesCopyValue();
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFNumberGetTypeID())
    {
      integerValue = [v3 integerValue];

      return integerValue;
    }

    CFRelease(v3);
  }

  return 7200;
}

- (id)_createEvent:(id)event
{
  eventCopy = event;
  downloadFSM = [(SUCoreUpdateDownloader *)self downloadFSM];
  extendedStateQueue = [downloadFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setSafeObject:eventCopy forKey:*MEMORY[0x277D64740]];

  updateUUID = [(SUCoreUpdateDownloader *)self updateUUID];
  [dictionary setSafeObject:updateUUID forKey:*MEMORY[0x277D647B8]];

  v9 = objc_alloc_init(SUCoreEventAugmenter);
  policy = [(SUCoreUpdateDownloader *)self policy];
  [(SUCoreEventAugmenter *)v9 setPolicy:policy];

  updateDescriptor = [(SUCoreUpdateDownloader *)self updateDescriptor];
  [(SUCoreEventAugmenter *)v9 setPrimaryDescriptor:updateDescriptor];

  [(SUCoreEventAugmenter *)v9 augmentEvent:dictionary];

  return dictionary;
}

- (void)_reportPSUSStartedEvent
{
  downloadFSM = [(SUCoreUpdateDownloader *)self downloadFSM];
  extendedStateQueue = [downloadFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v5 = [(SUCoreUpdateDownloader *)self _createEvent:*MEMORY[0x277D64798]];
  [v5 setSafeObject:*MEMORY[0x277D64760] forKey:*MEMORY[0x277D64748]];
  mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
  miscellaneousTaksQueue = [mEMORY[0x277D643F8] miscellaneousTaksQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SUCoreUpdateDownloader__reportPSUSStartedEvent__block_invoke;
  block[3] = &unk_27892C8A8;
  v10 = v5;
  v8 = v5;
  dispatch_async(miscellaneousTaksQueue, block);
}

void __49__SUCoreUpdateDownloader__reportPSUSStartedEvent__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D64448] sharedReporter];
  [v2 sendEvent:*(a1 + 32)];
}

- (void)_reportPSUSFinishedEvent:(id)event
{
  eventCopy = event;
  downloadFSM = [(SUCoreUpdateDownloader *)self downloadFSM];
  extendedStateQueue = [downloadFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v7 = [(SUCoreUpdateDownloader *)self _createEvent:*MEMORY[0x277D64790]];
  v8 = v7;
  if (eventCopy)
  {
    [MEMORY[0x277D64448] augmentEvent:v7 withError:eventCopy];
  }

  else
  {
    [v7 setSafeObject:*MEMORY[0x277D64760] forKey:*MEMORY[0x277D64748]];
  }

  mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
  miscellaneousTaksQueue = [mEMORY[0x277D643F8] miscellaneousTaksQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SUCoreUpdateDownloader__reportPSUSFinishedEvent___block_invoke;
  block[3] = &unk_27892C8A8;
  v13 = v8;
  v11 = v8;
  dispatch_async(miscellaneousTaksQueue, block);
}

void __51__SUCoreUpdateDownloader__reportPSUSFinishedEvent___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D64448] sharedReporter];
  [v2 sendEvent:*(a1 + 32)];
}

- (void)_verifyNoPendingOperations:(id)operations reason:(id)reason
{
  operationsCopy = operations;
  reasonCopy = reason;
  downloadFSM = [(SUCoreUpdateDownloader *)self downloadFSM];
  extendedStateQueue = [downloadFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if ([(SUCoreUpdateDownloader *)self numPendingOperations])
  {
    v9 = operationsCopy;
    if (!operationsCopy)
    {
      v9 = @"UNK_LOC";
    }

    operationsCopy = v9;
    downloadFSM2 = [(SUCoreUpdateDownloader *)self downloadFSM];
    diag = [downloadFSM2 diag];
    [diag trackAnomaly:operationsCopy forReason:reasonCopy withResult:8117 withError:0];
  }
}

- (void)_trackBegin:(id)begin withIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  beginCopy = begin;
  identifierCopy = identifier;
  downloadFSM = [(SUCoreUpdateDownloader *)self downloadFSM];
  extendedStateQueue = [downloadFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  downloadFSM2 = [(SUCoreUpdateDownloader *)self downloadFSM];
  diag = [downloadFSM2 diag];
  _versionedModuleName = [(SUCoreUpdateDownloader *)self _versionedModuleName];
  [diag trackBegin:beginCopy atLevel:1 forModule:_versionedModuleName withIdentifier:identifierCopy];

  [(SUCoreUpdateDownloader *)self setNumPendingOperations:[(SUCoreUpdateDownloader *)self numPendingOperations]+ 1];
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"incremented the number of pending operations (%d): %@ (%@) has begun", -[SUCoreUpdateDownloader numPendingOperations](self, "numPendingOperations"), beginCopy, identifierCopy];
    *buf = 138543618;
    selfCopy = self;
    v18 = 2114;
    v19 = identifierCopy;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", buf, 0x16u);
  }
}

- (void)_trackEnd:(id)end withIdentifier:(id)identifier withResult:(int64_t)result withError:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  endCopy = end;
  identifierCopy = identifier;
  errorCopy = error;
  downloadFSM = [(SUCoreUpdateDownloader *)self downloadFSM];
  extendedStateQueue = [downloadFSM extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  downloadFSM2 = [(SUCoreUpdateDownloader *)self downloadFSM];
  diag = [downloadFSM2 diag];
  _versionedModuleName = [(SUCoreUpdateDownloader *)self _versionedModuleName];
  [diag trackEnd:endCopy atLevel:1 forModule:_versionedModuleName withIdentifier:identifierCopy withResult:result withError:errorCopy];

  if ([(SUCoreUpdateDownloader *)self numPendingOperations]< 1)
  {
    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid numPendingOperations (%d) when %@ (%@) ends", -[SUCoreUpdateDownloader numPendingOperations](self, "numPendingOperations"), endCopy, identifierCopy];
    downloadFSM3 = [(SUCoreUpdateDownloader *)self downloadFSM];
    diag2 = [downloadFSM3 diag];
    [diag2 trackAnomaly:@"[TRACK_END]" forReason:identifierCopy withResult:8117 withError:0];
  }

  else
  {
    [(SUCoreUpdateDownloader *)self setNumPendingOperations:[(SUCoreUpdateDownloader *)self numPendingOperations]- 1];
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    identifierCopy = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(identifierCopy, OS_LOG_TYPE_DEFAULT))
    {
      identifierCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"decremented the number of pending operations (%d): %@ (%@) has ended", -[SUCoreUpdateDownloader numPendingOperations](self, "numPendingOperations"), endCopy, identifierCopy];
      *buf = 138543618;
      selfCopy = self;
      v25 = 2114;
      v26 = identifierCopy2;
      _os_log_impl(&dword_23193C000, identifierCopy, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", buf, 0x16u);
    }
  }
}

- (void)_trackAnomaly:(id)anomaly reason:(id)reason result:(int64_t)result error:(id)error
{
  errorCopy = error;
  reasonCopy = reason;
  anomalyCopy = anomaly;
  downloadFSM = [(SUCoreUpdateDownloader *)self downloadFSM];
  diag = [downloadFSM diag];
  [diag trackAnomaly:anomalyCopy forReason:reasonCopy withResult:result withError:errorCopy];

  delegate = [(SUCoreUpdateDownloader *)self delegate];
  LOBYTE(reasonCopy) = objc_opt_respondsToSelector();

  if (reasonCopy)
  {
    delegateCallBackQueue = [(SUCoreUpdateDownloader *)self delegateCallBackQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __60__SUCoreUpdateDownloader__trackAnomaly_reason_result_error___block_invoke;
    v17[3] = &unk_27892D478;
    v17[4] = self;
    v18 = errorCopy;
    dispatch_async(delegateCallBackQueue, v17);
  }
}

void __60__SUCoreUpdateDownloader__trackAnomaly_reason_result_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 anomaly:*(a1 + 40)];
}

- (BOOL)_isPreSUStagingEnabled
{
  v17 = *MEMORY[0x277D85DE8];
  updateDescriptor = [(SUCoreUpdateDownloader *)self updateDescriptor];
  policy = [(SUCoreUpdateDownloader *)self policy];
  v12 = 0;
  v5 = [SUCoreScan isPreSUStagingEnabledForUpdate:updateDescriptor policy:policy reason:&v12];
  v6 = v12;

  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"disabled";
    if (v5)
    {
      v9 = @"enabled";
    }

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[PreSUStaging] %@: %@", v9, v6];
    *buf = 138543618;
    selfCopy = self;
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", buf, 0x16u);
  }

  return v5;
}

- (BOOL)_shouldStageOptionalPSUSAssets
{
  v24 = *MEMORY[0x277D85DE8];
  updateDescriptor = [(SUCoreUpdateDownloader *)self updateDescriptor];
  preSUStagingOptionalSize = [updateDescriptor preSUStagingOptionalSize];

  if (!preSUStagingOptionalSize)
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (!os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"[PreSUStaging] no optional assets to stage"];
    v20 = 138543618;
    selfCopy5 = self;
    v22 = 2114;
    v23 = v16;
LABEL_16:
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", &v20, 0x16u);

    goto LABEL_17;
  }

  updateDescriptor2 = [(SUCoreUpdateDownloader *)self updateDescriptor];
  enablePreSUStagingForOptionalAssets = [updateDescriptor2 enablePreSUStagingForOptionalAssets];

  if ((enablePreSUStagingForOptionalAssets & 1) == 0)
  {
    mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460]2 oslog];

    if (!os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"[PreSUStaging] staging optional assets is disabled by server (through the update)"];
    v20 = 138543618;
    selfCopy5 = self;
    v22 = 2114;
    v23 = v16;
    goto LABEL_16;
  }

  policy = [(SUCoreUpdateDownloader *)self policy];
  enablePreSUStagingForOptionalAssets2 = [policy enablePreSUStagingForOptionalAssets];

  if ((enablePreSUStagingForOptionalAssets2 & 1) == 0)
  {
    mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460]3 oslog];

    if (!os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"[PreSUStaging] staging optional assets is disabled by policy"];
    v20 = 138543618;
    selfCopy5 = self;
    v22 = 2114;
    v23 = v16;
    goto LABEL_16;
  }

  maxAllowedPreSUStagingOptionalSize = [(SUCoreUpdateDownloader *)self maxAllowedPreSUStagingOptionalSize];
  mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460]4 oslog];

  v12 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
  if (!maxAllowedPreSUStagingOptionalSize)
  {
    if (v12)
    {
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"[PreSUStaging] staging optional assets is disabled because no space is allowed"];
      v20 = 138543618;
      selfCopy5 = self;
      v22 = 2114;
      v23 = v16;
      goto LABEL_16;
    }

LABEL_17:
    v14 = 0;
    goto LABEL_18;
  }

  if (v12)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"[PreSUStaging] should stage optional assets"];
    v20 = 138543618;
    selfCopy5 = self;
    v22 = 2114;
    v23 = v13;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", &v20, 0x16u);
  }

  v14 = 1;
LABEL_18:

  return v14;
}

- (void)_prepareForDownloading
{
  v22 = *MEMORY[0x277D85DE8];
  [(SUCoreUpdateDownloader *)self setShouldReportDownloadFailureIfCanceled:1];
  policy = [(SUCoreUpdateDownloader *)self policy];
  softwareUpdateDownloadPolicy = [policy softwareUpdateDownloadPolicy];
  maxPreSUStagingOptionalSize = [softwareUpdateDownloadPolicy maxPreSUStagingOptionalSize];

  if (maxPreSUStagingOptionalSize < 0 || (-[SUCoreUpdateDownloader updateDescriptor](self, "updateDescriptor"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 preSUStagingOptionalSize], v6, maxPreSUStagingOptionalSize > v7))
  {
    updateDescriptor = [(SUCoreUpdateDownloader *)self updateDescriptor];
    maxPreSUStagingOptionalSize = [updateDescriptor preSUStagingOptionalSize];
  }

  [(SUCoreUpdateDownloader *)self setMaxAllowedPreSUStagingOptionalSize:maxPreSUStagingOptionalSize];
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"[PreSUStaging] using maxAllowedPreSUStagingOptionalSize = %llu", -[SUCoreUpdateDownloader maxAllowedPreSUStagingOptionalSize](self, "maxAllowedPreSUStagingOptionalSize")];
    *buf = 138543618;
    selfCopy = self;
    v20 = 2114;
    v21 = v11;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@", buf, 0x16u);
  }

  [(SUCoreUpdateDownloader *)self setTotalWrittenBytesUpToLastPhase:0];
  [(SUCoreUpdateDownloader *)self setTotalToWriteBytesForPhase:0];
  updateDescriptor2 = [(SUCoreUpdateDownloader *)self updateDescriptor];
  downloadSize = [updateDescriptor2 downloadSize];
  maxAllowedPreSUStagingOptionalSize = [(SUCoreUpdateDownloader *)self maxAllowedPreSUStagingOptionalSize];

  v15 = objc_alloc(MEMORY[0x277D64488]);
  v16 = [v15 initWithPhase:*MEMORY[0x277D64828] isStalled:0 portionComplete:0 totalWrittenBytes:maxAllowedPreSUStagingOptionalSize + downloadSize totalExpectedBytes:0.0 remaining:-1.0];
  [(SUCoreUpdateDownloader *)self setUnifiedProgress:v16];

  v17 = objc_opt_new();
  [(SUCoreUpdateDownloader *)self setProgressHistory:v17];
}

- (void)_skipCurrentOperationFor:(id)for
{
  forCopy = for;
  v6 = [[SUCoreUpdateDownloaderParam alloc] initWithNote:forCopy];

  downloadFSM = [(SUCoreUpdateDownloader *)self downloadFSM];
  [downloadFSM followupEvent:@"OperationSkipped" withInfo:v6];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  _versionedModuleName = [(SUCoreUpdateDownloader *)self _versionedModuleName];
  updateUUID = [(SUCoreUpdateDownloader *)self updateUUID];
  v6 = [v3 stringWithFormat:@"%@(%@)]", _versionedModuleName, updateUUID];

  return v6;
}

- (SUCoreUpdateDownloaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithDelegate:forUpdate:updateUUID:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"init: invalid param, update and updateUUID must be nonnull"];
  v3 = 138543362;
  v4 = v0;
  OUTLINED_FUNCTION_0_4(&dword_23193C000, v1, v2, "[SUCoreUpdateDownloader] %{public}@", &v3);
}

- (void)initWithDelegate:(void *)a1 forUpdate:updateUUID:.cold.2(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"init: invalid udpate descriptor, descriptor type (%ld) invalid", objc_msgSend(a1, "descriptorType")];
  v4 = 138543362;
  v5 = v1;
  OUTLINED_FUNCTION_0_4(&dword_23193C000, v2, v3, "[SUCoreUpdateDownloader] %{public}@", &v4);
}

- (void)initWithDelegate:(void *)a1 forUpdate:updateUUID:.cold.3(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"init: invalid udpate descriptor, descriptor type of splat (%ld) invalid", objc_msgSend(a1, "descriptorType")];
  v4 = 138543362;
  v5 = v1;
  OUTLINED_FUNCTION_0_4(&dword_23193C000, v2, v3, "[SUCoreUpdateDownloader] %{public}@", &v4);
}

- (void)initWithDelegate:forUpdate:updateUUID:.cold.4()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"init: failed to create the FSM"];
  v3 = 138543362;
  v4 = v0;
  OUTLINED_FUNCTION_0_4(&dword_23193C000, v1, v2, "[SUCoreUpdateDownloader] %{public}@", &v3);
}

@end