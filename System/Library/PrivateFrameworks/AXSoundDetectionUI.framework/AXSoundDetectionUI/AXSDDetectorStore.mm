@interface AXSDDetectorStore
+ (id)sharedInstance;
- (AXSDDetectorStore)init;
- (BOOL)_areKShotDetectorsReady;
- (BOOL)_areStandardDetectorsReady;
- (BOOL)areDetectorsReady;
- (BOOL)isAssetCatalogInstalled;
- (NSString)description;
- (id)_addDetectorForAXAsset:(id)asset;
- (id)_detectorWithIdentifier:(id)identifier;
- (id)_detectorWithName:(id)name;
- (id)_detectorsNeedingUpgrade;
- (id)allDetectors;
- (id)allDetectorsByIdentifier;
- (id)customDetectors;
- (id)detectorWithAssetID:(id)d;
- (id)detectorWithIdentifier:(id)identifier;
- (id)detectorWithName:(id)name;
- (id)detectorsByIdentifier;
- (id)enabledDetectors;
- (id)installedDetectors;
- (id)localizedNamesByIdentifier;
- (id)supportedDetectors;
- (id)unInstalledDetectors;
- (int64_t)totalDownloadSize;
- (int64_t)totalUnarchivedFileSize;
- (unint64_t)numberOfObservers;
- (void)_createSDDetectors;
- (void)_downloadAssetsFromDetectors:(id)detectors;
- (void)_enumerateObserversWithBlock:(id)block;
- (void)_notifyObserversAvailableDetectorsDidUpdate:(id)update;
- (void)_notifyObserversDetectorsAreReady;
- (void)_notifyObserversDetectorsDownloadProgress:(int64_t)progress totalSizeExpected:(int64_t)expected remainingTimeExpected:(double)timeExpected isStalled:(BOOL)stalled;
- (void)_notifyObserversDetectorsDownloadProgress:(int64_t)progress totalSizeExpected:(int64_t)expected remainingTimeExpected:(double)timeExpected isStalled:(BOOL)stalled error:(id)error;
- (void)_notifyObserversDetectorsNeedUpdate:(id)update toDetectors:(id)detectors;
- (void)_notifyObserversDidFinishPurgingDetectors:(id)detectors wasSuccessful:(BOOL)successful error:(id)error;
- (void)_notifyObserversDidFinishRefreshingDetectors:(id)detectors wasSuccessful:(BOOL)successful error:(id)error;
- (void)_purgeAssetsFromDetectors:(id)detectors;
- (void)_reloadCustomDetectors;
- (void)_removeCustomDetectors;
- (void)addObserver:(id)observer;
- (void)assetManager:(id)manager didFinishPurgingAssets:(id)assets wasSuccessful:(BOOL)successful error:(id)error;
- (void)assetManager:(id)manager didFinishRefreshingAssets:(id)assets wasSuccessful:(BOOL)successful error:(id)error;
- (void)assetManager:(id)manager totalSizeExpected:(int64_t)expected downloadProgressTotalWritten:(int64_t)written remainingTimeExpected:(double)timeExpected isStalled:(BOOL)stalled;
- (void)disableDetector:(id)detector;
- (void)disableDetectorWithIdentifier:(id)identifier;
- (void)downloadDetectors;
- (void)enableDetector:(id)detector;
- (void)enableDetectorWithIdentifier:(id)identifier;
- (void)loadDetectors;
- (void)purgeDetectors;
- (void)removeObserver:(id)observer;
@end

@implementation AXSDDetectorStore

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[AXSDDetectorStore sharedInstance];
  }

  v3 = sharedInstance_SharedSettings;

  return v3;
}

uint64_t __35__AXSDDetectorStore_sharedInstance__block_invoke()
{
  sharedInstance_SharedSettings = objc_alloc_init(AXSDDetectorStore);

  return MEMORY[0x2821F96F8]();
}

- (AXSDDetectorStore)init
{
  v16.receiver = self;
  v16.super_class = AXSDDetectorStore;
  v2 = [(AXSDDetectorStore *)&v16 init];
  if (v2)
  {
    weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    observers = v2->_observers;
    v2->_observers = weakObjectsPointerArray;

    v5 = objc_opt_new();
    detectors = v2->_detectors;
    v2->_detectors = v5;

    v7 = objc_opt_new();
    purgedDetectors = v2->_purgedDetectors;
    v2->_purgedDetectors = v7;

    v9 = +[AXUltronModelAssetManager sharedInstance];
    assetManager = v2->_assetManager;
    v2->_assetManager = v9;

    [(AXUltronModelAssetManager *)v2->_assetManager addObserver:v2];
    objc_initWeak(&location, v2);
    mEMORY[0x277CE6F98] = [MEMORY[0x277CE6F98] sharedInstance];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __25__AXSDDetectorStore_init__block_invoke;
    v13[3] = &unk_278BDD060;
    objc_copyWeak(&v14, &location);
    [mEMORY[0x277CE6F98] registerUpdateBlock:v13 forRetrieveSelector:sel_kShotDetectors withListener:v2];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __25__AXSDDetectorStore_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadCustomDetectors];
}

- (int64_t)totalDownloadSize
{
  v2 = +[AXUltronModelAssetManager sharedInstance];
  totalSizeExpected = [v2 totalSizeExpected];

  return totalSizeExpected;
}

- (int64_t)totalUnarchivedFileSize
{
  v2 = +[AXUltronModelAssetManager sharedInstance];
  totalSizeOccupied = [v2 totalSizeOccupied];

  return totalSizeOccupied;
}

- (unint64_t)numberOfObservers
{
  [(NSPointerArray *)self->_observers compact];
  observers = self->_observers;

  return [(NSPointerArray *)observers count];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(AXSDDetectorStore *)observerCopy addObserver:v5];
  }

  [(NSPointerArray *)self->_observers addPointer:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(AXSDDetectorStore *)observerCopy removeObserver:v5];
  }

  if ([(NSPointerArray *)self->_observers count])
  {
    v6 = 0;
    while (1)
    {
      v7 = [(NSPointerArray *)self->_observers pointerAtIndex:v6];
      v8 = v7;
      if (v7 == observerCopy)
      {
        break;
      }

      if (++v6 >= [(NSPointerArray *)self->_observers count])
      {
        goto LABEL_9;
      }
    }

    [(NSPointerArray *)self->_observers replacePointerAtIndex:v6 withPointer:0];
  }

LABEL_9:
  [(NSPointerArray *)self->_observers compact];
}

- (BOOL)isAssetCatalogInstalled
{
  v2 = +[AXUltronModelAssetManager sharedInstance];
  isAssetCatalogInstalled = [v2 isAssetCatalogInstalled];

  return isAssetCatalogInstalled;
}

- (BOOL)areDetectorsReady
{
  v15 = *MEMORY[0x277D85DE8];
  _areKShotDetectorsReady = [(AXSDDetectorStore *)self _areKShotDetectorsReady];
  if (AXIsSoundDetectionMedinaSupportEnabled())
  {
    v4 = AXLogUltron();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [MEMORY[0x277CCABB0] numberWithBool:_areKShotDetectorsReady];
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_23D62D000, v4, OS_LOG_TYPE_INFO, "Medina is Enabled. Are KShot Detectors Ready: %@", &v11, 0xCu);
    }
  }

  else
  {
    _areStandardDetectorsReady = [(AXSDDetectorStore *)self _areStandardDetectorsReady];
    v7 = AXLogUltron();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithBool:_areKShotDetectorsReady];
      v9 = [MEMORY[0x277CCABB0] numberWithBool:_areStandardDetectorsReady];
      v11 = 138412546;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_23D62D000, v7, OS_LOG_TYPE_INFO, "Are KShot Detectors Ready: %@. Are Standard Detectors Ready: %@.", &v11, 0x16u);
    }

    LOBYTE(_areKShotDetectorsReady) = _areKShotDetectorsReady && _areStandardDetectorsReady;
  }

  return _areKShotDetectorsReady;
}

- (BOOL)_areStandardDetectorsReady
{
  v22 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CE6F98] = [MEMORY[0x277CE6F98] sharedInstance];
  supportedSoundDetectionTypes = [mEMORY[0x277CE6F98] supportedSoundDetectionTypes];

  detectorsByIdentifier = [(AXSDDetectorStore *)self detectorsByIdentifier];
  if ([supportedSoundDetectionTypes count] && (objc_msgSend(detectorsByIdentifier, "allValues"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "count"), v6, v7))
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = supportedSoundDetectionTypes;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
LABEL_5:
      v12 = 0;
      while (1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [detectorsByIdentifier objectForKey:{*(*(&v17 + 1) + 8 * v12), v17}];
        v14 = v13;
        if (!v13)
        {
          break;
        }

        isInstalled = [v13 isInstalled];

        if (!isInstalled)
        {
          LOBYTE(v14) = 0;
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
          LOBYTE(v14) = 1;
          if (v10)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    else
    {
      LOBYTE(v14) = 1;
    }
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

- (BOOL)_areKShotDetectorsReady
{
  v18[3] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE6EF8];
  v18[0] = *MEMORY[0x277CE6EF0];
  v18[1] = v3;
  v18[2] = *MEMORY[0x277CE6EE8];
  [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v14 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = [(AXSDDetectorStore *)self detectorWithName:*(*(&v13 + 1) + 8 * v8), v13];
      v10 = v9;
      if (!v9)
      {
        break;
      }

      isInstalled = [v9 isInstalled];

      if (!isInstalled)
      {
        LOBYTE(v10) = 0;
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        LOBYTE(v10) = 1;
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (void)loadDetectors
{
  if (AXIsSoundDetectionMedinaSupportEnabled())
  {
    [(AXSDDetectorStore *)self _createSDDetectors];
  }

  [(AXUltronModelAssetManager *)self->_assetManager refresh];

  [(AXSDDetectorStore *)self _reloadCustomDetectors];
}

- (void)_createSDDetectors
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = AXSDSoundDetectionCategories();
  v16 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v16)
  {
    v15 = *v22;
    do
    {
      v3 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v4 = AXSDSoundDetectionTypesForCategory();
        v5 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v18;
          do
          {
            v8 = 0;
            do
            {
              if (*v18 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = *(*(&v17 + 1) + 8 * v8);
              detectors = [(AXSDDetectorStore *)self detectors];
              v11 = [detectors objectForKey:v9];

              if (!v11)
              {
                v12 = [[AXSDDetector alloc] initWithIdentifier:v9 andName:v9];
                detectors2 = [(AXSDDetectorStore *)self detectors];
                [detectors2 setObject:v12 forKey:v9];
              }

              ++v8;
            }

            while (v6 != v8);
            v6 = [v4 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v6);
        }

        ++v3;
      }

      while (v3 != v16);
      v16 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v16);
  }
}

- (void)_removeCustomDetectors
{
  v16 = *MEMORY[0x277D85DE8];
  customDetectors = [(AXSDDetectorStore *)self customDetectors];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [customDetectors countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(customDetectors);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        detectors = [(AXSDDetectorStore *)self detectors];
        identifier = [v8 identifier];
        [detectors removeObjectForKey:identifier];

        ++v7;
      }

      while (v5 != v7);
      v5 = [customDetectors countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)_reloadCustomDetectors
{
  v18 = *MEMORY[0x277D85DE8];
  [(AXSDDetectorStore *)self _removeCustomDetectors];
  mEMORY[0x277CE6F98] = [MEMORY[0x277CE6F98] sharedInstance];
  decodedKShotDetectors = [mEMORY[0x277CE6F98] decodedKShotDetectors];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = decodedKShotDetectors;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [v5 objectForKey:{v10, v13}];
        detectors = [(AXSDDetectorStore *)self detectors];
        [detectors setObject:v11 forKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)downloadDetectors
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  unInstalledDetectors = [(AXSDDetectorStore *)self unInstalledDetectors];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [unInstalledDetectors countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(unInstalledDetectors);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [v3 objectForKey:identifier];

        if (!v11 || [v11 isOlderThanDetector:v9])
        {
          identifier2 = [v9 identifier];
          [v3 setObject:v9 forKey:identifier2];
        }
      }

      v6 = [unInstalledDetectors countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  allValues = [v3 allValues];
  [(AXSDDetectorStore *)self _downloadAssetsFromDetectors:allValues];
}

- (void)_downloadAssetsFromDetectors:(id)detectors
{
  v34 = *MEMORY[0x277D85DE8];
  detectorsCopy = detectors;
  v4 = +[AXUltronModelAssetManager sharedInstance];
  hasInProgressDownloads = [v4 hasInProgressDownloads];

  if (hasInProgressDownloads)
  {
    v6 = AXLogUltron();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = objc_opt_class();
      v7 = v30;
      v8 = "[%@]: not downloading detectors as there are already downloads in progress";
LABEL_24:
      _os_log_impl(&dword_23D62D000, v6, OS_LOG_TYPE_INFO, v8, buf, 0xCu);
    }
  }

  else if (detectorsCopy && [detectorsCopy count])
  {
    v6 = objc_opt_new();
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v24 = detectorsCopy;
    v9 = detectorsCopy;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          if (([v14 isCustom] & 1) == 0)
          {
            model = [v14 model];

            if (model)
            {
              model2 = [v14 model];
              [v6 addObject:model2];
            }

            else
            {
              model2 = AXLogUltron();
              if (os_log_type_enabled(model2, OS_LOG_TYPE_ERROR))
              {
                v17 = objc_opt_class();
                v18 = v17;
                model3 = [v14 model];
                *buf = 138412546;
                v30 = v17;
                v31 = 2112;
                v32 = model3;
                _os_log_error_impl(&dword_23D62D000, model2, OS_LOG_TYPE_ERROR, "[%@]: candidate detector for download has no asset: %@", buf, 0x16u);
              }
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v11);
    }

    v20 = AXLogUltron();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = objc_opt_class();
      *buf = 138412546;
      v30 = v21;
      v31 = 2112;
      v32 = v9;
      v22 = v21;
      _os_log_impl(&dword_23D62D000, v20, OS_LOG_TYPE_INFO, "[%@]: Downloading assets that need upgrading: %@", buf, 0x16u);
    }

    v23 = +[AXUltronModelAssetManager sharedInstance];
    [v23 downloadAssets:v6];

    detectorsCopy = v24;
  }

  else
  {
    v6 = AXLogUltron();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = objc_opt_class();
      v7 = v30;
      v8 = "[%@]: no detectors to download.";
      goto LABEL_24;
    }
  }
}

- (void)purgeDetectors
{
  installedDetectors = [(AXSDDetectorStore *)self installedDetectors];
  v4 = [installedDetectors ax_filteredArrayUsingBlock:&__block_literal_global_13];

  [(AXSDDetectorStore *)self _purgeAssetsFromDetectors:v4];
}

BOOL __35__AXSDDetectorStore_purgeDetectors__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isCustom])
  {
    v3 = 0;
  }

  else
  {
    v4 = [v2 model];
    v3 = v4 != 0;
  }

  return v3;
}

- (void)_purgeAssetsFromDetectors:(id)detectors
{
  v40 = *MEMORY[0x277D85DE8];
  detectorsCopy = detectors;
  v5 = detectorsCopy;
  if (detectorsCopy && [detectorsCopy count])
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v31;
      do
      {
        v10 = 0;
        do
        {
          if (*v31 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v30 + 1) + 8 * v10++) setIsEnabled:0];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v8);
    }

    v11 = [v6 ax_mappedArrayUsingBlock:&__block_literal_global_16];
    v12 = +[AXUltronModelAssetManager sharedInstance];
    [v12 stopDownloadingAssets];

    v13 = AXLogUltron();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      *buf = 138412546;
      v36 = v14;
      v37 = 2112;
      v38 = v6;
      v15 = v14;
      _os_log_impl(&dword_23D62D000, v13, OS_LOG_TYPE_INFO, "[%@]: Purging assets that are no longer needed: %@", buf, 0x16u);
    }

    v16 = +[AXUltronModelAssetManager sharedInstance];
    [v16 purgeAssets:v11];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = v11;
    v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
      do
      {
        v21 = 0;
        do
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v26 + 1) + 8 * v21);
          detectors = [(AXSDDetectorStore *)self detectors];
          assetId = [v22 assetId];
          [detectors removeObjectForKey:assetId];

          ++v21;
        }

        while (v19 != v21);
        v19 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v19);
    }
  }

  else
  {
    v17 = AXLogUltron();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v36 = objc_opt_class();
      v25 = v36;
      _os_log_impl(&dword_23D62D000, v17, OS_LOG_TYPE_INFO, "[%@]: no detectors to purge.", buf, 0xCu);
    }
  }
}

id __47__AXSDDetectorStore__purgeAssetsFromDetectors___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isCustom])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 model];
  }

  return v3;
}

- (id)_detectorsNeedingUpgrade
{
  v32 = *MEMORY[0x277D85DE8];
  unInstalledDetectors = [(AXSDDetectorStore *)self unInstalledDetectors];
  detectorsByIdentifier = [(AXSDDetectorStore *)self detectorsByIdentifier];
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = unInstalledDetectors;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v22;
    *&v9 = 138412546;
    v20 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        identifier = [v13 identifier];
        v15 = [detectorsByIdentifier objectForKey:identifier];

        if (!v15)
        {
          v16 = AXLogUltron();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v28 = v13;
            _os_log_impl(&dword_23D62D000, v16, OS_LOG_TYPE_INFO, "No installed detector found. %@ needs to be installed.", buf, 0xCu);
          }

          [v6 addObject:v13];
          [v13 setNeedsUpdate:1];
        }

        if ([v15 isOlderThanDetector:v13] && objc_msgSend(v15, "isCompatiable"))
        {
          v17 = AXLogUltron();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = v20;
            v28 = v15;
            v29 = 2112;
            v30 = v13;
            _os_log_impl(&dword_23D62D000, v17, OS_LOG_TYPE_INFO, "Installed Detector: %@ needs upgrade to: %@", buf, 0x16u);
          }

          [v5 addObject:v15];
          [v6 addObject:v13];
          [v15 setNeedsUpdate:1];
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v10);
  }

  v25[0] = @"old";
  v25[1] = @"new";
  v26[0] = v5;
  v26[1] = v6;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];

  return v18;
}

- (id)detectorWithIdentifier:(id)identifier
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  customDetectors = [(AXSDDetectorStore *)self customDetectors];
  v6 = [customDetectors countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(customDetectors);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        identifier = [v10 identifier];
        v12 = [identifier isEqualToString:identifierCopy];

        if (v12)
        {
          v16 = v10;
          goto LABEL_15;
        }
      }

      v7 = [customDetectors countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if (!AXIsSoundDetectionMedinaSupportEnabled())
  {
    goto LABEL_13;
  }

  v13 = AXSDSoundDetectionTypeForIdentifier();
  if (v13)
  {
    customDetectors = v13;
    detectors = [(AXSDDetectorStore *)self detectors];
    v15 = [detectors objectForKey:customDetectors];

    if (v15)
    {

LABEL_13:
      v16 = [(AXSDDetectorStore *)self _detectorWithIdentifier:identifierCopy];
      goto LABEL_16;
    }

    [(AXSDDetectorStore *)self _createSDDetectors];
    detectors2 = [(AXSDDetectorStore *)self detectors];
    v16 = [detectors2 objectForKey:customDetectors];

LABEL_15:
  }

  else
  {
    v18 = AXLogUltron();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(AXSDDetectorStore *)identifierCopy detectorWithIdentifier:v18];
    }

    v16 = 0;
  }

LABEL_16:

  return v16;
}

- (id)_detectorWithIdentifier:(id)identifier
{
  v33 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  installedDetectors = [(AXSDDetectorStore *)self installedDetectors];
  v7 = [installedDetectors countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(installedDetectors);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        identifier = [v11 identifier];
        v13 = [identifier isEqualToString:identifierCopy];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [installedDetectors countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v8);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = v5;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v24;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v23 + 1) + 8 * j);
        if (v17)
        {
          if ([*(*(&v23 + 1) + 8 * j) isEnabled] || objc_msgSend(v17, "isOlderThanDetector:", v20))
          {
            v21 = v20;

            v17 = v21;
          }
        }

        else
        {
          v17 = v20;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)detectorWithName:(id)name
{
  nameCopy = name;
  if (AXIsSoundDetectionMedinaSupportEnabled())
  {
    [(AXSDDetectorStore *)self _createSDDetectors];
  }

  v5 = [(AXSDDetectorStore *)self _detectorWithName:nameCopy];

  return v5;
}

- (id)_detectorWithName:(id)name
{
  v21 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  detectors = [(AXSDDetectorStore *)self detectors];
  v6 = [detectors countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v17 != v8)
      {
        objc_enumerationMutation(detectors);
      }

      v10 = *(*(&v16 + 1) + 8 * v9);
      detectors2 = [(AXSDDetectorStore *)self detectors];
      v12 = [detectors2 objectForKey:v10];

      name = [v12 name];
      v14 = [name isEqualToString:nameCopy];

      if (v14)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [detectors countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

  return v12;
}

- (id)detectorWithAssetID:(id)d
{
  dCopy = d;
  detectors = [(AXSDDetectorStore *)self detectors];
  v6 = [detectors objectForKey:dCopy];

  return v6;
}

- (id)allDetectors
{
  detectors = [(AXSDDetectorStore *)self detectors];
  allValues = [detectors allValues];

  return allValues;
}

- (id)supportedDetectors
{
  detectors = [(AXSDDetectorStore *)self detectors];
  allValues = [detectors allValues];
  v4 = [allValues ax_filteredArrayUsingBlock:&__block_literal_global_23];

  return v4;
}

uint64_t __39__AXSDDetectorStore_supportedDetectors__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isCustom])
  {
    v3 = [v2 isModelReady];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (id)installedDetectors
{
  detectors = [(AXSDDetectorStore *)self detectors];
  allValues = [detectors allValues];
  v4 = [allValues ax_filteredArrayUsingBlock:&__block_literal_global_25];

  return v4;
}

- (id)unInstalledDetectors
{
  detectors = [(AXSDDetectorStore *)self detectors];
  allValues = [detectors allValues];
  v4 = [allValues ax_filteredArrayUsingBlock:&__block_literal_global_27];

  return v4;
}

- (id)customDetectors
{
  detectors = [(AXSDDetectorStore *)self detectors];
  allValues = [detectors allValues];
  v4 = [allValues ax_filteredArrayUsingBlock:&__block_literal_global_29];

  return v4;
}

- (id)enabledDetectors
{
  detectors = [(AXSDDetectorStore *)self detectors];
  allValues = [detectors allValues];
  v4 = [allValues ax_filteredArrayUsingBlock:&__block_literal_global_31];

  return v4;
}

- (id)_addDetectorForAXAsset:(id)asset
{
  v27 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v5 = [[AXSDDetector alloc] initWithModel:assetCopy];
  detectors = self->_detectors;
  assetId = [assetCopy assetId];
  [(NSMutableDictionary *)detectors setObject:v5 forKey:assetId];

  if ((AXIsSoundDetectionMedinaSupportEnabled() & 1) == 0)
  {
    store = [MEMORY[0x277CE6670] store];
    ultronAssetType = [MEMORY[0x277CE66A8] ultronAssetType];
    v10 = [store valueForKey:@"AXUltronAssetsInUse" forAssetType:ultronAssetType];
    v11 = [v10 mutableCopy];

    if (!v11)
    {
      v11 = objc_opt_new();
    }

    identifier = [(AXSDDetector *)v5 identifier];
    v13 = [v11 objectForKey:identifier];

    if (v13)
    {
      assetId2 = [assetCopy assetId];
      v15 = [v13 isEqualToString:assetId2];

      if (v15)
      {
        v16 = AXLogUltron();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = objc_opt_class();
          v18 = v17;
          identifier2 = [(AXSDDetector *)v5 identifier];
          v21 = 138412802;
          v22 = v17;
          v23 = 2112;
          v24 = v13;
          v25 = 2112;
          v26 = identifier2;
          _os_log_impl(&dword_23D62D000, v16, OS_LOG_TYPE_INFO, "[%@]: found asset id in metadata store: %@. setting detector: %@ to enabled", &v21, 0x20u);
        }

        [(AXSDDetector *)v5 setIsEnabled:1];
      }
    }
  }

  return v5;
}

- (id)allDetectorsByIdentifier
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  detectors = [(AXSDDetectorStore *)self detectors];
  allValues = [detectors allValues];

  v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        identifier = [v10 identifier];
        v12 = [v3 objectForKey:identifier];
        if (!v12)
        {
          v12 = objc_opt_new();
        }

        [v12 addObject:v10];
        [v3 setObject:v12 forKey:identifier];
      }

      v7 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)detectorsByIdentifier
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  allDetectorsByIdentifier = [(AXSDDetectorStore *)self allDetectorsByIdentifier];
  allKeys = [allDetectorsByIdentifier allKeys];
  v7 = [v4 initWithArray:allKeys];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v14 = [(AXSDDetectorStore *)self detectorWithIdentifier:v13, v16];
        if (v14)
        {
          [v3 setObject:v14 forKey:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  return v3;
}

- (id)localizedNamesByIdentifier
{
  v32 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CE6F98] = [MEMORY[0x277CE6F98] sharedInstance];
  supportedSoundDetectionTypes = [mEMORY[0x277CE6F98] supportedSoundDetectionTypes];

  v5 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = supportedSoundDetectionTypes;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = AXSDSoundDetectionLocalizedTitleForType();
        [v5 setValue:v12 forKey:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  customDetectors = [(AXSDDetectorStore *)self customDetectors];
  v14 = [customDetectors countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(customDetectors);
        }

        v18 = *(*(&v22 + 1) + 8 * j);
        identifier = [v18 identifier];
        name = [v18 name];
        [v5 setValue:name forKey:identifier];
      }

      v15 = [customDetectors countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v15);
  }

  return v5;
}

- (void)enableDetector:(id)detector
{
  detectorCopy = detector;
  detectors = [(AXSDDetectorStore *)self detectors];
  model = [detectorCopy model];
  assetId = [model assetId];
  v8 = [detectors objectForKey:assetId];
  [v8 setIsEnabled:1];

  mEMORY[0x277CE6F98] = [MEMORY[0x277CE6F98] sharedInstance];
  [mEMORY[0x277CE6F98] setDetectorIsEnabled:detectorCopy isEnabled:1];
}

- (void)enableDetectorWithIdentifier:(id)identifier
{
  v4 = [(AXSDDetectorStore *)self detectorWithIdentifier:identifier];
  [(AXSDDetectorStore *)self enableDetector:v4];
}

- (void)disableDetector:(id)detector
{
  detectorCopy = detector;
  detectors = [(AXSDDetectorStore *)self detectors];
  model = [detectorCopy model];
  assetId = [model assetId];
  v8 = [detectors objectForKey:assetId];
  [v8 setIsEnabled:0];

  mEMORY[0x277CE6F98] = [MEMORY[0x277CE6F98] sharedInstance];
  [mEMORY[0x277CE6F98] setDetectorIsEnabled:detectorCopy isEnabled:0];
}

- (void)disableDetectorWithIdentifier:(id)identifier
{
  v4 = [(AXSDDetectorStore *)self detectorWithIdentifier:identifier];
  [(AXSDDetectorStore *)self disableDetector:v4];
}

- (void)_enumerateObserversWithBlock:(id)block
{
  v15 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  [(NSPointerArray *)self->_observers compact];
  allObjects = [(NSPointerArray *)self->_observers allObjects];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(allObjects);
        }

        if (*(*(&v10 + 1) + 8 * v9))
        {
          blockCopy[2](blockCopy);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [allObjects countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_notifyObserversAvailableDetectorsDidUpdate:(id)update
{
  updateCopy = update;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__AXSDDetectorStore__notifyObserversAvailableDetectorsDidUpdate___block_invoke;
  v6[3] = &unk_278BDD0C8;
  v6[4] = self;
  v7 = updateCopy;
  v5 = updateCopy;
  [(AXSDDetectorStore *)self _enumerateObserversWithBlock:v6];
}

void __65__AXSDDetectorStore__notifyObserversAvailableDetectorsDidUpdate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 detectorStore:*(a1 + 32) availableDetectorsDidUpdate:*(a1 + 40)];
  }
}

- (void)_notifyObserversDetectorsNeedUpdate:(id)update toDetectors:(id)detectors
{
  updateCopy = update;
  detectorsCopy = detectors;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __69__AXSDDetectorStore__notifyObserversDetectorsNeedUpdate_toDetectors___block_invoke;
  v10[3] = &unk_278BDD0F0;
  v10[4] = self;
  v11 = updateCopy;
  v12 = detectorsCopy;
  v8 = detectorsCopy;
  v9 = updateCopy;
  [(AXSDDetectorStore *)self _enumerateObserversWithBlock:v10];
}

void __69__AXSDDetectorStore__notifyObserversDetectorsNeedUpdate_toDetectors___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 detectorStore:a1[4] detectorsNeedUpdate:a1[5] toDetectors:a1[6]];
  }
}

- (void)_notifyObserversDidFinishRefreshingDetectors:(id)detectors wasSuccessful:(BOOL)successful error:(id)error
{
  detectorsCopy = detectors;
  errorCopy = error;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __86__AXSDDetectorStore__notifyObserversDidFinishRefreshingDetectors_wasSuccessful_error___block_invoke;
  v12[3] = &unk_278BDD118;
  v12[4] = self;
  v13 = detectorsCopy;
  successfulCopy = successful;
  v14 = errorCopy;
  v10 = errorCopy;
  v11 = detectorsCopy;
  [(AXSDDetectorStore *)self _enumerateObserversWithBlock:v12];
}

void __86__AXSDDetectorStore__notifyObserversDidFinishRefreshingDetectors_wasSuccessful_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 detectorStore:*(a1 + 32) didFinishRefreshingDetectors:*(a1 + 40) wasSuccessful:*(a1 + 56) error:*(a1 + 48)];
  }
}

- (void)_notifyObserversDetectorsAreReady
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __54__AXSDDetectorStore__notifyObserversDetectorsAreReady__block_invoke;
  v2[3] = &unk_278BDD140;
  v2[4] = self;
  [(AXSDDetectorStore *)self _enumerateObserversWithBlock:v2];
}

void __54__AXSDDetectorStore__notifyObserversDetectorsAreReady__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 detectorsReadyForDetectorStore:*(a1 + 32)];
  }
}

- (void)_notifyObserversDetectorsDownloadProgress:(int64_t)progress totalSizeExpected:(int64_t)expected remainingTimeExpected:(double)timeExpected isStalled:(BOOL)stalled
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __113__AXSDDetectorStore__notifyObserversDetectorsDownloadProgress_totalSizeExpected_remainingTimeExpected_isStalled___block_invoke;
  v6[3] = &unk_278BDD168;
  v6[4] = self;
  v6[5] = expected;
  v6[6] = progress;
  *&v6[7] = timeExpected;
  stalledCopy = stalled;
  [(AXSDDetectorStore *)self _enumerateObserversWithBlock:v6];
}

void __113__AXSDDetectorStore__notifyObserversDetectorsDownloadProgress_totalSizeExpected_remainingTimeExpected_isStalled___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 detectorStore:*(a1 + 32) totalSizeExpected:*(a1 + 40) downloadProgressTotalWritten:*(a1 + 48) remainingTimeExpected:*(a1 + 64) isStalled:*(a1 + 56)];
  }
}

- (void)_notifyObserversDetectorsDownloadProgress:(int64_t)progress totalSizeExpected:(int64_t)expected remainingTimeExpected:(double)timeExpected isStalled:(BOOL)stalled error:(id)error
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __119__AXSDDetectorStore__notifyObserversDetectorsDownloadProgress_totalSizeExpected_remainingTimeExpected_isStalled_error___block_invoke;
  v7[3] = &unk_278BDD168;
  v7[4] = self;
  v7[5] = expected;
  v7[6] = progress;
  *&v7[7] = timeExpected;
  stalledCopy = stalled;
  [(AXSDDetectorStore *)self _enumerateObserversWithBlock:v7, expected, stalled, error];
}

void __119__AXSDDetectorStore__notifyObserversDetectorsDownloadProgress_totalSizeExpected_remainingTimeExpected_isStalled_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 detectorStore:*(a1 + 32) totalSizeExpected:*(a1 + 40) downloadProgressTotalWritten:*(a1 + 48) remainingTimeExpected:*(a1 + 64) isStalled:*(a1 + 56)];
  }
}

- (void)_notifyObserversDidFinishPurgingDetectors:(id)detectors wasSuccessful:(BOOL)successful error:(id)error
{
  detectorsCopy = detectors;
  errorCopy = error;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__AXSDDetectorStore__notifyObserversDidFinishPurgingDetectors_wasSuccessful_error___block_invoke;
  v12[3] = &unk_278BDD118;
  v12[4] = self;
  v13 = detectorsCopy;
  successfulCopy = successful;
  v14 = errorCopy;
  v10 = errorCopy;
  v11 = detectorsCopy;
  [(AXSDDetectorStore *)self _enumerateObserversWithBlock:v12];
}

void __83__AXSDDetectorStore__notifyObserversDidFinishPurgingDetectors_wasSuccessful_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 detectorStore:*(a1 + 32) didFinishPurgingDetectors:*(a1 + 40) wasSuccessful:*(a1 + 56) error:*(a1 + 48)];
  }
}

- (void)assetManager:(id)manager didFinishRefreshingAssets:(id)assets wasSuccessful:(BOOL)successful error:(id)error
{
  successfulCopy = successful;
  v53 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  errorCopy = error;
  v11 = AXLogUltron();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = objc_opt_class();
    v13 = v12;
    *buf = 138413058;
    v46 = v12;
    v47 = 2048;
    v48 = [assetsCopy count];
    v49 = 1024;
    v50 = successfulCopy;
    v51 = 2112;
    v52 = errorCopy;
    _os_log_impl(&dword_23D62D000, v11, OS_LOG_TYPE_INFO, "[%@]: assets did finish refreshing. assets: %lu - was successful: %d - error: %@", buf, 0x26u);
  }

  v14 = objc_alloc(MEMORY[0x277CBEB58]);
  allKeys = [(NSMutableDictionary *)self->_detectors allKeys];
  v16 = [v14 initWithArray:allKeys];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v17 = assetsCopy;
  v18 = [v17 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v41;
    do
    {
      v21 = 0;
      do
      {
        if (*v41 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [(AXSDDetectorStore *)self _addDetectorForAXAsset:*(*(&v40 + 1) + 8 * v21++)];
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v19);
  }

  v23 = objc_alloc(MEMORY[0x277CBEB58]);
  allKeys2 = [(NSMutableDictionary *)self->_detectors allKeys];
  v25 = [v23 initWithArray:allKeys2];

  detectors = [(AXSDDetectorStore *)self detectors];
  allValues = [detectors allValues];
  [(AXSDDetectorStore *)self _notifyObserversDidFinishRefreshingDetectors:allValues wasSuccessful:successfulCopy error:errorCopy];

  mEMORY[0x277CE6F98] = [MEMORY[0x277CE6F98] sharedInstance];
  LODWORD(detectors) = [mEMORY[0x277CE6F98] ultronSupportEnabled];

  if (detectors)
  {
    [v25 minusSet:v16];
    if ([v25 count])
    {
      detectors2 = [(AXSDDetectorStore *)self detectors];
      allValues2 = [detectors2 allValues];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __80__AXSDDetectorStore_assetManager_didFinishRefreshingAssets_wasSuccessful_error___block_invoke;
      v38[3] = &unk_278BDD190;
      v39 = v25;
      v31 = [allValues2 ax_filteredArrayUsingBlock:v38];

      [(AXSDDetectorStore *)self _notifyObserversAvailableDetectorsDidUpdate:v31];
    }

    _detectorsNeedingUpgrade = [(AXSDDetectorStore *)self _detectorsNeedingUpgrade];
    v33 = [_detectorsNeedingUpgrade objectForKey:@"new"];
    [(AXSDDetectorStore *)self _downloadAssetsFromDetectors:v33];

    v34 = [_detectorsNeedingUpgrade objectForKey:@"old"];
    v35 = [_detectorsNeedingUpgrade objectForKey:@"new"];
    [(AXSDDetectorStore *)self _notifyObserversDetectorsNeedUpdate:v34 toDetectors:v35];

    installedDetectors = [(AXSDDetectorStore *)self installedDetectors];
    v37 = [installedDetectors ax_filteredArrayUsingBlock:&__block_literal_global_53];

    [(AXSDDetectorStore *)self _purgeAssetsFromDetectors:v37];
    if ([(AXSDDetectorStore *)self areDetectorsReady])
    {
      [(AXSDDetectorStore *)self _notifyObserversDetectorsAreReady];
    }
  }
}

uint64_t __80__AXSDDetectorStore_assetManager_didFinishRefreshingAssets_wasSuccessful_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 model];
  v4 = [v3 assetId];
  v5 = [v2 containsObject:v4];

  return v5;
}

uint64_t __80__AXSDDetectorStore_assetManager_didFinishRefreshingAssets_wasSuccessful_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isCustom])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 isCompatiable] ^ 1;
  }

  return v3;
}

- (void)assetManager:(id)manager totalSizeExpected:(int64_t)expected downloadProgressTotalWritten:(int64_t)written remainingTimeExpected:(double)timeExpected isStalled:(BOOL)stalled
{
  stalledCopy = stalled;
  v22 = *MEMORY[0x277D85DE8];
  v12 = AXLogUltron();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138413058;
    v15 = objc_opt_class();
    v16 = 2048;
    writtenCopy = written;
    v18 = 2048;
    expectedCopy = expected;
    v20 = 1024;
    v21 = stalledCopy;
    v13 = v15;
    _os_log_debug_impl(&dword_23D62D000, v12, OS_LOG_TYPE_DEBUG, "[%@]: - download progress total written: %lld, totalExpected: %lld, isStalled: %d", &v14, 0x26u);
  }

  [(AXSDDetectorStore *)self _notifyObserversDetectorsDownloadProgress:written totalSizeExpected:expected remainingTimeExpected:stalledCopy isStalled:timeExpected];
}

- (void)assetManager:(id)manager didFinishPurgingAssets:(id)assets wasSuccessful:(BOOL)successful error:(id)error
{
  successfulCopy = successful;
  v38 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  errorCopy = error;
  v11 = AXLogUltron();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v21 = objc_opt_class();
    v22 = MEMORY[0x277CCABB0];
    v23 = v21;
    v24 = [v22 numberWithBool:successfulCopy];
    *buf = 138413058;
    v31 = v21;
    v32 = 2112;
    v33 = assetsCopy;
    v34 = 2112;
    v35 = v24;
    v36 = 2112;
    v37 = errorCopy;
    _os_log_debug_impl(&dword_23D62D000, v11, OS_LOG_TYPE_DEBUG, "[%@]: - did finish purging assets: %@, was successful: %@, error: %@", buf, 0x2Au);
  }

  v12 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = assetsCopy;
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    do
    {
      v17 = 0;
      do
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v25 + 1) + 8 * v17);
        v19 = [AXSDDetector alloc];
        v20 = [(AXSDDetector *)v19 initWithModel:v18, v25];
        [v12 addObject:v20];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v15);
  }

  [(AXSDDetectorStore *)self _notifyObserversDidFinishPurgingDetectors:v12 wasSuccessful:successfulCopy error:errorCopy];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  detectors = [(AXSDDetectorStore *)self detectors];
  v6 = [v3 stringWithFormat:@"[%@]: Number of Detectors: %lu", v4, objc_msgSend(detectors, "count")];

  return v6;
}

- (void)addObserver:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_23D62D000, a2, OS_LOG_TYPE_DEBUG, "AXSDDetectorStore add observer: %@", &v2, 0xCu);
}

- (void)removeObserver:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_23D62D000, a2, OS_LOG_TYPE_DEBUG, "AXSDDetectorStore remove observer: %@", &v2, 0xCu);
}

- (void)detectorWithIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23D62D000, a2, OS_LOG_TYPE_ERROR, "Trying to retrieve a detector with an invalid identifier. Identifier: %@", &v2, 0xCu);
}

@end