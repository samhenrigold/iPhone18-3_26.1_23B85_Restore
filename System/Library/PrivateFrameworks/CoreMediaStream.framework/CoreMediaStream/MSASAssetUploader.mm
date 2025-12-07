@interface MSASAssetUploader
- (id)_orphanedAssetCollectionError;
- (void)MMCSEngine:(id)engine didCreateRequestorContext:(id)context forAssets:(id)assets;
- (void)MMCSEngine:(id)engine didFinishGettingAsset:(id)asset path:(id)path error:(id)error;
- (void)MMCSEngine:(id)engine didFinishPuttingAsset:(id)asset putReceipt:(id)receipt error:(id)error;
- (void)MMCSEngine:(id)engine didMakeGetProgress:(float)progress state:(int)state onAsset:(id)asset;
- (void)MMCSEngine:(id)engine didMakePutProgress:(float)progress state:(int)state onAsset:(id)asset;
- (void)_workQueueStop;
- (void)cancelAssetCollections:(id)collections;
- (void)didFinishGettingAllAssets;
- (void)didFinishPuttingAllAssets;
- (void)registerAssetCollections:(id)collections completionBlock:(id)block;
- (void)unregisterAssetCollections:(id)collections completionBlock:(id)block;
- (void)workQueueCancel;
- (void)workQueueCancelAssetCollections:(id)collections;
- (void)workQueueDidFinishWithItem:(id)item error:(id)error;
- (void)workQueueGoIdle;
- (void)workQueueRegisterAssetCollections:(id)collections index:(unint64_t)index results:(id)results completionBlock:(id)block;
- (void)workQueueRegisterAssets:(id)assets index:(unint64_t)index completionBlock:(id)block;
- (void)workQueueRetryOutstandingActivities;
- (void)workQueueShutDownCompletionBlock:(id)block;
- (void)workQueueStop;
- (void)workQueueStopTrackingItem:(id)item;
- (void)workQueueUploadNextBatch;
@end

@implementation MSASAssetUploader

- (void)didFinishGettingAllAssets
{
  v5 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = 138543362;
    selfCopy = self;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Unexpected callback - MMCSEngine:didFinishGettingAllAssetsContext:", &v3, 0xCu);
  }
}

- (void)MMCSEngine:(id)engine didMakeGetProgress:(float)progress state:(int)state onAsset:(id)asset
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Unexpected callback - MMCSEngine:didMakeGetProgress:state:onAsset:context:", &v7, 0xCu);
  }
}

- (void)MMCSEngine:(id)engine didFinishGettingAsset:(id)asset path:(id)path error:(id)error
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Unexpected callback - MMCSEngine:didFinishGettingAsset:context:error:", &v7, 0xCu);
  }
}

- (void)didFinishPuttingAllAssets
{
  workQueue = [(MSASAssetTransferer *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__MSASAssetUploader_didFinishPuttingAllAssets__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void *__46__MSASAssetUploader_didFinishPuttingAllAssets__block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v3 = [*(v2 + 144) count];
    *buf = 138543618;
    v38 = v2;
    v39 = 2048;
    v40 = v3;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Finished uploading %ld asset collections.", buf, 0x16u);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = *(*(a1 + 32) + 152);
  v5 = [v4 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
    v8 = *MEMORY[0x277D25460];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v31 + 1) + 8 * i);
        v11 = *(a1 + 32);
        v12 = [MEMORY[0x277CCA9B8] errorWithDomain:v8 code:14 userInfo:0];
        [v11 workQueueDidFinishWithItem:v10 error:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v6);
  }

  [*(*(a1 + 32) + 152) removeAllObjects];
  [*(*(a1 + 32) + 160) removeAllObjects];
  if ([*(*(a1 + 32) + 136) count] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v23 = *(a1 + 32);
    v24 = [*(v23 + 136) count];
    *buf = 138543618;
    v38 = v23;
    v39 = 2048;
    v40 = v24;
    _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Found %ld orphaned assets. Ignoring.", buf, 0x16u);
  }

  if ([*(*(a1 + 32) + 120) count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v25 = *(a1 + 32);
      v26 = [*(v25 + 120) count];
      *buf = 138543618;
      v38 = v25;
      v39 = 2048;
      v40 = v26;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Found %ld orphaned asset collections.", buf, 0x16u);
    }

    v13 = [*(*(a1 + 32) + 120) copy];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = v13;
    v15 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v28;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v28 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v27 + 1) + 8 * j);
          v20 = *(a1 + 32);
          v21 = [v20 _orphanedAssetCollectionError];
          [v20 workQueueDidFinishWithItem:v19 error:v21];
        }

        v16 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v16);
    }
  }

  [*(a1 + 32) workQueueGoIdle];
  result = [*(a1 + 32) didEncounterNetworkConditionError];
  if ((result & 1) == 0)
  {
    return [*(a1 + 32) workQueueRetryOutstandingActivities];
  }

  return result;
}

- (void)MMCSEngine:(id)engine didMakePutProgress:(float)progress state:(int)state onAsset:(id)asset
{
  assetCopy = asset;
  workQueue = [(MSASAssetTransferer *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__MSASAssetUploader_MMCSEngine_didMakePutProgress_state_onAsset___block_invoke;
  block[3] = &unk_278E91AA0;
  progressCopy = progress;
  stateCopy = state;
  block[4] = self;
  v13 = assetCopy;
  v11 = assetCopy;
  dispatch_async(workQueue, block);
}

void __65__MSASAssetUploader_MMCSEngine_didMakePutProgress_state_onAsset___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = MSASPlatform();
  v3 = [v2 shouldLogAtLevel:7];

  if (v3)
  {
    v4 = *(a1 + 48);
    v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
    if (v4 == -1.0)
    {
      if (v5)
      {
        v12 = *(a1 + 32);
        v7 = [MMCSEngine logStringForPutItemState:*(a1 + 52)];
        v13 = *(a1 + 40);
        v14 = 138543874;
        v15 = v12;
        v16 = 2114;
        v17 = *&v7;
        v18 = 2048;
        v19 = v13;
        v9 = MEMORY[0x277D86220];
        v10 = "%{public}@: Upload progress state: %{public}@, on asset: %p";
        v11 = 32;
        goto LABEL_8;
      }
    }

    else if (v5)
    {
      v6 = *(a1 + 32);
      v7 = [MMCSEngine logStringForPutItemState:*(a1 + 52)];
      v8 = *(a1 + 40);
      v14 = 138544130;
      v15 = v6;
      v16 = 2048;
      v17 = v4;
      v18 = 2114;
      v19 = v7;
      v20 = 2048;
      v21 = v8;
      v9 = MEMORY[0x277D86220];
      v10 = "%{public}@: Upload progress: %.2f, state: %{public}@, on asset: %p";
      v11 = 42;
LABEL_8:
      _os_log_debug_impl(&dword_245B99000, v9, OS_LOG_TYPE_DEBUG, v10, &v14, v11);
    }
  }
}

- (void)MMCSEngine:(id)engine didCreateRequestorContext:(id)context forAssets:(id)assets
{
  contextCopy = context;
  assetsCopy = assets;
  workQueue = [(MSASAssetTransferer *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__MSASAssetUploader_MMCSEngine_didCreateRequestorContext_forAssets___block_invoke;
  block[3] = &unk_278E92638;
  v13 = assetsCopy;
  selfCopy = self;
  v15 = contextCopy;
  v10 = contextCopy;
  v11 = assetsCopy;
  dispatch_async(workQueue, block);
}

void __68__MSASAssetUploader_MMCSEngine_didCreateRequestorContext_forAssets___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v2 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v19;
      do
      {
        v7 = 0;
        do
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v18 + 1) + 8 * v7) assetCollectionGUID];
          [v2 addObject:v8];

          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v18 objects:v23 count:16];
      }

      while (v5);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = v2;
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(a1 + 40) + 160) setObject:*(a1 + 48) forKey:{*(*(&v14 + 1) + 8 * v13++), v14}];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v11);
    }
  }
}

- (void)MMCSEngine:(id)engine didFinishPuttingAsset:(id)asset putReceipt:(id)receipt error:(id)error
{
  assetCopy = asset;
  receiptCopy = receipt;
  errorCopy = error;
  workQueue = [(MSASAssetTransferer *)self workQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__MSASAssetUploader_MMCSEngine_didFinishPuttingAsset_putReceipt_error___block_invoke;
  v16[3] = &unk_278E92660;
  v17 = errorCopy;
  selfCopy = self;
  v19 = assetCopy;
  v20 = receiptCopy;
  v13 = receiptCopy;
  v14 = assetCopy;
  v15 = errorCopy;
  dispatch_async(workQueue, v16);
}

void __71__MSASAssetUploader_MMCSEngine_didFinishPuttingAsset_putReceipt_error___block_invoke(uint64_t a1)
{
  v1 = a1;
  v74 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v4 = [v2[17] objectForKey:v1[6]];
    if (v4)
    {
      v5 = [*(v1[5] + 16) objectForKey:v4];
      if (v5)
      {
        v6 = [v1[4] MMCSRetryAfterDate];
        if (v6)
        {
          v7 = [v1[5] eventQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __71__MSASAssetUploader_MMCSEngine_didFinishPuttingAsset_putReceipt_error___block_invoke_2;
          block[3] = &unk_278E927C8;
          block[4] = v1[5];
          v65 = v6;
          dispatch_async(v7, block);
        }

        if ([v1[4] MMCSIsCancelError])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v8 = v1[5];
            *buf = 138543362;
            v68 = v8;
            _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Asset upload was canceled. Ignoring.", buf, 0xCu);
          }

          [v1[5] workQueueStopTrackingItem:v5];
        }

        else if ([v1[4] MMCSIsNetworkConditionsError])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v26 = v1[5];
            *buf = 138543362;
            v68 = v26;
            _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Encountered temporary network error while uploading asset. Will retry later.", buf, 0xCu);
          }

          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            v27 = v1[5];
            v28 = [v1[4] MSVerboseDescription];
            *buf = 138543618;
            v68 = v27;
            v69 = 2114;
            v70 = v28;
            _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Error: %{public}@", buf, 0x16u);
          }

          [v1[5] workQueueStopTrackingItem:v5];
          [v1[5] setDidEncounterNetworkConditionError:1];
        }

        else if (([v1[4] MMCSIsFatalError] & 1) != 0 || (v32 = objc_msgSend(v5, "errorCount") + 1, v32 >= objc_msgSend(v1[5], "maxRetryCount")))
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v46 = v1[5];
            v47 = [v1[4] MSVerboseDescription];
            *buf = 138543874;
            v68 = v46;
            v69 = 2114;
            v70 = v4;
            v71 = 2114;
            v72 = v47;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to upload asset collection: %{public}@. Error: %{public}@. Giving up.", buf, 0x20u);
          }

          [v1[5] workQueueDidFinishWithItem:v5 error:v1[4]];
        }

        else
        {
          v33 = [v1[5] model];
          [v33 setErrorCount:objc_msgSend(v5 forAssetCollectionInUploadQueue:{"errorCount") + 1, v4}];

          if ([v1[4] MMCSIsAuthorizationError])
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v34 = v1[5];
              v35 = [v1[4] MSVerboseDescription];
              *buf = 138543618;
              v68 = v34;
              v69 = 2114;
              v70 = v35;
              _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Encountered MMCS auth error. Will reauthorize. Error: %{public}@", buf, 0x16u);
            }

            obja = v1;
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            v51 = [v4 assets];
            v36 = [v51 countByEnumeratingWithState:&v60 objects:v73 count:16];
            if (v36)
            {
              v37 = v36;
              v38 = *v61;
              while (2)
              {
                for (i = 0; i != v37; ++i)
                {
                  if (*v61 != v38)
                  {
                    objc_enumerationMutation(v51);
                  }

                  v40 = *(*(&v60 + 1) + 8 * i);
                  v41 = [v40 GUID];
                  v42 = [obja[6] GUID];
                  v43 = [v41 isEqualToString:v42];

                  if (v43)
                  {
                    [v40 setMMCSAccessHeader:0];
                    goto LABEL_65;
                  }
                }

                v37 = [v51 countByEnumeratingWithState:&v60 objects:v73 count:16];
                if (v37)
                {
                  continue;
                }

                break;
              }
            }

LABEL_65:

            [*(obja[5] + 19) addObject:v5];
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              v48 = v1[5];
              v49 = [v1[4] MSVerboseDescription];
              *buf = 138543874;
              v68 = v48;
              v69 = 2114;
              v70 = v4;
              v71 = 2114;
              v72 = v49;
              _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Failed to upload asset collection %{public}@. Error: %{public}@. Will retry later.", buf, 0x20u);
            }

            [v1[5] workQueueStopTrackingItem:v5];
            v44 = [v1[5] eventQueue];
            v59[0] = MEMORY[0x277D85DD0];
            v59[1] = 3221225472;
            v59[2] = __71__MSASAssetUploader_MMCSEngine_didFinishPuttingAsset_putReceipt_error___block_invoke_19;
            v59[3] = &unk_278E926D8;
            v59[4] = v1[5];
            dispatch_async(v44, v59);
          }
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v22 = v1[5];
        v23 = v1[6];
        *buf = 138543618;
        v68 = v22;
        v69 = 2114;
        v70 = v23;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Already reported error on asset %{public}@. Ignoring.", buf, 0x16u);
      }

      goto LABEL_59;
    }
  }

  else
  {
    v9 = [v2 eventQueue];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __71__MSASAssetUploader_MMCSEngine_didFinishPuttingAsset_putReceipt_error___block_invoke_20;
    v58[3] = &unk_278E926D8;
    v58[4] = v1[5];
    dispatch_async(v9, v58);

    v4 = [*(v1[5] + 17) objectForKey:v1[6]];
    if (v4)
    {
      [*(v1[5] + 17) removeObjectForKey:v1[6]];
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v10 = [v4 assets];
      v11 = [v10 countByEnumeratingWithState:&v54 objects:v66 count:16];
      if (v11)
      {
        v12 = v11;
        v50 = v4;
        obj = v10;
        v13 = *v55;
        v14 = 1;
        do
        {
          for (j = 0; j != v12; ++j)
          {
            if (*v55 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v54 + 1) + 8 * j);
            v17 = [v16 GUID];
            [v1[6] GUID];
            v19 = v18 = v1;
            v20 = [v17 isEqualToString:v19];

            v1 = v18;
            if (v20)
            {
              [v16 setMMCSReceipt:v18[7]];
            }

            v21 = [*(v18[5] + 17) objectForKey:v16];

            v14 &= v21 == 0;
          }

          v12 = [obj countByEnumeratingWithState:&v54 objects:v66 count:16];
        }

        while (v12);

        v4 = v50;
        if ((v14 & 1) == 0)
        {
          goto LABEL_60;
        }
      }

      else
      {
      }

      v5 = [*(v1[5] + 16) objectForKey:v4];
      if (v5)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v29 = v1[5];
          *buf = 138543618;
          v68 = v29;
          v69 = 2114;
          v70 = v4;
          _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%{public}@: Successfully uploaded asset collection: %{public}@", buf, 0x16u);
        }

        [v1[5] workQueueDidFinishWithItem:v5 error:0];
        v30 = *(v1[5] + 20);
        v31 = [v4 GUID];
        [v30 removeObjectForKey:v31];
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          v45 = v1[5];
          *buf = 138543362;
          v68 = v45;
          _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Could not find upload item that matches the completed asset collection.", buf, 0xCu);
        }

        v31 = MSPlatform();
        [v31 didDetectUnrecoverableCondition];
      }

LABEL_59:
      goto LABEL_60;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v24 = v1[5];
      v25 = v1[6];
      *buf = 138543618;
      v68 = v24;
      v69 = 2114;
      v70 = v25;
      _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Successfully uploaded asset %{public}@, but can't find matching asset collection. Ignoring.", buf, 0x16u);
    }
  }

LABEL_60:
}

void __71__MSASAssetUploader_MMCSEngine_didFinishPuttingAsset_putReceipt_error___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) backoffManager];
  [v2 didReceiveRetryAfterDate:*(a1 + 40)];
}

void __71__MSASAssetUploader_MMCSEngine_didFinishPuttingAsset_putReceipt_error___block_invoke_19(uint64_t a1)
{
  v1 = [*(a1 + 32) backoffManager];
  [v1 backoff];
}

void __71__MSASAssetUploader_MMCSEngine_didFinishPuttingAsset_putReceipt_error___block_invoke_20(uint64_t a1)
{
  v2 = [*(a1 + 32) backoffManager];
  [v2 reset];

  v4 = [*(a1 + 32) daemon];
  v3 = [*(a1 + 32) personID];
  [v4 didReceiveAuthSuccessForPersonID:v3];
}

- (void)workQueueDidFinishWithItem:(id)item error:(id)error
{
  errorCopy = error;
  itemCopy = item;
  [(MSASAssetUploader *)self workQueueStopTrackingItem:itemCopy];
  object = [itemCopy object];
  model = [(MSASAssetTransferer *)self model];
  v10 = [MEMORY[0x277CBEA60] arrayWithObject:object];
  [model removeAssetCollectionsFromUploadQueue:v10];

  [(NSMutableArray *)self->_finishedAssetCollections addObject:object];
  album = [itemCopy album];

  eventQueue = [(MSASAssetTransferer *)self eventQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __54__MSASAssetUploader_workQueueDidFinishWithItem_error___block_invoke;
  v16[3] = &unk_278E92660;
  v16[4] = self;
  v17 = object;
  v18 = album;
  v19 = errorCopy;
  v13 = errorCopy;
  v14 = album;
  v15 = object;
  dispatch_async(eventQueue, v16);
}

void __54__MSASAssetUploader_workQueueDidFinishWithItem_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASAssetUploader:*(a1 + 32) didFinishUploadingAssetCollection:*(a1 + 40) intoAlbum:*(a1 + 48) error:*(a1 + 56)];
}

- (void)workQueueStopTrackingItem:(id)item
{
  v16 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  object = [itemCopy object];
  [(NSMutableArray *)self->_itemsInFlight removeObject:itemCopy];
  [(NSMutableDictionary *)self->_assetCollectionsToItemInFlightMap removeObjectForKey:object];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  assets = [object assets];
  v7 = [assets countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(assets);
        }

        [(NSMutableDictionary *)self->_assetToAssetCollectionMap removeObjectForKey:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [assets countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)cancelAssetCollections:(id)collections
{
  collectionsCopy = collections;
  workQueue = [(MSASAssetTransferer *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__MSASAssetUploader_cancelAssetCollections___block_invoke;
  v7[3] = &unk_278E927C8;
  v7[4] = self;
  v8 = collectionsCopy;
  v6 = collectionsCopy;
  dispatch_async(workQueue, v7);
}

- (void)unregisterAssetCollections:(id)collections completionBlock:(id)block
{
  blockCopy = block;
  v7 = [collections copy];
  workQueue = [(MSASAssetTransferer *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__MSASAssetUploader_unregisterAssetCollections_completionBlock___block_invoke;
  block[3] = &unk_278E91E38;
  v12 = v7;
  selfCopy = self;
  v14 = blockCopy;
  v9 = blockCopy;
  v10 = v7;
  dispatch_async(workQueue, block);
}

uint64_t __64__MSASAssetUploader_unregisterAssetCollections_completionBlock___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v21;
    do
    {
      v5 = 0;
      do
      {
        if (*v21 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v20 + 1) + 8 * v5);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v7 = [v6 assets];
        v8 = [v7 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v17;
          do
          {
            v11 = 0;
            do
            {
              if (*v17 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v16 + 1) + 8 * v11);
              v13 = [*(a1 + 40) engine];
              [v13 unregisterAsset:v12];

              ++v11;
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v9);
        }

        ++v5;
      }

      while (v5 != v3);
      v3 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v3);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)registerAssetCollections:(id)collections completionBlock:(id)block
{
  collectionsCopy = collections;
  blockCopy = block;
  workQueue = [(MSASAssetTransferer *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__MSASAssetUploader_registerAssetCollections_completionBlock___block_invoke;
  block[3] = &unk_278E91E38;
  block[4] = self;
  v12 = collectionsCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = collectionsCopy;
  dispatch_async(workQueue, block);
}

void __62__MSASAssetUploader_registerAssetCollections_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__MSASAssetUploader_registerAssetCollections_completionBlock___block_invoke_2;
  v5[3] = &unk_278E91A50;
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  [v2 workQueueRegisterAssetCollections:v3 index:0 results:v4 completionBlock:v5];
}

void __62__MSASAssetUploader_registerAssetCollections_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) eventQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__MSASAssetUploader_registerAssetCollections_completionBlock___block_invoke_3;
  v7[3] = &unk_278E927A0;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)workQueueRegisterAssetCollections:(id)collections index:(unint64_t)index results:(id)results completionBlock:(id)block
{
  collectionsCopy = collections;
  resultsCopy = results;
  blockCopy = block;
  if (!resultsCopy)
  {
    resultsCopy = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(collectionsCopy, "count")}];
  }

  if ([collectionsCopy count] <= index)
  {
    blockCopy[2](blockCopy, resultsCopy);
  }

  else
  {
    v13 = [collectionsCopy objectAtIndex:index];
    assets = [v13 assets];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __85__MSASAssetUploader_workQueueRegisterAssetCollections_index_results_completionBlock___block_invoke;
    v15[3] = &unk_278E91A28;
    v16 = resultsCopy;
    selfCopy = self;
    v18 = collectionsCopy;
    indexCopy = index;
    v19 = blockCopy;
    [(MSASAssetUploader *)self workQueueRegisterAssets:assets index:0 completionBlock:v15];
  }
}

void __85__MSASAssetUploader_workQueueRegisterAssetCollections_index_results_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    [*(a1 + 32) addObject:a2];
  }

  else
  {
    v4 = [MEMORY[0x277CBEB68] null];
    [v3 addObject:v4];
  }

  v5 = [*(a1 + 40) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__MSASAssetUploader_workQueueRegisterAssetCollections_index_results_completionBlock___block_invoke_2;
  block[3] = &unk_278E91A00;
  v10 = *(a1 + 40);
  v6 = *(&v10 + 1);
  v14 = *(a1 + 64);
  v7 = *(a1 + 32);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v12 = v10;
  v13 = v9;
  dispatch_async(v5, block);
}

- (void)workQueueRegisterAssets:(id)assets index:(unint64_t)index completionBlock:(id)block
{
  assetsCopy = assets;
  blockCopy = block;
  if ([assetsCopy count] <= index)
  {
    blockCopy[2](blockCopy, 0);
  }

  else
  {
    v10 = [assetsCopy objectAtIndex:index];
    [v10 setMMCSItemID:{-[MSASAssetTransferer workQueueNextItemID](self, "workQueueNextItemID")}];
    engine = [(MSASAssetTransferer *)self engine];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__MSASAssetUploader_workQueueRegisterAssets_index_completionBlock___block_invoke;
    v12[3] = &unk_278E919D8;
    v14 = blockCopy;
    v12[4] = self;
    v13 = assetsCopy;
    indexCopy = index;
    [engine registerAssetForUpload:v10 completionBlock:v12];
  }
}

void __67__MSASAssetUploader_workQueueRegisterAssets_index_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }

  else
  {
    v4 = [*(a1 + 32) workQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __67__MSASAssetUploader_workQueueRegisterAssets_index_completionBlock___block_invoke_2;
    v9[3] = &unk_278E91CF0;
    v5 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v6 = v5;
    v8 = *(a1 + 48);
    v7 = *(a1 + 56);
    v10 = v6;
    v12 = v7;
    v11 = v8;
    dispatch_async(v4, v9);
  }
}

- (void)workQueueCancelAssetCollections:(id)collections
{
  v29 = *MEMORY[0x277D85DE8];
  collectionsCopy = collections;
  if ([(NSMutableDictionary *)self->_assetCollectionGUIDToRequestorContext count]== 1)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = collectionsCopy;
    obj = collectionsCopy;
    v5 = [obj countByEnumeratingWithState:&v18 objects:v28 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = MEMORY[0x277D86220];
      v8 = *v19;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          assetCollectionGUIDToRequestorContext = self->_assetCollectionGUIDToRequestorContext;
          gUID = [v10 GUID];
          v13 = [(NSMutableDictionary *)assetCollectionGUIDToRequestorContext objectForKey:gUID];

          v14 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
          if (v13)
          {
            if (v14)
            {
              *buf = 138543874;
              selfCopy3 = self;
              v24 = 2114;
              v25 = v10;
              v26 = 2114;
              v27 = v13;
              _os_log_impl(&dword_245B99000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Cancelling in-progress upload for asset collection %{public}@ with context %{public}@", buf, 0x20u);
            }

            engine = [(MSASAssetTransferer *)self engine];
            [engine cancelOperationsWithContext:v13];
          }

          else if (v14)
          {
            *buf = 138543618;
            selfCopy3 = self;
            v24 = 2114;
            v25 = v10;
            _os_log_impl(&dword_245B99000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Cannot cancel upload for assetCollection %{public}@ which is not in progress", buf, 0x16u);
          }
        }

        v6 = [obj countByEnumeratingWithState:&v18 objects:v28 count:16];
      }

      while (v6);
    }

    collectionsCopy = v16;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy3 = self;
    v24 = 2114;
    v25 = collectionsCopy;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Cannot cancel upload for assetCollections %{public}@ which is either not in progress, or has more than one items in an upload batch", buf, 0x16u);
  }
}

- (void)workQueueUploadNextBatch
{
  v150 = *MEMORY[0x277D85DE8];
  if (![(MSASAssetTransferer *)self hasShutDown])
  {
    [(MSASAssetUploader *)self setDidEncounterNetworkConditionError:0];
    model = [(MSASAssetTransferer *)self model];
    focusAlbumGUID = [(MSASAssetTransferer *)self focusAlbumGUID];
    v6 = [model nextItemsForUploadAlbumGUID:focusAlbumGUID maxPriority:0 maxCount:{-[MSASAssetTransferer maxBatchCount](self, "maxBatchCount")}];
    v7 = [v6 mutableCopy];

    if (![v7 count])
    {
      model2 = [(MSASAssetTransferer *)self model];
      focusAlbumGUID2 = [(MSASAssetTransferer *)self focusAlbumGUID];
      v10 = [model2 nextItemsForUploadAlbumGUID:focusAlbumGUID2 maxPriority:10 maxCount:1];
      v11 = [v10 mutableCopy];

      v7 = v11;
    }

    if (![v7 count])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        selfCopy7 = self;
        _os_log_debug_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%{public}@: Nothing to upload.", buf, 0xCu);
      }

      [(MSASAssetUploader *)self workQueueGoIdle];
      goto LABEL_98;
    }

    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    itemsInFlight = self->_itemsInFlight;
    self->_itemsInFlight = v12;

    v14 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
    assetCollectionsToItemInFlightMap = self->_assetCollectionsToItemInFlightMap;
    self->_assetCollectionsToItemInFlightMap = v14;

    v16 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v7, "count")}];
    assetCollectionsWithAuthorizationError = self->_assetCollectionsWithAuthorizationError;
    self->_assetCollectionsWithAuthorizationError = v16;

    v18 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v7, "count")}];
    assetCollectionGUIDToRequestorContext = self->_assetCollectionGUIDToRequestorContext;
    self->_assetCollectionGUIDToRequestorContext = v18;

    assetToAssetCollectionMap = self->_assetToAssetCollectionMap;
    self->_assetToAssetCollectionMap = 0;

    v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
    finishedAssetCollections = self->_finishedAssetCollections;
    self->_finishedAssetCollections = v21;

    [MEMORY[0x277CBEB38] dictionary];
    v91 = v90 = v7;
    v130 = 0u;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    obj = v7;
    v95 = [obj countByEnumeratingWithState:&v130 objects:v149 count:16];
    v23 = 0;
    if (v95)
    {
      v93 = *v131;
      do
      {
        for (i = 0; i != v95; ++i)
        {
          if (*v131 != v93)
          {
            objc_enumerationMutation(obj);
          }

          v25 = *(*(&v130 + 1) + 8 * i);
          object = [v25 object];
          v126 = 0u;
          v127 = 0u;
          v128 = 0u;
          v129 = 0u;
          v100 = object;
          assets = [object assets];
          v28 = [assets countByEnumeratingWithState:&v126 objects:v148 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v127;
            v97 = v25;
            while (2)
            {
              for (j = 0; j != v29; ++j)
              {
                if (*v127 != v30)
                {
                  objc_enumerationMutation(assets);
                }

                v32 = *(*(&v126 + 1) + 8 * j);
                mMCSURL = [v32 MMCSURL];

                if (!mMCSURL)
                {
                  v37 = MEMORY[0x277CBEAC0];
                  _missingURLError = [(MSASAssetTransferer *)self _missingURLError];
                  album = [v97 album];
                  v40 = [v37 dictionaryWithObjectsAndKeys:{_missingURLError, @"error", album, @"album", 0}];

                  [v91 setObject:v40 forKey:v100];
LABEL_27:

                  goto LABEL_28;
                }

                mMCSURL2 = [v32 MMCSURL];
                v35 = mMCSURL2;
                if (v23)
                {
                  v36 = [v23 isEqual:mMCSURL2];

                  if (!v36)
                  {
                    goto LABEL_27;
                  }
                }

                else
                {
                  v23 = mMCSURL2;
                }
              }

              v29 = [assets countByEnumeratingWithState:&v126 objects:v148 count:16];
              v25 = v97;
              if (v29)
              {
                continue;
              }

              break;
            }
          }

          [(NSMutableArray *)self->_itemsInFlight addObject:v25];
LABEL_28:
        }

        v95 = [obj countByEnumeratingWithState:&v130 objects:v149 count:16];
      }

      while (v95);
    }

    if ([v91 count])
    {
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v41 = v91;
      v101 = [v41 countByEnumeratingWithState:&v122 objects:v147 count:16];
      if (v101)
      {
        v98 = *v123;
        do
        {
          for (k = 0; k != v101; ++k)
          {
            if (*v123 != v98)
            {
              objc_enumerationMutation(v41);
            }

            v43 = *(*(&v122 + 1) + 8 * k);
            v44 = [v41 objectForKey:v43];
            v45 = [v44 objectForKey:@"error"];
            v46 = [v44 objectForKey:@"album"];
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 138544130;
              selfCopy7 = self;
              v141 = 2114;
              v142 = v43;
              v143 = 2114;
              v144 = v46;
              v145 = 2114;
              v146 = v45;
              _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Rejecting asset collection %{public}@ from album %{public}@. Error: %{public}@", buf, 0x2Au);
            }

            eventQueue = [(MSASAssetTransferer *)self eventQueue];
            v119[0] = MEMORY[0x277D85DD0];
            v119[1] = 3221225472;
            v119[2] = __45__MSASAssetUploader_workQueueUploadNextBatch__block_invoke_12;
            v119[3] = &unk_278E92660;
            v119[4] = self;
            v119[5] = v43;
            v120 = v46;
            v121 = v45;
            v48 = v45;
            v49 = v46;
            dispatch_async(eventQueue, v119);
          }

          v101 = [v41 countByEnumeratingWithState:&v122 objects:v147 count:16];
        }

        while (v101);
      }

      model3 = [(MSASAssetTransferer *)self model];
      allKeys = [v41 allKeys];
      [model3 removeAssetCollectionsFromUploadQueue:allKeys];
    }

    if ([(NSMutableArray *)self->_itemsInFlight count])
    {
      v52 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{2 * -[NSMutableArray count](self->_itemsInFlight, "count")}];
      v53 = self->_assetToAssetCollectionMap;
      self->_assetToAssetCollectionMap = v52;

      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v94 = self->_itemsInFlight;
      v96 = v23;
      v102 = [(NSMutableArray *)v94 countByEnumeratingWithState:&v115 objects:v138 count:16];
      if (v102)
      {
        v99 = *v116;
        do
        {
          for (m = 0; m != v102; ++m)
          {
            if (*v116 != v99)
            {
              objc_enumerationMutation(v94);
            }

            v55 = *(*(&v115 + 1) + 8 * m);
            object2 = [v55 object];
            if (object2)
            {
              [(NSMutableDictionary *)self->_assetCollectionsToItemInFlightMap setObject:v55 forKey:object2];
              v113 = 0u;
              v114 = 0u;
              v111 = 0u;
              v112 = 0u;
              assets2 = [object2 assets];
              v58 = [assets2 countByEnumeratingWithState:&v111 objects:v137 count:16];
              if (v58)
              {
                v59 = v58;
                v60 = *v112;
                do
                {
                  for (n = 0; n != v59; ++n)
                  {
                    if (*v112 != v60)
                    {
                      objc_enumerationMutation(assets2);
                    }

                    v62 = *(*(&v111 + 1) + 8 * n);
                    mMCSReceipt = [v62 MMCSReceipt];

                    if (!mMCSReceipt)
                    {
                      [(NSMutableDictionary *)self->_assetToAssetCollectionMap setObject:object2 forKey:v62];
                    }
                  }

                  v59 = [assets2 countByEnumeratingWithState:&v111 objects:v137 count:16];
                }

                while (v59);
              }

              v23 = v96;
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              selfCopy7 = self;
              v141 = 2114;
              v142 = v55;
              _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Missing expected asset collection in person model item %{public}@.", buf, 0x16u);
            }
          }

          v102 = [(NSMutableArray *)v94 countByEnumeratingWithState:&v115 objects:v138 count:16];
        }

        while (v102);
      }

      if (![(NSMutableDictionary *)self->_assetToAssetCollectionMap count])
      {
        v7 = v90;
        if ([(NSMutableArray *)self->_itemsInFlight count])
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            v89 = [(NSMutableArray *)self->_itemsInFlight count];
            *buf = 138543618;
            selfCopy7 = self;
            v141 = 2048;
            v142 = v89;
            _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: No assets to upload, but detected %ld orphaned asset collections.", buf, 0x16u);
          }

          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v79 = self->_itemsInFlight;
          v80 = [(NSMutableArray *)v79 countByEnumeratingWithState:&v103 objects:v135 count:16];
          if (v80)
          {
            v81 = v80;
            v82 = *v104;
            do
            {
              for (ii = 0; ii != v81; ++ii)
              {
                if (*v104 != v82)
                {
                  objc_enumerationMutation(v79);
                }

                v84 = *(*(&v103 + 1) + 8 * ii);
                _orphanedAssetCollectionError = [(MSASAssetUploader *)self _orphanedAssetCollectionError];
                [(MSASAssetUploader *)self workQueueDidFinishWithItem:v84 error:_orphanedAssetCollectionError];
              }

              v81 = [(NSMutableArray *)v79 countByEnumeratingWithState:&v103 objects:v135 count:16];
            }

            while (v81);
          }

          [(MSASAssetUploader *)self workQueueGoIdle];
          v7 = v90;
          v23 = v96;
        }

        goto LABEL_97;
      }

      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      v64 = self->_assetToAssetCollectionMap;
      v65 = [(NSMutableDictionary *)v64 countByEnumeratingWithState:&v107 objects:v136 count:16];
      if (v65)
      {
        v66 = v65;
        v67 = *v108;
        do
        {
          for (jj = 0; jj != v66; ++jj)
          {
            if (*v108 != v67)
            {
              objc_enumerationMutation(v64);
            }

            v69 = *(*(&v107 + 1) + 8 * jj);
            engine = [(MSASAssetTransferer *)self engine];
            [engine reregisterAssetForUpload:v69];
          }

          v66 = [(NSMutableDictionary *)v64 countByEnumeratingWithState:&v107 objects:v136 count:16];
        }

        while (v66);
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v71 = [(NSMutableDictionary *)self->_assetToAssetCollectionMap count];
        v72 = [(NSMutableArray *)self->_itemsInFlight count];
        *buf = 138543874;
        selfCopy7 = self;
        v141 = 2048;
        v142 = v71;
        v143 = 2048;
        v144 = v72;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Uploading %ld assets for %ld asset collections.", buf, 0x20u);
      }

      v73 = MSASPlatform();
      v74 = objc_opt_respondsToSelector();

      v23 = v96;
      if (v74)
      {
        v75 = MSASPlatform();
        personID = [(MSASAssetTransferer *)self personID];
        v77 = [v75 MMCSUploadSocketOptionsForPersonID:personID];

        if (v77)
        {
          v78 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v77 forKey:*MEMORY[0x277D25610]];
        }

        else
        {
          v78 = 0;
        }
      }

      else
      {
        v78 = 0;
      }

      engine2 = [(MSASAssetTransferer *)self engine];
      allKeys2 = [(NSMutableDictionary *)self->_assetToAssetCollectionMap allKeys];
      personID2 = [(MSASAssetTransferer *)self personID];
      [engine2 putAssets:allKeys2 requestURL:v96 DSID:personID2 options:v78];
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy7 = self;
        _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: No assets to upload.", buf, 0xCu);
      }

      [(MSASAssetUploader *)self workQueueGoIdle];
    }

    v7 = v90;
LABEL_97:

LABEL_98:
    return;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy7 = self;
    _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Not uploading because we're shutting down.", buf, 0xCu);
  }

  eventQueue2 = [(MSASAssetTransferer *)self eventQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__MSASAssetUploader_workQueueUploadNextBatch__block_invoke;
  block[3] = &unk_278E926D8;
  block[4] = self;
  dispatch_async(eventQueue2, block);
}

void __45__MSASAssetUploader_workQueueUploadNextBatch__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) daemon];
  [v1 releaseBusy];
}

void __45__MSASAssetUploader_workQueueUploadNextBatch__block_invoke_12(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 MSASAssetUploader:*(a1 + 32) didFinishUploadingAssetCollection:*(a1 + 40) intoAlbum:*(a1 + 48) error:*(a1 + 56)];
}

- (id)_orphanedAssetCollectionError
{
  if (_orphanedAssetCollectionError_onceToken != -1)
  {
    dispatch_once(&_orphanedAssetCollectionError_onceToken, &__block_literal_global_5814);
  }

  v3 = _orphanedAssetCollectionError_error;

  return v3;
}

void __50__MSASAssetUploader__orphanedAssetCollectionError__block_invoke()
{
  v0 = MEMORY[0x277CCA9B8];
  v3 = MSCFCopyLocalizedString(@"ERROR_ASSET_UPLOADER_ORPHANED");
  v1 = [v0 MSErrorWithDomain:@"MSASAssetUploaderErrorDomain" code:0 description:v3];
  v2 = _orphanedAssetCollectionError_error;
  _orphanedAssetCollectionError_error = v1;
}

- (void)workQueueCancel
{
  v27 = *MEMORY[0x277D85DE8];
  if (self->_state == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Canceling all uploads.", buf, 0xCu);
    }

    [(MSASAssetUploader *)self _workQueueStop];
  }

  model = [(MSASAssetTransferer *)self model];
  v4 = [model nextItemsForUploadMaxCount:10];

  v16 = v4;
  if ([v4 count])
  {
    do
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v5 = v16;
      v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v21;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v21 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v20 + 1) + 8 * i);
            object = [v10 object];
            album = [v10 album];
            eventQueue = [(MSASAssetTransferer *)self eventQueue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __36__MSASAssetUploader_workQueueCancel__block_invoke;
            block[3] = &unk_278E92638;
            block[4] = self;
            v18 = object;
            v19 = album;
            v14 = album;
            v15 = object;
            dispatch_async(eventQueue, block);
          }

          v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v7);
      }
    }

    while ([v5 count]);
  }
}

void __36__MSASAssetUploader_workQueueCancel__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [v2 _canceledError];
  [v6 MSASAssetUploader:v2 didFinishUploadingAssetCollection:v3 intoAlbum:v4 error:v5];
}

- (void)workQueueShutDownCompletionBlock:(id)block
{
  blockCopy = block;
  [(MSASAssetUploader *)self workQueueStop];
  v5.receiver = self;
  v5.super_class = MSASAssetUploader;
  [(MSASAssetTransferer *)&v5 workQueueShutDownCompletionBlock:blockCopy];
}

- (void)workQueueStop
{
  v5 = *MEMORY[0x277D85DE8];
  if (self->_state == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}@: Stopping all uploads.", &v3, 0xCu);
    }

    [(MSASAssetUploader *)self _workQueueStop];
  }
}

- (void)_workQueueStop
{
  if (self->_state == 1)
  {
    engine = [(MSASAssetTransferer *)self engine];
    [engine cancelAllOperations];

    [(MSASAssetUploader *)self workQueueGoIdle];
  }
}

- (void)workQueueGoIdle
{
  if ([(MSASAssetUploader *)self state])
  {
    assetToAssetCollectionMap = self->_assetToAssetCollectionMap;
    self->_assetToAssetCollectionMap = 0;

    itemsInFlight = self->_itemsInFlight;
    self->_itemsInFlight = 0;

    v5 = self->_assetToAssetCollectionMap;
    self->_assetToAssetCollectionMap = 0;

    finishedAssetCollections = self->_finishedAssetCollections;
    self->_finishedAssetCollections = 0;

    assetCollectionsWithAuthorizationError = self->_assetCollectionsWithAuthorizationError;
    self->_assetCollectionsWithAuthorizationError = 0;

    assetCollectionGUIDToRequestorContext = self->_assetCollectionGUIDToRequestorContext;
    self->_assetCollectionGUIDToRequestorContext = 0;

    self->_state = 0;
    [(MSASAssetTransferer *)self _sendDidIdleNotification];
    eventQueue = [(MSASAssetTransferer *)self eventQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__MSASAssetUploader_workQueueGoIdle__block_invoke;
    block[3] = &unk_278E926D8;
    block[4] = self;
    dispatch_async(eventQueue, block);
  }
}

void __36__MSASAssetUploader_workQueueGoIdle__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) daemon];
  [v1 releaseBusy];
}

- (void)workQueueRetryOutstandingActivities
{
  v13 = *MEMORY[0x277D85DE8];
  state = self->_state;
  if (state != 1)
  {
    if (state)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy = self;
        v11 = 1024;
        v12 = state;
        _os_log_error_impl(&dword_245B99000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@: Unknown state: %d", buf, 0x12u);
      }

      v7 = MSPlatform();
      [v7 didDetectUnrecoverableCondition];
    }

    else
    {
      v4 = MSASPlatform();
      mSASIsAllowedToUploadAssets = [v4 MSASIsAllowedToUploadAssets];

      if (mSASIsAllowedToUploadAssets)
      {
        self->_state = 1;
        eventQueue = [(MSASAssetTransferer *)self eventQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __56__MSASAssetUploader_workQueueRetryOutstandingActivities__block_invoke;
        block[3] = &unk_278E926D8;
        block[4] = self;
        dispatch_async(eventQueue, block);

        [(MSASAssetUploader *)self workQueueUploadNextBatch];
      }
    }
  }
}

void __56__MSASAssetUploader_workQueueRetryOutstandingActivities__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) daemon];
  [v1 retainBusy];
}

@end