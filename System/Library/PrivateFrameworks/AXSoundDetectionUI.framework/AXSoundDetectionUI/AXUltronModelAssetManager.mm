@interface AXUltronModelAssetManager
+ (AXUltronModelAssetManager)sharedInstance;
- (AXUltronModelAssetManager)init;
- (BOOL)isAssetDownloadStalled;
- (BOOL)isKShotAsset:(id)asset;
- (BOOL)isKShotUsingSoundPrint;
- (id)_filterAssetsToCache:(id)cache;
- (id)_supportedTypesFromAssets:(id)assets;
- (id)localPathForKShotGeneralApplianceDetector;
- (id)localPathForKShotHallucinator;
- (id)localPathForKShotModelWeights;
- (id)localURLForDetector:(id)detector;
- (int64_t)_expectedCurrentlyDownloadingSize;
- (int64_t)_totalBytesOfAllAssetsWritten;
- (int64_t)_totalExpectedTimeOfAllAssets;
- (int64_t)assetStatus;
- (int64_t)totalSizeExpected;
- (int64_t)totalSizeOccupied;
- (void)_cacheAsset:(id)asset;
- (void)_downloadAssets;
- (void)_resetDownloadTracking;
- (void)_updateDownloadingAsset:(id)asset totalBytesWritten:(int64_t)written isStalled:(BOOL)stalled expectedTimeRemaining:(double)remaining;
- (void)addObserver:(id)observer;
- (void)assetController:(id)controller asset:(id)asset downloadProgressTotalWritten:(int64_t)written totalExpected:(int64_t)expected isStalled:(BOOL)stalled expectedTimeRemaining:(double)remaining;
- (void)assetController:(id)controller didFinishDownloadingAsset:(id)asset wasSuccessful:(BOOL)successful error:(id)error hasRemainingDownloads:(BOOL)downloads;
- (void)assetController:(id)controller didFinishPurgingAssets:(id)assets wasSuccessful:(BOOL)successful error:(id)error;
- (void)assetController:(id)controller didFinishRefreshingAssets:(id)assets wasSuccessful:(BOOL)successful error:(id)error;
- (void)downloadAssets:(id)assets;
- (void)notifyAssetsNotReady;
- (void)notifyAssetsReady;
- (void)notifyAssetsState;
- (void)notifyDownloadProgress:(int64_t)progress totalSizeExpected:(int64_t)expected totalRemainingTime:(double)time isStalled:(BOOL)stalled;
- (void)notifyPurgeAssets:(id)assets wasSuccessful:(BOOL)successful error:(id)error;
- (void)notifyRefreshAssets:(id)assets wasSuccessful:(BOOL)successful error:(id)error;
- (void)refreshAssetsUpdatingCatalogIfNeeded:(BOOL)needed;
- (void)removeObserver:(id)observer;
- (void)stopDownloadingAssets;
@end

@implementation AXUltronModelAssetManager

+ (AXUltronModelAssetManager)sharedInstance
{
  if (sharedInstance_onceToken_5 != -1)
  {
    +[AXUltronModelAssetManager sharedInstance];
  }

  v3 = sharedInstance__Shared;

  return v3;
}

uint64_t __43__AXUltronModelAssetManager_sharedInstance__block_invoke()
{
  sharedInstance__Shared = objc_alloc_init(AXUltronModelAssetManager);

  return MEMORY[0x2821F96F8]();
}

- (AXUltronModelAssetManager)init
{
  v22.receiver = self;
  v22.super_class = AXUltronModelAssetManager;
  v2 = [(AXUltronModelAssetManager *)&v22 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    assetsTotalBytesWritten = v2->_assetsTotalBytesWritten;
    v2->_assetsTotalBytesWritten = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    assetsTotalTimeExpected = v2->_assetsTotalTimeExpected;
    v2->_assetsTotalTimeExpected = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    assetDownloadStalled = v2->_assetDownloadStalled;
    v2->_assetDownloadStalled = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    assetsDownloading = v2->_assetsDownloading;
    v2->_assetsDownloading = v11;

    v2->_previousReportedSize = 0;
    v2->_expectedDownloadSize = 0;
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cachedAssets = v2->_cachedAssets;
    v2->_cachedAssets = v13;

    v15 = MEMORY[0x277CE6668];
    policy = [MEMORY[0x277CE66A8] policy];
    v17 = [v15 assetControllerWithPolicy:policy qosClass:25];
    assetController = v2->_assetController;
    v2->_assetController = v17;

    [(AXAssetController *)v2->_assetController addObserver:v2];
    [(AXAssetController *)v2->_assetController setUserInitiated:1];
    v19 = dispatch_queue_create("AXUltronModelAssetManagerDownloadQueue", 0);
    assetDownloadQueue = v2->_assetDownloadQueue;
    v2->_assetDownloadQueue = v19;
  }

  return v2;
}

- (void)_resetDownloadTracking
{
  [(NSMutableDictionary *)self->_assetDownloadStalled removeAllObjects];
  [(NSMutableDictionary *)self->_assetsTotalTimeExpected removeAllObjects];
  [(NSMutableDictionary *)self->_assetsTotalBytesWritten removeAllObjects];
  assetsDownloading = self->_assetsDownloading;

  [(NSMutableDictionary *)assetsDownloading removeAllObjects];
}

- (BOOL)isKShotAsset:(id)asset
{
  assetCopy = asset;
  ultronModelName = [assetCopy ultronModelName];
  if ([ultronModelName isEqualToString:*MEMORY[0x277CE6EF0]])
  {
    v5 = 1;
  }

  else
  {
    ultronModelName2 = [assetCopy ultronModelName];
    if ([ultronModelName2 isEqualToString:*MEMORY[0x277CE6EF8]])
    {
      v5 = 1;
    }

    else
    {
      ultronModelName3 = [assetCopy ultronModelName];
      v5 = [ultronModelName3 isEqualToString:*MEMORY[0x277CE6EE8]];
    }
  }

  return v5;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AXUltronModelAssetManager addObserver:];
  }

  if (([(NSMutableArray *)self->_observers containsObject:observerCopy]& 1) == 0)
  {
    [(NSMutableArray *)self->_observers addObject:observerCopy];
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if ([(NSMutableArray *)self->_observers containsObject:?])
  {
    [(NSMutableArray *)self->_observers removeObject:observerCopy];
  }
}

- (void)notifyAssetsReady
{
  [*(self + 8) count];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)notifyAssetsNotReady
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_observers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) assetsNotReadyForUltronManager:{self, v8}];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)notifyDownloadProgress:(int64_t)progress totalSizeExpected:(int64_t)expected totalRemainingTime:(double)time isStalled:(BOOL)stalled
{
  stalledCopy = stalled;
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = self->_observers;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 assetManager:self totalSizeExpected:expected downloadProgressTotalWritten:progress remainingTimeExpected:stalledCopy isStalled:{time, v17}];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  self->_previousReportedSize = progress;
  self->_expectedDownloadSize = expected;
}

- (void)notifyRefreshAssets:(id)assets wasSuccessful:(BOOL)successful error:(id)error
{
  successfulCopy = successful;
  v22 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  errorCopy = error;
  v10 = AXLogUltron();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(AXUltronModelAssetManager *)self notifyAssetsReady];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = self->_observers;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 assetManager:self didFinishRefreshingAssets:assetsCopy wasSuccessful:successfulCopy error:{errorCopy, v17}];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }
}

- (void)notifyPurgeAssets:(id)assets wasSuccessful:(BOOL)successful error:(id)error
{
  successfulCopy = successful;
  v22 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  errorCopy = error;
  v10 = AXLogUltron();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [AXUltronModelAssetManager notifyPurgeAssets:? wasSuccessful:? error:?];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = self->_observers;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 assetManager:self didFinishPurgingAssets:assetsCopy wasSuccessful:successfulCopy error:{errorCopy, v17}];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }
}

- (void)notifyAssetsState
{
  assetStatus = [(AXUltronModelAssetManager *)self assetStatus];
  if (assetStatus > 1)
  {
    if (assetStatus == 2)
    {
      _totalBytesOfAllAssetsWritten = [(AXUltronModelAssetManager *)self _totalBytesOfAllAssetsWritten];
      if (_totalBytesOfAllAssetsWritten <= self->_previousReportedSize)
      {
        previousReportedSize = self->_previousReportedSize;
      }

      else
      {
        previousReportedSize = _totalBytesOfAllAssetsWritten;
      }

      _expectedCurrentlyDownloadingSize = [(AXUltronModelAssetManager *)self _expectedCurrentlyDownloadingSize];
      expectedDownloadSize = self->_expectedDownloadSize;
      if (_expectedCurrentlyDownloadingSize > expectedDownloadSize)
      {
        expectedDownloadSize = _expectedCurrentlyDownloadingSize;
      }

      if (expectedDownloadSize <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = expectedDownloadSize;
      }

      if (previousReportedSize / v9 > 0)
      {
        previousReportedSize = v9 - 1;
      }

      _totalExpectedTimeOfAllAssets = [(AXUltronModelAssetManager *)self _totalExpectedTimeOfAllAssets];
      isAssetDownloadStalled = [(AXUltronModelAssetManager *)self isAssetDownloadStalled];

      [(AXUltronModelAssetManager *)self notifyDownloadProgress:previousReportedSize totalSizeExpected:v9 totalRemainingTime:isAssetDownloadStalled isStalled:_totalExpectedTimeOfAllAssets];
    }

    else if (assetStatus == 3)
    {
      [(AXUltronModelAssetManager *)self _resetDownloadTracking];
      totalSizeOccupied = [(AXUltronModelAssetManager *)self totalSizeOccupied];
      [(AXUltronModelAssetManager *)self notifyDownloadProgress:totalSizeOccupied totalSizeExpected:totalSizeOccupied totalRemainingTime:0 isStalled:0.0];

      [(AXUltronModelAssetManager *)self notifyAssetsReady];
    }
  }

  else if (assetStatus <= 1)
  {

    [(AXUltronModelAssetManager *)self notifyAssetsNotReady];
  }
}

- (id)localURLForDetector:(id)detector
{
  v3 = [(NSMutableDictionary *)self->_cachedAssets objectForKeyedSubscript:detector];
  localURL = [v3 localURL];

  return localURL;
}

- (id)localPathForKShotHallucinator
{
  v2 = [(NSMutableDictionary *)self->_cachedAssets objectForKeyedSubscript:*MEMORY[0x277CE6EF0]];
  localURL = [v2 localURL];

  v4 = [localURL URLByAppendingPathComponent:*MEMORY[0x277CE6EC8]];

  return v4;
}

- (id)localPathForKShotModelWeights
{
  v2 = [(NSMutableDictionary *)self->_cachedAssets objectForKeyedSubscript:*MEMORY[0x277CE6EF8]];
  localURL = [v2 localURL];

  v4 = [localURL URLByAppendingPathComponent:*MEMORY[0x277CE6EE0]];

  return v4;
}

- (id)localPathForKShotGeneralApplianceDetector
{
  v2 = [(NSMutableDictionary *)self->_cachedAssets objectForKeyedSubscript:*MEMORY[0x277CE6EE8]];
  localURL = [v2 localURL];

  v4 = [localURL URLByAppendingPathComponent:*MEMORY[0x277CE6EC0]];

  return v4;
}

- (BOOL)isKShotUsingSoundPrint
{
  v2 = [(NSMutableDictionary *)self->_cachedAssets objectForKeyedSubscript:*MEMORY[0x277CE6EE8]];
  isUsingSoundPrint = [v2 isUsingSoundPrint];

  return isUsingSoundPrint;
}

- (int64_t)totalSizeOccupied
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allKeys = [(NSMutableDictionary *)self->_cachedAssets allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = [(NSMutableDictionary *)self->_cachedAssets objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i)];
        unarchivedFileSize = [v9 unarchivedFileSize];
        v6 += [unarchivedFileSize longLongValue];
      }

      v5 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)totalSizeExpected
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allKeys = [(NSMutableDictionary *)self->_cachedAssets allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = [(NSMutableDictionary *)self->_cachedAssets objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i)];
        downloadSize = [v9 downloadSize];
        v6 += [downloadSize longLongValue];
      }

      v5 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)stopDownloadingAssets
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)self->_cachedAssets allValues];
  v4 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 isDownloading])
        {
          assetController = self->_assetController;
          v10[0] = MEMORY[0x277D85DD0];
          v10[1] = 3221225472;
          v10[2] = __50__AXUltronModelAssetManager_stopDownloadingAssets__block_invoke;
          v10[3] = &unk_278BDD590;
          v10[4] = v8;
          [(AXAssetController *)assetController stopDownloadAsset:v8 completion:v10];
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

void __50__AXUltronModelAssetManager_stopDownloadingAssets__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = AXLogUltron();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __50__AXUltronModelAssetManager_stopDownloadingAssets__block_invoke_cold_1(a1);
  }
}

- (void)downloadAssets:(id)assets
{
  if (([(AXAssetController *)self->_assetController hasInProgressDownloads]& 1) == 0)
  {
    allValues = [(NSMutableDictionary *)self->_cachedAssets allValues];
    assetDownloadQueue = [(AXUltronModelAssetManager *)self assetDownloadQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__AXUltronModelAssetManager_downloadAssets___block_invoke;
    v7[3] = &unk_278BDD2C0;
    v8 = allValues;
    selfCopy = self;
    v6 = allValues;
    dispatch_async(assetDownloadQueue, v7);
  }
}

void __44__AXUltronModelAssetManager_downloadAssets___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CE66A8] assetsToDownloadFromAssets:*(a1 + 32)];
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__AXUltronModelAssetManager_downloadAssets___block_invoke_2;
  v6[3] = &unk_278BDD5B8;
  v7 = v2;
  v8 = v3;
  v5 = v2;
  [v4 downloadAssets:v5 successStartBlock:v6];
}

void __44__AXUltronModelAssetManager_downloadAssets___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = AXLogUltron();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __44__AXUltronModelAssetManager_downloadAssets___block_invoke_2_cold_1(a1);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    v8 = MEMORY[0x277D85CD0];
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __44__AXUltronModelAssetManager_downloadAssets___block_invoke_293;
        v11[3] = &unk_278BDD2C0;
        v11[4] = *(a1 + 40);
        v11[5] = v10;
        dispatch_async(v8, v11);
        ++v9;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

void __44__AXUltronModelAssetManager_downloadAssets___block_invoke_293(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  v2 = [*(a1 + 40) ultronModelName];
  [v1 setObject:MEMORY[0x277CBEC38] forKey:v2];
}

- (void)_downloadAssets
{
  v4 = [OUTLINED_FUNCTION_3_2(self a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_4(&dword_23D62D000, v5, v6, "Tried to assign total bytes written to an asset type that we don't currently support - should not happen! %@");
}

void __44__AXUltronModelAssetManager__downloadAssets__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = AXLogUltron();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __44__AXUltronModelAssetManager_downloadAssets___block_invoke_2_cold_1(a1);
  }
}

- (void)_updateDownloadingAsset:(id)asset totalBytesWritten:(int64_t)written isStalled:(BOOL)stalled expectedTimeRemaining:(double)remaining
{
  stalledCopy = stalled;
  v10 = MEMORY[0x277CCABB0];
  assetCopy = asset;
  v12 = [v10 numberWithLongLong:written];
  [(NSMutableDictionary *)self->_assetsTotalBytesWritten setObject:v12 forKeyedSubscript:assetCopy];

  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:remaining];
  [(NSMutableDictionary *)self->_assetsTotalTimeExpected setObject:v13 forKeyedSubscript:assetCopy];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:stalledCopy];
  [(NSMutableDictionary *)self->_assetDownloadStalled setObject:v14 forKeyedSubscript:assetCopy];
}

- (int64_t)_totalBytesOfAllAssetsWritten
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allKeys = [(NSMutableDictionary *)self->_assetsTotalBytesWritten allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = [(NSMutableDictionary *)self->_assetsTotalBytesWritten objectForKeyedSubscript:*(*(&v11 + 1) + 8 * i)];
        v6 += [v9 longLongValue];
      }

      v5 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)_expectedCurrentlyDownloadingSize
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allValues = [(NSMutableDictionary *)self->_cachedAssets allValues];
  v4 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        assetsDownloading = self->_assetsDownloading;
        ultronModelName = [v9 ultronModelName];
        v12 = [(NSMutableDictionary *)assetsDownloading objectForKey:ultronModelName];

        if (v12)
        {
          downloadSize = [v9 downloadSize];
          v6 += [downloadSize longLongValue];
        }
      }

      v5 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)_totalExpectedTimeOfAllAssets
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allKeys = [(NSMutableDictionary *)self->_assetsTotalTimeExpected allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = [(NSMutableDictionary *)self->_assetsTotalTimeExpected objectForKeyedSubscript:*(*(&v11 + 1) + 8 * i)];
        v6 += [v9 longLongValue];
      }

      v5 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isAssetDownloadStalled
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allKeys = [(NSMutableDictionary *)self->_assetDownloadStalled allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(allKeys);
        }

        v8 = [(NSMutableDictionary *)self->_assetDownloadStalled objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i)];
        bOOLValue = [v8 BOOLValue];

        if (!bOOLValue)
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v5 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (int64_t)assetStatus
{
  if (![(NSMutableDictionary *)self->_cachedAssets count])
  {
    return 0;
  }

  allValues = [(NSMutableDictionary *)self->_cachedAssets allValues];
  v4 = [allValues ax_filteredArrayUsingBlock:&__block_literal_global_300];

  v5 = [v4 count];
  if (v5 == [(NSMutableDictionary *)self->_cachedAssets count])
  {
    v6 = 3;
  }

  else
  {
    allValues2 = [(NSMutableDictionary *)self->_assetsDownloading allValues];
    v8 = [allValues2 containsObject:MEMORY[0x277CBEC38]];

    if (v8)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

- (void)_cacheAsset:(id)asset
{
  assetCopy = asset;
  ultronModelName = [assetCopy ultronModelName];
  v6 = AXSDSoundDetectionTypeForIdentifier();

  if (v6 == *MEMORY[0x277CE6F70] || v6 == *MEMORY[0x277CE6F60])
  {
    if (![(AXUltronModelAssetManager *)self isKShotAsset:assetCopy])
    {
      v17 = AXLogUltron();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [AXUltronModelAssetManager _cacheAsset:assetCopy];
      }

      goto LABEL_19;
    }

    ultronModelName2 = [assetCopy ultronModelName];
    v9 = [(NSMutableDictionary *)self->_cachedAssets objectForKey:v6];

    cachedAssets = self->_cachedAssets;
    if (v9)
    {
      v11 = [(NSMutableDictionary *)cachedAssets objectForKey:v6];
      v12 = [v11 isOlderThanAsset:assetCopy];

      if (!v12)
      {
LABEL_11:

        goto LABEL_19;
      }

      cachedAssets = self->_cachedAssets;
    }

    [(NSMutableDictionary *)cachedAssets setObject:assetCopy forKey:ultronModelName2];
    goto LABEL_11;
  }

  v13 = [(NSMutableDictionary *)self->_cachedAssets objectForKey:v6];

  v14 = self->_cachedAssets;
  if (!v13)
  {
    goto LABEL_15;
  }

  v15 = [(NSMutableDictionary *)v14 objectForKey:v6];
  v16 = [v15 isOlderThanAsset:assetCopy];

  if (v16)
  {
    v14 = self->_cachedAssets;
LABEL_15:
    [(NSMutableDictionary *)v14 setObject:assetCopy forKey:v6];
  }

LABEL_19:
}

- (void)refreshAssetsUpdatingCatalogIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v20 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CE6F98] = [MEMORY[0x277CE6F98] sharedInstance];
  soundDetectionState = [mEMORY[0x277CE6F98] soundDetectionState];

  if (soundDetectionState)
  {
    v7 = AXLogUltron();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithDouble:CFAbsoluteTimeGetCurrent()];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v8;
      _os_log_impl(&dword_23D62D000, v7, OS_LOG_TYPE_DEFAULT, "Updating Sound Detection last model access time: %@", &buf, 0xCu);
    }

    v12 = 0;
    v13 = &v12;
    v14 = 0x2050000000;
    v9 = getAXSettingsClass_softClass_0;
    v15 = getAXSettingsClass_softClass_0;
    if (!getAXSettingsClass_softClass_0)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v17 = __getAXSettingsClass_block_invoke_0;
      v18 = &unk_278BDCFE0;
      v19 = &v12;
      __getAXSettingsClass_block_invoke_0(&buf);
      v9 = v13[3];
    }

    v10 = v9;
    _Block_object_dispose(&v12, 8);
    sharedInstance = [v9 sharedInstance];
    [sharedInstance setSoundDetectionLastModelAccess:CFAbsoluteTimeGetCurrent()];
  }

  [(AXAssetController *)self->_assetController refreshAssetsByForceUpdatingCatalog:0 updatingCatalogIfNeeded:neededCopy catalogRefreshOverrideTimeout:0 completion:0];
}

- (void)assetController:(id)controller didFinishRefreshingAssets:(id)assets wasSuccessful:(BOOL)successful error:(id)error
{
  assetsCopy = assets;
  errorCopy = error;
  v8 = errorCopy;
  v9 = assetsCopy;
  AXPerformBlockAsynchronouslyOnMainThread();
}

uint64_t __91__AXUltronModelAssetManager_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 56) != 1)
  {
    v9 = AXLogUltron();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __91__AXUltronModelAssetManager_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke_cold_1(a1, v9);
    }

    goto LABEL_15;
  }

  v3 = [*(a1 + 32) _filterAssetsToCache:*(a1 + 40)];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) _cacheAsset:*(*(&v14 + 1) + 8 * i)];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v8 = AXLogUltron();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13[0] = 0;
    _os_log_impl(&dword_23D62D000, v8, OS_LOG_TYPE_INFO, "Done refreshing assets and was successful", v13, 2u);
  }

  [*(a1 + 32) setExpectedDownloadSize:0];
  v9 = [*(a1 + 32) _supportedTypesFromAssets:*(a1 + 40)];

  if (v9)
  {
    v10 = [MEMORY[0x277CE6F98] sharedInstance];
    v11 = [v9 allObjects];
    [v10 setSupportedSoundDetectionTypes:v11];

LABEL_15:
  }

  [*(a1 + 32) notifyRefreshAssets:*(a1 + 40) wasSuccessful:*(a1 + 56) error:*(a1 + 48)];
  return [*(a1 + 32) notifyAssetsState];
}

- (id)_filterAssetsToCache:(id)cache
{
  v25 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  v5 = objc_opt_new();
  v15 = cacheCopy;
  v6 = [MEMORY[0x277CE66A8] compatibleAssetsFromRefreshedAssets:cacheCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        if (!AXIsSoundDetectionMedinaSupportEnabled() || [(AXUltronModelAssetManager *)self isKShotAsset:v11])
        {
          v12 = AXLogUltron();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            ultronModelName = [v11 ultronModelName];
            *buf = 138412546;
            v21 = ultronModelName;
            v22 = 2112;
            v23 = v11;
            _os_log_debug_impl(&dword_23D62D000, v12, OS_LOG_TYPE_DEBUG, "Caching asset with name: %@. Asset: %@", buf, 0x16u);
          }

          [v5 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_supportedTypesFromAssets:(id)assets
{
  v46 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  v4 = objc_opt_new();
  if (AXIsSoundDetectionMedinaSupportEnabled())
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v5 = AXSDSoundDetectionCategories();
    v6 = [v5 countByEnumeratingWithState:&v38 objects:v45 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v39;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v39 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v10 = AXSDSoundDetectionTypesForCategory();
          v11 = [v10 countByEnumeratingWithState:&v34 objects:v44 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v35;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v35 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [v4 addObject:*(*(&v34 + 1) + 8 * j)];
              }

              v12 = [v10 countByEnumeratingWithState:&v34 objects:v44 count:16];
            }

            while (v12);
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v38 objects:v45 count:16];
      }

      while (v7);
    }
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = [MEMORY[0x277CE66A8] compatibleAssetsFromRefreshedAssets:{assetsCopy, assetsCopy}];
  v16 = [v15 countByEnumeratingWithState:&v30 objects:v43 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v31;
    v19 = MEMORY[0x277CE6F70];
    v20 = MEMORY[0x277CE6F60];
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v22 = *(*(&v30 + 1) + 8 * k);
        ultronModelName = [v22 ultronModelName];
        v24 = AXSDSoundDetectionTypeForIdentifier();

        if (v24 == *v19 || v24 == *v20)
        {
          if (![(AXUltronModelAssetManager *)self isKShotAsset:v22])
          {
            v26 = AXLogUltron();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
            {
              [(AXUltronModelAssetManager *)v42 _supportedTypesFromAssets:v22];
            }
          }
        }

        else
        {
          [v4 addObject:v24];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v30 objects:v43 count:16];
    }

    while (v17);
  }

  return v4;
}

- (void)assetController:(id)controller asset:(id)asset downloadProgressTotalWritten:(int64_t)written totalExpected:(int64_t)expected isStalled:(BOOL)stalled expectedTimeRemaining:(double)remaining
{
  assetCopy = asset;
  v8 = assetCopy;
  AXPerformBlockAsynchronouslyOnMainThread();
}

void __126__AXUltronModelAssetManager_assetController_asset_downloadProgressTotalWritten_totalExpected_isStalled_expectedTimeRemaining___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = AXLogUltron();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __126__AXUltronModelAssetManager_assetController_asset_downloadProgressTotalWritten_totalExpected_isStalled_expectedTimeRemaining___block_invoke_cold_1(a1, v3);
  }

  [*(a1 + 40) _cacheAsset:*(a1 + 32)];
  v4 = [*(a1 + 32) ultronModelName];
  v5 = AXSDSoundDetectionTypeForIdentifier();

  v6 = *(a1 + 40);
  if (v5 == *MEMORY[0x277CE6F70] || v5 == *MEMORY[0x277CE6F60])
  {
    if ([v6 isKShotAsset:*(a1 + 32)])
    {
      v8 = *(a1 + 40);
      v9 = [*(a1 + 32) ultronModelName];
      [v8 _updateDownloadingAsset:v9 totalBytesWritten:*(a1 + 48) isStalled:*(a1 + 72) expectedTimeRemaining:*(a1 + 64)];
    }

    else
    {
      v9 = AXLogUltron();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        __126__AXUltronModelAssetManager_assetController_asset_downloadProgressTotalWritten_totalExpected_isStalled_expectedTimeRemaining___block_invoke_cold_2((a1 + 32));
      }
    }
  }

  else
  {
    [v6 _updateDownloadingAsset:v5 totalBytesWritten:*(a1 + 48) isStalled:*(a1 + 72) expectedTimeRemaining:*(a1 + 64)];
  }

  v10 = *(*(a1 + 40) + 48);
  v11 = [*(a1 + 32) ultronModelName];
  [v10 setObject:MEMORY[0x277CBEC38] forKey:v11];

  [*(a1 + 40) notifyAssetsState];
}

- (void)assetController:(id)controller didFinishDownloadingAsset:(id)asset wasSuccessful:(BOOL)successful error:(id)error hasRemainingDownloads:(BOOL)downloads
{
  assetCopy = asset;
  errorCopy = error;
  v9 = errorCopy;
  v10 = assetCopy;
  AXPerformBlockAsynchronouslyOnMainThread();
}

uint64_t __113__AXUltronModelAssetManager_assetController_didFinishDownloadingAsset_wasSuccessful_error_hasRemainingDownloads___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = a1 + 40;
  [*(a1 + 32) _cacheAsset:*(a1 + 40)];
  if (*(v2 + 16) == 1)
  {
    v3 = [*v2 ultronModelName];
    v4 = AXSDSoundDetectionTypeForIdentifier();

    if (v4 == *MEMORY[0x277CE6F70] || v4 == *MEMORY[0x277CE6F60])
    {
      if ([*(a1 + 32) isKShotAsset:*(a1 + 40)])
      {
        v6 = [*v2 downloadSize];
        v7 = [v6 longLongValue];

        v8 = AXLogUltron();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v27 = *(a1 + 56);
          v28 = *(a1 + 57);
          v29 = 138413058;
          v30 = v4;
          v31 = 1024;
          *v32 = v27;
          *&v32[4] = 2048;
          *&v32[6] = v7;
          *&v32[14] = 1024;
          *&v32[16] = v28;
          _os_log_debug_impl(&dword_23D62D000, v8, OS_LOG_TYPE_DEBUG, "Finished downloading asset: (%@). successful: %d. total size: %lld, hasRemainingDownloads: %d", &v29, 0x22u);
        }

        v9 = *(a1 + 32);
        v10 = [*(a1 + 40) ultronModelName];
        [v9 _updateDownloadingAsset:v10 totalBytesWritten:v7 isStalled:0 expectedTimeRemaining:0.0];
      }

      else
      {
        v15 = AXLogUltron();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
        {
          __113__AXUltronModelAssetManager_assetController_didFinishDownloadingAsset_wasSuccessful_error_hasRemainingDownloads___block_invoke_cold_2(v2);
        }
      }
    }

    else
    {
      v11 = [*v2 downloadSize];
      v12 = [v11 longLongValue];

      v13 = AXLogUltron();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v22 = [*(a1 + 40) ultronModelName];
        v23 = [*(a1 + 40) compatibilityVersion];
        v24 = [*(a1 + 40) contentVersion];
        v25 = *(a1 + 56);
        v26 = *(a1 + 57);
        v29 = 138413570;
        v30 = v22;
        v31 = 2048;
        *v32 = v23;
        *&v32[8] = 2048;
        *&v32[10] = v24;
        *&v32[18] = 1024;
        v33 = v25;
        v34 = 2048;
        v35 = v12;
        v36 = 1024;
        v37 = v26;
        _os_log_debug_impl(&dword_23D62D000, v13, OS_LOG_TYPE_DEBUG, "Finished downloading asset: (%@ - CV: %lu - V: %lu). successful: %d. total size: %lld, hasRemainingDownloads: %d", &v29, 0x36u);
      }

      [*(a1 + 32) _updateDownloadingAsset:v4 totalBytesWritten:v12 isStalled:0 expectedTimeRemaining:0.0];
    }
  }

  else
  {
    v4 = AXLogUltron();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __113__AXUltronModelAssetManager_assetController_didFinishDownloadingAsset_wasSuccessful_error_hasRemainingDownloads___block_invoke_cold_1(a1, v4);
    }
  }

  [*(a1 + 32) _cacheAsset:*(a1 + 40)];
  v16 = *(*(a1 + 32) + 48);
  v17 = [*(a1 + 40) ultronModelName];
  v18 = [v16 objectForKey:v17];

  if (v18)
  {
    v19 = *(*(a1 + 32) + 48);
    v20 = [*(a1 + 40) ultronModelName];
    [v19 setObject:MEMORY[0x277CBEC28] forKey:v20];
  }

  return [*(a1 + 32) notifyAssetsState];
}

- (void)assetController:(id)controller didFinishPurgingAssets:(id)assets wasSuccessful:(BOOL)successful error:(id)error
{
  successfulCopy = successful;
  v16 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  errorCopy = error;
  v11 = AXLogUltron();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = 138412546;
    v13 = assetsCopy;
    v14 = 2112;
    v15 = errorCopy;
    _os_log_impl(&dword_23D62D000, v11, OS_LOG_TYPE_INFO, "Did purge assets: (%@). result: %@", &v12, 0x16u);
  }

  [(AXUltronModelAssetManager *)self notifyPurgeAssets:assetsCopy wasSuccessful:successfulCopy error:errorCopy];
}

- (void)addObserver:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_23D62D000, v0, OS_LOG_TYPE_DEBUG, "Asset Manager add observer: %@", v1, 0xCu);
}

- (void)notifyPurgeAssets:(uint64_t)a1 wasSuccessful:error:.cold.1(uint64_t a1)
{
  [*(a1 + 8) count];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __50__AXUltronModelAssetManager_stopDownloadingAssets__block_invoke_cold_1(uint64_t a1)
{
  v2 = [*(a1 + 32) ultronModelName];
  v8 = [*(a1 + 32) assetId];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __44__AXUltronModelAssetManager_downloadAssets___block_invoke_2_cold_1(uint64_t a1)
{
  [*(a1 + 32) count];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_cacheAsset:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 ultronModelName];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_2(&dword_23D62D000, v2, v3, "Attempted to cache an asset type that we don't currently support - should not happen! %@", v4, v5, v6, v7);
}

void __91__AXUltronModelAssetManager_assetController_didFinishRefreshingAssets_wasSuccessful_error___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_23D62D000, a2, OS_LOG_TYPE_ERROR, "Error refreshing assets: %@", &v3, 0xCu);
}

- (void)_supportedTypesFromAssets:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_3_2(a1 a2)];
  *v3 = 138412290;
  *v2 = v4;
  OUTLINED_FUNCTION_4(&dword_23D62D000, v5, v6, "Received an asset type that we don't currently support - should not happen! %@");
}

void __126__AXUltronModelAssetManager_assetController_asset_downloadProgressTotalWritten_totalExpected_isStalled_expectedTimeRemaining___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  v6 = 138413058;
  v7 = v2;
  v8 = 2048;
  v9 = v3;
  v10 = 2048;
  v11 = v4;
  v12 = 2048;
  v13 = v5;
  _os_log_debug_impl(&dword_23D62D000, a2, OS_LOG_TYPE_DEBUG, "Downloading asset: (%@). bytes written: %lld of %lld. stalled: %ld", &v6, 0x2Au);
}

void __126__AXUltronModelAssetManager_assetController_asset_downloadProgressTotalWritten_totalExpected_isStalled_expectedTimeRemaining___block_invoke_cold_2(id *a1)
{
  v1 = [*a1 ultronModelName];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_2(&dword_23D62D000, v2, v3, "Tried to update total bytes written for an asset type that we don't currently support - should not happen! %@", v4, v5, v6, v7);
}

void __113__AXUltronModelAssetManager_assetController_didFinishDownloadingAsset_wasSuccessful_error_hasRemainingDownloads___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_23D62D000, a2, OS_LOG_TYPE_ERROR, "Error downloading asset: %@", &v3, 0xCu);
}

void __113__AXUltronModelAssetManager_assetController_didFinishDownloadingAsset_wasSuccessful_error_hasRemainingDownloads___block_invoke_cold_2(id *a1)
{
  v1 = [*a1 ultronModelName];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_2(&dword_23D62D000, v2, v3, "Attemped to mark download complete for an asset type that we don't currently support - should not happen! %@", v4, v5, v6, v7);
}

@end