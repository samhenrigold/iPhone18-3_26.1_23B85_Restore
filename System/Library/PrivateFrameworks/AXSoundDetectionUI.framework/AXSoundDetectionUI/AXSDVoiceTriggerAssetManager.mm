@interface AXSDVoiceTriggerAssetManager
- (AXSDVoiceTriggerAssetManager)initWithDelegate:(id)delegate;
- (AXSDVoiceTriggerAssetManagerDelegate)delegate;
- (void)assetController:(id)controller didFinishDownloadingAsset:(id)asset wasSuccessful:(BOOL)successful error:(id)error hasRemainingDownloads:(BOOL)downloads;
- (void)assetController:(id)controller didFinishRefreshingAssets:(id)assets wasSuccessful:(BOOL)successful error:(id)error;
- (void)assetDidUpdateWithError:(id)error;
@end

@implementation AXSDVoiceTriggerAssetManager

- (AXSDVoiceTriggerAssetManager)initWithDelegate:(id)delegate
{
  v27 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v18.receiver = self;
  v18.super_class = AXSDVoiceTriggerAssetManager;
  v5 = [(AXSDVoiceTriggerAssetManager *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    policy = [MEMORY[0x277CE66B0] policy];
    assetPolicy = v6->_assetPolicy;
    v6->_assetPolicy = policy;

    v9 = MEMORY[0x277CE6668];
    assetPolicy = [(AXSDVoiceTriggerAssetManager *)v6 assetPolicy];
    v11 = [v9 assetControllerWithPolicy:assetPolicy qosClass:25];
    assetController = v6->_assetController;
    v6->_assetController = v11;

    [(AXAssetController *)v6->_assetController setUserInitiated:1];
    [(AXAssetController *)v6->_assetController addObserver:v6];
    v13 = AXLogSoundActions();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_23D62D000, v13, OS_LOG_TYPE_INFO, "[%@]: Voice Trigger Model loading: Initiating refresh", &buf, 0xCu);
    }

    v19 = 0;
    v20 = &v19;
    v21 = 0x2050000000;
    v14 = getAXSettingsClass_softClass;
    v22 = getAXSettingsClass_softClass;
    if (!getAXSettingsClass_softClass)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v24 = __getAXSettingsClass_block_invoke;
      v25 = &unk_278BDCFE0;
      v26 = &v19;
      __getAXSettingsClass_block_invoke(&buf);
      v14 = v20[3];
    }

    v15 = v14;
    _Block_object_dispose(&v19, 8);
    sharedInstance = [v14 sharedInstance];
    [sharedInstance setSoundActionsLastModelAccess:CFAbsoluteTimeGetCurrent()];

    [(AXAssetController *)v6->_assetController refreshAssetsByForceUpdatingCatalog:0 updatingCatalogIfNeeded:1 catalogRefreshOverrideTimeout:0 completion:0];
  }

  return v6;
}

- (void)assetController:(id)controller didFinishRefreshingAssets:(id)assets wasSuccessful:(BOOL)successful error:(id)error
{
  successfulCopy = successful;
  v25 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  errorCopy = error;
  if (successfulCopy)
  {
    lastObject = [assetsCopy lastObject];
    v12 = AXLogSoundActions();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      selfCopy3 = self;
      v23 = 2112;
      v24 = assetsCopy;
      _os_log_impl(&dword_23D62D000, v12, OS_LOG_TYPE_INFO, "[%@]: Voice Trigger Model loading:  Refreshed Assets:\n%@", buf, 0x16u);
    }

    if ([lastObject isInstalled])
    {
      v13 = AXLogSoundActions();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        selfCopy3 = self;
        v23 = 2112;
        v24 = assetsCopy;
        _os_log_impl(&dword_23D62D000, v13, OS_LOG_TYPE_INFO, "[%@]: Voice Trigger Model loading:  Newst asset already installed:\n%@", buf, 0x16u);
      }

      objc_storeStrong(&self->_latestDownloadedAsset, lastObject);
      [(AXSDVoiceTriggerAssetManager *)self assetDidUpdateWithError:0];
    }

    else if (self->_latestDownloadedAsset && (v14 = [lastObject contentVersion], v14 <= [(AXAsset *)self->_latestDownloadedAsset contentVersion]))
    {
      v16 = AXLogSoundActions();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        latestDownloadedAsset = self->_latestDownloadedAsset;
        *buf = 138412546;
        selfCopy3 = self;
        v23 = 2112;
        v24 = latestDownloadedAsset;
        _os_log_impl(&dword_23D62D000, v16, OS_LOG_TYPE_INFO, "[%@]: Voice Trigger Model loading:  Latest asset up to date - keeping:\n%@", buf, 0x16u);
      }
    }

    else
    {
      assetController = self->_assetController;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __94__AXSDVoiceTriggerAssetManager_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke;
      v18[3] = &unk_278BDCFB8;
      v18[4] = self;
      v19 = assetsCopy;
      v20 = errorCopy;
      [(AXAssetController *)assetController downloadAssets:v19 successStartBlock:v18];
    }
  }

  else
  {
    lastObject = AXLogSoundActions();
    if (os_log_type_enabled(lastObject, OS_LOG_TYPE_ERROR))
    {
      [AXSDVoiceTriggerAssetManager assetController:didFinishRefreshingAssets:wasSuccessful:error:];
    }
  }
}

void __94__AXSDVoiceTriggerAssetManager_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = AXLogSoundActions();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_23D62D000, v5, OS_LOG_TYPE_INFO, "[%@]: Voice Trigger Model loading:  Downloading Assets:\n%@", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __94__AXSDVoiceTriggerAssetManager_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke_cold_1(a1, v5);
  }
}

- (void)assetController:(id)controller didFinishDownloadingAsset:(id)asset wasSuccessful:(BOOL)successful error:(id)error hasRemainingDownloads:(BOOL)downloads
{
  successfulCopy = successful;
  v19 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  errorCopy = error;
  v12 = AXLogSoundActions();
  latestDownloadedAsset = v12;
  if (successfulCopy)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v15 = 138412546;
      selfCopy = self;
      v17 = 2112;
      v18 = assetCopy;
      _os_log_impl(&dword_23D62D000, latestDownloadedAsset, OS_LOG_TYPE_INFO, "[%@]: Voice Trigger Model loading:  Downloaded Asset:\n%@", &v15, 0x16u);
    }

    v14 = assetCopy;
    latestDownloadedAsset = self->_latestDownloadedAsset;
    self->_latestDownloadedAsset = v14;
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [AXSDVoiceTriggerAssetManager assetController:didFinishDownloadingAsset:wasSuccessful:error:hasRemainingDownloads:];
  }

  [(AXSDVoiceTriggerAssetManager *)self assetDidUpdateWithError:errorCopy];
}

- (void)assetDidUpdateWithError:(id)error
{
  v13 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = AXLogSoundActions();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    latestDownloadedAsset = self->_latestDownloadedAsset;
    v9 = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = latestDownloadedAsset;
    _os_log_impl(&dword_23D62D000, v5, OS_LOG_TYPE_INFO, "[%@]: Voice Trigger Model loading:  Asset Did Update:\n%@", &v9, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  localURL = [(AXAsset *)self->_latestDownloadedAsset localURL];
  [WeakRetained modelDidUpdate:localURL assetVersion:-[AXAsset contentVersion](self->_latestDownloadedAsset withError:{"contentVersion"), errorCopy}];
}

- (AXSDVoiceTriggerAssetManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __94__AXSDVoiceTriggerAssetManager_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = 138412546;
  v5 = v2;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_23D62D000, a2, OS_LOG_TYPE_ERROR, "[%@]: Voice Trigger Model loading:  Error starting asset download:\n%@", &v4, 0x16u);
}

@end