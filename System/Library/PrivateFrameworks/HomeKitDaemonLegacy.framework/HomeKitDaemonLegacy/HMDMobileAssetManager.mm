@interface HMDMobileAssetManager
- (HMDMobileAssetManager)init;
- (HMDMobileAssetManagerDelegate)delegate;
- (void)_downloadCatalogAndUpdateMetadataIfAble;
- (void)_downloadNewAsset:(id)asset availableVersion:(unint64_t)version newVersion:(unint64_t)newVersion;
- (void)_handleMetadataAssetUpdated;
- (void)_installAvailableAsset:(id)asset version:(unint64_t)version;
- (void)_updateMetadata;
- (void)handleMetadataAssetUpdated;
- (void)purgeAllInstalledAssets;
@end

@implementation HMDMobileAssetManager

- (HMDMobileAssetManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleMetadataAssetUpdated
{
  v20 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDMobileAssetManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:@"com.apple.MobileAsset.HomeKit"];
  queryMetaDataSync = [v4 queryMetaDataSync];
  if (queryMetaDataSync)
  {
    v6 = queryMetaDataSync;
    if (queryMetaDataSync == 2)
    {
      v7 = objc_autoreleasePoolPush();
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v16 = 138543362;
        v17 = v9;
        v10 = "%{public}@XML file not found. Need to download the catalog first.";
LABEL_12:
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, v10, &v16, 0xCu);

        goto LABEL_13;
      }

      goto LABEL_13;
    }

    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = v13;
      if ((v6 - 1) > 9)
      {
        v15 = @"MAQueryUnknownResult";
      }

      else
      {
        v15 = off_279734CC0[v6 - 1];
      }

      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v15;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to query the asset due to %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    if (![(HMDMobileAssetManager *)self indexDownloaded])
    {
      v7 = objc_autoreleasePoolPush();
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v16 = 138543362;
        v17 = v9;
        v10 = "%{public}@First time download or periodically update the mobile catalog and metadata asset.";
        goto LABEL_12;
      }

LABEL_13:

      objc_autoreleasePoolPop(v7);
      [(HMDMobileAssetManager *)self _downloadCatalogAndUpdateMetadataIfAble];
      goto LABEL_17;
    }

    [(HMDMobileAssetManager *)self _updateMetadata];
  }

LABEL_17:
}

- (void)_downloadCatalogAndUpdateMetadataIfAble
{
  workQueue = [(HMDMobileAssetManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = objc_opt_new();
  [v4 setDiscretionary:0];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__HMDMobileAssetManager__downloadCatalogAndUpdateMetadataIfAble__block_invoke;
  v5[3] = &unk_279734B68;
  v5[4] = self;
  [MEMORY[0x277D289C0] startCatalogDownload:@"com.apple.MobileAsset.HomeKit" options:v4 then:v5];
}

void __64__HMDMobileAssetManager__downloadCatalogAndUpdateMetadataIfAble__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) workQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__HMDMobileAssetManager__downloadCatalogAndUpdateMetadataIfAble__block_invoke_2;
  v5[3] = &unk_279734BB8;
  v5[4] = *(a1 + 32);
  v5[5] = a2;
  dispatch_async(v4, v5);
}

void __64__HMDMobileAssetManager__downloadCatalogAndUpdateMetadataIfAble__block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = HMFGetLogIdentifier();
      v5 = *(a1 + 40) - 1;
      if (v5 > 0x1C)
      {
        v6 = @"MADownloadUnknownResult";
      }

      else
      {
        v6 = off_279734BD8[v5];
      }

      v8 = v6;
      v9 = 138543618;
      v10 = v4;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_2531F8000, v3, OS_LOG_TYPE_ERROR, "%{public}@Failed to download the cataloag due to %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v7 = *(a1 + 32);

    [v7 _updateMetadata];
  }
}

- (void)_updateMetadata
{
  v73 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDMobileAssetManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:@"com.apple.MobileAsset.HomeKit"];
  [v4 queryMetaDataSync];
  results = [v4 results];
  if ([results count])
  {
    v44 = v4;
    selfCopy = self;
    [(HMDMobileAssetManager *)self setIndexDownloaded:1];
    v47 = +[HMDHAPMetadata getSharedInstance];
    version = [v47 version];
    unsignedIntegerValue = [version unsignedIntegerValue];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v43 = results;
    obj = results;
    v53 = [obj countByEnumeratingWithState:&v56 objects:v72 count:16];
    if (!v53)
    {
      v46 = 0;
      v8 = 0;
      v45 = 0;
      goto LABEL_32;
    }

    v46 = 0;
    v8 = 0;
    v45 = 0;
    v52 = *v57;
    v51 = *MEMORY[0x277D288E8];
    v9 = *MEMORY[0x277D28900];
    v49 = *MEMORY[0x277D28900];
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v57 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v56 + 1) + 8 * v10);
        attributes = [v11 attributes];
        v13 = [attributes objectForKeyedSubscript:v51];
        intValue = [v13 intValue];

        attributes2 = [v11 attributes];
        v16 = [attributes2 objectForKeyedSubscript:v9];
        intValue2 = [v16 intValue];

        v18 = objc_autoreleasePoolPush();
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          v21 = v18;
          v22 = v10;
          v23 = intValue;
          v24 = intValue2;
          v25 = unsignedIntegerValue;
          v26 = v8;
          state = [v11 state];
          [v47 version];
          v28 = v50 = v11;
          *buf = 138544642;
          v61 = v20;
          v62 = 2048;
          v63 = state;
          v8 = v26;
          unsignedIntegerValue = v25;
          intValue2 = v24;
          intValue = v23;
          v10 = v22;
          v18 = v21;
          v64 = 2048;
          v65 = intValue2;
          v66 = 2112;
          v67 = v28;
          v68 = 2048;
          v69 = unsignedIntegerValue;
          v70 = 2048;
          v71 = v8;
          _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Asset (state %ld  Version %ld)  Current version %@  best installed version %ld  best not installed version %ld", buf, 0x3Eu);

          v11 = v50;
          v9 = v49;
        }

        objc_autoreleasePoolPop(v18);
        if (intValue == 1)
        {
          if ([v11 state] == 2)
          {
            if (unsignedIntegerValue >= intValue2)
            {
              goto LABEL_23;
            }

            v29 = v11;
            if (v8 <= intValue2)
            {

              v30 = 0;
              v8 = 0;
            }

            else
            {
              v30 = v46;
            }

            if (v45)
            {
              attributes3 = [v45 attributes];
              v33 = [attributes3 objectForKeyedSubscript:v9];

              v34 = objc_autoreleasePoolPush();
              v35 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
              {
                v36 = HMFGetLogIdentifier();
                *buf = 138543618;
                v61 = v36;
                v62 = 2112;
                v63 = v33;
                _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Requesting purge of asset with version %@", buf, 0x16u);

                v9 = v49;
              }

              objc_autoreleasePoolPop(v34);
              v54[0] = MEMORY[0x277D85DD0];
              v54[1] = 3221225472;
              v54[2] = __40__HMDMobileAssetManager__updateMetadata__block_invoke;
              v54[3] = &unk_279734B68;
              v55 = v33;
              v37 = v33;
              [v45 purge:v54];

              v31 = v45;
              v45 = v29;
              unsignedIntegerValue = intValue2;
              goto LABEL_22;
            }

            v46 = v30;
            v45 = v29;
            unsignedIntegerValue = intValue2;
          }

          else if (v8 < intValue2 && unsignedIntegerValue < intValue2)
          {
            v30 = v11;
            v8 = intValue2;
            v31 = v46;
LABEL_22:

            v46 = v30;
          }
        }

LABEL_23:
        ++v10;
      }

      while (v53 != v10);
      v38 = [obj countByEnumeratingWithState:&v56 objects:v72 count:16];
      v53 = v38;
      if (!v38)
      {
LABEL_32:

        [(HMDMobileAssetManager *)selfCopy _downloadNewAsset:v46 availableVersion:unsignedIntegerValue newVersion:v8];
        [(HMDMobileAssetManager *)selfCopy _installAvailableAsset:v45 version:unsignedIntegerValue];

        results = v43;
        v4 = v44;
        goto LABEL_33;
      }
    }
  }

  v39 = objc_autoreleasePoolPush();
  v40 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = HMFGetLogIdentifier();
    *buf = 138543362;
    v61 = v41;
    _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_DEFAULT, "%{public}@Empty results for asset update query", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v39);
LABEL_33:
}

void __40__HMDMobileAssetManager__updateMetadata__block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 32);
      v13 = 138543618;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      v9 = "%{public}@Failed to purge the asset with version %@";
      v10 = v6;
      v11 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v10, v11, v9, &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v12 = *(a1 + 32);
    v13 = 138543618;
    v14 = v7;
    v15 = 2112;
    v16 = v12;
    v9 = "%{public}@Asset with version %@ purged";
    v10 = v6;
    v11 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
}

- (void)_installAvailableAsset:(id)asset version:(unint64_t)version
{
  v29 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  workQueue = [(HMDMobileAssetManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (assetCopy)
  {
    v8 = +[HMDHAPMetadata getSharedInstance];
    getLocalFileUrl = [assetCopy getLocalFileUrl];
    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      version = [v8 version];
      path = [getLocalFileUrl path];
      v21 = 138544130;
      v22 = v12;
      v23 = 2112;
      v24 = version;
      v25 = 2048;
      versionCopy = version;
      v27 = 2112;
      v28 = path;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Current version: %@,  Best installed asset version: %ld,  path: %@", &v21, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
    v15 = [getLocalFileUrl URLByAppendingPathComponent:@"plain-metadata.config"];
    v16 = objc_autoreleasePoolPush();
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v21 = 138543618;
      v22 = v18;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Trying to update metadata in URL %@ from mobile asset.", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    if (v15)
    {
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v15];
      delegate = [(HMDMobileAssetManager *)self delegate];
      [delegate mobileAssetManager:self didReceiveMetadata:v19];
    }
  }
}

- (void)_downloadNewAsset:(id)asset availableVersion:(unint64_t)version newVersion:(unint64_t)newVersion
{
  v27 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  workQueue = [(HMDMobileAssetManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (assetCopy)
  {
    v10 = +[HMDHAPMetadata getSharedInstance];
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      version = [v10 version];
      *buf = 138544130;
      v20 = v13;
      v21 = 2112;
      v22 = version;
      v23 = 2048;
      versionCopy = version;
      v25 = 2048;
      newVersionCopy = newVersion;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Current version %@  best installed version %ld  best not installed version %ld - requesting download", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v11);
    v15 = objc_alloc_init(MEMORY[0x277D28A10]);
    [v15 setDiscretionary:0];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __71__HMDMobileAssetManager__downloadNewAsset_availableVersion_newVersion___block_invoke;
    v16[3] = &unk_279734B90;
    newVersionCopy2 = newVersion;
    v17 = assetCopy;
    [v17 startDownload:v15 then:v16];
  }
}

void __71__HMDMobileAssetManager__downloadNewAsset_availableVersion_newVersion___block_invoke(uint64_t a1, unint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      if (a2 > 0x1D)
      {
        v8 = @"MADownloadUnknownResult";
      }

      else
      {
        v8 = off_279734BD8[a2 - 1];
      }

      v11 = v8;
      v12 = 138543618;
      v13 = v7;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Asset download failed with result %@", &v12, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = *(a1 + 40);
    v12 = 138543618;
    v13 = v9;
    v14 = 2048;
    v15 = v10;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Successfully download the new asset %ld", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)handleMetadataAssetUpdated
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v9 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Asset installed/updated - processing", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  workQueue = [(HMDMobileAssetManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HMDMobileAssetManager_handleMetadataAssetUpdated__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)purgeAllInstalledAssets
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:@"com.apple.MobileAsset.HomeKit"];
  [v2 returnTypes:2];
  if (![v2 queryMetaDataSync])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v15 = v2;
    obj = [v2 results];
    v3 = [obj countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v20;
      v6 = *MEMORY[0x277D28900];
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v20 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v19 + 1) + 8 * i);
          attributes = [v8 attributes];
          v10 = [attributes objectForKeyedSubscript:v6];

          v11 = objc_autoreleasePoolPush();
          v12 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = HMFGetLogIdentifier();
            *buf = 138543618;
            v24 = v13;
            v25 = 2112;
            v26 = v10;
            _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Requesting purge of asset with version %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v11);
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __48__HMDMobileAssetManager_purgeAllInstalledAssets__block_invoke;
          v17[3] = &unk_279734B68;
          v18 = v10;
          v14 = v10;
          [v8 purge:v17];
        }

        v4 = [obj countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v4);
    }

    v2 = v15;
  }
}

void __48__HMDMobileAssetManager_purgeAllInstalledAssets__block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (a2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 32);
      v13 = 138543618;
      v14 = v7;
      v15 = 2112;
      v16 = v8;
      v9 = "%{public}@Failed to purge the asset with version %@";
      v10 = v6;
      v11 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v10, v11, v9, &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v12 = *(a1 + 32);
    v13 = 138543618;
    v14 = v7;
    v15 = 2112;
    v16 = v12;
    v9 = "%{public}@Asset with version %@ purged successfully";
    v10 = v6;
    v11 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
}

- (HMDMobileAssetManager)init
{
  v19.receiver = self;
  v19.super_class = HMDMobileAssetManager;
  v2 = [(HMDMobileAssetManager *)&v19 init];
  if (v2)
  {
    v3 = HMFDispatchQueueName();
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_get_global_queue(9, 0);
    v6 = dispatch_queue_create_with_target_V2(v3, v4, v5);
    workQueue = v2->_workQueue;
    v2->_workQueue = v6;

    v8 = [objc_alloc(MEMORY[0x277CCA8B8]) initWithIdentifier:@"com.apple.homed.HMDMobileAssetManager.BackgroundActivityScheduler"];
    scheduler = v2->_scheduler;
    v2->_scheduler = v8;

    [(NSBackgroundActivityScheduler *)v2->_scheduler setRepeats:1];
    mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
    v11 = [mEMORY[0x277D0F8D0] preferenceForKey:@"mobileCatalogUpdatePeriodSeconds"];
    numberValue = [v11 numberValue];

    if (numberValue)
    {
      integerValue = [numberValue integerValue];
    }

    else
    {
      integerValue = 86400.0;
    }

    [(NSBackgroundActivityScheduler *)v2->_scheduler setInterval:integerValue];
    objc_initWeak(&location, v2);
    v14 = v2->_scheduler;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __29__HMDMobileAssetManager_init__block_invoke;
    v16[3] = &unk_279734B40;
    objc_copyWeak(&v17, &location);
    [(NSBackgroundActivityScheduler *)v14 scheduleWithBlock:v16];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __29__HMDMobileAssetManager_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleMetadataAssetUpdated];
  v3[2](v3, 1);
}

@end