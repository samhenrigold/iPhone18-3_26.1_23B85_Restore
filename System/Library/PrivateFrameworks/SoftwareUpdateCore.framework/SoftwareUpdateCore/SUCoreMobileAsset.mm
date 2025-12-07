@interface SUCoreMobileAsset
+ (BOOL)downloadConfig:(id)config isEqualToConfig:(id)toConfig;
+ (id)_reloadDescriptor:(id)descriptor allowingDifferences:(id)differences forceReload:(BOOL)reload skipMSU:(BOOL)u defaultValues:(id)values pSUReloadError:(id *)error pDocReloadError:(id *)reloadError;
+ (id)downloadConfigCopy:(id)copy;
+ (id)downloadConfigSummary:(id)summary;
+ (id)downloadOptionsDescription:(id)description;
+ (void)_callReloadCompletion:(id)completion withDescriptor:(id)descriptor suError:(id)error docError:(id)docError;
+ (void)mapMobileAssetErrorIndications;
+ (void)reloadDescriptor:(id)descriptor allowingDifferences:(id)differences forceReload:(BOOL)reload skipMSU:(BOOL)u defaultValues:(id)values completion:(id)completion;
+ (void)reloadDescriptor:(id)descriptor completion:(id)completion;
- (SUCoreMobileAsset)initWithDelegate:(id)delegate forAsset:(id)asset updateUUID:(id)d withCallbackQueue:(id)queue withCompletionQueue:(id)completionQueue;
- (id)_updateAssetTypeName;
- (id)description;
- (id)maDelegate;
- (void)_cancelDownloadAndPurge;
- (void)_downloadAssetWithOptions:(id)options stashingDocumentationForBuild:(id)build completion:(id)completion;
- (void)_issueAlterDownloadCompletion:(int64_t)completion forReason:(id)reason;
- (void)_registerProgressAndStartDownload;
- (void)_reportAnomaly:(id)anomaly issuingCompletion:(id)completion;
- (void)_reportAssetRemoveFailed:(id)failed;
- (void)_reportAssetRemoved;
- (void)_reportDownloadFailed:(id)failed;
- (void)_reportDownloadProgress:(id)progress;
- (void)_reportDownloaded:(id)downloaded;
- (void)_requestChangeConfigDownload:(id)download;
- (void)_trackMAAnomaly:(id)anomaly result:(int64_t)result description:(id)description;
- (void)_trackMobileAssetBegin:(id)begin;
- (void)_trackMobileAssetBegin:(id)begin withIdentifier:(id)identifier;
- (void)_trackMobileAssetEnd:(id)end withIdentifier:(id)identifier withResult:(int64_t)result withError:(id)error;
- (void)_trackMobileAssetEnd:(id)end withResult:(int64_t)result withError:(id)error;
- (void)alterDownloadOptions:(id)options completion:(id)completion;
- (void)downloadConfigStatus:(id)status;
- (void)downloadDocumentationAssetWithPolicy:(id)policy withUUID:(id)d stashingDocumentationForBuild:(id)build completion:(id)completion;
- (void)downloadSoftwareUpdateAssetWithPolicy:(id)policy withUUID:(id)d completion:(id)completion;
- (void)removeAsset:(id)asset;
@end

@implementation SUCoreMobileAsset

- (SUCoreMobileAsset)initWithDelegate:(id)delegate forAsset:(id)asset updateUUID:(id)d withCallbackQueue:(id)queue withCompletionQueue:(id)completionQueue
{
  v82 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  assetCopy = asset;
  dCopy = d;
  queueCopy = queue;
  completionQueueCopy = completionQueue;
  v79.receiver = self;
  v79.super_class = SUCoreMobileAsset;
  v17 = [(SUCoreMobileAsset *)&v79 init];
  v18 = v17;
  if (!v17)
  {
LABEL_36:
    v71 = v18;
    goto LABEL_37;
  }

  objc_storeWeak(&v17->_maDelegate, delegateCopy);
  objc_storeStrong(&v18->_asset, asset);
  objc_storeStrong(&v18->_updateUUID, d);
  documentationStashBuild = v18->_documentationStashBuild;
  v18->_documentationStashBuild = 0;

  downloadOptions = v18->_downloadOptions;
  v18->_downloadOptions = 0;

  currentDownloadConfig = v18->_currentDownloadConfig;
  v18->_currentDownloadConfig = 0;

  requestedDownloadConfig = v18->_requestedDownloadConfig;
  v18->_requestedDownloadConfig = 0;

  desiredDownloadConfig = v18->_desiredDownloadConfig;
  v18->_desiredDownloadConfig = 0;

  v18->_assetRemoved = 0;
  *&v18->_downloadingAsset = 0;
  operationName = v18->_operationName;
  v18->_operationName = 0;

  downloadCompletion = v18->_downloadCompletion;
  v18->_downloadCompletion = 0;

  alterDownloadCompletion = v18->_alterDownloadCompletion;
  v18->_alterDownloadCompletion = 0;

  removeCompletion = v18->_removeCompletion;
  v18->_removeCompletion = 0;

  mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
  commonDomain = [mEMORY[0x277D643F8] commonDomain];

  v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.%@", commonDomain, @"ma.control"];
  uTF8String = [v30 UTF8String];
  v32 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v33 = dispatch_queue_create(uTF8String, v32);
  maControlQueue = v18->_maControlQueue;
  v18->_maControlQueue = v33;

  if (v18->_maControlQueue)
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    v37 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
    if (delegateCopy)
    {
      if (v37)
      {
        maDelegate = [(SUCoreMobileAsset *)v18 maDelegate];
        v39 = objc_opt_respondsToSelector();
        v40 = @"NO";
        if (v39)
        {
          v40 = @"YES";
        }

        *buf = 138543362;
        v81 = v40;
        _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[MA] operating with delegate: respondsToSelector(maDownloadProgress:) %{public}@", buf, 0xCu);
      }

      mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
      oslog2 = [mEMORY[0x277D64460]2 oslog];

      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
      {
        maDelegate2 = [(SUCoreMobileAsset *)v18 maDelegate];
        v44 = objc_opt_respondsToSelector();
        v45 = @"NO";
        if (v44)
        {
          v45 = @"YES";
        }

        *buf = 138543362;
        v81 = v45;
        _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[MA] operating with delegate: respondsToSelector(maDownloadStalled:) %{public}@", buf, 0xCu);
      }

      mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
      oslog3 = [mEMORY[0x277D64460]3 oslog];

      if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
      {
        maDelegate3 = [(SUCoreMobileAsset *)v18 maDelegate];
        v49 = objc_opt_respondsToSelector();
        v50 = @"NO";
        if (v49)
        {
          v50 = @"YES";
        }

        *buf = 138543362;
        v81 = v50;
        _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "[MA] operating with delegate: respondsToSelector(maDownloaded:) %{public}@", buf, 0xCu);
      }

      mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
      oslog4 = [mEMORY[0x277D64460]4 oslog];

      if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
      {
        maDelegate4 = [(SUCoreMobileAsset *)v18 maDelegate];
        v54 = objc_opt_respondsToSelector();
        v55 = @"NO";
        if (v54)
        {
          v55 = @"YES";
        }

        *buf = 138543362;
        v81 = v55;
        _os_log_impl(&dword_23193C000, oslog4, OS_LOG_TYPE_DEFAULT, "[MA] operating with delegate: respondsToSelector(maDownloadFailed:) %{public}@", buf, 0xCu);
      }

      mEMORY[0x277D64460]5 = [MEMORY[0x277D64460] sharedLogger];
      oslog5 = [mEMORY[0x277D64460]5 oslog];

      if (os_log_type_enabled(oslog5, OS_LOG_TYPE_DEFAULT))
      {
        maDelegate5 = [(SUCoreMobileAsset *)v18 maDelegate];
        v59 = objc_opt_respondsToSelector();
        v60 = @"NO";
        if (v59)
        {
          v60 = @"YES";
        }

        *buf = 138543362;
        v81 = v60;
        _os_log_impl(&dword_23193C000, oslog5, OS_LOG_TYPE_DEFAULT, "[MA] operating with delegate: respondsToSelector(maAssetRemoved) %{public}@", buf, 0xCu);
      }

      mEMORY[0x277D64460]6 = [MEMORY[0x277D64460] sharedLogger];
      oslog6 = [mEMORY[0x277D64460]6 oslog];

      if (os_log_type_enabled(oslog6, OS_LOG_TYPE_DEFAULT))
      {
        maDelegate6 = [(SUCoreMobileAsset *)v18 maDelegate];
        v64 = objc_opt_respondsToSelector();
        v65 = @"NO";
        if (v64)
        {
          v65 = @"YES";
        }

        *buf = 138543362;
        v81 = v65;
        _os_log_impl(&dword_23193C000, oslog6, OS_LOG_TYPE_DEFAULT, "[MA] operating with delegate: respondsToSelector(maAssetRemoveFailed:) %{public}@", buf, 0xCu);
      }

      mEMORY[0x277D64460]7 = [MEMORY[0x277D64460] sharedLogger];
      oslog = [mEMORY[0x277D64460]7 oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        maDelegate7 = [(SUCoreMobileAsset *)v18 maDelegate];
        v68 = objc_opt_respondsToSelector();
        v69 = @"NO";
        if (v68)
        {
          v69 = @"YES";
        }

        *buf = 138543362;
        v81 = v69;
        _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[MA] operating with delegate: respondsToSelector(maAnomaly:) %{public}@", buf, 0xCu);
      }
    }

    else if (v37)
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[MA] operating without delegate", buf, 2u);
    }

    mEMORY[0x277D643F8]2 = [MEMORY[0x277D643F8] sharedCore];
    v73 = [mEMORY[0x277D643F8]2 selectDelegateCallbackQueue:queueCopy];
    clientDelegateCallbackQueue = v18->_clientDelegateCallbackQueue;
    v18->_clientDelegateCallbackQueue = v73;

    mEMORY[0x277D643F8]3 = [MEMORY[0x277D643F8] sharedCore];
    v76 = [mEMORY[0x277D643F8]3 selectCompletionQueue:completionQueueCopy];
    clientCompletionQueue = v18->_clientCompletionQueue;
    v18->_clientCompletionQueue = v76;

    +[SUCoreMobileAsset mapMobileAssetErrorIndications];
    goto LABEL_36;
  }

  mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
  [mEMORY[0x277D64428] trackError:@"[MA]" forReason:@"unable to create MA control dispatch queue" withResult:8100 withError:0];

  v71 = 0;
LABEL_37:

  return v71;
}

+ (void)mapMobileAssetErrorIndications
{
  if (mapMobileAssetErrorIndications_mobileAssetErrorInfoOnce != -1)
  {
    +[SUCoreMobileAsset mapMobileAssetErrorIndications];
  }
}

void __51__SUCoreMobileAsset_mapMobileAssetErrorIndications__block_invoke()
{
  v8[6] = *MEMORY[0x277D85DE8];
  v7[0] = @"checkSpaceNeeded";
  v0 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:4];
  v8[0] = v0;
  v7[1] = @"checkNetwork";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:1];
  v8[1] = v1;
  v7[2] = @"checkTimeoutConditions";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:1];
  v8[2] = v2;
  v7[3] = @"pallasNoPMVMatchFound";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:32];
  v8[3] = v3;
  v7[4] = @"pallasNoBuildVersionMatchFound";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:64];
  v8[4] = v4;
  v7[5] = @"timeoutWithDetail";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:128];
  v8[5] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:6];

  [MEMORY[0x277D64430] associateLayer:411 withDomain:@"com.apple.MobileAssetError.Download" keyMatchTrueMap:v6];
  [MEMORY[0x277D64430] associateLayer:412 withDomain:@"com.apple.MobileAssetError.Query" keyMatchTrueMap:v6];
  [MEMORY[0x277D64430] associateLayer:413 withDomain:@"com.apple.MobileAssetError.Purge" keyMatchTrueMap:v6];
  [MEMORY[0x277D64430] associateLayer:414 withDomain:@"com.apple.MobileAssetError.Xpc" keyMatchTrueMap:v6];
  [MEMORY[0x277D64430] associateLayer:411 withDomain:@"com.apple.MobileAssetError.Download" indicating:32 ifKeyTrue:@"pallasNoPMVMatchFound"];
  [MEMORY[0x277D64430] associateLayer:411 withDomain:@"com.apple.MobileAssetError.Download" indicating:128 ifKeyTrue:@"timeoutWithDetail"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:1 codeName:@"MADownloadXpcError"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:2 codeName:@"MADownloadConnectionInterrupted"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:3 codeName:@"MADownloadFailed"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:4 codeName:@"MADownloadStagingFailed"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:5 codeName:@"MADownloadMetaDataProcessFailed"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:6 codeName:@"MADownloadUnzipFailed"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:7 codeName:@"MADownloadMoveFailed"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:8 codeName:@"MADownloadInstallFailed"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:9 codeName:@"MADownloadDaemonExit"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:10 codeName:@"MADownloadAssetAlreadyInstalled"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:11 codeName:@"MADownloadInvalidSZExtractor"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:12 codeName:@"MADownloadNotEntitled"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:13 codeName:@"MADownloadDaemonNotReady"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:14 codeName:@"MADownloadNoChange"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:15 codeName:@"MADownloadNotApplicableForRequireByOs"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:16 codeName:@"MADownloadNoExtractorFailure"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:17 codeName:@"MADownloadTransformFailure"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:18 codeName:@"MADownloadNoMatchFound" indicating:32];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:19 codeName:@"MADownloadNilAssetType"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:20 codeName:@"MADownloadNilAssetId"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:21 codeName:@"MADownloadStreamingZipNotSupported"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:22 codeName:@"MADownloadBadOptions"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:23 codeName:@"MADownloadAssetBadMetaData"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:24 codeName:@"MADownloadUnableToCreateMessage"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:25 codeName:@"MADownloadFailedNoStandardUrl"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:26 codeName:@"MADownloadFailedNoFallBackUrl"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:27 codeName:@"MADownloadFailedNoPallasUrl"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:28 codeName:@"MADownloadLostTask"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:29 codeName:@"MADownloadNotApplicableForInstalledWithOs"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:30 codeName:@"MADownloadNoValidSession"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:31 codeName:@"MADownloadResponseDeferred"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:32 codeName:@"MADownloadIncomplete"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:33 codeName:@"MADownloadNoStagingDir"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:34 codeName:@"MADownloadsNotAllowed"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:35 codeName:@"MADownloadUnknownResult"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:36 codeName:@"MADownloadAssetNoLongerInCatalog"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:37 codeName:@"MADownloadNoSpaceLeft"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:38 codeName:@"MADownloadCouldNotReplace"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:39 codeName:@"MADownloadMalformedAssetType"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:40 codeName:@"MADownloadServerBadRequest"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:41 codeName:@"MADownloadServerAuthFailure"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:42 codeName:@"MADownloadServerError"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:43 codeName:@"MADownloadNotFoundOrDenied"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:44 codeName:@"MADownloadNotFound"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:45 codeName:@"MADownloadServerInternalError"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:46 codeName:@"MADownloadMalformedAssetData"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:47 codeName:@"MADownloadNetworkingError"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:48 codeName:@"MADownloadCancelled"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:49 codeName:@"MADownloadBadUrl"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:50 codeName:@"MADownloadBadServerResponse"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:51 codeName:@"MADownloadTimedOut"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:52 codeName:@"MADownloadTimedOutRequest"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:53 codeName:@"MADownloadTimedOutResource"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:54 codeName:@"MADownloadTimedOutWatchdog"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:55 codeName:@"MADownloadTimedOutStart"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:56 codeName:@"MADownloadTimedOutConnection"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:80 codeName:@"MADownloadTimedOutNoContent"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:81 codeName:@"MADownloadTimedOutBecameStalled"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:82 codeName:@"MADownloadTimedOutSlowDownload"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:83 codeName:@"MADownloadTimedOutFrequentStalls"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:57 codeName:@"MADownloadCannotLoadFromNetwork"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:58 codeName:@"MADownloadUnsupportedURL"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:59 codeName:@"MADownloadCannotFindHost"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:60 codeName:@"MADownloadCannotConnectToHost"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:61 codeName:@"MADownloadNetworkConnectionLost"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:62 codeName:@"MADownloadDNSLookupFailed"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:63 codeName:@"MADownloadHTTPTooManyRedirects"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:64 codeName:@"MADownloadResourceUnavailable"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:65 codeName:@"MADownloadNotConnectedToInternet"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:66 codeName:@"MADownloadRedirectToNonExistentLocation"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:67 codeName:@"MADownloadInternationalRoamingOff"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:68 codeName:@"MADownloadCallIsActive"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:69 codeName:@"MADownloadDataNotAllowed"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:70 codeName:@"MADownloadSecureConnectionFailed"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:71 codeName:@"MADownloadInvalidReceipts"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:72 codeName:@"MADownloadFailedNoFallbackAllowed"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:73 codeName:@"MADownloadLiveServerDisabledNoFallback"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Download" withCode:74 codeName:@"MADownloadMalformedPurpose"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:1 codeName:@"MAQueryXpcError"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:2 codeName:@"MAQueryCatalogNotDownloaded"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:3 codeName:@"MAQueryFailed"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:4 codeName:@"MAQueryDaemonExit"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:5 codeName:@"MAQueryNotEntitled"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:6 codeName:@"MAQueryCannotCreateMessage"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:7 codeName:@"MAQueryNilAssetType"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:8 codeName:@"MAQueryParamsEncodeFailure"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:9 codeName:@"MAQueryBeforeFirstUnlock"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:10 codeName:@"MAQueryCouldNotEncodeResults"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:11 codeName:@"MAQueryXpcLengthError"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:12 codeName:@"MAQueryUnknownResult"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:13 codeName:@"MAQueryTooManyResults"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Query" withCode:14 codeName:@"MAQueryHasAllowedDifferences"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:1 codeName:@"MAPurgeXpcError"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:2 codeName:@"MAPurgeConnectionInterrupted"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:3 codeName:@"MAPurgeAssetDidntExist"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:4 codeName:@"MAPurgeAssetCouldntPurge"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:5 codeName:@"MAPurgeFailed"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:6 codeName:@"MAPurgeNotEntitled"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:7 codeName:@"MAPurgeNotApplicableForRequireByOs"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:8 codeName:@"MAPurgeCouldNotCancelAllDownloads"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:9 codeName:@"MAPurgeCannotCreateMessage"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:10 codeName:@"MAPurgeEncodingFailure"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Purge" withCode:11 codeName:@"MAPurgeFailedBeforeFirstUnlock"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Xpc" withCode:1 codeName:@"MAXpcErrorParamMissing"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Xpc" withCode:2 codeName:@"MAXpcErrorLengthZero"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Xpc" withCode:3 codeName:@"MAXpcErrorLengthMissing"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Xpc" withCode:4 codeName:@"MAXpcErrorLengthMismatch"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Xpc" withCode:5 codeName:@"MAXpcErrorDataMismatch"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Xpc" withCode:6 codeName:@"MAXpcErrorEmptyData"];
  [MEMORY[0x277D64430] attributesOfErrorForDomain:@"com.apple.MobileAssetError.Xpc" withCode:7 codeName:@"MAXpcErrorConnectionTerminated"];
}

- (void)downloadSoftwareUpdateAssetWithPolicy:(id)policy withUUID:(id)d completion:(id)completion
{
  completionCopy = completion;
  v9 = [policy constructMASoftwareUpdateAssetDownloadOptionsWithUUID:d];
  [(SUCoreMobileAsset *)self _downloadAssetWithOptions:v9 completion:completionCopy];
}

- (void)downloadDocumentationAssetWithPolicy:(id)policy withUUID:(id)d stashingDocumentationForBuild:(id)build completion:(id)completion
{
  completionCopy = completion;
  buildCopy = build;
  v12 = [policy constructMADocumentationAssetDownloadOptionsWithUUID:d];
  [(SUCoreMobileAsset *)self _downloadAssetWithOptions:v12 stashingDocumentationForBuild:buildCopy completion:completionCopy];
}

- (void)alterDownloadOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v8 = [MEMORY[0x277D643F8] beginTransactionWithName:@"ma.AlterDownloadOptions"];
  maControlQueue = [(SUCoreMobileAsset *)self maControlQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__SUCoreMobileAsset_alterDownloadOptions_completion___block_invoke;
  v13[3] = &unk_27892D2C8;
  v13[4] = self;
  v14 = v8;
  v15 = optionsCopy;
  v16 = completionCopy;
  v10 = optionsCopy;
  v11 = v8;
  v12 = completionCopy;
  dispatch_async(maControlQueue, v13);
}

void __53__SUCoreMobileAsset_alterDownloadOptions_completion___block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) alterDownloadCompletion];

  if (v3)
  {
    v4 = [MEMORY[0x277D64460] sharedLogger];
    v5 = [v4 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __53__SUCoreMobileAsset_alterDownloadOptions_completion___block_invoke_cold_1();
    }

    if (*(a1 + 56))
    {
      v6 = [*(a1 + 32) clientCompletionQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__SUCoreMobileAsset_alterDownloadOptions_completion___block_invoke_1094;
      block[3] = &unk_27892D368;
      v55 = @"alter download config when already altering with completion - cannot accept additional alteration request";
      v57 = *(a1 + 56);
      v56 = *(a1 + 40);
      dispatch_async(v6, block);

      v7 = v55;
LABEL_18:

      return;
    }

    goto LABEL_19;
  }

  if ([*v2 removingAsset])
  {
    v8 = [MEMORY[0x277D64460] sharedLogger];
    v9 = [v8 oslog];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __53__SUCoreMobileAsset_alterDownloadOptions_completion___block_invoke_cold_3();
    }

    if (*(a1 + 56))
    {
      v10 = [*(a1 + 32) clientCompletionQueue];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __53__SUCoreMobileAsset_alterDownloadOptions_completion___block_invoke_1098;
      v50[3] = &unk_27892D368;
      v51 = @"alter download config when removing asset - alteration of configuration ignored";
      v53 = *(a1 + 56);
      v52 = *(a1 + 40);
      dispatch_async(v10, v50);

      v7 = v51;
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  if (![*v2 downloadingAsset])
  {
    v11 = [MEMORY[0x277D64460] sharedLogger];
    v12 = [v11 oslog];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __53__SUCoreMobileAsset_alterDownloadOptions_completion___block_invoke_cold_2();
    }

    if (*(a1 + 56))
    {
      v13 = [*(a1 + 32) clientCompletionQueue];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __53__SUCoreMobileAsset_alterDownloadOptions_completion___block_invoke_1105;
      v46[3] = &unk_27892D368;
      v47 = @"alter download config when not downloading - alteration of configuration ignored";
      v49 = *(a1 + 56);
      v48 = *(a1 + 40);
      dispatch_async(v13, v46);

      v7 = v47;
      goto LABEL_18;
    }

LABEL_19:
    [MEMORY[0x277D643F8] endTransaction:*(a1 + 40) withName:@"ma.AlterDownloadOptions"];
    return;
  }

  if (*(a1 + 56))
  {
    [*(a1 + 32) setAlterDownloadCompletion:?];
    [*(a1 + 32) setAlterDownloadTransaction:*(a1 + 40)];
  }

  else
  {
    [MEMORY[0x277D643F8] endTransaction:*(a1 + 40) withName:@"ma.AlterDownloadOptions"];
  }

  v14 = [*v2 desiredDownloadConfig];

  if (v14)
  {
    v15 = *(a1 + 48);
    v16 = [*(a1 + 32) requestedDownloadConfig];
    v17 = [SUCoreMobileAsset downloadConfig:v15 isEqualToConfig:v16];

    if (v17)
    {
      v18 = [MEMORY[0x277D64460] sharedLogger];
      v19 = [v18 oslog];

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *v2;
        v21 = [*v2 requestedDownloadConfig];
        v22 = [SUCoreMobileAsset downloadConfigSummary:v21];
        *buf = 138543618;
        v59 = v20;
        v60 = 2114;
        v61 = v22;
        _os_log_impl(&dword_23193C000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ alter download config to same as being requested (%{public}@) | dropping earlier desire to alter", buf, 0x16u);
      }

      [*v2 setDesiredDownloadConfig:0];
      return;
    }

    [*(a1 + 32) setDesiredDownloadConfig:*(a1 + 48)];
    v34 = [MEMORY[0x277D64460] sharedLogger];
    v29 = [v34 oslog];

    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v35 = *v2;
      v31 = [v35 desiredDownloadConfig];
      v32 = [SUCoreMobileAsset downloadConfigSummary:v31];
      *buf = 138543618;
      v59 = v35;
      v60 = 2114;
      v61 = v32;
      v33 = "%{public}@ alter download config to different than requested | replacing earlier desire to alter with latest desired (%{public}@)";
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  v23 = [*(a1 + 32) requestedDownloadConfig];

  v24 = *(a1 + 48);
  v25 = *(a1 + 32);
  if (v23)
  {
    v26 = [v25 requestedDownloadConfig];
    v27 = [SUCoreMobileAsset downloadConfig:v24 isEqualToConfig:v26];

    if (v27)
    {
      v28 = [MEMORY[0x277D64460] sharedLogger];
      v29 = [v28 oslog];

      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *v2;
        v31 = [v30 requestedDownloadConfig];
        v32 = [SUCoreMobileAsset downloadConfigSummary:v31];
        *buf = 138543618;
        v59 = v30;
        v60 = 2114;
        v61 = v32;
        v33 = "%{public}@ alter download config to same as being requested (%{public}@)";
LABEL_38:
        _os_log_impl(&dword_23193C000, v29, OS_LOG_TYPE_DEFAULT, v33, buf, 0x16u);
      }
    }

    else
    {
      [*(a1 + 32) setDesiredDownloadConfig:*(a1 + 48)];
      v41 = [MEMORY[0x277D64460] sharedLogger];
      v29 = [v41 oslog];

      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v42 = *v2;
        v31 = [v42 desiredDownloadConfig];
        v32 = [SUCoreMobileAsset downloadConfigSummary:v31];
        *buf = 138543618;
        v59 = v42;
        v60 = 2114;
        v61 = v32;
        v33 = "%{public}@ alter download config to different than being requested | remembering desired (%{public}@)";
        goto LABEL_38;
      }
    }

LABEL_39:

    return;
  }

  v36 = [v25 currentDownloadConfig];
  v37 = [SUCoreMobileAsset downloadConfig:v24 isEqualToConfig:v36];

  if (v37)
  {
    v38 = objc_alloc(MEMORY[0x277CCACA8]);
    v39 = [*v2 currentDownloadConfig];
    v40 = [SUCoreMobileAsset downloadConfigSummary:v39];
    v45 = [v38 initWithFormat:@"alter download config when currently at expressed config (%@)", v40];

    [*v2 _issueAlterDownloadCompletion:0 forReason:v45];
  }

  else
  {
    v43 = *(a1 + 32);
    v44 = *(a1 + 48);

    [v43 _requestChangeConfigDownload:v44];
  }
}

void __53__SUCoreMobileAsset_alterDownloadOptions_completion___block_invoke_1094(void *a1)
{
  v2 = [MEMORY[0x277D643F8] sharedCore];
  v3 = [v2 buildError:8703 underlying:0 description:a1[4]];

  (*(a1[6] + 16))();
  [MEMORY[0x277D643F8] endTransaction:a1[5] withName:@"ma.AlterDownloadOptions"];
}

void __53__SUCoreMobileAsset_alterDownloadOptions_completion___block_invoke_1098(void *a1)
{
  v2 = [MEMORY[0x277D643F8] sharedCore];
  v3 = [v2 buildError:8703 underlying:0 description:a1[4]];

  (*(a1[6] + 16))();
  [MEMORY[0x277D643F8] endTransaction:a1[5] withName:@"ma.AlterDownloadOptions"];
}

void __53__SUCoreMobileAsset_alterDownloadOptions_completion___block_invoke_1105(void *a1)
{
  v2 = [MEMORY[0x277D643F8] sharedCore];
  v3 = [v2 buildError:8703 underlying:0 description:a1[4]];

  (*(a1[6] + 16))();
  [MEMORY[0x277D643F8] endTransaction:a1[5] withName:@"ma.AlterDownloadOptions"];
}

- (void)downloadConfigStatus:(id)status
{
  statusCopy = status;
  v5 = [MEMORY[0x277D643F8] beginTransactionWithName:@"ma.DownloadConfigStatus.Completion"];
  maControlQueue = [(SUCoreMobileAsset *)self maControlQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SUCoreMobileAsset_downloadConfigStatus___block_invoke;
  block[3] = &unk_27892D368;
  v10 = v5;
  v11 = statusCopy;
  block[4] = self;
  v7 = v5;
  v8 = statusCopy;
  dispatch_async(maControlQueue, block);
}

void __42__SUCoreMobileAsset_downloadConfigStatus___block_invoke(id *a1)
{
  if ([a1[4] downloadingAsset] && (objc_msgSend(a1[4], "removingAsset") & 1) == 0)
  {
    v6 = [a1[4] currentDownloadConfig];
    v3 = [SUCoreMobileAsset downloadConfigCopy:v6];

    v7 = [a1[4] requestedDownloadConfig];
    v4 = [SUCoreMobileAsset downloadConfigCopy:v7];

    v2 = [a1[4] desiredDownloadConfig];
    v5 = [SUCoreMobileAsset downloadConfigCopy:v2];
  }

  else
  {
    v2 = [a1[4] currentDownloadConfig];
    v3 = [SUCoreMobileAsset downloadConfigCopy:v2];
    v4 = 0;
    v5 = 0;
  }

  v8 = a1[4];
  if (a1[6])
  {
    v9 = [v8 clientCompletionQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __42__SUCoreMobileAsset_downloadConfigStatus___block_invoke_2;
    v10[3] = &unk_27892D390;
    v16 = a1[6];
    v11 = v3;
    v12 = v4;
    v13 = v5;
    v14 = 0;
    v15 = a1[5];
    dispatch_async(v9, v10);
  }

  else
  {
    [v8 _trackMAAnomaly:@"CONFIG" result:8101 description:@"download config status requested with no completion provided"];
    [MEMORY[0x277D643F8] endTransaction:a1[5] withName:@"ma.DownloadConfigStatus.Completion"];
  }
}

uint64_t __42__SUCoreMobileAsset_downloadConfigStatus___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 72) + 16))();
  v2 = MEMORY[0x277D643F8];
  v3 = *(a1 + 64);

  return [v2 endTransaction:v3 withName:@"ma.DownloadConfigStatus.Completion"];
}

- (void)removeAsset:(id)asset
{
  assetCopy = asset;
  v5 = [MEMORY[0x277D643F8] beginTransactionWithName:@"ma.RemoveAsset"];
  maControlQueue = [(SUCoreMobileAsset *)self maControlQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SUCoreMobileAsset_removeAsset___block_invoke;
  block[3] = &unk_27892D368;
  v10 = v5;
  v11 = assetCopy;
  block[4] = self;
  v7 = v5;
  v8 = assetCopy;
  dispatch_async(maControlQueue, block);
}

uint64_t __33__SUCoreMobileAsset_removeAsset___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) removingAsset])
  {
    v2 = *(a1 + 32);
    v3 = [MEMORY[0x277D643F8] sharedCore];
    v4 = [v3 buildError:8115 underlying:0 description:@"remove requested when already removing"];
    [v2 _reportAnomaly:v4 issuingCompletion:*(a1 + 48)];

    v5 = MEMORY[0x277D643F8];
    v6 = *(a1 + 40);

    return [v5 endTransaction:v6 withName:@"ma.RemoveAsset"];
  }

  else
  {
    [*(a1 + 32) setRemoveAssetTransaction:*(a1 + 40)];
    [*(a1 + 32) setRemoveCompletion:*(a1 + 48)];
    [*(a1 + 32) setRemovingAsset:1];
    [*(a1 + 32) setAssetDownloaded:0];
    [*(a1 + 32) setAssetRemoved:0];
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v9 = [*(a1 + 32) _updateAssetTypeName];
    v10 = [*(a1 + 32) updateUUID];
    v11 = [v8 initWithFormat:@"[MA-REMOVE:%@(%@)]", v9, v10];
    [*(a1 + 32) setOperationName:v11];

    v12 = *(a1 + 32);

    return [v12 _cancelDownloadAndPurge];
  }
}

- (void)_downloadAssetWithOptions:(id)options stashingDocumentationForBuild:(id)build completion:(id)completion
{
  optionsCopy = options;
  buildCopy = build;
  completionCopy = completion;
  v11 = [MEMORY[0x277D643F8] beginTransactionWithName:@"ma.DownloadAsset"];
  maControlQueue = [(SUCoreMobileAsset *)self maControlQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __88__SUCoreMobileAsset__downloadAssetWithOptions_stashingDocumentationForBuild_completion___block_invoke;
  block[3] = &unk_27892D2F0;
  v20 = buildCopy;
  v21 = completionCopy;
  block[4] = self;
  v18 = v11;
  v19 = optionsCopy;
  v13 = buildCopy;
  v14 = optionsCopy;
  v15 = v11;
  v16 = completionCopy;
  dispatch_async(maControlQueue, block);
}

void __88__SUCoreMobileAsset__downloadAssetWithOptions_stashingDocumentationForBuild_completion___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) downloadingAsset] & 1) != 0 || objc_msgSend(*(a1 + 32), "removingAsset"))
  {
    v2 = objc_alloc(MEMORY[0x277CCACA8]);
    if ([*(a1 + 32) downloadingAsset])
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    if ([*(a1 + 32) removingAsset])
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    v38 = [v2 initWithFormat:@"download requested when busy performing other MA operation (downloading=%@, removing=%@)", v3, v4];
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x277D643F8] sharedCore];
    v7 = [v6 buildError:8115 underlying:0 description:v38];
    [v5 _reportAnomaly:v7 issuingCompletion:*(a1 + 64)];

    [MEMORY[0x277D643F8] endTransaction:*(a1 + 40) withName:@"ma.DownloadAsset"];

    return;
  }

  if ([*(a1 + 32) assetDownloaded])
  {
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277D643F8] sharedCore];
    v10 = [v9 buildError:8115 underlying:0 description:@"download requested when asset was already downloaded"];
    [v8 _reportAnomaly:v10 issuingCompletion:*(a1 + 64)];

    v11 = MEMORY[0x277D643F8];
    v12 = *(a1 + 40);

    [v11 endTransaction:v12 withName:@"ma.DownloadAsset"];
    return;
  }

  [*(a1 + 32) setDownloadAssetTransaction:*(a1 + 40)];
  v13 = [*(a1 + 32) currentDownloadConfig];
  if (v13 || ([*(a1 + 32) requestedDownloadConfig], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_19:
    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    v15 = [*(a1 + 32) currentDownloadConfig];
    if (v15)
    {
      v16 = [*(a1 + 32) currentDownloadConfig];
    }

    else
    {
      v16 = @"NONE";
    }

    v17 = [*(a1 + 32) requestedDownloadConfig];
    if (v17)
    {
      v18 = [*(a1 + 32) requestedDownloadConfig];
    }

    else
    {
      v18 = @"NONE";
    }

    v19 = [*(a1 + 32) desiredDownloadConfig];
    if (v19)
    {
      v20 = [*(a1 + 32) desiredDownloadConfig];
      v21 = [v14 initWithFormat:@"starting to download asset with stale download config, current=%@, requested=%@, desired=%@", v16, v18, v20];
    }

    else
    {
      v21 = [v14 initWithFormat:@"starting to download asset with stale download config, current=%@, requested=%@, desired=%@", v16, v18, @"NONE"];
    }

    if (v17)
    {
    }

    if (v15)
    {
    }

    v22 = *(a1 + 32);
    v23 = [MEMORY[0x277D643F8] sharedCore];
    v24 = [v23 buildError:8111 underlying:0 description:v21];
    [v22 _reportAnomaly:v24 issuingCompletion:0];

    [*(a1 + 32) setCurrentDownloadConfig:0];
    [*(a1 + 32) setRequestedDownloadConfig:0];
    [*(a1 + 32) setDesiredDownloadConfig:0];

    goto LABEL_33;
  }

  v37 = [*(a1 + 32) desiredDownloadConfig];

  if (v37)
  {
    goto LABEL_19;
  }

LABEL_33:
  [*(a1 + 32) setDownloadOptions:*(a1 + 48)];
  [*(a1 + 32) setDocumentationStashBuild:*(a1 + 56)];
  v25 = [MEMORY[0x277D64460] sharedLogger];
  v26 = [v25 oslog];

  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = *(a1 + 56);
    *buf = 138412290;
    v40 = v27;
    _os_log_impl(&dword_23193C000, v26, OS_LOG_TYPE_DEFAULT, "Setting stashDocumentationBuild=%@", buf, 0xCu);
  }

  v28 = objc_alloc_init(MEMORY[0x277D28A00]);
  [*(a1 + 32) setCurrentDownloadConfig:v28];

  v29 = [*(a1 + 32) downloadOptions];

  if (v29)
  {
    v30 = [*(a1 + 32) downloadOptions];
    v31 = [v30 discretionary];
    v32 = [*(a1 + 32) currentDownloadConfig];
    [v32 setDiscretionary:v31];
  }

  [*(a1 + 32) setDownloadCompletion:*(a1 + 64)];
  v33 = objc_alloc(MEMORY[0x277CCACA8]);
  v34 = [*(a1 + 32) _updateAssetTypeName];
  v35 = [*(a1 + 32) updateUUID];
  v36 = [v33 initWithFormat:@"[MA-DOWNLOAD:%@(%@)]", v34, v35];
  [*(a1 + 32) setOperationName:v36];

  [*(a1 + 32) setDownloadingAsset:1];
  [*(a1 + 32) setAssetDownloaded:0];
  [*(a1 + 32) setAssetRemoved:0];
  [*(a1 + 32) _registerProgressAndStartDownload];
}

- (void)_registerProgressAndStartDownload
{
  v38 = *MEMORY[0x277D85DE8];
  maControlQueue = [(SUCoreMobileAsset *)self maControlQueue];
  dispatch_assert_queue_V2(maControlQueue);

  maDelegate = [(SUCoreMobileAsset *)self maDelegate];
  if (objc_opt_respondsToSelector())
  {

LABEL_4:
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy5 = self;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ attaching download progress handler", buf, 0xCu);
    }

    asset = [(SUCoreMobileAsset *)self asset];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __54__SUCoreMobileAsset__registerProgressAndStartDownload__block_invoke;
    v33[3] = &unk_27892E558;
    v33[4] = self;
    [asset attachProgressCallBack:v33];
    goto LABEL_7;
  }

  maDelegate2 = [(SUCoreMobileAsset *)self maDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    goto LABEL_4;
  }

  mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
  asset = [mEMORY[0x277D64460]2 oslog];

  if (os_log_type_enabled(asset, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy5 = self;
    _os_log_impl(&dword_23193C000, asset, OS_LOG_TYPE_DEFAULT, "%{public}@ downloading without progress handler", buf, 0xCu);
  }

LABEL_7:

  downloadOptions = [(SUCoreMobileAsset *)self downloadOptions];
  if (!downloadOptions)
  {
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    v25 = [mEMORY[0x277D643F8] buildError:8116 underlying:0 description:@"failed to load the download options when options were expected"];

    mEMORY[0x277D643F8]2 = [MEMORY[0x277D643F8] sharedCore];
    v27 = [mEMORY[0x277D643F8]2 buildError:8700 underlying:v25 description:@"failed to download asset"];

    [(SUCoreMobileAsset *)self _reportDownloadFailed:v27];
LABEL_26:

    goto LABEL_27;
  }

  mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
  oslog2 = [mEMORY[0x277D64460]3 oslog];

  if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [SUCoreMobileAsset downloadOptionsDescription:downloadOptions];
    *buf = 138543618;
    selfCopy5 = self;
    v36 = 2114;
    v37 = v13;
    _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "%{public}@ downloading asset with options: %{public}@", buf, 0x16u);
  }

  mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
  oslog3 = [mEMORY[0x277D64460]4 oslog];

  if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
  {
    asset2 = [(SUCoreMobileAsset *)self asset];
    purpose = [asset2 purpose];
    *buf = 138543618;
    selfCopy5 = self;
    v36 = 2114;
    v37 = purpose;
    _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "%{public}@ asset has purpose (before download start): %{public}@", buf, 0x16u);
  }

  asset3 = [(SUCoreMobileAsset *)self asset];
  purpose2 = [asset3 purpose];

  if (purpose2)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    mEMORY[0x277D64460]5 = [MEMORY[0x277D64460] sharedLogger];
    oslog4 = [mEMORY[0x277D64460]5 oslog];

    if (isKindOfClass)
    {
      if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy5 = self;
        _os_log_impl(&dword_23193C000, oslog4, OS_LOG_TYPE_DEFAULT, "%{public}@ setting download options purpose before start of the download as a workaround", buf, 0xCu);
      }

      oslog4 = [(SUCoreMobileAsset *)self asset];
      purpose3 = [oslog4 purpose];
      [downloadOptions setPurpose:purpose3];
    }

    else if (os_log_type_enabled(oslog4, OS_LOG_TYPE_ERROR))
    {
      [SUCoreMobileAsset _registerProgressAndStartDownload];
    }
  }

  asset4 = [(SUCoreMobileAsset *)self asset];

  if (!asset4)
  {
    mEMORY[0x277D643F8]3 = [MEMORY[0x277D643F8] sharedCore];
    v25 = [mEMORY[0x277D643F8]3 buildError:8700 underlying:0 description:@"failed to download asset (self.asset is not present)"];

    [(SUCoreMobileAsset *)self _reportDownloadFailed:v25];
    goto LABEL_26;
  }

  [(SUCoreMobileAsset *)self _trackMobileAssetBegin:@"startDownload"];
  asset5 = [(SUCoreMobileAsset *)self asset];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __54__SUCoreMobileAsset__registerProgressAndStartDownload__block_invoke_1155;
  v32[3] = &unk_27892E5A8;
  v32[4] = self;
  [asset5 SUCoreBorder_startDownload:downloadOptions completionWithError:v32];

LABEL_27:
}

void __54__SUCoreMobileAsset__registerProgressAndStartDownload__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) maControlQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__SUCoreMobileAsset__registerProgressAndStartDownload__block_invoke_2;
  v6[3] = &unk_27892D478;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __54__SUCoreMobileAsset__registerProgressAndStartDownload__block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) removingAsset] & 1) != 0 || objc_msgSend(*(a1 + 32), "assetRemoved"))
  {
    v2 = [MEMORY[0x277D64460] sharedLogger];
    v3 = [v2 oslog];

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      if ([v4 removingAsset])
      {
        v5 = @"YES";
      }

      else
      {
        v5 = @"NO";
      }

      v6 = [*(a1 + 32) assetRemoved];
      *buf = 138543874;
      if (v6)
      {
        v7 = @"YES";
      }

      else
      {
        v7 = @"NO";
      }

      v23 = v4;
      v24 = 2114;
      v25 = v5;
      v26 = 2114;
      v27 = v7;
      _os_log_impl(&dword_23193C000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ download progress when removing(%{public}@), removed(%{public}@) - progress report ignored", buf, 0x20u);
    }
  }

  else if ([*(a1 + 32) downloadingAsset])
  {
    v8 = 0.0;
    if ([*(a1 + 40) totalWritten] >= 1 && objc_msgSend(*(a1 + 40), "totalExpected"))
    {
      v9 = [*(a1 + 40) totalWritten];
      v8 = v9 / [*(a1 + 40) totalExpected];
    }

    v10 = objc_alloc(MEMORY[0x277D64488]);
    v11 = *MEMORY[0x277D64828];
    v12 = [*(a1 + 40) isStalled];
    v13 = [*(a1 + 40) totalWritten];
    v14 = [*(a1 + 40) totalExpected];
    [*(a1 + 40) expectedTimeRemaining];
    v16 = v15;
    v17 = [*(a1 + 40) taskDescription];
    *&v18 = v8;
    v21 = [v10 initWithPhase:v11 isStalled:v12 portionComplete:v13 totalWrittenBytes:v14 totalExpectedBytes:v17 remaining:v18 taskDescription:v16];

    v19 = *(a1 + 32);
    if (v21)
    {
      [v19 _reportDownloadProgress:?];
    }

    else
    {
      [v19 _trackMAAnomaly:@"PROGRESS" result:8100 description:@"unable to create progress report"];
    }
  }

  else
  {
    v20 = *(a1 + 32);

    [v20 _trackMAAnomaly:@"PROGRESS" result:8115 description:@"progress indication when not downloading (and not removing)"];
  }
}

void __54__SUCoreMobileAsset__registerProgressAndStartDownload__block_invoke_1155(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) _trackMobileAssetEnd:@"startDownload" withResult:a2 withError:v5];
  v6 = [*(a1 + 32) maControlQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SUCoreMobileAsset__registerProgressAndStartDownload__block_invoke_2_1156;
  block[3] = &unk_27892E580;
  v7 = *(a1 + 32);
  v10 = v5;
  v11 = a2;
  block[4] = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

void __54__SUCoreMobileAsset__registerProgressAndStartDownload__block_invoke_2_1156(uint64_t a1)
{
  v2 = [*(a1 + 32) downloadingAsset];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 setDownloadingAsset:0];
    v4 = *(a1 + 48);
    if (v4 == 10 || v4 == 0)
    {
      v6 = *(a1 + 32);
      v7 = objc_alloc(MEMORY[0x277D64488]);
      LODWORD(v8) = 1.0;
      v9 = [v7 initWithPhase:*MEMORY[0x277D64828] isStalled:0 portionComplete:-1 totalWrittenBytes:-1 totalExpectedBytes:v8 remaining:0.0];
      [v6 _reportDownloaded:v9];

      if (([*(a1 + 32) removingAsset] & 1) == 0)
      {
        v10 = *(a1 + 32);

        [v10 setAssetDownloaded:1];
      }
    }

    else
    {
      v11 = [MEMORY[0x277D643F8] sharedCore];
      v12 = [v11 buildError:8700 underlying:*(a1 + 40) description:@"failed to download asset"];

      [*(a1 + 32) _reportDownloadFailed:v12];
    }
  }

  else
  {

    [v3 _trackMAAnomaly:@"DOWNLOAD" result:8115 description:@"download finished when not downloading"];
  }
}

- (void)_requestChangeConfigDownload:(id)download
{
  downloadCopy = download;
  maControlQueue = [(SUCoreMobileAsset *)self maControlQueue];
  dispatch_assert_queue_V2(maControlQueue);

  asset = [(SUCoreMobileAsset *)self asset];

  if (asset)
  {
    [(SUCoreMobileAsset *)self setRequestedDownloadConfig:downloadCopy];
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    operationName = [(SUCoreMobileAsset *)self operationName];
    v9 = [SUCoreMobileAsset downloadConfigSummary:downloadCopy];
    v10 = [v7 initWithFormat:@"%@ [requesting (%@)]", operationName, v9];

    [(SUCoreMobileAsset *)self _trackMobileAssetBegin:@"configDownload" withIdentifier:v10];
    asset2 = [(SUCoreMobileAsset *)self asset];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __50__SUCoreMobileAsset__requestChangeConfigDownload___block_invoke;
    v15[3] = &unk_27892E5F8;
    v15[4] = self;
    v16 = v10;
    v12 = v10;
    [asset2 SUCoreBorder_configDownload:downloadCopy completion:v15];
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      [SUCoreMobileAsset _requestChangeConfigDownload:];
    }

    [(SUCoreMobileAsset *)self setRequestedDownloadConfig:0];
    [(SUCoreMobileAsset *)self setDesiredDownloadConfig:0];
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"alter download config failed - unable to change download config (self.asset is not present)"];
    [(SUCoreMobileAsset *)self _issueAlterDownloadCompletion:8703 forReason:v12];
  }
}

void __50__SUCoreMobileAsset__requestChangeConfigDownload___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _trackMobileAssetEnd:@"configDownload" withIdentifier:*(a1 + 40) withResult:a2 withError:0];
  v4 = [*(a1 + 32) maControlQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__SUCoreMobileAsset__requestChangeConfigDownload___block_invoke_2;
  v5[3] = &unk_27892E5D0;
  v5[4] = *(a1 + 32);
  v5[5] = a2;
  dispatch_async(v4, v5);
}

void __50__SUCoreMobileAsset__requestChangeConfigDownload___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 == 2)
  {
    v3 = [*(a1 + 32) alterDownloadCompletion];
    if (v3)
    {
    }

    else if (([*(a1 + 32) checkedDownloadState] & 1) == 0)
    {
      [*(a1 + 32) setCheckedDownloadState:1];
      v12 = [MEMORY[0x277D643F8] sharedCore];
      v13 = [v12 waitedOperationQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __50__SUCoreMobileAsset__requestChangeConfigDownload___block_invoke_3;
      block[3] = &unk_27892C8A8;
      block[4] = *(a1 + 32);
      dispatch_async(v13, block);

      return;
    }

    v2 = *(a1 + 40);
  }

  v4 = *(a1 + 32);
  if (v2)
  {
    [v4 setRequestedDownloadConfig:0];
    [*(a1 + 32) setDesiredDownloadConfig:0];
    v5 = *(a1 + 32);
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"alter download config failed with result:%ld (MAOperationResult)", *(a1 + 40)];
    [v5 _issueAlterDownloadCompletion:8703 forReason:v14];
LABEL_8:

    return;
  }

  v6 = [v4 requestedDownloadConfig];

  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = [v7 requestedDownloadConfig];
    [*(a1 + 32) setCurrentDownloadConfig:v8];

    [*(a1 + 32) setRequestedDownloadConfig:0];
    v9 = [*(a1 + 32) desiredDownloadConfig];

    v10 = *(a1 + 32);
    if (v9)
    {
      v14 = [v10 desiredDownloadConfig];
      [*(a1 + 32) setDesiredDownloadConfig:0];
      [*(a1 + 32) _requestChangeConfigDownload:v14];
      goto LABEL_8;
    }

    v11 = @"successful config and no later desired config";
  }

  else
  {
    [v7 _trackMAAnomaly:@"CONFIG" result:8101 description:@"successful config change when no change requested"];
    [*(a1 + 32) setDesiredDownloadConfig:0];
    v10 = *(a1 + 32);
    v11 = @"successful config change when no requested config";
  }

  [v10 _issueAlterDownloadCompletion:0 forReason:v11];
}

void __50__SUCoreMobileAsset__requestChangeConfigDownload___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _trackMobileAssetBegin:@"refreshState"];
  v2 = [*(a1 + 32) asset];
  v3 = [v2 SUCoreBorder_refreshState];

  [*(a1 + 32) _trackMobileAssetEnd:@"refreshState" withResult:v3 withError:0];
  v4 = [*(a1 + 32) maControlQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__SUCoreMobileAsset__requestChangeConfigDownload___block_invoke_4;
  v5[3] = &unk_27892D4A0;
  v6 = v3;
  v5[4] = *(a1 + 32);
  dispatch_async(v4, v5);
}

void __50__SUCoreMobileAsset__requestChangeConfigDownload___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v2 != 1)
  {
    [v3 setRequestedDownloadConfig:0];
    [*(a1 + 32) setDesiredDownloadConfig:0];
    v9 = *(a1 + 32);
    v10 = @"alter download config failed to config and failed to refresh state";
    v11 = 8115;
    goto LABEL_6;
  }

  v4 = [v3 desiredDownloadConfig];

  if (v4)
  {
    v5 = [*(a1 + 32) currentDownloadConfig];
    v6 = [*(a1 + 32) desiredDownloadConfig];
    v7 = [SUCoreMobileAsset downloadConfig:v5 isEqualToConfig:v6];

    v8 = *(a1 + 32);
    if (v7)
    {
      [v8 setRequestedDownloadConfig:0];
      [*(a1 + 32) setDesiredDownloadConfig:0];
      v9 = *(a1 + 32);
      v10 = @"successfully refreshed state when desired config matches current config";
      v11 = 0;
LABEL_6:

      [v9 _issueAlterDownloadCompletion:v11 forReason:v10];
      return;
    }

    v12 = [v8 desiredDownloadConfig];
    [*(a1 + 32) setDesiredDownloadConfig:0];
  }

  else
  {
    v12 = [*(a1 + 32) requestedDownloadConfig];
  }

  [*(a1 + 32) setRequestedDownloadConfig:0];
  [*(a1 + 32) _requestChangeConfigDownload:v12];
}

- (void)_issueAlterDownloadCompletion:(int64_t)completion forReason:(id)reason
{
  v29 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  maControlQueue = [(SUCoreMobileAsset *)self maControlQueue];
  dispatch_assert_queue_V2(maControlQueue);

  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (completion)
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      [SUCoreScan _downloadCatalog:withIdentifier:];
    }

    oslog = [MEMORY[0x277D643F8] sharedCore];
    v10 = [oslog buildError:completion underlying:0 description:reasonCopy];
  }

  else
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      currentDownloadConfig = [(SUCoreMobileAsset *)self currentDownloadConfig];
      v12 = [SUCoreMobileAsset downloadConfigSummary:currentDownloadConfig];
      *buf = 138543874;
      selfCopy = self;
      v25 = 2114;
      v26 = v12;
      v27 = 2114;
      v28 = reasonCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ successfully altered download config (%{public}@) | %{public}@", buf, 0x20u);
    }

    v10 = 0;
  }

  alterDownloadCompletion = [(SUCoreMobileAsset *)self alterDownloadCompletion];

  if (alterDownloadCompletion)
  {
    alterDownloadCompletion2 = [(SUCoreMobileAsset *)self alterDownloadCompletion];
    alterDownloadTransaction = [(SUCoreMobileAsset *)self alterDownloadTransaction];
    [(SUCoreMobileAsset *)self setAlterDownloadCompletion:0];
    [(SUCoreMobileAsset *)self setAlterDownloadTransaction:0];
    clientCompletionQueue = [(SUCoreMobileAsset *)self clientCompletionQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__SUCoreMobileAsset__issueAlterDownloadCompletion_forReason___block_invoke;
    block[3] = &unk_27892C830;
    v22 = alterDownloadCompletion2;
    v20 = v10;
    v21 = alterDownloadTransaction;
    v17 = alterDownloadTransaction;
    v18 = alterDownloadCompletion2;
    dispatch_async(clientCompletionQueue, block);
  }
}

uint64_t __61__SUCoreMobileAsset__issueAlterDownloadCompletion_forReason___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = MEMORY[0x277D643F8];
  v3 = *(a1 + 40);

  return [v2 endTransaction:v3 withName:@"ma.AlterDownloadOptions"];
}

- (void)_cancelDownloadAndPurge
{
  maControlQueue = [(SUCoreMobileAsset *)self maControlQueue];
  dispatch_assert_queue_V2(maControlQueue);

  asset = [(SUCoreMobileAsset *)self asset];

  if (asset)
  {
    [(SUCoreMobileAsset *)self _trackMobileAssetBegin:@"cancelDownload"];
    asset2 = [(SUCoreMobileAsset *)self asset];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __44__SUCoreMobileAsset__cancelDownloadAndPurge__block_invoke;
    v8[3] = &unk_27892D250;
    v8[4] = self;
    [asset2 SUCoreBorder_cancelDownload:v8];
  }

  else
  {
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    v7 = [mEMORY[0x277D643F8] buildError:8701 underlying:0 description:@"failed to purge asset (self.asset is not present)"];

    [(SUCoreMobileAsset *)self _reportAssetRemoveFailed:v7];
  }
}

void __44__SUCoreMobileAsset__cancelDownloadAndPurge__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _trackMobileAssetEnd:@"cancelDownload" withResult:a2 withError:0];
  [*(a1 + 32) _trackMobileAssetBegin:@"purgeWithError"];
  v3 = [*(a1 + 32) asset];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__SUCoreMobileAsset__cancelDownloadAndPurge__block_invoke_2;
  v4[3] = &unk_27892E5A8;
  v4[4] = *(a1 + 32);
  [v3 SUCoreBorder_purgeWithError:v4];
}

void __44__SUCoreMobileAsset__cancelDownloadAndPurge__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [*(a1 + 32) _trackMobileAssetEnd:@"purgeWithError" withResult:a2 withError:v5];
  v6 = [*(a1 + 32) maControlQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SUCoreMobileAsset__cancelDownloadAndPurge__block_invoke_3;
  block[3] = &unk_27892E580;
  v7 = *(a1 + 32);
  v10 = v5;
  v11 = a2;
  block[4] = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

uint64_t __44__SUCoreMobileAsset__cancelDownloadAndPurge__block_invoke_3(uint64_t a1)
{
  if ([*(a1 + 32) removingAsset])
  {
    v2 = *(a1 + 48);
    if (v2 == 3 || v2 == 0)
    {
      [*(a1 + 32) _reportAssetRemoved];
    }

    else
    {
      v6 = [MEMORY[0x277D643F8] sharedCore];
      v7 = [v6 buildError:8701 underlying:*(a1 + 40) description:@"failed to purge asset"];

      [*(a1 + 32) _reportAssetRemoveFailed:v7];
    }

    [*(a1 + 32) setAssetRemoved:1];
    v8 = *(a1 + 32);

    return [v8 setRemovingAsset:0];
  }

  else
  {
    v4 = *(a1 + 32);

    return [v4 _trackMAAnomaly:@"CANCEL" result:8115 description:@"purge finished when not removing"];
  }
}

- (void)_reportDownloadProgress:(id)progress
{
  v24 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  maControlQueue = [(SUCoreMobileAsset *)self maControlQueue];
  dispatch_assert_queue_V2(maControlQueue);

  if (![(SUCoreMobileAsset *)self removingAsset]&& ![(SUCoreMobileAsset *)self assetRemoved])
  {
    isStalled = [progressCopy isStalled];
    maDelegate = [(SUCoreMobileAsset *)self maDelegate];
    if (isStalled)
    {
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        clientDelegateCallbackQueue = [(SUCoreMobileAsset *)self clientDelegateCallbackQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __45__SUCoreMobileAsset__reportDownloadProgress___block_invoke;
        block[3] = &unk_27892D478;
        block[4] = self;
        v19 = progressCopy;
        dispatch_async(clientDelegateCallbackQueue, block);

        v10 = v19;
LABEL_8:

        goto LABEL_12;
      }
    }

    else
    {
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        clientDelegateCallbackQueue2 = [(SUCoreMobileAsset *)self clientDelegateCallbackQueue];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __45__SUCoreMobileAsset__reportDownloadProgress___block_invoke_2;
        v16[3] = &unk_27892D478;
        v16[4] = self;
        v17 = progressCopy;
        dispatch_async(clientDelegateCallbackQueue2, v16);

        v10 = v17;
        goto LABEL_8;
      }
    }

    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      summary = [progressCopy summary];
      *buf = 138543618;
      selfCopy = self;
      v22 = 2114;
      v23 = summary;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ download progress (not reported): progress=%{public}@", buf, 0x16u);
    }
  }

LABEL_12:
}

void __45__SUCoreMobileAsset__reportDownloadProgress___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) maDelegate];
  [v2 maDownloadStalled:*(a1 + 40)];
}

void __45__SUCoreMobileAsset__reportDownloadProgress___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) maDelegate];
  [v2 maDownloadProgress:*(a1 + 40)];
}

- (void)_reportDownloaded:(id)downloaded
{
  v50 = *MEMORY[0x277D85DE8];
  downloadedCopy = downloaded;
  maControlQueue = [(SUCoreMobileAsset *)self maControlQueue];
  dispatch_assert_queue_V2(maControlQueue);

  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    documentationStashBuild = [(SUCoreMobileAsset *)self documentationStashBuild];
    v9 = +[SUCoreDocumentationDataManager sharedManager];
    *buf = 138412546;
    selfCopy2 = documentationStashBuild;
    v48 = 2112;
    v49 = v9;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "Report downloaded, found stashDocumentationBuild=%@ sharedmanager:%@", buf, 0x16u);
  }

  documentationStashBuild2 = [(SUCoreMobileAsset *)self documentationStashBuild];

  if (documentationStashBuild2)
  {
    mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
    oslog2 = [mEMORY[0x277D64460]2 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      documentationStashBuild3 = [(SUCoreMobileAsset *)self documentationStashBuild];
      *buf = 138543618;
      selfCopy2 = self;
      v48 = 2114;
      v49 = documentationStashBuild3;
      _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "%{public}@ Stashing documentation asset for build: %{public}@", buf, 0x16u);
    }

    v14 = +[SUCoreDocumentationDataManager sharedManager];
    asset = [(SUCoreMobileAsset *)self asset];
    documentationStashBuild4 = [(SUCoreMobileAsset *)self documentationStashBuild];
    v45 = 0;
    v17 = [v14 stashDocumentationAssetData:asset forBuildVersion:documentationStashBuild4 error:&v45];
    v18 = v45;

    if ((v17 & 1) == 0)
    {
      mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
      oslog3 = [mEMORY[0x277D64460]3 oslog];

      if (os_log_type_enabled(oslog3, OS_LOG_TYPE_ERROR))
      {
        [SUCoreMobileAsset _reportDownloaded:];
      }
    }

    [(SUCoreMobileAsset *)self setDocumentationStashBuild:0];
  }

  if ([(SUCoreMobileAsset *)self removingAsset]|| [(SUCoreMobileAsset *)self assetRemoved]|| ([(SUCoreMobileAsset *)self maDelegate], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_opt_respondsToSelector(), v21, (v22 & 1) == 0))
  {
    v26 = 0;
  }

  else
  {
    v23 = [MEMORY[0x277D643F8] beginTransactionWithName:@"ma.DownloadAsset.Delegate"];
    clientDelegateCallbackQueue = [(SUCoreMobileAsset *)self clientDelegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__SUCoreMobileAsset__reportDownloaded___block_invoke;
    block[3] = &unk_27892D340;
    block[4] = self;
    v43 = downloadedCopy;
    v44 = v23;
    v25 = v23;
    dispatch_async(clientDelegateCallbackQueue, block);

    v26 = 1;
  }

  downloadCompletion = [(SUCoreMobileAsset *)self downloadCompletion];

  if (downloadCompletion)
  {
    downloadCompletion2 = [(SUCoreMobileAsset *)self downloadCompletion];
    [(SUCoreMobileAsset *)self setDownloadCompletion:0];
    v29 = [MEMORY[0x277D643F8] beginTransactionWithName:@"ma.DownloadAsset.Completion"];
    clientCompletionQueue = [(SUCoreMobileAsset *)self clientCompletionQueue];
    v36 = MEMORY[0x277D85DD0];
    v37 = 3221225472;
    v38 = __39__SUCoreMobileAsset__reportDownloaded___block_invoke_2;
    v39 = &unk_27892CA88;
    v40 = v29;
    v41 = downloadCompletion2;
    summary = v29;
    oslog4 = downloadCompletion2;
    dispatch_async(clientCompletionQueue, &v36);

LABEL_18:
    goto LABEL_19;
  }

  if (v26)
  {
    goto LABEL_20;
  }

  mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
  oslog4 = [mEMORY[0x277D64460]4 oslog];

  if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
  {
    summary = [downloadedCopy summary];
    *buf = 138543618;
    selfCopy2 = self;
    v48 = 2114;
    v49 = summary;
    _os_log_impl(&dword_23193C000, oslog4, OS_LOG_TYPE_DEFAULT, "%{public}@ downloaded (not reported): progress=%{public}@", buf, 0x16u);
    goto LABEL_18;
  }

LABEL_19:

LABEL_20:
  v33 = MEMORY[0x277D643F8];
  v34 = [(SUCoreMobileAsset *)self downloadAssetTransaction:v36];
  [v33 endTransaction:v34 withName:@"ma.DownloadAsset"];

  [(SUCoreMobileAsset *)self setDownloadAssetTransaction:0];
}

uint64_t __39__SUCoreMobileAsset__reportDownloaded___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) maDelegate];
  [v2 maDownloaded:*(a1 + 40)];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 48);

  return [v3 endTransaction:v4 withName:@"ma.DownloadAsset.Delegate"];
}

uint64_t __39__SUCoreMobileAsset__reportDownloaded___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = MEMORY[0x277D643F8];
  v3 = *(a1 + 32);

  return [v2 endTransaction:v3 withName:@"ma.DownloadAsset.Completion"];
}

- (void)_reportDownloadFailed:(id)failed
{
  v38 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  maControlQueue = [(SUCoreMobileAsset *)self maControlQueue];
  dispatch_assert_queue_V2(maControlQueue);

  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    documentationStashBuild = [(SUCoreMobileAsset *)self documentationStashBuild];
    *buf = 138412290;
    selfCopy = documentationStashBuild;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "Report download failed, found stashDocumentationBuild=%@", buf, 0xCu);
  }

  if ([(SUCoreMobileAsset *)self removingAsset]|| [(SUCoreMobileAsset *)self assetRemoved]|| ([(SUCoreMobileAsset *)self maDelegate], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_opt_respondsToSelector(), v9, (v10 & 1) == 0))
  {
    v14 = 0;
  }

  else
  {
    v11 = [MEMORY[0x277D643F8] beginTransactionWithName:@"ma.DownloadAsset.Delegate"];
    clientDelegateCallbackQueue = [(SUCoreMobileAsset *)self clientDelegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__SUCoreMobileAsset__reportDownloadFailed___block_invoke;
    block[3] = &unk_27892D340;
    block[4] = self;
    v32 = failedCopy;
    v33 = v11;
    v13 = v11;
    dispatch_async(clientDelegateCallbackQueue, block);

    v14 = 1;
  }

  downloadCompletion = [(SUCoreMobileAsset *)self downloadCompletion];

  if (downloadCompletion)
  {
    downloadCompletion2 = [(SUCoreMobileAsset *)self downloadCompletion];
    [(SUCoreMobileAsset *)self setDownloadCompletion:0];
    v17 = [MEMORY[0x277D643F8] beginTransactionWithName:@"ma.DownloadAsset.Completion"];
    clientCompletionQueue = [(SUCoreMobileAsset *)self clientCompletionQueue];
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __43__SUCoreMobileAsset__reportDownloadFailed___block_invoke_2;
    v27 = &unk_27892C830;
    v30 = downloadCompletion2;
    v28 = failedCopy;
    v29 = v17;
    v19 = v17;
    oslog2 = downloadCompletion2;
    dispatch_async(clientCompletionQueue, &v24);
  }

  else
  {
    if (v14)
    {
      goto LABEL_11;
    }

    mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
    oslog2 = [mEMORY[0x277D64460]2 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v36 = 2114;
      v37 = failedCopy;
      _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "%{public}@ download failed (not reported): error=%{public}@", buf, 0x16u);
    }
  }

LABEL_11:
  [(SUCoreMobileAsset *)self setDocumentationStashBuild:0, v24, v25, v26, v27];
  v21 = MEMORY[0x277D643F8];
  downloadAssetTransaction = [(SUCoreMobileAsset *)self downloadAssetTransaction];
  [v21 endTransaction:downloadAssetTransaction withName:@"ma.DownloadAsset"];

  [(SUCoreMobileAsset *)self setDownloadAssetTransaction:0];
}

uint64_t __43__SUCoreMobileAsset__reportDownloadFailed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) maDelegate];
  [v2 maDownloadFailed:*(a1 + 40)];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 48);

  return [v3 endTransaction:v4 withName:@"ma.DownloadAsset.Delegate"];
}

uint64_t __43__SUCoreMobileAsset__reportDownloadFailed___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = MEMORY[0x277D643F8];
  v3 = *(a1 + 40);

  return [v2 endTransaction:v3 withName:@"ma.DownloadAsset.Completion"];
}

- (void)_reportAssetRemoved
{
  v28 = *MEMORY[0x277D85DE8];
  maControlQueue = [(SUCoreMobileAsset *)self maControlQueue];
  dispatch_assert_queue_V2(maControlQueue);

  maDelegate = [(SUCoreMobileAsset *)self maDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [MEMORY[0x277D643F8] beginTransactionWithName:@"ma.RemoveAsset.Delegate"];
    clientDelegateCallbackQueue = [(SUCoreMobileAsset *)self clientDelegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__SUCoreMobileAsset__reportAssetRemoved__block_invoke;
    block[3] = &unk_27892D478;
    block[4] = self;
    v25 = v6;
    v8 = v6;
    dispatch_async(clientDelegateCallbackQueue, block);
  }

  removeCompletion = [(SUCoreMobileAsset *)self removeCompletion];

  if (removeCompletion)
  {
    removeCompletion2 = [(SUCoreMobileAsset *)self removeCompletion];
    [(SUCoreMobileAsset *)self setRemoveCompletion:0];
    v11 = [MEMORY[0x277D643F8] beginTransactionWithName:@"ma.RemoveAsset.Completion"];
    clientCompletionQueue = [(SUCoreMobileAsset *)self clientCompletionQueue];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __40__SUCoreMobileAsset__reportAssetRemoved__block_invoke_2;
    v21 = &unk_27892CA88;
    v22 = v11;
    v23 = removeCompletion2;
    v13 = v11;
    oslog = removeCompletion2;
    dispatch_async(clientCompletionQueue, &v18);
  }

  else
  {
    if (v5)
    {
      goto LABEL_6;
    }

    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ asset removed (not reported)", buf, 0xCu);
    }
  }

LABEL_6:
  v15 = MEMORY[0x277D643F8];
  v16 = [(SUCoreMobileAsset *)self removeAssetTransaction:v18];
  [v15 endTransaction:v16 withName:@"ma.RemoveAsset"];

  [(SUCoreMobileAsset *)self setRemoveAssetTransaction:0];
}

uint64_t __40__SUCoreMobileAsset__reportAssetRemoved__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) maDelegate];
  [v2 maAssetRemoved];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 40);

  return [v3 endTransaction:v4 withName:@"ma.RemoveAsset.Delegate"];
}

uint64_t __40__SUCoreMobileAsset__reportAssetRemoved__block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = MEMORY[0x277D643F8];
  v3 = *(a1 + 32);

  return [v2 endTransaction:v3 withName:@"ma.RemoveAsset.Completion"];
}

- (void)_reportAssetRemoveFailed:(id)failed
{
  v34 = *MEMORY[0x277D85DE8];
  failedCopy = failed;
  maControlQueue = [(SUCoreMobileAsset *)self maControlQueue];
  dispatch_assert_queue_V2(maControlQueue);

  maDelegate = [(SUCoreMobileAsset *)self maDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [MEMORY[0x277D643F8] beginTransactionWithName:@"ma.RemoveAsset.Delegate"];
    clientDelegateCallbackQueue = [(SUCoreMobileAsset *)self clientDelegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__SUCoreMobileAsset__reportAssetRemoveFailed___block_invoke;
    block[3] = &unk_27892D340;
    block[4] = self;
    v28 = failedCopy;
    v29 = v8;
    v10 = v8;
    dispatch_async(clientDelegateCallbackQueue, block);
  }

  removeCompletion = [(SUCoreMobileAsset *)self removeCompletion];

  if (removeCompletion)
  {
    removeCompletion2 = [(SUCoreMobileAsset *)self removeCompletion];
    [(SUCoreMobileAsset *)self setRemoveCompletion:0];
    v13 = [MEMORY[0x277D643F8] beginTransactionWithName:@"ma.RemoveAsset.Completion"];
    clientCompletionQueue = [(SUCoreMobileAsset *)self clientCompletionQueue];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __46__SUCoreMobileAsset__reportAssetRemoveFailed___block_invoke_2;
    v23 = &unk_27892C830;
    v26 = removeCompletion2;
    v24 = failedCopy;
    v25 = v13;
    v15 = v13;
    oslog = removeCompletion2;
    dispatch_async(clientCompletionQueue, &v20);
  }

  else
  {
    if (v7)
    {
      goto LABEL_6;
    }

    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v32 = 2114;
      v33 = failedCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ asset remove failed (not reported): error=%{public}@", buf, 0x16u);
    }
  }

LABEL_6:
  v17 = MEMORY[0x277D643F8];
  v18 = [(SUCoreMobileAsset *)self removeAssetTransaction:v20];
  [v17 endTransaction:v18 withName:@"ma.RemoveAsset"];

  [(SUCoreMobileAsset *)self setRemoveAssetTransaction:0];
}

uint64_t __46__SUCoreMobileAsset__reportAssetRemoveFailed___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) maDelegate];
  [v2 maAssetRemoveFailed:*(a1 + 40)];

  v3 = MEMORY[0x277D643F8];
  v4 = *(a1 + 48);

  return [v3 endTransaction:v4 withName:@"ma.RemoveAsset.Delegate"];
}

uint64_t __46__SUCoreMobileAsset__reportAssetRemoveFailed___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = MEMORY[0x277D643F8];
  v3 = *(a1 + 40);

  return [v2 endTransaction:v3 withName:@"ma.RemoveAsset.Completion"];
}

- (void)_reportAnomaly:(id)anomaly issuingCompletion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  anomalyCopy = anomaly;
  completionCopy = completion;
  maControlQueue = [(SUCoreMobileAsset *)self maControlQueue];
  dispatch_assert_queue_V2(maControlQueue);

  maDelegate = [(SUCoreMobileAsset *)self maDelegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    clientDelegateCallbackQueue = [(SUCoreMobileAsset *)self clientDelegateCallbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__SUCoreMobileAsset__reportAnomaly_issuingCompletion___block_invoke;
    block[3] = &unk_27892D478;
    block[4] = self;
    v19 = anomalyCopy;
    dispatch_async(clientDelegateCallbackQueue, block);

    if (!completionCopy)
    {
      goto LABEL_7;
    }
  }

  else if (!completionCopy)
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v22 = 2114;
      v23 = anomalyCopy;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}@ anomaly (not reported): error=%{public}@", buf, 0x16u);
    }

    goto LABEL_6;
  }

  clientCompletionQueue = [(SUCoreMobileAsset *)self clientCompletionQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__SUCoreMobileAsset__reportAnomaly_issuingCompletion___block_invoke_2;
  v15[3] = &unk_27892CA88;
  v17 = completionCopy;
  v16 = anomalyCopy;
  dispatch_async(clientCompletionQueue, v15);

  oslog = v17;
LABEL_6:

LABEL_7:
}

void __54__SUCoreMobileAsset__reportAnomaly_issuingCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) maDelegate];
  [v2 maAnomaly:*(a1 + 40)];
}

- (void)_trackMobileAssetBegin:(id)begin
{
  beginCopy = begin;
  operationName = [(SUCoreMobileAsset *)self operationName];
  [(SUCoreMobileAsset *)self _trackMobileAssetBegin:beginCopy withIdentifier:operationName];
}

- (void)_trackMobileAssetBegin:(id)begin withIdentifier:(id)identifier
{
  v5 = MEMORY[0x277D64428];
  identifierCopy = identifier;
  beginCopy = begin;
  sharedDiag = [v5 sharedDiag];
  [sharedDiag trackBegin:beginCopy atLevel:1 forModule:@"ma" withIdentifier:identifierCopy];
}

- (void)_trackMobileAssetEnd:(id)end withResult:(int64_t)result withError:(id)error
{
  errorCopy = error;
  endCopy = end;
  operationName = [(SUCoreMobileAsset *)self operationName];
  [(SUCoreMobileAsset *)self _trackMobileAssetEnd:endCopy withIdentifier:operationName withResult:result withError:errorCopy];
}

- (void)_trackMobileAssetEnd:(id)end withIdentifier:(id)identifier withResult:(int64_t)result withError:(id)error
{
  v9 = MEMORY[0x277D64428];
  errorCopy = error;
  identifierCopy = identifier;
  endCopy = end;
  sharedDiag = [v9 sharedDiag];
  [sharedDiag trackEnd:endCopy atLevel:1 forModule:@"ma" withIdentifier:identifierCopy withResult:result withError:errorCopy];
}

- (void)_trackMAAnomaly:(id)anomaly result:(int64_t)result description:(id)description
{
  descriptionCopy = description;
  anomalyCopy = anomaly;
  maControlQueue = [(SUCoreMobileAsset *)self maControlQueue];
  dispatch_assert_queue_V2(maControlQueue);

  mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
  v15 = [mEMORY[0x277D643F8] buildError:result underlying:0 description:descriptionCopy];

  mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
  anomalyCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"[MA] %@", anomalyCopy];

  descriptionCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@ %@", self, descriptionCopy];
  [mEMORY[0x277D64428] trackAnomaly:anomalyCopy forReason:descriptionCopy withResult:result withError:v15];

  [(SUCoreMobileAsset *)self _reportAnomaly:v15];
}

- (id)_updateAssetTypeName
{
  maControlQueue = [(SUCoreMobileAsset *)self maControlQueue];
  dispatch_assert_queue_V2(maControlQueue);

  asset = [(SUCoreMobileAsset *)self asset];
  assetType = [asset assetType];
  v6 = [assetType componentsSeparatedByString:@"."];

  if ([v6 count])
  {
    lastObject = [v6 lastObject];
  }

  else
  {
    asset2 = [(SUCoreMobileAsset *)self asset];
    lastObject = [asset2 assetType];
  }

  return lastObject;
}

- (id)description
{
  operationName = [(SUCoreMobileAsset *)self operationName];
  if (!operationName)
  {
    operationName = @"[MA(initialized)]";
  }

  return operationName;
}

+ (id)downloadOptionsDescription:(id)description
{
  descriptionCopy = description;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = descriptionCopy;
  }

  else
  {
    v4 = 0;
  }

  v26 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([descriptionCopy allowsCellularAccess])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v25 = v5;
  timeoutIntervalForResource = [descriptionCopy timeoutIntervalForResource];
  if ([descriptionCopy discretionary])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v23 = v6;
  if ([descriptionCopy allowsExpensiveAccess])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v22 = v7;
  if ([descriptionCopy requiresPowerPluggedIn])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v21 = v8;
  if ([descriptionCopy canUseLocalCacheServer])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v20 = v9;
  if ([descriptionCopy prefersInfraWiFi])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  sessionId = [descriptionCopy sessionId];
  if (sessionId)
  {
    sessionId2 = [descriptionCopy sessionId];
  }

  else
  {
    sessionId2 = @"NONE";
  }

  if ([descriptionCopy liveServerCatalogOnly])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  if (v4)
  {
    liveAssetAudienceUUID = [v4 liveAssetAudienceUUID];
    purpose = [v4 purpose];
  }

  else
  {
    liveAssetAudienceUUID = @"NONE";
    purpose = @"NONE";
  }

  additionalServerParams = [descriptionCopy additionalServerParams];
  if (additionalServerParams)
  {
    additionalServerParams2 = [descriptionCopy additionalServerParams];
    v18 = [v26 initWithFormat:@"\n[>>>\n       allowsCellularAccess: %@\n timeoutIntervalForResource: %ld\n              discretionary: %@\n      allowsExpensiveAccess: %@\n     requiresPowerPluggedIn: %@\n     canUseLocalCacheServer: %@\n           prefersInfraWiFi: %@\n                  sessionId: %@\n      liveServerCatalogOnly: %@\n      liveAssetAudienceUUID: %@\n                    purpose: %@\n     additionalServerParams: %@\n<<<]", v25, timeoutIntervalForResource, v23, v22, v21, v20, v10, sessionId2, v13, liveAssetAudienceUUID, purpose, additionalServerParams2];
  }

  else
  {
    v18 = [v26 initWithFormat:@"\n[>>>\n       allowsCellularAccess: %@\n timeoutIntervalForResource: %ld\n              discretionary: %@\n      allowsExpensiveAccess: %@\n     requiresPowerPluggedIn: %@\n     canUseLocalCacheServer: %@\n           prefersInfraWiFi: %@\n                  sessionId: %@\n      liveServerCatalogOnly: %@\n      liveAssetAudienceUUID: %@\n                    purpose: %@\n     additionalServerParams: %@\n<<<]", v25, timeoutIntervalForResource, v23, v22, v21, v20, v10, sessionId2, v13, liveAssetAudienceUUID, purpose, @"NONE"];
  }

  if (v4)
  {
  }

  if (sessionId)
  {
  }

  return v18;
}

+ (id)downloadConfigSummary:(id)summary
{
  if ([summary discretionary])
  {
    return @"background(discretionary)";
  }

  else
  {
    return @"foreground(non-discretionary)";
  }
}

+ (BOOL)downloadConfig:(id)config isEqualToConfig:(id)toConfig
{
  toConfigCopy = toConfig;
  LOBYTE(config) = [config discretionary];
  discretionary = [toConfigCopy discretionary];

  return config ^ discretionary ^ 1;
}

+ (id)downloadConfigCopy:(id)copy
{
  if (copy)
  {
    v3 = MEMORY[0x277D28A00];
    copyCopy = copy;
    v5 = objc_alloc_init(v3);
    discretionary = [copyCopy discretionary];

    [v5 setDiscretionary:discretionary];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)reloadDescriptor:(id)descriptor completion:(id)completion
{
  v5 = MEMORY[0x277D289C8];
  completionCopy = completion;
  descriptorCopy = descriptor;
  requireSameAssetTypeAndDownloadContent = [v5 requireSameAssetTypeAndDownloadContent];
  [SUCoreMobileAsset reloadDescriptor:descriptorCopy allowingDifferences:requireSameAssetTypeAndDownloadContent forceReload:0 completion:completionCopy];
}

+ (void)reloadDescriptor:(id)descriptor allowingDifferences:(id)differences forceReload:(BOOL)reload skipMSU:(BOOL)u defaultValues:(id)values completion:(id)completion
{
  LODWORD(v10) = u;
  LODWORD(v11) = reload;
  v54 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  differencesCopy = differences;
  valuesCopy = values;
  completionCopy = completion;
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    summary = [descriptorCopy summary];
    summary2 = [differencesCopy summary];
    v30 = v11;
    v31 = v10;
    if (v11)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    if (v10)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v32 = differencesCopy;
    if (completionCopy)
    {
      v19 = @"YES";
    }

    else
    {
      v19 = @"NO";
    }

    v20 = completionCopy;
    if ([descriptorCopy requiresSoftwareUpdateAssetReload])
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    *buf = 138544898;
    if ([descriptorCopy requiresDocumentationReload])
    {
      v22 = @"YES";
    }

    else
    {
      v22 = @"NO";
    }

    v41 = summary;
    v42 = 2114;
    v43 = summary2;
    v44 = 2114;
    v45 = v11;
    v46 = 2114;
    v47 = v10;
    LOBYTE(v11) = v30;
    LOBYTE(v10) = v31;
    v48 = 2114;
    v49 = v19;
    differencesCopy = v32;
    v50 = 2114;
    v51 = v21;
    completionCopy = v20;
    v52 = 2114;
    v53 = v22;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[ReloadDescriptor] Reload descriptor method called, descriptor:%{public}@ allowingDifferences:%{public}@ forceReload:%{public}@ skipMSU:%{public}@ completion:%{public}@ requiresSoftwareUpdateAssetReload:%{public}@ requiresDocumentationReload:%{public}@", buf, 0x48u);
  }

  mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
  v24 = mEMORY[0x277D643F8];
  if (descriptorCopy)
  {
    waitedOperationQueue = [mEMORY[0x277D643F8] waitedOperationQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __103__SUCoreMobileAsset_reloadDescriptor_allowingDifferences_forceReload_skipMSU_defaultValues_completion___block_invoke;
    block[3] = &unk_27892E620;
    v34 = descriptorCopy;
    v35 = differencesCopy;
    v38 = v11;
    v39 = v10;
    v36 = valuesCopy;
    v37 = completionCopy;
    dispatch_async(waitedOperationQueue, block);

    v26 = v34;
  }

  else
  {
    v26 = [mEMORY[0x277D643F8] buildError:8116 underlying:0 description:@"No descriptor was provided for descriptor reload"];

    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    [mEMORY[0x277D64428] trackAnomaly:@"ReloadDescriptor" forReason:@"No descriptor was provided for descriptor reload" withResult:8116 withError:v26];

    [SUCoreMobileAsset _callReloadCompletion:completionCopy withDescriptor:0 suError:v26 docError:v26];
  }
}

void __103__SUCoreMobileAsset_reloadDescriptor_allowingDifferences_forceReload_skipMSU_defaultValues_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 64);
  v5 = *(a1 + 65);
  v6 = *(a1 + 48);
  v21 = 0;
  v22 = 0;
  v7 = [SUCoreMobileAsset _reloadDescriptor:v2 allowingDifferences:v3 forceReload:v4 skipMSU:v5 defaultValues:v6 pSUReloadError:&v22 pDocReloadError:&v21];
  v8 = v22;
  v9 = v21;
  v10 = [*(a1 + 32) associatedSplatDescriptor];

  if (v10 && !v8 && !v9)
  {
    v11 = [MEMORY[0x277D64460] sharedLogger];
    v12 = [v11 oslog];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, v12, OS_LOG_TYPE_DEFAULT, "[ReloadDescriptor] Reload the associated splat descriptor", buf, 2u);
    }

    v13 = [*(a1 + 32) associatedSplatDescriptor];
    v14 = *(a1 + 40);
    v15 = *(a1 + 64);
    v16 = *(a1 + 65);
    v18 = 0;
    v19 = 0;
    v17 = [SUCoreMobileAsset _reloadDescriptor:v13 allowingDifferences:v14 forceReload:v15 skipMSU:v16 defaultValues:0 pSUReloadError:&v19 pDocReloadError:&v18];
    v8 = v19;
    v9 = v18;

    if (!v8)
    {
      [v7 setAssociatedSplatDescriptor:v17];
    }
  }

  [SUCoreMobileAsset _callReloadCompletion:*(a1 + 56) withDescriptor:v7 suError:v8 docError:v9];
}

+ (id)_reloadDescriptor:(id)descriptor allowingDifferences:(id)differences forceReload:(BOOL)reload skipMSU:(BOOL)u defaultValues:(id)values pSUReloadError:(id *)error pDocReloadError:(id *)reloadError
{
  uCopy = u;
  reloadErrorCopy = reloadError;
  v76 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  differencesCopy = differences;
  valuesCopy = values;
  v17 = descriptorCopy;
  v18 = v17;
  v19 = 0x277D64000uLL;
  errorCopy = error;
  if (reload || [(SUCoreDescriptor *)v17 requiresSoftwareUpdateAssetReload])
  {
    reloadCopy = reload;
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      softwareUpdateAssetAbsoluteID = [(SUCoreDescriptor *)v18 softwareUpdateAssetAbsoluteID];
      softwareUpdateAssetPurpose = [(SUCoreDescriptor *)v18 softwareUpdateAssetPurpose];
      *buf = 138543874;
      v71 = differencesCopy;
      v72 = 2114;
      v73 = softwareUpdateAssetAbsoluteID;
      v74 = 2114;
      v75 = softwareUpdateAssetPurpose;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[ReloadDescriptor] Attempting to reload software update asset, allowing differences:%{public}@ absoluteAssetID:%{public}@ purpose:%{public}@", buf, 0x20u);
    }

    v24 = MEMORY[0x277D289C0];
    softwareUpdateAssetAbsoluteID2 = [(SUCoreDescriptor *)v18 softwareUpdateAssetAbsoluteID];
    softwareUpdateAssetPurpose2 = [(SUCoreDescriptor *)v18 softwareUpdateAssetPurpose];
    v69 = 0;
    v65 = differencesCopy;
    v27 = [v24 SUCoreBorder_loadSync:softwareUpdateAssetAbsoluteID2 allowingDifferences:differencesCopy withPurpose:softwareUpdateAssetPurpose2 error:&v69 simulateForDescriptor:v18 simulateForType:1];
    v28 = v69;

    if (v28 || !v27)
    {
      reloadErrorCopy3 = reloadError;
      mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
      v32 = mEMORY[0x277D643F8];
      if (v28)
      {
        v37 = @"Failed to reload software update asset for descriptor with MobileAsset error";
        v38 = 8704;
        v39 = v28;
      }

      else
      {
        v37 = @"Failed to reload software update asset for descriptor as asset was not found (no MobileAsset error)";
        v38 = 8705;
        v39 = 0;
      }

      v40 = [mEMORY[0x277D643F8] buildError:v38 underlying:v39 description:v37];
      v41 = v18;
    }

    else
    {
      mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
      oslog2 = [mEMORY[0x277D64460]2 oslog];

      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[ReloadDescriptor] Software update asset reload completed successfully", buf, 2u);
      }

      reloadErrorCopy3 = reloadError;

      if (uCopy)
      {
        v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor msuPrepareSize](v18, "msuPrepareSize")}];
        v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor installationSize](v18, "installationSize")}];
        v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor msuSnapshotPrepareSize](v18, "msuSnapshotPrepareSize")}];
        v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor installationSnapshotSize](v18, "installationSnapshotSize")}];
      }

      else
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v32 = 0;
      }

      v42 = [SUCoreDescriptor alloc];
      releaseDate = [(SUCoreDescriptor *)v18 releaseDate];
      v41 = [(SUCoreDescriptor *)v42 initWithSUAsset:v27 releaseDate:releaseDate prepareSize:v32 snapshotPrepareSize:v34 applySize:v33 snapshotApplySize:v35 defaultValues:valuesCopy];

      [(SUCoreDescriptor *)v41 transferNonAssetPropertiesFromDescriptor:v18];
      v40 = 0;
      v19 = 0x277D64000;
    }

    differencesCopy = v65;
    reloadErrorCopy = reloadErrorCopy3;
    error = errorCopy;
    if (reloadCopy)
    {
LABEL_20:
      sharedLogger = [*(v19 + 1120) sharedLogger];
      oslog3 = [sharedLogger oslog];

      if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
      {
        documentationAssetAbsoluteID = [(SUCoreDescriptor *)v18 documentationAssetAbsoluteID];
        documentationAssetPurpose = [(SUCoreDescriptor *)v18 documentationAssetPurpose];
        *buf = 138543874;
        v71 = differencesCopy;
        v72 = 2114;
        v73 = documentationAssetAbsoluteID;
        v74 = 2114;
        v75 = documentationAssetPurpose;
        _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "[ReloadDescriptor] Attempting to reload documentation asset, allowing differences:%{public}@ absoluteAssetID:%{public}@ purpose:%{public}@", buf, 0x20u);
      }

      v48 = MEMORY[0x277D289C0];
      documentationAssetAbsoluteID2 = [(SUCoreDescriptor *)v18 documentationAssetAbsoluteID];
      documentationAssetPurpose2 = [(SUCoreDescriptor *)v18 documentationAssetPurpose];
      v68 = 0;
      v51 = [v48 SUCoreBorder_loadSync:documentationAssetAbsoluteID2 allowingDifferences:differencesCopy withPurpose:documentationAssetPurpose2 error:&v68 simulateForDescriptor:v41 simulateForType:2];
      v52 = v68;

      if (v52 || !v51)
      {
        mEMORY[0x277D643F8]2 = [MEMORY[0x277D643F8] sharedCore];
        v57 = mEMORY[0x277D643F8]2;
        if (v52)
        {
          v58 = @"Failed to reload documentation asset for descriptor with MobileAsset error";
          v59 = 8704;
          v60 = v52;
        }

        else
        {
          v58 = @"Failed to reload documentation asset for descriptor as asset was not found (no MobileAsset error)";
          v59 = 8705;
          v60 = 0;
        }

        v55 = [mEMORY[0x277D643F8]2 buildError:v59 underlying:v60 description:v58];
      }

      else
      {
        mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
        oslog4 = [mEMORY[0x277D64460]3 oslog];

        if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23193C000, oslog4, OS_LOG_TYPE_DEFAULT, "[ReloadDescriptor] Documentation asset reload completed successfully", buf, 2u);
        }

        -[SUCoreDescriptor assignDocumentationFromAsset:extendingBundleProperties:](v41, "assignDocumentationFromAsset:extendingBundleProperties:", v51, [v51 wasLocal]);
        v55 = 0;
      }

      error = errorCopy;
      if (errorCopy)
      {
        goto LABEL_34;
      }

      goto LABEL_35;
    }
  }

  else
  {
    v40 = 0;
    v41 = v18;
  }

  if ([(SUCoreDescriptor *)v18 requiresDocumentationReload])
  {
    goto LABEL_20;
  }

  v55 = 0;
  if (error)
  {
LABEL_34:
    v61 = v40;
    *error = v40;
  }

LABEL_35:
  if (reloadErrorCopy)
  {
    v62 = v55;
    *reloadErrorCopy = v55;
  }

  return v41;
}

+ (void)_callReloadCompletion:(id)completion withDescriptor:(id)descriptor suError:(id)error docError:(id)docError
{
  v29 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  descriptorCopy = descriptor;
  errorCopy = error;
  docErrorCopy = docError;
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v24 = descriptorCopy;
    v25 = 2114;
    v26 = errorCopy;
    v27 = 2114;
    v28 = docErrorCopy;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[ReloadDescriptor] Dispatching onto shared completion queue and calling provided reload completion with descriptor:%{public}@ suError:%{public}@ docError:%{public}@", buf, 0x20u);
  }

  if (completionCopy)
  {
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    completionQueue = [mEMORY[0x277D643F8] completionQueue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __75__SUCoreMobileAsset__callReloadCompletion_withDescriptor_suError_docError___block_invoke;
    v18[3] = &unk_27892CA10;
    v22 = completionCopy;
    v19 = descriptorCopy;
    v20 = errorCopy;
    v21 = docErrorCopy;
    dispatch_async(completionQueue, v18);

    mEMORY[0x277D64428] = v22;
  }

  else
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    [mEMORY[0x277D64428] trackAnomaly:@"ReloadDescriptor" forReason:@"No completion was provided for descriptor reload" withResult:8116 withError:0];
  }
}

- (id)maDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_maDelegate);

  return WeakRetained;
}

void __53__SUCoreMobileAsset_alterDownloadOptions_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __53__SUCoreMobileAsset_alterDownloadOptions_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __53__SUCoreMobileAsset_alterDownloadOptions_completion___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end