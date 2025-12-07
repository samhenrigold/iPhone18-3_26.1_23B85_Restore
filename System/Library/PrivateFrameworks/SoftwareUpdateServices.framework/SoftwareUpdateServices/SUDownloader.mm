@interface SUDownloader
+ (id)purgeOptionsForDescriptor:(id)descriptor downloadOptions:(id)options completionQueue:(id)queue;
- (BOOL)_isWithinAutoDownloadWindowForPolicy:(id)policy descriptor:(id)descriptor;
- (BOOL)_reapplyExistingDownloadPolicyIfDownloadable:(BOOL)downloadable;
- (BOOL)_shouldSendUpdatedProgressToDelegate;
- (BOOL)cancelDownload:(BOOL)download userRequested:(BOOL)requested keepDocAssets:(BOOL)assets error:(id *)error;
- (BOOL)isClearingSpace;
- (BOOL)isDownloadHalted;
- (BOOL)isDownloading;
- (BOOL)isForeground;
- (BOOL)isReadyForDownload:(id)download ignoreExistingDownload:(BOOL)existingDownload error:(id *)error;
- (BOOL)isSplatDownload;
- (BOOL)isUpdateDownloaded;
- (BOOL)killDownload:(BOOL)download userRequested:(BOOL)requested keepDocAssets:(BOOL)assets error:(id *)error;
- (BOOL)killDownload:(BOOL)download userRequested:(BOOL)requested keepDocAssets:(BOOL)assets forUpdates:(id)updates error:(id *)error;
- (BOOL)needToWaitForUnlockForLoadingBrainForDescriptor:(id)descriptor;
- (BOOL)updateDownloadOptions:(id)options error:(id *)error;
- (MAAsset)downloadAsset;
- (SUDownload)download;
- (SUDownloader)initWithCore:(id)core;
- (SUManagerCore)core;
- (id)slaVersion;
- (int)_orderForPhase:(id)phase;
- (void)_changeDownloadPhase:(id)phase progress:(float)progress timeRemaining:(double)remaining;
- (void)_downloadFailedWithError:(id)error;
- (void)_downloadFinished:(BOOL)finished;
- (void)_downloadInvalidatedWithUpdates:(id)updates;
- (void)_loadBrainOnUnlockCallback;
- (void)_notePhaseCompleted:(id)completed;
- (void)_setDownloadDiscretionary:(BOOL)discretionary;
- (void)_snapshotProgress;
- (void)_updateLastSavedDownloadsOptions:(id)options;
- (void)_updateNormalizedDownloadProgress;
- (void)_updateNormalizedDownloadProgressAndNotifyDelegate;
- (void)autoUpdateFound:(id)found downloadNow:(BOOL)now;
- (void)cleanupPreviousDownloadState:(BOOL)state;
- (void)dealloc;
- (void)deviceIsUpToDate;
- (void)downloadCompleted:(id)completed informClients:(BOOL)clients;
- (void)downloadProgress:(id)progress;
- (void)endAutoDownloadTasksAndResetState;
- (void)ensureSSOTokenIfNeededForDownload:(id)download;
- (void)loadBrainOnUnlockForDescriptor:(id)descriptor;
- (void)networkChangedFromNetworkType:(int)type toNetworkType:(int)networkType;
- (void)noteAutoDownloadFailedToStart:(id)start withError:(id)error;
- (void)noteAutoDownloadFailedToStartWithError:(id)error;
- (void)notifyClientOfClearingSpace:(BOOL)space;
- (void)operatorBundleChanged;
- (void)resetDownloadStateOnStartup;
- (void)setClearingSpace:(BOOL)space;
- (void)setDownload:(id)download;
- (void)setDownloadAsset:(id)asset;
- (void)setDownloading:(BOOL)downloading;
- (void)setForeground:(BOOL)foreground;
- (void)startDownloadWithOptions:(id)options withResult:(id)result;
- (void)tryAutoDownload;
@end

@implementation SUDownloader

- (SUDownloader)initWithCore:(id)core
{
  coreCopy = core;
  v15.receiver = self;
  v15.super_class = SUDownloader;
  v5 = [(SUDownloader *)&v15 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_core, coreCopy);
    *&v6->_foreground = 0;
    downloadAsset = v6->_downloadAsset;
    v6->_downloadAsset = 0;

    download = v6->_download;
    v6->_download = 0;

    downloadProgressSnapshot = v6->_downloadProgressSnapshot;
    v6->_downloadProgressSnapshot = 0;

    v10 = [MEMORY[0x277CBEAA8] now];
    downloadProgressSnapshotDate = v6->_downloadProgressSnapshotDate;
    v6->_downloadProgressSnapshotDate = v10;

    v12 = +[SUNetworkMonitor sharedInstance];
    [v12 addObserver:v6];

    v6->_goNonDiscretionaryOnDownload = 0;
    brainLoadedForDescriptor = v6->_brainLoadedForDescriptor;
    v6->_brainLoadedForDescriptor = 0;

    v6->_brainLoadAttemptsForDescriptor = 0;
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[SUNetworkMonitor sharedInstance];
  [v3 removeObserver:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v5.receiver = self;
  v5.super_class = SUDownloader;
  [(SUDownloader *)&v5 dealloc];
}

- (BOOL)isDownloading
{
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  return self->_downloading;
}

- (void)setDownloading:(BOOL)downloading
{
  downloadingCopy = downloading;
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (self->_downloading != downloadingCopy)
  {
    self->_downloading = downloadingCopy;
    if (downloadingCopy)
    {
      v7 = +[SUTransactionManager sharedInstance];
      [v7 beginTransaction:@"downloading" keepAlive:1];
    }

    else
    {
      self->_downloadStateResetSinceStartup = 1;
      v7 = +[SUTransactionManager sharedInstance];
      [v7 endTransaction:@"downloading"];
    }
  }
}

- (BOOL)isForeground
{
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  return self->_foreground;
}

- (void)setForeground:(BOOL)foreground
{
  foregroundCopy = foreground;
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (self->_foreground != foregroundCopy)
  {
    self->_foreground = foregroundCopy;
    v14 = @"No";
    if (foregroundCopy)
    {
      v14 = @"Yes";
    }

    SULogDebug(@"Foreground status changed: isForeground? %@", v7, v8, v9, v10, v11, v12, v13, v14);
    if (self->_downloading && self->_foreground)
    {
      SULogDebug(@"Updating download options for foreground status change if necessary.", v15, v16, v17, v18, v19, v20, v21, v22);

      [(SUDownloader *)self _setDownloadDiscretionary:0];
    }
  }
}

- (BOOL)isClearingSpace
{
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  return self->_clearingSpace;
}

- (void)setClearingSpace:(BOOL)space
{
  spaceCopy = space;
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (self->_clearingSpace != spaceCopy)
  {
    self->_clearingSpace = spaceCopy;
    v14 = @"No";
    if (spaceCopy)
    {
      v14 = @"Yes";
    }

    SULogDebug(@"ClearingSpace status changed: %@", v7, v8, v9, v10, v11, v12, v13, v14);
    clearingSpace = self->_clearingSpace;

    [(SUDownloader *)self notifyClientOfClearingSpace:clearingSpace];
  }
}

- (MAAsset)downloadAsset
{
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  downloadAsset = self->_downloadAsset;

  return downloadAsset;
}

- (void)setDownloadAsset:(id)asset
{
  assetCopy = asset;
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  downloadAsset = self->_downloadAsset;
  self->_downloadAsset = assetCopy;
}

- (SUDownload)download
{
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  download = self->_download;

  return download;
}

- (void)setDownload:(id)download
{
  downloadCopy = download;
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  download = self->_download;
  self->_download = downloadCopy;
  v8 = downloadCopy;

  LODWORD(download) = [(SUDownload *)v8 isPromoted];
  if (download)
  {

    [(SUDownloader *)self setGoNonDiscretionaryOnDownload:1];
  }
}

- (void)_setDownloadDiscretionary:(BOOL)discretionary
{
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (!discretionary)
  {
    download = [(SUDownloader *)self download];

    if (download)
    {
      download2 = [(SUDownloader *)self download];
      [download2 setPromoted:1];

      core2 = [(SUDownloader *)self core];
      state = [core2 state];
      lastDownload = [state lastDownload];

      if (lastDownload)
      {
        [lastDownload setPromoted:1];
        core3 = [(SUDownloader *)self core];
        state2 = [core3 state];
        [state2 setLastDownload:lastDownload];

        core4 = [(SUDownloader *)self core];
        state3 = [core4 state];
        [state3 save];
      }
    }
  }

  v16 = self->_downloadAsset;
  v17 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SUDownloader__setDownloadDiscretionary___block_invoke;
  block[3] = &unk_279CAAE40;
  discretionaryCopy = discretionary;
  v20 = v16;
  selfCopy = self;
  v18 = v16;
  dispatch_async(v17, block);
}

void __42__SUDownloader__setDownloadDiscretionary___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a1 + 32);
  if (v10)
  {
    if (([v10 refreshState] & 1) == 0)
    {
      SULogInfo(@"Could not determine state of asset while trying to adjust priority, attempting anyway", v11, v12, v13, v14, v15, v16, v17, v35);
    }

    if ([*(a1 + 32) state] == 4)
    {
      v36 = objc_opt_new();
      [v36 setDiscretionary:*(a1 + 48)];
      if ([*(a1 + 32) configDownloadSync:v36])
      {
        SULogInfo(@"Attempt to change download priority failed", v18, v19, v20, v21, v22, v23, v24, v35);
      }
    }

    else if ((*(a1 + 48) & 1) == 0)
    {
      v25 = *(a1 + 32);
      [v25 state];
      SULogInfo(@"Attempt to change download priority for asset:%@, asset state is %ld, postponing to download start", v26, v27, v28, v29, v30, v31, v32, v25);
      v33 = [*(a1 + 40) core];
      v34 = [v33 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42__SUDownloader__setDownloadDiscretionary___block_invoke_2;
      block[3] = &unk_279CAA708;
      block[4] = *(a1 + 40);
      dispatch_async(v34, block);
    }
  }

  else
  {

    SULogInfo(@"Attempted to change download priority of a nil asset", a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

uint64_t __42__SUDownloader__setDownloadDiscretionary___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  SULogInfo(@"Setting goNonDiscretionaryOnDownload to YES", a2, a3, a4, a5, a6, a7, a8, v11);
  v9 = *(a1 + 32);

  return [v9 setGoNonDiscretionaryOnDownload:1];
}

- (void)resetDownloadStateOnStartup
{
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (self->_downloadStateResetSinceStartup)
  {

    SULogInfo(@"Not resetting download state on start up since it was already reset", v5, v6, v7, v8, v9, v10, v11, v16);
  }

  else
  {
    core2 = [(SUDownloader *)self core];
    state = [core2 state];
    [state setLastDownload:0];

    [(SUDownloader *)self setDownload:0];
    [(SUDownloader *)self setDownloading:0];
    [(SUDownloader *)self setDownloadAsset:0];
    [(SUDownloader *)self setGoNonDiscretionaryOnDownload:0];
    core3 = [(SUDownloader *)self core];
    [core3 clearUnlockCallbacks];
  }
}

- (void)autoUpdateFound:(id)found downloadNow:(BOOL)now
{
  foundCopy = found;
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  humanReadableUpdateName = [foundCopy humanReadableUpdateName];
  SULogInfo(@"Auto scan found update available: %@", v9, v10, v11, v12, v13, v14, v15, humanReadableUpdateName);

  if ([foundCopy isSplatOnly])
  {
    SULogInfo(@"Auto scan found a Splat update; download it now", v16, v17, v18, v19, v20, v21, v22, v50);
    now = 1;
  }

  download = [(SUDownloader *)self download];
  if (download && (v24 = download, -[SUDownloader download](self, "download"), v25 = objc_claimAutoreleasedReturnValue(), [v25 downloadOptions], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "isAutoDownload"), v26, v25, v24, (v27 & 1) == 0))
  {
    download2 = [(SUDownloader *)self download];
    progress = [download2 progress];
    isDone = [progress isDone];
    v41 = @"ing";
    if (isDone)
    {
      v41 = @"ed";
    }

    SULogInfo(@"User initiated update download%@. Skipping auto download", v34, v35, v36, v37, v38, v39, v40, v41);

    v30 = +[SUScheduler sharedInstance];
    [v30 cancelAllAutoDownloadTasks];
  }

  else
  {
    if (now || (+[SUPreferences sharedInstance](SUPreferences, "sharedInstance"), v28 = objc_claimAutoreleasedReturnValue(), v29 = [v28 disableAutoDownloadJitter], v28, (v29 & 1) != 0))
    {
      v30 = 0;
    }

    else
    {
      v30 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:{+[SUUtility randomIntWithMinVal:maxVal:](SUUtility, "randomIntWithMinVal:maxVal:", 0, 3600)}];
      SULogInfo(@"Random jittering enabled for this auto download; will start downloading after %@", v42, v43, v44, v45, v46, v47, v48, v30);
    }

    v49 = +[SUScheduler sharedInstance];
    [v49 scheduleAutoDownloadWithDate:v30 requirePower:0 minimumPowerRquirement:0];

    [(SUDownloader *)self loadBrainOnUnlockForDescriptor:foundCopy];
  }
}

- (BOOL)isReadyForDownload:(id)download ignoreExistingDownload:(BOOL)existingDownload error:(id *)error
{
  v66[1] = *MEMORY[0x277D85DE8];
  downloadCopy = download;
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (!existingDownload && [(SUDownloader *)self isDownloading])
  {
    goto LABEL_5;
  }

  if (![(SUDownloader *)self isClearingSpace])
  {
    core2 = [(SUDownloader *)self core];
    isInstalling = [core2 isInstalling];

    if (isInstalling)
    {
      errorCopy6 = error;
      v19 = 14;
      goto LABEL_18;
    }

    core3 = [(SUDownloader *)self core];
    preferredLastScannedDescriptor = [core3 preferredLastScannedDescriptor];

    if (!preferredLastScannedDescriptor)
    {
      errorCopy6 = error;
      v19 = 3;
      goto LABEL_18;
    }

    descriptor = [downloadCopy descriptor];
    if (!existingDownload)
    {
      descriptor2 = [(SUDownload *)self->_download descriptor];
      v26 = [descriptor2 isEqual:descriptor];

      if (v26)
      {
        SULogInfo(@"Attempted to download update that's already on disk and downloaded.", v27, v28, v29, v30, v31, v32, v33, v64);
        errorCopy5 = error;
        v35 = 41;
LABEL_26:
        [SUUtility assignError:errorCopy5 withCode:v35];
LABEL_27:
        v53 = 0;
LABEL_29:

        goto LABEL_19;
      }
    }

    core4 = [(SUDownloader *)self core];
    state = [core4 state];
    failedPatchBuildVersions = [state failedPatchBuildVersions];
    productBuildVersion = [descriptor productBuildVersion];
    v40 = [failedPatchBuildVersions containsObject:productBuildVersion];

    if ([downloadCopy isAutoDownload])
    {
      prerequisiteBuild = [descriptor prerequisiteBuild];
      v42 = (prerequisiteBuild != 0) & v40;

      if (v42 == 1)
      {
        SULogInfo(@"Auto download attempted to download failed patch descriptor", v43, v44, v45, v46, v47, v48, v49, v64);
        v64 = 0;
        [SUUtility assignError:&v64 withCode:53];
        v50 = v64;
        if (error)
        {
          v65 = @"SUAutoDownloadWillRetry";
          v51 = [MEMORY[0x277CCABB0] numberWithBool:1];
          v66[0] = v51;
          v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:&v65 count:1];
          *error = [SUUtility translateError:v50 withAddedUserInfo:v52];
        }

        goto LABEL_27;
      }
    }

    v55 = +[SUNetworkMonitor sharedInstance];
    if ([v55 isCurrentNetworkTypeCellular])
    {
      isEnabledForCellular = [downloadCopy isEnabledForCellular];

      if ((isEnabledForCellular & 1) == 0)
      {
        errorCopy5 = error;
        v35 = 81;
        goto LABEL_26;
      }
    }

    else
    {
    }

    if (!+[SUUtility isReturnToServiceModeActive])
    {
      v53 = 1;
      goto LABEL_29;
    }

    SULogInfo(@"Not allowing download to start in RRTS mode", v57, v58, v59, v60, v61, v62, v63, v64);
    errorCopy5 = error;
    v35 = 31;
    goto LABEL_26;
  }

  SULogInfo(@"Another download is already clearing space for download", v11, v12, v13, v14, v15, v16, v17, v64);
LABEL_5:
  errorCopy6 = error;
  v19 = 11;
LABEL_18:
  [SUUtility assignError:errorCopy6 withCode:v19];
  v53 = 0;
LABEL_19:

  return v53;
}

- (void)startDownloadWithOptions:(id)options withResult:(id)result
{
  v150 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  resultCopy = result;
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  v147[0] = MEMORY[0x277D85DD0];
  v147[1] = 3221225472;
  v147[2] = __52__SUDownloader_startDownloadWithOptions_withResult___block_invoke;
  v147[3] = &unk_279CAAE18;
  v147[4] = self;
  v10 = resultCopy;
  v148 = v10;
  v129 = MEMORY[0x26D668B30](v147);
  SULogInfo(@"Got download request with download options: %@", v11, v12, v13, v14, v15, v16, v17, optionsCopy);
  descriptor = [(SUDownloadOptions *)optionsCopy descriptor];
  productBuildVersion = [descriptor productBuildVersion];

  if (productBuildVersion)
  {
    selfCopy2 = self;
    core2 = [(SUDownloader *)self core];
    descriptor2 = [(SUDownloadOptions *)optionsCopy descriptor];
    productBuildVersion2 = [descriptor2 productBuildVersion];
    descriptor3 = [(SUDownloadOptions *)optionsCopy descriptor];
    productVersionExtra = [descriptor3 productVersionExtra];
    descriptor4 = [(SUDownloadOptions *)optionsCopy descriptor];
    v34 = [core2 coreDescriptorForBuildVersion:productBuildVersion2 versionExtra:productVersionExtra isSplombo:{objc_msgSend(descriptor4, "isSplombo")}];

    if (optionsCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  selfCopy2 = self;
  v34 = 0;
  if (!optionsCopy)
  {
LABEL_3:
    core3 = [(SUDownloader *)selfCopy2 core];
    preferredLastScannedDescriptor = [core3 preferredLastScannedDescriptor];

    v34 = preferredLastScannedDescriptor;
  }

LABEL_4:
  v37 = v129;
  v38 = v10;
  if (!v34)
  {
    v50 = @"Failed to get the core descriptor for the request";
LABEL_13:
    SULogError(v50, v20, v21, v22, v23, v24, v25, v26, v120);
    v40 = [SUUtility errorWithCode:3];
    (*(v129 + 16))(v129, 0, v40);
    goto LABEL_43;
  }

  v39 = [SUManagerEngine SUDescriptorFromCoreDescriptor:v34];
  if (!v39)
  {
    v50 = @"Failed to get the su descriptor for the request";
    goto LABEL_13;
  }

  v40 = v39;
  getMASoftwareUpdateAsset = [v34 getMASoftwareUpdateAsset];
  if (getMASoftwareUpdateAsset)
  {
    v49 = getMASoftwareUpdateAsset;
    if (optionsCopy)
    {
      [(SUDownloadOptions *)optionsCopy setDescriptor:v40];
    }

    else
    {
      optionsCopy = [[SUDownloadOptions alloc] initWithDescriptor:v40];
    }

    v59 = selfCopy2;
    if ([(SUDownloadOptions *)optionsCopy _clientIsLivabilityd])
    {
      [(SUDownloadOptions *)optionsCopy setDownloadOnly:1];
    }

    v146 = 0;
    v60 = [(SUDownloader *)selfCopy2 isReadyForDownload:optionsCopy ignoreExistingDownload:0 error:&v146];
    v61 = v146;
    if (v60)
    {
      v62 = v34;
      [(SUDownloader *)v59 ensureSSOTokenIfNeededForDownload:optionsCopy];
      [(SUDownloader *)v59 cleanupPreviousDownloadState:0];
      [(SUDownloader *)v59 setDownloading:1];
      v63 = objc_alloc_init(SUDownload);
      v64 = objc_alloc_init(SUOperationProgress);
      [(SUOperationProgress *)v64 setIsDone:0];
      [(SUOperationProgress *)v64 setPhase:@"SUDownloadPhaseStarting"];
      v123 = v64;
      [(SUDownload *)v63 setProgress:v64];
      [(SUDownload *)v63 setDescriptor:v40];
      v130 = v63;
      [(SUDownload *)v63 setDownloadOptions:optionsCopy];
      if (v59->_foreground && [(SUDownloadOptions *)optionsCopy isAutoDownload])
      {
        SULogInfo(@"Starting auto download while client in foreground, go non discretionary once download start", v65, v66, v67, v68, v69, v70, v71, v120);
        [(SUDownloader *)v59 setGoNonDiscretionaryOnDownload:1];
        [(SUDownload *)v63 setPromoted:1];
      }

      else
      {
        [(SUDownloader *)v59 setGoNonDiscretionaryOnDownload:0];
      }

      v124 = v61;
      v126 = v38;
      v127 = optionsCopy;
      [(SUDownloader *)v59 setDownload:v63];
      v125 = v49;
      [(SUDownloader *)v59 setDownloadAsset:v49];
      core4 = [(SUDownloader *)v59 core];
      state = [core4 state];
      [state setLastDownload:v130];

      core5 = [(SUDownloader *)v59 core];
      state2 = [core5 state];
      [state2 save];

      (*(v129 + 16))(v129, 1, 0);
      core6 = [(SUDownloader *)v59 core];
      delegate = [core6 delegate];
      v78 = objc_opt_respondsToSelector();

      if (v78)
      {
        core7 = [(SUDownloader *)v59 core];
        externWorkQueue = [core7 externWorkQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __52__SUDownloader_startDownloadWithOptions_withResult___block_invoke_2;
        block[3] = &unk_279CAA7C0;
        block[4] = v59;
        v145 = v130;
        dispatch_async(externWorkQueue, block);
      }

      v128 = v62;
      v142 = 0u;
      v143 = 0u;
      v140 = 0u;
      v141 = 0u;
      v81 = v59;
      core8 = [(SUDownloader *)v59 core];
      observers = [core8 observers];
      allObjects = [observers allObjects];

      v85 = [allObjects countByEnumeratingWithState:&v140 objects:v149 count:16];
      if (v85)
      {
        v86 = v85;
        v87 = *v141;
        do
        {
          for (i = 0; i != v86; ++i)
          {
            if (*v141 != v87)
            {
              objc_enumerationMutation(allObjects);
            }

            v89 = *(*(&v140 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              core9 = [(SUDownloader *)v81 core];
              externWorkQueue2 = [core9 externWorkQueue];
              v138[0] = MEMORY[0x277D85DD0];
              v138[1] = 3221225472;
              v138[2] = __52__SUDownloader_startDownloadWithOptions_withResult___block_invoke_3;
              v138[3] = &unk_279CAA7C0;
              v138[4] = v89;
              v139 = v130;
              dispatch_async(externWorkQueue2, v138);
            }
          }

          v86 = [allObjects countByEnumeratingWithState:&v140 objects:v149 count:16];
        }

        while (v86);
      }

      optionsCopy = v127;
      activeDownloadPolicy = [(SUDownloadOptions *)v127 activeDownloadPolicy];
      v92 = objc_opt_class();
      SULogInfo(@"Active download policy class: %@", v93, v94, v95, v96, v97, v98, v99, v92);
      v100 = v81;
      [(SUDownloader *)v81 setClearingSpace:1];
      core10 = [(SUDownloader *)v81 core];
      workQueue2 = [core10 workQueue];
      v103 = [SUDownloader purgeOptionsForDescriptor:v40 downloadOptions:v127 completionQueue:workQueue2];

      v104 = +[SUPreferences sharedInstance];
      LOBYTE(core10) = [v104 skipDownload];

      v61 = v124;
      if ((core10 & 1) == 0)
      {
        neededBytes = [v103 neededBytes];
        bundleAttributes = [v128 bundleAttributes];
        v107 = [bundleAttributes objectForKeyedSubscript:@"AssetFormat"];

        if ((!v107 || [v107 isEqualToString:@"StreamingZip"]) && neededBytes >= objc_msgSend(v40, "_unarchiveSize"))
        {
          neededBytes -= [v40 _unarchiveSize];
        }

        [v103 neededBytes];
        [v40 unentitledReserveAmount];
        [v40 unentitledReserveAmount];
        SULogInfo(@"[Space] %s Setting entitled space to %llu (%llu MB) and unentitled to %llu (%llu MB)", v108, v109, v110, v111, v112, v113, v114, "[SUDownloader startDownloadWithOptions:withResult:]");
        v115 = MEMORY[0x277D641E8];
        v116 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:neededBytes];
        v117 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v40, "unentitledReserveAmount")}];
        [v115 cacheDeletePauseReserveSpace:v116 unentitledSpace:v117 withPurpose:@"SUSController-startDownloadWithOptions"];
      }

      v118 = +[SUUtility taskQueue];
      v131[0] = MEMORY[0x277D85DD0];
      v131[1] = 3221225472;
      v131[2] = __52__SUDownloader_startDownloadWithOptions_withResult___block_invoke_4;
      v131[3] = &unk_279CACF18;
      v132 = v103;
      v133 = v100;
      v134 = v40;
      v135 = v127;
      v49 = v125;
      v136 = v125;
      v137 = v128;
      v119 = v103;
      dispatch_async(v118, v131);

      v34 = v128;
      v38 = v126;
      v37 = v129;
    }

    else
    {
      (*(v129 + 16))(v129, 0, v61);
    }
  }

  else
  {
    SULogError(@"assetToDownloadFromLastScan is nil, trying to locally find a matching asset for descriptor:%@", v42, v43, v44, v45, v46, v47, v48, v40);
    SULogError(@"Could not find a matching asset, fail with no update found", v51, v52, v53, v54, v55, v56, v57, v121);
    v58 = [SUUtility errorWithCode:3];
    (*(v129 + 16))(v129, 0, v58);
  }

LABEL_43:
}

void __52__SUDownloader_startDownloadWithOptions_withResult___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (v7)
  {
    v5 = [*(a1 + 32) core];
    [v5 donateSUErrorToBiome:v7];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v7);
  }
}

void __52__SUDownloader_startDownloadWithOptions_withResult___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 delegate];
  [v2 downloadDidStart:*(a1 + 40)];
}

void __52__SUDownloader_startDownloadWithOptions_withResult___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__SUDownloader_startDownloadWithOptions_withResult___block_invoke_5;
  v8[3] = &unk_279CACEF0;
  v7 = *(a1 + 40);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v11 = *(a1 + 72);
  [SUSpace makeRoomForUpdate:v2 completion:v8];
}

void __52__SUDownloader_startDownloadWithOptions_withResult___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  SULogInfo(@"[makeRoom] result = %d, cleanupLevel = %d, error = %@", v8, v9, v10, v11, v12, v13, v14, a2);
  v15 = [*(a1 + 32) core];
  v16 = [v15 state];
  v17 = [MEMORY[0x277CCABB0] numberWithInt:a3];
  [v16 setLastSpaceCleanupLevel:v17];

  v18 = [*(a1 + 32) core];
  v19 = [v18 state];
  [v19 save];

  [*(a1 + 32) setClearingSpace:0];
  if ((a2 & 1) == 0)
  {
    if ([*(a1 + 48) isAutoDownload])
    {
      v71 = [*(a1 + 32) core];
      v72 = [v71 workQueue];
      v108[0] = MEMORY[0x277D85DD0];
      v108[1] = 3221225472;
      v108[2] = __52__SUDownloader_startDownloadWithOptions_withResult___block_invoke_7;
      v108[3] = &unk_279CAA7C0;
      v73 = *(a1 + 40);
      v108[4] = *(a1 + 32);
      v109 = v73;
      dispatch_async(v72, v108);
    }

    SULogInfo(@"Download failed due to insufficient space: %@", v64, v65, v66, v67, v68, v69, v70, v7);
    v107 = 0;
    +[SUUtility assignError:withCode:](SUUtility, "assignError:withCode:", &v107, [v7 code]);
    v25 = v107;
    goto LABEL_12;
  }

  v20 = [*(a1 + 32) core];
  v21 = [v20 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__SUDownloader_startDownloadWithOptions_withResult___block_invoke_6;
  block[3] = &unk_279CAA7C0;
  v22 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v111 = v22;
  dispatch_async(v21, block);

  v23 = *(a1 + 32);
  v24 = *(a1 + 48);
  v106 = 0;
  LOBYTE(v21) = [v23 isReadyForDownload:v24 ignoreExistingDownload:1 error:&v106];
  v25 = v106;
  if ((v21 & 1) == 0)
  {
LABEL_12:
    [*(a1 + 32) _downloadFailedWithError:v25];
    goto LABEL_18;
  }

  v105 = 0;
  v26 = [*(a1 + 48) activeDownloadPolicy];
  v27 = objc_opt_class();
  SULogInfo(@"Active download policy class: %@", v28, v29, v30, v31, v32, v33, v34, v27);
  if ([v26 isDownloadableForCurrentNetworkConditions:&v105 cellularFeesApply:0])
  {
    if ([*(a1 + 48) activeDownloadPolicyType] != 1)
    {
      [*(a1 + 32) endAutoDownloadTasksAndResetState];
    }

    v42 = [*(a1 + 32) core];
    v43 = [*(a1 + 32) core];
    [v42 updateInstallPolicyAutoUpdateEnabled:{objc_msgSend(v43, "isAutoUpdateEnabled")}];

    if ([*(a1 + 32) _reapplyExistingDownloadPolicyIfDownloadable:0])
    {
      v51 = [*(a1 + 32) core];
      [v51 dismissInsufficientDiskSpaceFollowupForUpdate:0 orForce:1];

      v52 = +[SUPreferences sharedInstance];
      v53 = [v52 skipDownload];

      if (v53)
      {
        SULogInfo(@"SUSkipDownload is set, skip the download phase and return YES.", v54, v55, v56, v57, v58, v59, v60, v94);
        v61 = dispatch_time(0, 5000000000);
        v62 = [*(a1 + 32) core];
        v63 = [v62 workQueue];
        v103[0] = MEMORY[0x277D85DD0];
        v103[1] = 3221225472;
        v103[2] = __52__SUDownloader_startDownloadWithOptions_withResult___block_invoke_8;
        v103[3] = &unk_279CAA708;
        v103[4] = *(a1 + 32);
        dispatch_after(v61, v63, v103);
      }

      else
      {
        v77 = [*(a1 + 32) core];
        v78 = [v77 engine];
        [v78 createBrainLoadLockAssertion:&__block_literal_global_21];

        v79 = [SUManagerEngineDownloadDescriptor alloc];
        v98 = *(a1 + 56);
        v99 = v79;
        v97 = [*(a1 + 40) releaseDate];
        v102 = [*(a1 + 32) core];
        v96 = [v102 sessionID];
        v101 = [*(a1 + 32) core];
        v80 = [v101 lastScannedDescriptorScanOptions];
        v95 = *(a1 + 48);
        v81 = [*(a1 + 32) core];
        v82 = [v81 newInstallTonightConfig];
        v83 = *(a1 + 64);
        v84 = [MEMORY[0x277CCABB0] numberWithInt:a3];
        v100 = [(SUManagerEngineDownloadDescriptor *)v99 initWithAsset:v98 releaseDate:v97 sessionID:v96 scanOptions:v80 downloadOptions:v95 installTonightConfig:v82 coreDescriptor:v83 downloadAtPhase:1 cleanupLevel:v84];

        SULogInfo(@"Starting SU download with options: %@", v85, v86, v87, v88, v89, v90, v91, *(a1 + 48));
        v92 = [*(a1 + 32) core];
        v93 = [v92 engine];
        v62 = v100;
        [v93 downloadUpdate:v100];
      }
    }

    else
    {
      SULogInfo(@"_reapplyExistingDownloadPolicyIfDownloadable returned NO. Bailing on download", v44, v45, v46, v47, v48, v49, v50, v94);
      v75 = *(a1 + 32);
      v76 = [SUUtility errorWithCode:31];
      [v75 _downloadFailedWithError:v76];
    }
  }

  else
  {
    SULogInfo(@"Download policy prevents download: %ld", v35, v36, v37, v38, v39, v40, v41, v105);
    v104 = v25;
    [SUUtility assignError:&v104 withCode:v105];
    v74 = v104;

    [*(a1 + 32) _downloadFailedWithError:v74];
    v25 = v74;
  }

LABEL_18:
}

void __52__SUDownloader_startDownloadWithOptions_withResult___block_invoke_6(uint64_t a1)
{
  v2 = [*(a1 + 32) core];
  [v2 dismissInsufficientDiskSpaceFollowupForUpdate:*(a1 + 40) orForce:0];
}

void __52__SUDownloader_startDownloadWithOptions_withResult___block_invoke_7(uint64_t a1)
{
  if (([*(a1 + 32) isDownloading] & 1) == 0 && (objc_msgSend(*(a1 + 32), "isUpdateDownloaded") & 1) == 0)
  {
    v2 = [*(a1 + 32) core];
    [v2 showInsufficientDiskSpaceFollowupForUpdate:*(a1 + 40)];
  }
}

void __52__SUDownloader_startDownloadWithOptions_withResult___block_invoke_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    SULogInfo(@"Failed to create brain load lock assertion: %@", a2, a3, a4, a5, a6, a7, a8, a2);
  }
}

- (void)notifyClientOfClearingSpace:(BOOL)space
{
  core = [(SUDownloader *)self core];
  delegate = [core delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = self->_download;
    core2 = [(SUDownloader *)self core];
    externWorkQueue = [core2 externWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__SUDownloader_notifyClientOfClearingSpace___block_invoke;
    block[3] = &unk_279CAAE40;
    block[4] = self;
    v13 = v8;
    spaceCopy = space;
    v11 = v8;
    dispatch_async(externWorkQueue, block);
  }
}

void __44__SUDownloader_notifyClientOfClearingSpace___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 delegate];
  [v2 clearingSpaceForDownload:*(a1 + 40) clearing:*(a1 + 48)];
}

- (BOOL)_reapplyExistingDownloadPolicyIfDownloadable:(BOOL)downloadable
{
  downloadableCopy = downloadable;
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  downloadOptions = [(SUDownload *)self->_download downloadOptions];
  activeDownloadPolicy = [downloadOptions activeDownloadPolicy];
  isDownloadable = [activeDownloadPolicy isDownloadable];
  if (isDownloadable)
  {
    [downloadOptions setActiveDownloadPolicy:activeDownloadPolicy];
    if (downloadableCopy)
    {
      [(SUDownloader *)self _setDownloadDiscretionary:0];
    }

    [(SUDownloader *)self _updateLastSavedDownloadsOptions:downloadOptions];
  }

  return isDownloadable;
}

- (void)_updateLastSavedDownloadsOptions:(id)options
{
  optionsCopy = options;
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  core2 = [(SUDownloader *)self core];
  state = [core2 state];
  lastDownload = [state lastDownload];

  [lastDownload setDownloadOptions:optionsCopy];
  core3 = [(SUDownloader *)self core];
  state2 = [core3 state];
  [state2 setLastDownload:lastDownload];

  core4 = [(SUDownloader *)self core];
  state3 = [core4 state];
  [state3 save];
}

- (void)_loadBrainOnUnlockCallback
{
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  core2 = [(SUDownloader *)self core];
  [core2 removeUnlockCallback:@"unlockCallbackLoadBrain"];

  loadBrainForDescriptor = [(SUDownloader *)self loadBrainForDescriptor];
  if (!loadBrainForDescriptor)
  {
    SULogInfo(@"%s: No descriptor, skip preloading brain on unlock", v6, v7, v8, v9, v10, v11, v12, "[SUDownloader _loadBrainOnUnlockCallback]");
    goto LABEL_12;
  }

  v14 = +[SUPreferences sharedInstance];
  autoInstallSecurityResponse = [v14 autoInstallSecurityResponse];

  v16 = +[SUPreferences sharedInstance];
  isAutoDownloadDisabled = [v16 isAutoDownloadDisabled];

  if ([loadBrainForDescriptor isSplatOnly])
  {
    if ((autoInstallSecurityResponse & 1) == 0)
    {
      SULogInfo(@"%s: Auto install security response disabled. No need to preload brain", v18, v19, v20, v21, v22, v23, v24, "[SUDownloader _loadBrainOnUnlockCallback]");
      goto LABEL_12;
    }
  }

  else if (isAutoDownloadDisabled)
  {
    SULogInfo(@"%s: Auto download disabled via preferences. No need to preload brain", v18, v19, v20, v21, v22, v23, v24, "[SUDownloader _loadBrainOnUnlockCallback]");
    goto LABEL_12;
  }

  download = [(SUDownloader *)self download];

  if (download)
  {
    SULogInfo(@"%s: Found existing download, skip preloading brain", v26, v27, v28, v29, v30, v31, v32, "[SUDownloader _loadBrainOnUnlockCallback]");
  }

  else if ([loadBrainForDescriptor rampEnabled])
  {
    SULogInfo(@"%s: Ramp is enabled for asset, skip preloading brain", v33, v34, v35, v36, v37, v38, v39, "[SUDownloader _loadBrainOnUnlockCallback]");
  }

  else
  {
    v40 = +[SUNetworkMonitor sharedInstance];
    currentNetworkType = [v40 currentNetworkType];

    if (currentNetworkType == 1)
    {
      core3 = [(SUDownloader *)self core];
      v50 = [core3 coreDescriptorForSUDescriptor:loadBrainForDescriptor];

      v51 = objc_opt_new();
      [v51 setDiscretionary:0];
      [v51 setAllowsCellularAccess:0];
      core4 = [(SUDownloader *)self core];
      isManaged = [core4 isManaged];

      if (isManaged)
      {
        [v51 setSupervised:1];
        productVersion = [v50 productVersion];
        [v51 setRequestedProductVersion:productVersion];
      }

      assetAudienceUUID = [v50 assetAudienceUUID];

      if (assetAudienceUUID)
      {
        assetAudienceUUID2 = [v50 assetAudienceUUID];
        v57 = [assetAudienceUUID2 copy];
        [v51 setLiveAssetAudienceUUID:v57];
      }

      getMASoftwareUpdateAsset = [v50 getMASoftwareUpdateAsset];
      if (!getMASoftwareUpdateAsset)
      {
        core5 = [(SUDownloader *)self core];
        getMASoftwareUpdateAsset = [core5 preferredAssetToDownloadFromLastScan];
      }

      v60 = [objc_alloc(MEMORY[0x277D292C0]) initWithUpdateAsset:getMASoftwareUpdateAsset];
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __42__SUDownloader__loadBrainOnUnlockCallback__block_invoke;
      v63[3] = &unk_279CACF40;
      v63[4] = self;
      v64 = getMASoftwareUpdateAsset;
      v65 = loadBrainForDescriptor;
      v61 = getMASoftwareUpdateAsset;
      [v60 loadUpdateBrainWithMAOptions:v51 progressHandler:v63];
    }

    else
    {
      SULogInfo(@"%s: Skip brain preload when not on wifi", v42, v43, v44, v45, v46, v47, v48, "[SUDownloader _loadBrainOnUnlockCallback]");
      core6 = [(SUDownloader *)self core];
      [core6 addUnlockCallback:sel__loadBrainOnUnlockCallback forKey:@"unlockCallbackLoadBrain"];
    }
  }

LABEL_12:
}

void __42__SUDownloader__loadBrainOnUnlockCallback__block_invoke(id *a1, void *a2, uint64_t a3)
{
  v18 = a2;
  SULogInfo(@"%s: Got brain load progress: %@, error: %@", v5, v6, v7, v8, v9, v10, v11, "[SUDownloader _loadBrainOnUnlockCallback]_block_invoke");
  v12 = [v18 objectForKeyedSubscript:*MEMORY[0x277D28998]];

  v13 = [v12 isEqualToString:*MEMORY[0x277D28988]];
  if (a3 || v13)
  {
    v14 = [a1[4] core];
    v15 = [v14 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__SUDownloader__loadBrainOnUnlockCallback__block_invoke_2;
    block[3] = &unk_279CAA798;
    v16 = a1[5];
    v17 = a1[4];
    v20 = v16;
    v21 = v17;
    v22 = a1[6];
    dispatch_async(v15, block);
  }
}

void __42__SUDownloader__loadBrainOnUnlockCallback__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) attributes];
  v3 = SUCoreBorder_MSUBrainIsLoadable();

  if (v3)
  {
    [*(a1 + 40) setBrainLoadAttemptsForDescriptor:{objc_msgSend(*(a1 + 40), "brainLoadAttemptsForDescriptor") + 1}];
    if ([*(a1 + 40) brainLoadAttemptsForDescriptor] < 5)
    {
      [*(a1 + 40) brainLoadAttemptsForDescriptor];
      SULogInfo(@"%s: brain is not loaded on attempt %lu, add unlock callback", v18, v19, v20, v21, v22, v23, v24, "[SUDownloader _loadBrainOnUnlockCallback]_block_invoke_2");
      v25 = [*(a1 + 40) core];
      [v25 addUnlockCallback:sel__loadBrainOnUnlockCallback forKey:@"unlockCallbackLoadBrain"];
    }

    else
    {
      SULogInfo(@"%s: brain is not loaded, but reached max attempts", v4, v5, v6, v7, v8, v9, v10, "[SUDownloader _loadBrainOnUnlockCallback]_block_invoke_2");
    }
  }

  else
  {
    [*(a1 + 40) setBrainLoadedForDescriptor:*(a1 + 48)];
    [*(a1 + 40) setLoadBrainForDescriptor:0];
    SULogInfo(@"%s: brain is loaded", v11, v12, v13, v14, v15, v16, v17, "[SUDownloader _loadBrainOnUnlockCallback]_block_invoke_2");
  }
}

- (void)loadBrainOnUnlockForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (descriptorCopy)
  {
    brainLoadedForDescriptor = [(SUDownloader *)self brainLoadedForDescriptor];
    v14 = [brainLoadedForDescriptor isEqual:descriptorCopy];

    if (v14)
    {
      SULogInfo(@"%s: Already loaded brain for this descriptor. No need to preload brain", v15, v16, v17, v18, v19, v20, v21, "[SUDownloader loadBrainOnUnlockForDescriptor:]");
    }

    else
    {
      [(SUDownloader *)self setLoadBrainForDescriptor:descriptorCopy];
      [(SUDownloader *)self setBrainLoadAttemptsForDescriptor:0];
      [(SUDownloader *)self _loadBrainOnUnlockCallback];
    }
  }

  else
  {
    SULogInfo(@"%s: No descriptor, skip preloading brain", v6, v7, v8, v9, v10, v11, v12, "[SUDownloader loadBrainOnUnlockForDescriptor:]");
  }
}

- (BOOL)needToWaitForUnlockForLoadingBrainForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (!descriptorCopy)
  {
    SULogInfo(@"%s: No descriptor, skip loading brain", v7, v8, v9, v10, v11, v12, v13, "[SUDownloader needToWaitForUnlockForLoadingBrainForDescriptor:]");
    goto LABEL_5;
  }

  brainLoadedForDescriptor = [(SUDownloader *)self brainLoadedForDescriptor];
  v15 = [brainLoadedForDescriptor isEqual:descriptorCopy];

  if (!v15)
  {
    core2 = [(SUDownloader *)self core];
    v25 = [core2 coreDescriptorForSUDescriptor:descriptorCopy];
    getMASoftwareUpdateAsset = [v25 getMASoftwareUpdateAsset];

    if (!getMASoftwareUpdateAsset)
    {
      core3 = [(SUDownloader *)self core];
      getMASoftwareUpdateAsset = [core3 preferredAssetToDownloadFromLastScan];
    }

    attributes = [getMASoftwareUpdateAsset attributes];
    v29 = SUCoreBorder_MSUBrainIsLoadable();

    if (v29)
    {
      v37 = +[SUKeybagInterface sharedInstance];
      isPasscodeLocked = [v37 isPasscodeLocked];

      if (isPasscodeLocked)
      {
        v23 = 1;
LABEL_14:

        goto LABEL_15;
      }

      v39 = @"%s: device is not locked, should be able to load brain";
    }

    else
    {
      v39 = @"%s: brain is loadable";
    }

    SULogInfo(v39, v30, v31, v32, v33, v34, v35, v36, "[SUDownloader needToWaitForUnlockForLoadingBrainForDescriptor:]");
    v23 = 0;
    goto LABEL_14;
  }

  SULogInfo(@"%s: Already loaded brain for this descriptor. No need to reload brain", v16, v17, v18, v19, v20, v21, v22, "[SUDownloader needToWaitForUnlockForLoadingBrainForDescriptor:]");
LABEL_5:
  v23 = 0;
LABEL_15:

  return v23;
}

- (void)tryAutoDownload
{
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  core2 = [(SUDownloader *)self core];
  updateToAutoDownload = [core2 updateToAutoDownload];

  if (!updateToAutoDownload)
  {
    v16 = @"Unable to autodownload with nil download descriptor";
    goto LABEL_5;
  }

  core3 = [(SUDownloader *)self core];
  isInstallTonightScheduled = [core3 isInstallTonightScheduled];

  if (!isInstallTonightScheduled)
  {
    isSplatOnly = [updateToAutoDownload isSplatOnly];
    v18 = +[SUPreferences sharedInstance];
    v19 = v18;
    if (isSplatOnly)
    {
      autoInstallSecurityResponse = [v18 autoInstallSecurityResponse];

      if ((autoInstallSecurityResponse & 1) == 0)
      {
        v16 = @"Auto install security response disabled. Skipping auto download attempt";
        goto LABEL_5;
      }
    }

    else
    {
      isAutoDownloadDisabled = [v18 isAutoDownloadDisabled];

      if (isAutoDownloadDisabled)
      {
        v16 = @"Auto download disabled via preferences. Skipping auto download attempt";
        goto LABEL_5;
      }
    }

    v22 = +[SUNetworkMonitor sharedInstance];
    currentNetworkType = [v22 currentNetworkType];

    if (currentNetworkType != 1)
    {
      v16 = @"Auto download only allowed over wifi";
      goto LABEL_5;
    }

    assetID = [updateToAutoDownload assetID];
    core4 = [(SUDownloader *)self core];
    state = [core4 state];
    lastDeletedSUAssetID = [state lastDeletedSUAssetID];
    if ([assetID isEqualToString:lastDeletedSUAssetID])
    {
      v28 = +[SUPreferences sharedInstance];
      autoDownloadDeletedBuild = [v28 autoDownloadDeletedBuild];

      if ((autoDownloadDeletedBuild & 1) == 0)
      {
        v16 = @"Attempting to auto-download previously deleted update. Skipping auto downlaod attempt";
        goto LABEL_5;
      }
    }

    else
    {
    }

    if ([updateToAutoDownload rampEnabled])
    {
      v16 = @"Ramp is enabled for asset. Skipping auto downlaod attempt";
      goto LABEL_5;
    }

    v30 = [[SUAutoDownloadPolicy alloc] initWithDescriptor:updateToAutoDownload];
    if (![(SUDefaultDownloadPolicy *)v30 isDownloadable])
    {
      SULogInfo(@"SUAutoDownloadPolicy prevents SU asset download: %@", v31, v32, v33, v34, v35, v36, v37, v30);
      v54 = [SUUtility errorWithCode:31];
      [(SUDownloader *)self noteAutoDownloadFailedToStart:updateToAutoDownload withError:v54];
LABEL_25:

LABEL_36:
      goto LABEL_6;
    }

    core5 = [(SUDownloader *)self core];
    download = [core5 download];
    descriptor = [download descriptor];
    v41 = [updateToAutoDownload isEqual:descriptor];

    if (v41)
    {
      core6 = [(SUDownloader *)self core];
      download2 = [core6 download];
      progress = [download2 progress];
      isDone = [progress isDone];

      if (isDone)
      {
        v53 = @"Background scan found build already downloaded; Skipping auto downlaod attempt";
LABEL_35:
        SULogInfo(v53, v46, v47, v48, v49, v50, v51, v52, v92);
        goto LABEL_36;
      }
    }

    v55 = [(SUDownloader *)self _isWithinAutoDownloadWindowForPolicy:v30 descriptor:updateToAutoDownload];
    if (v55)
    {
      SULogInfo(@"%s: Scheduling a new auto download in 4 hours in case this one fails", v46, v47, v48, v49, v50, v51, v52, "[SUDownloader tryAutoDownload]");
      v56 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:14400.0];
      v57 = +[SUPreferences sharedInstance];
      disableAutoDownloadJitter = [v57 disableAutoDownloadJitter];

      if ((disableAutoDownloadJitter & 1) == 0)
      {
        v59 = [v56 dateByAddingTimeInterval:{+[SUUtility randomIntWithMinVal:maxVal:](SUUtility, "randomIntWithMinVal:maxVal:", 0, 1800)}];

        v93 = [SUUtility prettyPrintDate:v59];
        SULogInfo(@"%s: Random jittering enabled to retry the auto download; will retry after %@", v60, v61, v62, v63, v64, v65, v66, "[SUDownloader tryAutoDownload]");

        v56 = v59;
      }

      v67 = +[SUScheduler sharedInstance];
      [v67 scheduleAutoDownloadWithDate:v56 requirePower:0 minimumPowerRquirement:0];
    }

    if (v41)
    {
      v53 = @"Background scan found build already downloading; Skipping auto downlaod attempt";
      goto LABEL_35;
    }

    if (-[SUDownloader isDownloading](self, "isDownloading") || (-[SUDownloader core](self, "core"), v68 = objc_claimAutoreleasedReturnValue(), v69 = [v68 isInstalling], v68, v69))
    {
      v53 = @"Currently downloading or installing. Skipping auto download attempt";
      goto LABEL_35;
    }

    core7 = [(SUDownloader *)self core];
    productBuildVersion = [updateToAutoDownload productBuildVersion];
    v54 = [core7 fullyUnrampedDateForBuildVersion:productBuildVersion];

    if (SUHasEnoughBatteryForAutoDownloadForDescriptor(updateToAutoDownload, v54))
    {
      if (v55)
      {
        if ([(SUDownloader *)self needToWaitForUnlockForLoadingBrainForDescriptor:updateToAutoDownload])
        {
          v79 = @"We can't load the brain now, skipping auto download attempt";
LABEL_42:
          SULogInfo(v79, v72, v73, v74, v75, v76, v77, v78, v92);
          goto LABEL_25;
        }

        v81 = +[SUTransactionManager sharedInstance];
        [v81 beginTransaction:@"auto-tryDownload"];
        SULogInfo(@"Attempting to autodownload...", v82, v83, v84, v85, v86, v87, v88, v92);
        v80 = [[SUDownloadOptions alloc] initWithDescriptor:updateToAutoDownload];
        [(SUDownloadOptions *)v80 setAutoDownload:1];
        [(SUDownloadOptions *)v80 setActiveDownloadPolicyType:1];
        v89 = +[SUState currentState];
        date = [MEMORY[0x277CBEAA8] date];
        [v89 setLastAutoDownloadDate:date];

        [(SUDownloadOptions *)v80 setClientName:@"com.apple.softwareupdateservicesd.autodownload"];
        v94[0] = MEMORY[0x277D85DD0];
        v94[1] = 3221225472;
        v94[2] = __31__SUDownloader_tryAutoDownload__block_invoke;
        v94[3] = &unk_279CACF68;
        v94[4] = self;
        v95 = updateToAutoDownload;
        v96 = v81;
        v91 = v81;
        [(SUDownloader *)self startDownloadWithOptions:v80 withResult:v94];
      }

      else
      {
        SULogInfo(@"No longer in auto download window. No longer attempting auto download for this update", v72, v73, v74, v75, v76, v77, v78, v92);
        v80 = [SUUtility autoDownloadExpiredError:0];
        [(SUDownloader *)self noteAutoDownloadFailedToStart:updateToAutoDownload withError:v80];
      }

      goto LABEL_25;
    }

    v79 = @"Auto-download power policy not satisfied. Skipping auto download attempt";
    goto LABEL_42;
  }

  v16 = @"There is a tonight activity scheduled. Skipping auto download attempt";
LABEL_5:
  SULogInfo(v16, v7, v8, v9, v10, v11, v12, v13, v92);
LABEL_6:
}

void __31__SUDownloader_tryAutoDownload__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) core];
  v7 = [v6 workQueue];
  dispatch_assert_queue_V2(v7);

  if ((a2 & 1) == 0)
  {
    if (!v5)
    {
      v5 = [SUUtility errorWithCode:-1];
    }

    if ([v5 code] != 41)
    {
      if ([v5 code] == 53)
      {
        v15 = dispatch_time(0, 3600000000000);
        v16 = [*(a1 + 32) core];
        v17 = [v16 workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __31__SUDownloader_tryAutoDownload__block_invoke_2;
        block[3] = &unk_279CAA708;
        block[4] = *(a1 + 32);
        dispatch_after(v15, v17, block);
      }

      SULogInfo(@"tryAutoDownload: Error starting autodownload: %@", v8, v9, v10, v11, v12, v13, v14, v5);
      [*(a1 + 32) noteAutoDownloadFailedToStart:*(a1 + 40) withError:v5];
    }
  }

  [*(a1 + 48) endTransaction:@"auto-tryDownload"];
}

void __31__SUDownloader_tryAutoDownload__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) core];
  [v1 autoScanAndDownloadIfAvailable:0 withResult:0];
}

- (void)endAutoDownloadTasksAndResetState
{
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  SULogInfo(@"Ending/clearing any oustanding autodownload tasks and state", v4, v5, v6, v7, v8, v9, v10, v11);
  v12 = +[SUScheduler sharedInstance];
  [v12 cancelAllAutoDownloadTasks];
}

- (BOOL)updateDownloadOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (!self->_downloadAsset || (download = self->_download) == 0)
  {
    errorCopy2 = error;
    v27 = 3;
LABEL_14:
    [SUUtility assignError:errorCopy2 withCode:v27];
    v25 = 0;
    goto LABEL_15;
  }

  if (!optionsCopy)
  {
    errorCopy2 = error;
    v27 = 22;
    goto LABEL_14;
  }

  downloadOptions = [(SUDownload *)download downloadOptions];
  if ([downloadOptions isAutoDownload] && objc_msgSend(optionsCopy, "activeDownloadPolicyType") != 1 || objc_msgSend(downloadOptions, "isAutoDownload") && (objc_msgSend(optionsCopy, "isAutoDownload") & 1) == 0)
  {
    [(SUDownloader *)self endAutoDownloadTasksAndResetState];
    if (([downloadOptions isEqual:optionsCopy] & 1) == 0)
    {
      [(SUDownloader *)self _setDownloadDiscretionary:0];
    }
  }

  [(SUDownload *)self->_download setDownloadOptions:optionsCopy];
  SULogInfo(@"Download options changed from: %@ \nto:\n %@", v11, v12, v13, v14, v15, v16, v17, downloadOptions);
  core2 = [(SUDownloader *)self core];
  delegate = [core2 delegate];
  v20 = objc_opt_respondsToSelector();

  if (v20)
  {
    v21 = self->_download;
    core3 = [(SUDownloader *)self core];
    externWorkQueue = [core3 externWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__SUDownloader_updateDownloadOptions_error___block_invoke;
    block[3] = &unk_279CAA7C0;
    block[4] = self;
    v30 = v21;
    v24 = v21;
    dispatch_async(externWorkQueue, block);
  }

  [(SUDownloader *)self _updateLastSavedDownloadsOptions:optionsCopy];

  v25 = 1;
LABEL_15:

  return v25;
}

void __44__SUDownloader_updateDownloadOptions_error___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 delegate];
  [v2 downloadProgressDidChange:*(a1 + 40)];
}

- (void)noteAutoDownloadFailedToStart:(id)start withError:(id)error
{
  startCopy = start;
  errorCopy = error;
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(SUDownloader *)self endAutoDownloadTasksAndResetState];
  SULogInfo(@"Sending autodownload did fail to start notification to clients.", v10, v11, v12, v13, v14, v15, v16, v22);
  core2 = [(SUDownloader *)self core];
  delegate = [core2 delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    core3 = [(SUDownloader *)self core];
    externWorkQueue = [core3 externWorkQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__SUDownloader_noteAutoDownloadFailedToStart_withError___block_invoke;
    block[3] = &unk_279CAA798;
    block[4] = self;
    v24 = startCopy;
    v25 = errorCopy;
    dispatch_async(externWorkQueue, block);
  }
}

void __56__SUDownloader_noteAutoDownloadFailedToStart_withError___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 delegate];
  [v2 automaticDownloadDidFailToStartForNewUpdateAvailable:*(a1 + 40) withError:*(a1 + 48)];
}

- (void)noteAutoDownloadFailedToStartWithError:(id)error
{
  errorCopy = error;
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  descriptor = [(SUDownload *)self->_download descriptor];
  [(SUDownloader *)self noteAutoDownloadFailedToStart:descriptor withError:errorCopy];
}

- (void)deviceIsUpToDate
{
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  v5 = +[SUScheduler sharedInstance];
  [v5 cancelAllAutoDownloadTasks];

  downloadAsset = self->_downloadAsset;
  if (downloadAsset && (![(MAAsset *)downloadAsset refreshState]|| [(MAAsset *)self->_downloadAsset state]== 3 || [(MAAsset *)self->_downloadAsset isDownloading]))
  {
    SULogInfo(@"Purging SU asset because server says device is up to date", v7, v8, v9, v10, v11, v12, v13, v17);
    core2 = [(SUDownloader *)self core];
    [core2 clearKeybagStash];

    core3 = [(SUDownloader *)self core];
    engine = [core3 engine];
    [engine removeUpdateKeepingDocAssets:0];

    [(SUDownloader *)self cleanupPreviousDownloadState:1];
  }
}

- (BOOL)isDownloadHalted
{
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (![(SUDownloader *)self isDownloading])
  {
    return 0;
  }

  progress = [(SUDownload *)self->_download progress];
  phase = [progress phase];
  if (SUDownloadPhaseIsHalted(phase))
  {
    IsStalled = 1;
  }

  else
  {
    progress2 = [(SUDownload *)self->_download progress];
    phase2 = [progress2 phase];
    IsStalled = SUDownloadPhaseIsStalled(phase2);
  }

  return IsStalled;
}

- (BOOL)isUpdateDownloaded
{
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  progress = [(SUDownload *)self->_download progress];
  phase = [progress phase];
  if ([phase isEqualToString:@"SUDownloadPhasePreparingForInstallation"])
  {
    progress2 = [(SUDownload *)self->_download progress];
    isDone = [progress2 isDone];
  }

  else
  {
    isDone = 0;
  }

  return isDone;
}

- (BOOL)isSplatDownload
{
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  download = [(SUDownloader *)self download];
  descriptor = [download descriptor];
  LOBYTE(workQueue) = [descriptor updateType] == 4;

  return workQueue;
}

- (BOOL)cancelDownload:(BOOL)download userRequested:(BOOL)requested keepDocAssets:(BOOL)assets error:(id *)error
{
  assetsCopy = assets;
  requestedCopy = requested;
  downloadCopy = download;
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  [SUUtility setCacheable:1];
  if ([(SUDownloader *)self isDownloading])
  {

    return [(SUDownloader *)self killDownload:downloadCopy userRequested:requestedCopy keepDocAssets:assetsCopy error:error];
  }

  else
  {
    [SUUtility assignError:error withCode:12];
    return 0;
  }
}

- (BOOL)killDownload:(BOOL)download userRequested:(BOOL)requested keepDocAssets:(BOOL)assets error:(id *)error
{
  assetsCopy = assets;
  requestedCopy = requested;
  downloadCopy = download;
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  return [(SUDownloader *)self killDownload:downloadCopy userRequested:requestedCopy keepDocAssets:assetsCopy forUpdates:0 error:error];
}

- (BOOL)killDownload:(BOOL)download userRequested:(BOOL)requested keepDocAssets:(BOOL)assets forUpdates:(id)updates error:(id *)error
{
  assetsCopy = assets;
  requestedCopy = requested;
  downloadCopy = download;
  v40[2] = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (!self->_downloadAsset || !self->_download)
  {
    errorCopy3 = error;
    v18 = 3;
    goto LABEL_6;
  }

  core2 = [(SUDownloader *)self core];
  isInstalling = [core2 isInstalling];

  if (isInstalling)
  {
    errorCopy3 = error;
    v18 = 14;
LABEL_6:
    [SUUtility assignError:errorCopy3 withCode:v18];
    v19 = 0;
    goto LABEL_7;
  }

  core3 = [(SUDownloader *)self core];
  isInstalled = [core3 isInstalled];

  if (isInstalled)
  {
    errorCopy3 = error;
    v18 = 42;
    goto LABEL_6;
  }

  isDownloading = [(SUDownloader *)self isDownloading];
  core4 = [(SUDownloader *)self core];
  engine = [core4 engine];
  [engine removeUpdateKeepingDocAssets:assetsCopy];

  if (requestedCopy)
  {
    core5 = [(SUDownloader *)self core];
    state = [core5 state];
    descriptor = [(SUDownload *)self->_download descriptor];
    assetID = [descriptor assetID];
    [state setLastDeletedSUAssetID:assetID];
  }

  downloadOptions = [(SUDownload *)self->_download downloadOptions];
  isAutoDownload = [downloadOptions isAutoDownload];

  if (isAutoDownload)
  {
    [(SUDownloader *)self endAutoDownloadTasksAndResetState];
  }

  core6 = [(SUDownloader *)self core];
  [core6 clearKeybagStash];

  if (isDownloading)
  {
    v39[0] = @"SUUserRequested";
    v33 = [MEMORY[0x277CCABB0] numberWithBool:requestedCopy];
    v40[0] = v33;
    v39[1] = @"SUNotifyUser";
    v34 = [MEMORY[0x277CCABB0] numberWithBool:downloadCopy];
    v40[1] = v34;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];

    v36 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.softwareupdateservices.errors" code:16 userInfo:v35];
    [(SUDownloader *)self _downloadFailedWithError:v36];
  }

  else
  {
    [(SUDownloader *)self _downloadInvalidatedWithUpdates:updatesCopy];
  }

  core7 = [(SUDownloader *)self core];
  descriptor2 = [(SUDownload *)self->_download descriptor];
  [core7 dismissInsufficientDiskSpaceFollowupForUpdate:descriptor2 orForce:0];

  v19 = 1;
LABEL_7:

  return v19;
}

- (BOOL)_isWithinAutoDownloadWindowForPolicy:(id)policy descriptor:(id)descriptor
{
  policyCopy = policy;
  descriptorCopy = descriptor;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    date = [MEMORY[0x277CBEAA8] date];
    core = [(SUDownloader *)self core];
    productBuildVersion = [descriptorCopy productBuildVersion];
    v11 = [core discoveryDateForBuildVersion:productBuildVersion];
    v12 = [policyCopy computAutoDownloadEndDateFromDate:v11];

    if (v12)
    {
      v13 = [v12 laterDate:date];
      v14 = v13 == v12;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
    date = 0;
  }

  return v14;
}

- (void)_changeDownloadPhase:(id)phase progress:(float)progress timeRemaining:(double)remaining
{
  phaseCopy = phase;
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (phaseCopy && [(SUDownloader *)self isDownloading])
  {
    progress = [(SUDownload *)self->_download progress];
    phase = [progress phase];
    if (([phase isEqualToString:phaseCopy] & 1) == 0)
    {
      SULogInfo(@"Software update download phase changed from %@ to %@.", v12, v13, v14, v15, v16, v17, v18, phase);
      [progress setPercentComplete:0.0];
      [progress setPhase:phaseCopy];
    }

    if (progress > 0.001 || (SUDownloadPhaseIsFetchingAnything(phaseCopy, 1) & 1) == 0)
    {
      [progress setPercentComplete:{COERCE_DOUBLE(COERCE_UNSIGNED_INT(fminf(fmaxf(progress, 0.0), 1.0)))}];
    }

    remainingCopy = -1.0;
    if (remaining != 0.0)
    {
      remainingCopy = remaining;
    }

    [progress setTimeRemaining:remainingCopy];
    downloadOptions = [(SUDownload *)self->_download downloadOptions];
    if ([downloadOptions isAutoDownload])
    {
      downloadOptions2 = [(SUDownload *)self->_download downloadOptions];
      if ([downloadOptions2 activeDownloadPolicyType] == 1 && -[SUDownloader isDownloadHalted](self, "isDownloadHalted"))
      {
        downloadOptions3 = [(SUDownload *)self->_download downloadOptions];
        activeDownloadPolicy = [downloadOptions3 activeDownloadPolicy];
        descriptor = [(SUDownload *)self->_download descriptor];
        v25 = [(SUDownloader *)self _isWithinAutoDownloadWindowForPolicy:activeDownloadPolicy descriptor:descriptor];

        if (!v25)
        {
          SULogDebug(@"Download halted after wifi window; attempting to cancel download silently.", v26, v27, v28, v29, v30, v31, v32, v35);
          if ([(SUDownloader *)self cancelDownload:0 userRequested:0 keepDocAssets:1 error:0])
          {
            descriptor2 = [(SUDownload *)self->_download descriptor];
            v34 = [SUUtility autoDownloadExpiredError:0];
            [(SUDownloader *)self noteAutoDownloadFailedToStart:descriptor2 withError:v34];

LABEL_19:
            goto LABEL_20;
          }
        }

LABEL_18:
        [(SUDownloader *)self _updateNormalizedDownloadProgressAndNotifyDelegate];
        goto LABEL_19;
      }
    }

    goto LABEL_18;
  }

LABEL_20:
}

- (void)_notePhaseCompleted:(id)completed
{
  completedCopy = completed;
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  progress = [(SUDownload *)self->_download progress];
  [progress setPhase:completedCopy];
  LODWORD(v7) = 1.0;
  [progress setPercentComplete:v7];
  [progress setTimeRemaining:0.0];
  LODWORD(core) = [completedCopy isEqualToString:@"SUDownloadPhasePreparingForInstallation"];

  if (core)
  {
    [progress setIsDone:1];
  }

  [(SUDownloader *)self _updateNormalizedDownloadProgress];
  core2 = [(SUDownloader *)self core];
  state = [core2 state];
  [state setLastDownload:self->_download];

  core3 = [(SUDownloader *)self core];
  state2 = [core3 state];
  [state2 save];

  phase = [progress phase];
  SULogInfo(@"Download %@ phase completed.", v13, v14, v15, v16, v17, v18, v19, phase);
}

- (void)_updateNormalizedDownloadProgressAndNotifyDelegate
{
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (self->_download)
  {
    [(SUDownloader *)self _updateNormalizedDownloadProgress];
    core2 = [(SUDownloader *)self core];
    delegate = [core2 delegate];
    if (objc_opt_respondsToSelector())
    {
      _shouldSendUpdatedProgressToDelegate = [(SUDownloader *)self _shouldSendUpdatedProgressToDelegate];

      if (_shouldSendUpdatedProgressToDelegate)
      {
        [(SUDownloader *)self _snapshotProgress];
        v7 = self->_download;
        core3 = [(SUDownloader *)self core];
        externWorkQueue = [core3 externWorkQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __66__SUDownloader__updateNormalizedDownloadProgressAndNotifyDelegate__block_invoke;
        block[3] = &unk_279CAA7C0;
        block[4] = self;
        v13 = v7;
        v10 = v7;
        dispatch_async(externWorkQueue, block);
      }
    }

    else
    {
    }
  }
}

void __66__SUDownloader__updateNormalizedDownloadProgressAndNotifyDelegate__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 delegate];
  [v2 downloadProgressDidChange:*(a1 + 40)];
}

- (BOOL)_shouldSendUpdatedProgressToDelegate
{
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  v5 = self->_downloadProgressSnapshot;
  progress = [(SUDownload *)self->_download progress];
  [progress normalizedPercentComplete];
  if (v7 < 1.0 && (-[SUOperationProgress phase](v5, "phase"), v8 = objc_claimAutoreleasedReturnValue(), [progress phase], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToString:", v9), v9, v8, v10) && (-[SUOperationProgress percentComplete](v5, "percentComplete"), v12 = v11, objc_msgSend(progress, "percentComplete"), (v13 - v12) < 0.01))
  {
    if ([(SUDownloader *)self isForeground])
    {
      v14 = 10.0;
    }

    else
    {
      v14 = 60.0;
    }

    v15 = [MEMORY[0x277CBEAA8] now];
    [v15 timeIntervalSinceDate:self->_downloadProgressSnapshotDate];
    v17 = v16 > v14;
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

- (void)_updateNormalizedDownloadProgress
{
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  progress = [(SUDownload *)self->_download progress];
  phase = [progress phase];
  v6 = [(SUDownloader *)self _orderForPhase:phase];
  descriptor = [(SUDownload *)self->_download descriptor];
  _isStreamingZipCapable = [descriptor _isStreamingZipCapable];

  if (progress && v6 - 1 <= 6)
  {
    v9 = &_SUDownloadPhaseOrderWeightsNonStreamable;
    if (_isStreamingZipCapable)
    {
      v9 = &_SUDownloadPhaseOrderWeightsStreamable;
    }

    v10 = v6;
    v11 = v9[v6];
    v12 = 0.0;
    do
    {
      v13 = *v9++;
      v12 = v12 + v13;
      --v10;
    }

    while (v10);
    [progress percentComplete];
    *&v15 = v12 + fminf(v11 * v14, v11);
    [progress setNormalizedPercentComplete:v15];
    v16 = MEMORY[0x277CCABB8];
    v17 = MEMORY[0x277CCABB0];
    [progress percentComplete];
    v18 = [v17 numberWithFloat:?];
    v19 = [v16 localizedStringFromNumber:v18 numberStyle:3];
    v20 = MEMORY[0x277CCABB8];
    v21 = MEMORY[0x277CCABB0];
    [progress normalizedPercentComplete];
    v22 = [v21 numberWithFloat:?];
    v30 = [v20 localizedStringFromNumber:v22 numberStyle:3];
    SULogDebug(@"Download Phase: %@, Phase Progress: %@, Overall Progress: %@", v23, v24, v25, v26, v27, v28, v29, phase);
  }
}

- (int)_orderForPhase:(id)phase
{
  phaseCopy = phase;
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (_orderForPhase____onceToken != -1)
  {
    [SUDownloader _orderForPhase:];
  }

  v7 = [_orderForPhase____downloadPhaseOrderMap objectForKey:phaseCopy];

  if (v7)
  {
    intValue = [v7 intValue];
  }

  else
  {
    intValue = -1;
  }

  return intValue;
}

void __31__SUDownloader__orderForPhase___block_invoke()
{
  v13[10] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCABB0] numberWithInt:{0, @"SUDownloadPhaseStarting"}];
  v13[0] = v0;
  v12[1] = @"SUDownloadPhaseBrainFetching";
  v1 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v13[1] = v1;
  v12[2] = @"SUDownloadPhaseBrainFetchingQueuedLocal";
  v2 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v13[2] = v2;
  v12[3] = @"SUDownloadPhaseBrainFetchingQueuedRemote";
  v3 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v13[3] = v3;
  v12[4] = @"SUDownloadPhaseBrainFetchingStalled";
  v4 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v13[4] = v4;
  v12[5] = @"SUDownloadPhaseBrainVerifying";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v13[5] = v5;
  v12[6] = @"SUDownloadPhaseBrainExtracting";
  v6 = [MEMORY[0x277CCABB0] numberWithInt:3];
  v13[6] = v6;
  v12[7] = @"SUDownloadPhaseFetching";
  v7 = [MEMORY[0x277CCABB0] numberWithInt:4];
  v13[7] = v7;
  v12[8] = @"SUDownloadPhaseFetchingStalled";
  v8 = [MEMORY[0x277CCABB0] numberWithInt:4];
  v13[8] = v8;
  v12[9] = @"SUDownloadPhasePreparingForInstallation";
  v9 = [MEMORY[0x277CCABB0] numberWithInt:7];
  v13[9] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:10];
  v11 = _orderForPhase____downloadPhaseOrderMap;
  _orderForPhase____downloadPhaseOrderMap = v10;
}

- (void)downloadProgress:(id)progress
{
  progressCopy = progress;
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  phase = [progressCopy phase];
  LODWORD(workQueue) = [phase isEqualToString:@"SUDownloadPhaseStarting"];

  if (workQueue)
  {
    notify_post([*MEMORY[0x277D64250] UTF8String]);
  }

  phase2 = [progressCopy phase];
  [progressCopy percentComplete];
  v9 = v8;
  [progressCopy timeRemaining];
  v11 = v10;
  LODWORD(v10) = v9;
  [(SUDownloader *)self _changeDownloadPhase:phase2 progress:v10 timeRemaining:v11];

  if ([(SUDownloader *)self goNonDiscretionaryOnDownload])
  {
    if ([(SUDownloader *)self isDownloading])
    {
      phase3 = [progressCopy phase];
      IsUpdateDownloading = SUDownloadPhaseIsUpdateDownloading(phase3);

      if (IsUpdateDownloading)
      {
        SULogInfo(@"Download in progress and we need to go non-discretionary", v14, v15, v16, v17, v18, v19, v20, v28);
        [(SUDownloader *)self setGoNonDiscretionaryOnDownload:0];
        [(SUDownloader *)self _setDownloadDiscretionary:0];
      }
    }
  }

  if ([progressCopy isDone])
  {
    phase4 = [progressCopy phase];
    v22 = [phase4 isEqualToString:@"SUDownloadPhasePreparingForInstallation"];

    if ((v22 & 1) == 0)
    {
      phase5 = [progressCopy phase];
      [(SUDownloader *)self _notePhaseCompleted:phase5];
    }

    phase6 = [progressCopy phase];
    if ([phase6 isEqualToString:@"SUDownloadPhaseBrainExtracting"])
    {
    }

    else
    {
      phase7 = [progressCopy phase];
      v26 = [phase7 isEqualToString:@"SUDownloadPhaseFetching"];

      if (!v26)
      {
        goto LABEL_14;
      }
    }

    core2 = [(SUDownloader *)self core];
    [core2 reporterFlushEvent];
  }

LABEL_14:
}

- (void)downloadCompleted:(id)completed informClients:(BOOL)clients
{
  clientsCopy = clients;
  completedCopy = completed;
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  notify_post([*MEMORY[0x277D64250] UTF8String]);
  core2 = [(SUDownloader *)self core];
  state = [core2 state];
  v11 = state;
  if (completedCopy)
  {
    v12 = [completedCopy description];
    [v11 setDdmPersistedErrorDescription:v12];

    notify_post([*MEMORY[0x277D64248] UTF8String]);
    v13 = completedCopy;
    v14 = *MEMORY[0x277CBED28];
    v15 = *MEMORY[0x277CCA7E8];
    v51 = v13;
    v16 = v13;
    while (1)
    {
      userInfo = [v16 userInfo];
      v18 = [userInfo valueForKey:@"MSUFullReplacementRecommened"];

      if (v18 == v14)
      {
        break;
      }

      userInfo2 = [v16 userInfo];
      v20 = [userInfo2 objectForKey:v15];

      v16 = v20;
      if (!v20)
      {
        v21 = v51;
        goto LABEL_14;
      }
    }

    v40 = [SUUtility errorWithCode:53 originalError:v51];

    core3 = [(SUDownloader *)self core];
    state2 = [core3 state];
    descriptor = [(SUDownload *)self->_download descriptor];
    productBuildVersion = [descriptor productBuildVersion];
    [state2 addFailedPatchBuildVersion:productBuildVersion];

    core4 = [(SUDownloader *)self core];
    state3 = [core4 state];
    [state3 save];

    v21 = v40;
LABEL_14:
    core9 = v21;
    domain = [v21 domain];
    v48 = [domain isEqualToString:@"com.apple.softwareupdateservices.errors"];

    if (!v48 || (v49 = [core9 code], v49 > 0x2A) || ((1 << v49) & 0x40000004800) == 0)
    {
      [(SUDownloader *)self _downloadFailedWithError:core9];
    }
  }

  else
  {
    [state setDdmPersistedError:0];

    core5 = [(SUDownloader *)self core];
    state4 = [core5 state];
    lastDownload = [state4 lastDownload];
    progress = [lastDownload progress];
    phase = [progress phase];
    v27 = [phase isEqualToString:@"SUDownloadPhasePreparingForInstallation"];

    if ((v27 & 1) == 0)
    {
      core6 = [(SUDownloader *)self core];
      v29 = core6;
      v30 = clientsCopy ? 0 : @"followup event";
      [core6 reportOTADownloadedEvent:v30];

      if (clientsCopy)
      {
        core7 = [(SUDownloader *)self core];
        [core7 reportCoreAnalyticsOTADownloadedEvent];
      }
    }

    [(SUDownloader *)self _notePhaseCompleted:@"SUDownloadPhasePreparingForInstallation"];
    [(SUDownloader *)self _downloadFinished:clientsCopy];
    SULogInfo(@"Update is prepared. Re-registering for RecordDataForBrain unlock callback", v32, v33, v34, v35, v36, v37, v38, v50);
    core8 = [(SUDownloader *)self core];
    [core8 removeUnlockCallback:@"unlockCallbackRecordDataForBrain"];

    core9 = [(SUDownloader *)self core];
    [core9 addUnlockCallback:sel__recordLastUnlockTimePostPrepare forKey:@"unlockCallbackRecordDataForBrain"];
  }
}

- (void)_downloadFinished:(BOOL)finished
{
  finishedCopy = finished;
  selfCopy = self;
  v85 = *MEMORY[0x277D85DE8];
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  core2 = [(SUDownloader *)selfCopy core];
  passcodePolicy = [core2 passcodePolicy];
  if (passcodePolicy)
  {
    v9 = passcodePolicy;
    core3 = [(SUDownloader *)selfCopy core];
    if ([core3 isAutoUpdateEnabled])
    {
      downloadOptions = [(SUDownload *)selfCopy->_download downloadOptions];
      isAutoDownload = [downloadOptions isAutoDownload];

      if (!isAutoDownload)
      {
        goto LABEL_11;
      }

      download = [(SUDownloader *)selfCopy download];
      descriptor = [download descriptor];
      updateType = [descriptor updateType];

      core2 = [(SUDownloader *)selfCopy core];
      passcodePolicy2 = [core2 passcodePolicy];
      v9 = passcodePolicy2;
      if (updateType == 4)
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }

      [passcodePolicy2 setCurrentPolicyType:v17];
    }

    else
    {
    }
  }

LABEL_11:
  core4 = [(SUDownloader *)selfCopy core];
  descriptor2 = [(SUDownload *)selfCopy->_download descriptor];
  v20 = [core4 coreDescriptorForSUDescriptor:descriptor2];

  SULogInfo(@"%s: Found SUCoreDescriptor: %@", v21, v22, v23, v24, v25, v26, v27, "[SUDownloader _downloadFinished:]");
  if (v20)
  {
    descriptor3 = [(SUDownload *)selfCopy->_download descriptor];
    [descriptor3 installationSize];
    SULogInfo(@"%s: Old installationSize: %llu", v36, v37, v38, v39, v40, v41, v42, "[SUDownloader _downloadFinished:]");

    [v20 refreshInstallationSize];
    descriptor4 = [(SUDownload *)selfCopy->_download descriptor];
    [descriptor4 setInstallationSize:{objc_msgSend(v20, "installationSize")}];

    descriptor5 = [(SUDownload *)selfCopy->_download descriptor];
    [descriptor5 installationSize];
    SULogInfo(@"%s: Refreshed installationSize: %llu", v45, v46, v47, v48, v49, v50, v51, "[SUDownloader _downloadFinished:]");
  }

  SULogInfo(@"%s: Download finished, cancel the recommended notification UI", v28, v29, v30, v31, v32, v33, v34, "[SUDownloader _downloadFinished:]");
  core5 = [(SUDownloader *)selfCopy core];
  [core5 unscheduleRecommendedUpdateNotification];

  core6 = [(SUDownloader *)selfCopy core];
  [core6 donateSuccessToBiomeFor:@"Download"];

  if (finishedCopy)
  {
    v71 = v20;
    core7 = [(SUDownloader *)selfCopy core];
    installPolicy = [core7 installPolicy];

    v72 = selfCopy->_download;
    core8 = [(SUDownloader *)selfCopy core];
    delegate = [core8 delegate];
    v57 = objc_opt_respondsToSelector();

    if (v57)
    {
      core9 = [(SUDownloader *)selfCopy core];
      externWorkQueue = [core9 externWorkQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __34__SUDownloader__downloadFinished___block_invoke;
      block[3] = &unk_279CAA798;
      block[4] = selfCopy;
      v82 = v72;
      v83 = installPolicy;
      dispatch_async(externWorkQueue, block);
    }

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    core10 = [(SUDownloader *)selfCopy core];
    observers = [core10 observers];
    allObjects = [observers allObjects];

    v63 = [allObjects countByEnumeratingWithState:&v77 objects:v84 count:16];
    if (v63)
    {
      v64 = v63;
      v65 = *v78;
      do
      {
        for (i = 0; i != v64; ++i)
        {
          if (*v78 != v65)
          {
            objc_enumerationMutation(allObjects);
          }

          v67 = *(*(&v77 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            core11 = [(SUDownloader *)selfCopy core];
            [core11 externWorkQueue];
            v70 = v69 = selfCopy;
            v74[0] = MEMORY[0x277D85DD0];
            v74[1] = 3221225472;
            v74[2] = __34__SUDownloader__downloadFinished___block_invoke_2;
            v74[3] = &unk_279CAA798;
            v74[4] = v67;
            v75 = v72;
            v76 = installPolicy;
            dispatch_async(v70, v74);

            selfCopy = v69;
          }
        }

        v64 = [allObjects countByEnumeratingWithState:&v77 objects:v84 count:16];
      }

      while (v64);
    }

    v20 = v71;
  }

  [(SUDownloader *)selfCopy endAutoDownloadTasksAndResetState];
  [SUUtility setCacheable:1];
  [(SUDownloader *)selfCopy setDownloading:0];
}

void __34__SUDownloader__downloadFinished___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 delegate];
  [v2 downloadDidFinish:*(a1 + 40) withInstallPolicy:*(a1 + 48)];
}

- (void)_downloadFailedWithError:(id)error
{
  v59 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  SULogInfo(@"Download failed with error: %@", v7, v8, v9, v10, v11, v12, v13, errorCopy);
  +[SUSpace mobileAssetResumeFromSuspension];
  core2 = [(SUDownloader *)self core];
  [core2 resumeOrDisableReserveSpace];

  v22 = 0x279CA9000uLL;
  if (self->_download)
  {
    if (!errorCopy)
    {
      errorCopy = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.softwareupdateservices.errors" code:-1 userInfo:0];
    }

    v45 = errorCopy;
    v47 = [SUUtility translateError:errorCopy];
    v46 = self->_download;
    core3 = [(SUDownloader *)self core];
    delegate = [core3 delegate];
    v25 = objc_opt_respondsToSelector();

    if (v25)
    {
      core4 = [(SUDownloader *)self core];
      externWorkQueue = [core4 externWorkQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __41__SUDownloader__downloadFailedWithError___block_invoke;
      block[3] = &unk_279CAA798;
      block[4] = self;
      v56 = v46;
      v57 = v47;
      dispatch_async(externWorkQueue, block);
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    core5 = [(SUDownloader *)self core];
    observers = [core5 observers];
    allObjects = [observers allObjects];

    v31 = [allObjects countByEnumeratingWithState:&v51 objects:v58 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v52;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v52 != v33)
          {
            objc_enumerationMutation(allObjects);
          }

          v35 = *(*(&v51 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            core6 = [(SUDownloader *)self core];
            [core6 externWorkQueue];
            v38 = v37 = self;
            v48[0] = MEMORY[0x277D85DD0];
            v48[1] = 3221225472;
            v48[2] = __41__SUDownloader__downloadFailedWithError___block_invoke_2;
            v48[3] = &unk_279CAA798;
            v48[4] = v35;
            v49 = v46;
            v50 = v47;
            dispatch_async(v38, v48);

            self = v37;
          }
        }

        v32 = [allObjects countByEnumeratingWithState:&v51 objects:v58 count:16];
      }

      while (v32);
    }

    errorCopy = v45;
    v22 = 0x279CA9000;
  }

  else
  {
    SULogError(@"[ANOMALY] Download faild but the download object is nil", v15, v16, v17, v18, v19, v20, v21, v44);
  }

  core7 = [(SUDownloader *)self core];
  [core7 donateSUErrorToBiome:errorCopy];

  core8 = [(SUDownloader *)self core];
  [core8 reportOTAAbandonedEventWithError:errorCopy];

  core9 = [(SUDownloader *)self core];
  [core9 reportCoreAnalyticsOTAAbandonedEvent:errorCopy];

  core10 = [(SUDownloader *)self core];
  [core10 clearUnlockCallbacks];

  [*(v22 + 3176) setCacheable:1];
  [(SUDownloader *)self cleanupPreviousDownloadState:1];
  core11 = [(SUDownloader *)self core];
  [core11 clearKeybagStash];

  [(SUDownloader *)self setDownloading:0];
}

void __41__SUDownloader__downloadFailedWithError___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 delegate];
  [v2 downloadDidFail:*(a1 + 40) withError:*(a1 + 48)];
}

- (void)_downloadInvalidatedWithUpdates:(id)updates
{
  v41 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  +[SUSpace mobileAssetResumeFromSuspension];
  core = [(SUDownloader *)self core];
  [core resumeOrDisableReserveSpace];

  if (!updatesCopy)
  {
    v6 = [SUCoreScanResults alloc];
    core2 = [(SUDownloader *)self core];
    preferredLastScannedDescriptor = [core2 preferredLastScannedDescriptor];
    core3 = [(SUDownloader *)self core];
    alternateLastScannedDescriptor = [core3 alternateLastScannedDescriptor];
    updatesCopy = [(SUCoreScanResults *)v6 initWithPreferredDescriptor:preferredLastScannedDescriptor alternateDescriptor:alternateLastScannedDescriptor];
  }

  core4 = [(SUDownloader *)self core];
  delegate = [core4 delegate];
  if (delegate)
  {
    v13 = delegate;
    core5 = [(SUDownloader *)self core];
    delegate2 = [core5 delegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      core6 = [(SUDownloader *)self core];
      externWorkQueue = [core6 externWorkQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __48__SUDownloader__downloadInvalidatedWithUpdates___block_invoke;
      block[3] = &unk_279CAA7C0;
      block[4] = self;
      v39 = updatesCopy;
      dispatch_async(externWorkQueue, block);
    }
  }

  else
  {
  }

  v30 = updatesCopy;
  v31 = self->_download;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  core7 = [(SUDownloader *)self core];
  observers = [core7 observers];
  allObjects = [observers allObjects];

  v22 = [allObjects countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v35;
    do
    {
      v25 = 0;
      do
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(allObjects);
        }

        v26 = *(*(&v34 + 1) + 8 * v25);
        if (objc_opt_respondsToSelector())
        {
          [(SUDownloader *)self core];
          v28 = v27 = self;
          externWorkQueue2 = [v28 externWorkQueue];
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = __48__SUDownloader__downloadInvalidatedWithUpdates___block_invoke_2;
          v32[3] = &unk_279CAA7C0;
          v32[4] = v26;
          v33 = v31;
          dispatch_async(externWorkQueue2, v32);

          self = v27;
        }

        ++v25;
      }

      while (v23 != v25);
      v23 = [allObjects countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v23);
  }

  [(SUDownloader *)self cleanupPreviousDownloadState:1];
  [(SUDownloader *)self setDownloading:0];
}

void __48__SUDownloader__downloadInvalidatedWithUpdates___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) core];
  v2 = [v3 delegate];
  [v2 downloadWasInvalidatedForNewUpdatesAvailable:*(a1 + 40)];
}

- (void)cleanupPreviousDownloadState:(BOOL)state
{
  stateCopy = state;
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  SULogInfo(@"Cleaning up previous download state", v7, v8, v9, v10, v11, v12, v13, v19);
  [(SUDownloader *)self setDownloadAsset:0];
  core2 = [(SUDownloader *)self core];
  [core2 clearBadgeAndBanner];

  [(SUDownloader *)self setGoNonDiscretionaryOnDownload:0];
  [(SUDownloader *)self setDownloading:0];
  [(SUDownloader *)self setDownload:0];
  [(SUDownloader *)self _snapshotProgress];
  core3 = [(SUDownloader *)self core];
  state = [core3 state];
  [state setLastDownload:0];

  core4 = [(SUDownloader *)self core];
  [core4 removeUnlockCallback:@"unlockCallbackRecordDataForBrain"];

  if (stateCopy)
  {
    core5 = [(SUDownloader *)self core];
    state2 = [core5 state];
    [state2 save];
  }
}

- (void)_snapshotProgress
{
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  dispatch_assert_queue_V2(workQueue);

  progress = [(SUDownload *)self->_download progress];
  v6 = [progress copy];
  downloadProgressSnapshot = self->_downloadProgressSnapshot;
  self->_downloadProgressSnapshot = v6;

  v8 = [MEMORY[0x277CBEAA8] now];
  downloadProgressSnapshotDate = self->_downloadProgressSnapshotDate;
  self->_downloadProgressSnapshotDate = v8;

  MEMORY[0x2821F96F8](v8, downloadProgressSnapshotDate);
}

- (void)operatorBundleChanged
{
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__SUDownloader_operatorBundleChanged__block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __37__SUDownloader_operatorBundleChanged__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isDownloading])
  {
    v2 = *(a1 + 32);
    v3 = [v2[4] progress];
    v4 = [v3 phase];
    LODWORD(v2) = [v2 _orderForPhase:v4];

    if (v2 <= 4)
    {
      v5 = [*(*(a1 + 32) + 32) downloadOptions];
      if ([v5 activeDownloadPolicyType] != 2 && (objc_msgSend(*(a1 + 32), "_reapplyExistingDownloadPolicyIfDownloadable:", 1) & 1) == 0)
      {
        SULogInfo(@"Cellular operator status changed, and now the download is not downloadable.  Attempting to cancel the download.", v6, v7, v8, v9, v10, v11, v12, v24);
        v13 = *(a1 + 32);
        v25 = 0;
        v14 = [v13 cancelDownload:1 userRequested:0 keepDocAssets:1 error:&v25];
        v15 = v25;
        v23 = v15;
        if ((v14 & 1) == 0)
        {
          SULogInfo(@"Unable to cancel download for cellular bundle change: %@", v16, v17, v18, v19, v20, v21, v22, v15);
        }
      }
    }
  }
}

- (void)networkChangedFromNetworkType:(int)type toNetworkType:(int)networkType
{
  core = [(SUDownloader *)self core];
  workQueue = [core workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__SUDownloader_networkChangedFromNetworkType_toNetworkType___block_invoke;
  v8[3] = &unk_279CAACD8;
  v8[4] = self;
  networkTypeCopy = networkType;
  dispatch_async(workQueue, v8);
}

void __60__SUDownloader_networkChangedFromNetworkType_toNetworkType___block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) isDownloading])
  {
    return;
  }

  if (*(a1 + 40) == 1)
  {
    goto LABEL_3;
  }

  if ([*(*(a1 + 32) + 32) allowCellularDownload])
  {
    if (*(a1 + 40) != 1)
    {
      return;
    }

LABEL_3:
    v2 = [*(*(a1 + 32) + 32) progress];
    v3 = [v2 phase];
    v4 = [v3 isEqualToString:@"SUDownloadPhaseFetchingStalled"];

    if (v4)
    {
      v5 = *(a1 + 32);
      v12 = [v5[4] progress];
      [v12 percentComplete];
      v7 = v6;
      v8 = [*(*(a1 + 32) + 32) progress];
      [v8 timeRemaining];
      v10 = v9;
      LODWORD(v9) = v7;
      [v5 _changeDownloadPhase:@"SUDownloadPhaseFetching" progress:v9 timeRemaining:v10];
    }

    return;
  }

  v11 = *(a1 + 32);

  [v11 _changeDownloadPhase:@"SUDownloadPhaseFetchingStalled" progress:0.0 timeRemaining:0.0];
}

- (id)slaVersion
{
  download = [(SUDownloader *)self download];
  if (!download)
  {
    goto LABEL_5;
  }

  download4 = download;
  download2 = [(SUDownloader *)self download];
  descriptor = [download2 descriptor];
  if (!descriptor)
  {
    slaVersion = 0;
    goto LABEL_7;
  }

  v7 = descriptor;
  download3 = [(SUDownloader *)self download];
  descriptor2 = [download3 descriptor];
  documentation = [descriptor2 documentation];

  if (!documentation)
  {
LABEL_5:
    slaVersion = 0;
    goto LABEL_8;
  }

  download4 = [(SUDownloader *)self download];
  download2 = [download4 descriptor];
  documentation2 = [download2 documentation];
  slaVersion = [documentation2 slaVersion];

LABEL_7:
LABEL_8:

  return slaVersion;
}

- (void)ensureSSOTokenIfNeededForDownload:(id)download
{
  downloadCopy = download;
  if (+[SUUtility currentReleaseTypeIsInternal])
  {
    v3 = +[SUPreferences sharedInstance];
    suppressSSOTokenInDownload = [v3 suppressSSOTokenInDownload];

    if (suppressSSOTokenInDownload)
    {
      SULogInfo(@"%s: Suppressing SSO Token in download.", v5, v6, v7, v8, v9, v10, v11, "[SUDownloader ensureSSOTokenIfNeededForDownload:]");
    }

    else if ([downloadCopy isAutoDownload])
    {
      SULogInfo(@"%s: Autodownload operation - not getting SSO Token.", v12, v13, v14, v15, v16, v17, v18, "[SUDownloader ensureSSOTokenIfNeededForDownload:]");
    }

    else
    {
      descriptor = [downloadCopy descriptor];
      upgradeType = [descriptor upgradeType];

      if (upgradeType == 2)
      {
        SULogInfo(@"%s: Software update is major upgrade, getting SSO token.", v21, v22, v23, v24, v25, v26, v27, "[SUDownloader ensureSSOTokenIfNeededForDownload:]");
        v28 = +[SUAuthSSO sharedInstance];
        [v28 invokeSSOAuth];
      }

      else
      {
        SULogInfo(@"%s: Software update is not major upgrade, not getting SSO token.", v21, v22, v23, v24, v25, v26, v27, "[SUDownloader ensureSSOTokenIfNeededForDownload:]");
      }
    }
  }
}

+ (id)purgeOptionsForDescriptor:(id)descriptor downloadOptions:(id)options completionQueue:(id)queue
{
  optionsCopy = options;
  queueCopy = queue;
  descriptorCopy = descriptor;
  v10 = objc_alloc_init(SUSpacePurgeOptions);
  v11 = [SUUtility totalDiskSpaceForUpdate:descriptorCopy];

  [(SUSpacePurgeOptions *)v10 setNeededBytes:v11];
  [(SUSpacePurgeOptions *)v10 setEnableCacheDelete:1];
  if ([optionsCopy isAutoDownload])
  {
    isAppOffloadEnabled = 0;
  }

  else
  {
    isAppOffloadEnabled = [optionsCopy isAppOffloadEnabled];
  }

  [(SUSpacePurgeOptions *)v10 setEnableAppOffload:isAppOffloadEnabled];
  if ([optionsCopy isAutoDownload])
  {
    isMASuspensionEnabled = 0;
  }

  else
  {
    isMASuspensionEnabled = [optionsCopy isMASuspensionEnabled];
  }

  [(SUSpacePurgeOptions *)v10 setEnableMobileAssetSuspend:isMASuspensionEnabled];
  [(SUSpacePurgeOptions *)v10 setCacheDeleteUrgency:4];
  [(SUSpacePurgeOptions *)v10 setAppOffloadUrgency:4];
  [(SUSpacePurgeOptions *)v10 setCompletionQueue:queueCopy];

  return v10;
}

- (SUManagerCore)core
{
  WeakRetained = objc_loadWeakRetained(&self->_core);

  return WeakRetained;
}

@end