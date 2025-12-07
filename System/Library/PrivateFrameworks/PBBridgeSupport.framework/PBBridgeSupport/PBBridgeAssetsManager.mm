@interface PBBridgeAssetsManager
- (PBBridgeAssetsManager)init;
- (id)_assetQueries:(id)queries atlas:(id)atlas;
- (id)_assetQueryForBridgeLaunchSplash;
- (id)_assetQueryForDeviceAttributes:(unint64_t)attributes deviceAttributes:(id)deviceAttributes;
- (id)_assetQueryForFamilySetupImage;
- (id)_assetQueryForZeroDayForcedUpdate;
- (void)_beginAssetDownloads:(id)downloads;
- (void)_beginPullingAssetsForDeviceAttributes:(id)attributes completion:(id)completion;
- (void)_downloadAtlasAsset:(id)asset;
- (void)_linkDownloadedAsset:(id)asset;
- (void)_queryForImageAssets:(id)assets;
- (void)_runAssetQuery:(id)query completion:(id)completion;
- (void)_runNextQuery:(id)query;
- (void)_runQueries:(id)queries withCompletion:(id)completion;
- (void)_startAssetDownload:(id)download downloadGroup:(id)group;
- (void)_startAtlasDownloadAndQueryOnSuccess:(id)success;
- (void)beginPullingAssetsForAdvertisingName:(id)name completion:(id)completion;
- (void)beginPullingAssetsForDevice:(id)device completion:(id)completion;
- (void)beginPullingAssetsForDeviceMaterial:(unint64_t)material size:(unint64_t)size completion:(id)completion;
- (void)purgeAllAssetsLocalOnly:(BOOL)only;
@end

@implementation PBBridgeAssetsManager

- (PBBridgeAssetsManager)init
{
  v9.receiver = self;
  v9.super_class = PBBridgeAssetsManager;
  v2 = [(PBBridgeAssetsManager *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.Bridge-AssetQueue-Serial", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v3;

    v5 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_USER_INITIATED, 0);
    v6 = dispatch_queue_create("com.apple.Bridge-AssetQueue-Concurrent", v5);
    concurrentQueue = v2->_concurrentQueue;
    v2->_concurrentQueue = v6;
  }

  return v2;
}

- (void)beginPullingAssetsForDeviceMaterial:(unint64_t)material size:(unint64_t)size completion:(id)completion
{
  v14[3] = *MEMORY[0x277D85DE8];
  v13[0] = @"Material_Type";
  v8 = MEMORY[0x277CCABB0];
  completionCopy = completion;
  v10 = [v8 numberWithUnsignedInteger:material];
  v14[0] = v10;
  v13[1] = @"Size_Type";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:SizeForInternalSize(size)];
  v13[2] = @"HW_Class";
  v14[1] = v11;
  v14[2] = &unk_286FB4190;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];

  [(PBBridgeAssetsManager *)self _beginPullingAssetsForDeviceAttributes:v12 completion:completionCopy];
}

- (void)beginPullingAssetsForAdvertisingName:(id)name completion:(id)completion
{
  v18[3] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  completionCopy = completion;
  v8 = PBAdvertisingInfoFromPayload(nameCopy);
  v9 = [v8 objectForKeyedSubscript:@"s"];
  integerValue = [v9 integerValue];

  v11 = [v8 objectForKeyedSubscript:@"m"];
  v12 = v11;
  if (v11)
  {
    v18[0] = v11;
    v17[0] = @"Material_Type";
    v17[1] = @"Size_Type";
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:SizeForInternalSize(integerValue)];
    v17[2] = @"HW_Class";
    v18[1] = v13;
    v18[2] = &unk_286FB4190;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];

    [(PBBridgeAssetsManager *)self _beginPullingAssetsForDeviceAttributes:v14 completion:completionCopy];
  }

  else
  {
    v14 = pbb_mobileasset_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = nameCopy;
      _os_log_impl(&dword_25DE64000, v14, OS_LOG_TYPE_DEFAULT, "Ignored Pulling Assets for Malformed Advertising Name: %@", &v15, 0xCu);
    }
  }
}

- (void)beginPullingAssetsForDevice:(id)device completion:(id)completion
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277D2BBC0];
  completionCopy = completion;
  deviceCopy = device;
  v9 = [deviceCopy valueForProperty:v6];
  v10 = [PBBridgeWatchAttributeController materialFromDevice:deviceCopy];
  v11 = [deviceCopy valueForProperty:*MEMORY[0x277D2BA80]];

  if (MGGetBoolAnswer() && v11)
  {
    v12 = pbb_mobileasset_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v24 = "[PBBridgeAssetsManager beginPullingAssetsForDevice:completion:]";
      _os_log_impl(&dword_25DE64000, v12, OS_LOG_TYPE_DEFAULT, "%s using NRDevicePropertyArtworkTraits to get PBBDeviceSize", buf, 0xCu);
    }

    v13 = [v11 objectForKeyedSubscript:@"ArtworkDeviceSubType"];
    [v13 unsignedIntegerValue];

    v14 = PBVariantSizeForArtworkDeviceSubType();
  }

  else
  {
    v15 = pbb_bridge_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v24 = "[PBBridgeAssetsManager beginPullingAssetsForDevice:completion:]";
      _os_log_impl(&dword_25DE64000, v15, OS_LOG_TYPE_DEFAULT, "%s using NRDevicePropertyProductType to get PBBDeviceSize", buf, 0xCu);
    }

    v14 = PBVariantSizeForProductType();
  }

  v16 = v14;
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v10, @"Material_Type"}];
  v22[0] = v17;
  v21[1] = @"Size_Type";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
  v22[1] = v18;
  v21[2] = @"HW_Class";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[PBBridgeAssetsManager hardwareGenerationForProductType:](self, "hardwareGenerationForProductType:", v9)}];
  v22[2] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];

  [(PBBridgeAssetsManager *)self _beginPullingAssetsForDeviceAttributes:v20 completion:completionCopy];
}

- (void)_beginPullingAssetsForDeviceAttributes:(id)attributes completion:(id)completion
{
  completionCopy = completion;
  [(PBBridgeAssetsManager *)self setDeviceAttributes:attributes];
  v7 = objc_alloc_init(MEMORY[0x277D28A10]);
  [v7 setDiscretionary:0];
  v8 = pbb_mobileasset_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25DE64000, v8, OS_LOG_TYPE_DEFAULT, "Downloading asset catalog...", buf, 2u);
  }

  v9 = MEMORY[0x277D289C0];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__PBBridgeAssetsManager__beginPullingAssetsForDeviceAttributes_completion___block_invoke;
  v11[3] = &unk_2799F4620;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [v9 startCatalogDownload:@"com.apple.MobileAsset.BridgeAssets" options:v7 then:v11];
}

void __75__PBBridgeAssetsManager__beginPullingAssetsForDeviceAttributes_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = pbb_mobileasset_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = a2;
    _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "Got the metadata download reply: %ld", buf, 0xCu);
  }

  v5 = [*(a1 + 32) serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__PBBridgeAssetsManager__beginPullingAssetsForDeviceAttributes_completion___block_invoke_296;
  v7[3] = &unk_2799F45F8;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  dispatch_async(v5, v7);
}

void __75__PBBridgeAssetsManager__beginPullingAssetsForDeviceAttributes_completion___block_invoke_296(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  v5 = *(a1 + 32);
  v6 = [v5 deviceAttributes];
  v7 = [v5 _assetQueryForDeviceAttributes:1 deviceAttributes:v6];

  v8 = *(a1 + 32);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __75__PBBridgeAssetsManager__beginPullingAssetsForDeviceAttributes_completion___block_invoke_2;
  v9[3] = &unk_2799F45D0;
  v9[4] = v8;
  [v8 _runAssetQuery:v7 completion:v9];
}

void __75__PBBridgeAssetsManager__beginPullingAssetsForDeviceAttributes_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v4 = [v3 firstObject];
    v5 = pbb_mobileasset_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "Atlas Asset: %@", &v7, 0xCu);
    }

    [*(a1 + 32) _downloadAtlasAsset:v4];
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);
    if (v6)
    {
      (*(v6 + 16))(v6, 0);
    }
  }
}

- (void)_runAssetQuery:(id)query completion:(id)completion
{
  queryCopy = query;
  completionCopy = completion;
  serialQueue = [(PBBridgeAssetsManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__PBBridgeAssetsManager__runAssetQuery_completion___block_invoke;
  block[3] = &unk_2799F4698;
  v12 = queryCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = queryCopy;
  dispatch_async(serialQueue, block);
}

void __51__PBBridgeAssetsManager__runAssetQuery_completion___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__PBBridgeAssetsManager__runAssetQuery_completion___block_invoke_2;
  v4[3] = &unk_2799F4670;
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4[4] = *(a1 + 40);
  v6 = v3;
  v5 = *(a1 + 32);
  [v2 queryMetaData:v4];
}

void __51__PBBridgeAssetsManager__runAssetQuery_completion___block_invoke_2(id *a1, uint64_t a2)
{
  v4 = [a1[4] serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__PBBridgeAssetsManager__runAssetQuery_completion___block_invoke_3;
  block[3] = &unk_2799F4648;
  v8 = a2;
  v7 = a1[6];
  v6 = a1[5];
  dispatch_async(v4, block);
}

void __51__PBBridgeAssetsManager__runAssetQuery_completion___block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = (a1 + 48);
  if (*(a1 + 48))
  {
    v2 = pbb_mobileasset_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __51__PBBridgeAssetsManager__runAssetQuery_completion___block_invoke_3_cold_1(v1, v2);
    }
  }

  else
  {
    if (!*(a1 + 40))
    {
      return;
    }

    v4 = pbb_mobileasset_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) results];
      v7 = 134217984;
      v8 = [v5 count];
      _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "Single Query returned %lu assets", &v7, 0xCu);
    }

    v6 = *(a1 + 40);
    v2 = [*(a1 + 32) results];
    (*(v6 + 16))(v6, v2);
  }
}

- (void)_downloadAtlasAsset:(id)asset
{
  v17 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  state = [assetCopy state];
  if (state == 1)
  {
    *v16 = 0;
    if ([assetCopy spaceCheck:v16])
    {
      [(PBBridgeAssetsManager *)self _startAtlasDownloadAndQueryOnSuccess:assetCopy];
      goto LABEL_13;
    }

    v8 = pbb_mobileasset_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(PBBridgeAssetsManager *)v8 _downloadAtlasAsset:v9, v10, v11, v12, v13, v14, v15];
    }

LABEL_12:

    goto LABEL_13;
  }

  if (state != 2)
  {
    v8 = pbb_mobileasset_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_25DE64000, v8, OS_LOG_TYPE_DEFAULT, "Asset Download in Progress...", v16, 2u);
    }

    goto LABEL_12;
  }

  getLocalUrl = [assetCopy getLocalUrl];
  v7 = pbb_mobileasset_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 138412290;
    *&v16[4] = getLocalUrl;
    _os_log_impl(&dword_25DE64000, v7, OS_LOG_TYPE_DEFAULT, "Asset already installed: %@", v16, 0xCu);
  }

  [(PBBridgeAssetsManager *)self _queryForImageAssets:getLocalUrl];
LABEL_13:
}

- (void)_startAtlasDownloadAndQueryOnSuccess:(id)success
{
  v12 = *MEMORY[0x277D85DE8];
  successCopy = success;
  v5 = objc_opt_new();
  [v5 setAllowsCellularAccess:1];
  [v5 setDiscretionary:0];
  v6 = pbb_mobileasset_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = successCopy;
    _os_log_impl(&dword_25DE64000, v6, OS_LOG_TYPE_DEFAULT, "Starting download on asset: %@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__PBBridgeAssetsManager__startAtlasDownloadAndQueryOnSuccess___block_invoke;
  v8[3] = &unk_2799F46E8;
  v8[4] = self;
  v9 = successCopy;
  v7 = successCopy;
  [v7 startDownload:v5 then:v8];
}

void __62__PBBridgeAssetsManager__startAtlasDownloadAndQueryOnSuccess___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__PBBridgeAssetsManager__startAtlasDownloadAndQueryOnSuccess___block_invoke_2;
  block[3] = &unk_2799F46C0;
  v10 = a2;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v8 = v5;
  v9 = v6;
  dispatch_async(v4, block);
}

void __62__PBBridgeAssetsManager__startAtlasDownloadAndQueryOnSuccess___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48))
  {
    v1 = pbb_mobileasset_log();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __62__PBBridgeAssetsManager__startAtlasDownloadAndQueryOnSuccess___block_invoke_2_cold_1(v1, v2, v3, v4, v5, v6, v7, v8);
    }
  }

  else
  {
    v1 = [*(a1 + 32) getLocalUrl];
    v10 = pbb_mobileasset_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v1;
      _os_log_impl(&dword_25DE64000, v10, OS_LOG_TYPE_DEFAULT, "Local URL data from asset download %@", &v11, 0xCu);
    }

    [*(a1 + 40) _queryForImageAssets:v1];
  }
}

- (void)_queryForImageAssets:(id)assets
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEAC0];
  v5 = MEMORY[0x277CCACA8];
  path = [assets path];
  v7 = [v5 stringWithFormat:@"%@/%@", path, @"Atlas.plist"];
  v8 = [v4 dictionaryWithContentsOfFile:v7];

  v9 = pbb_mobileasset_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v8;
    _os_log_impl(&dword_25DE64000, v9, OS_LOG_TYPE_DEFAULT, "Atlas Pointers: %@", buf, 0xCu);
  }

  deviceAttributes = [(PBBridgeAssetsManager *)self deviceAttributes];
  v11 = [(PBBridgeAssetsManager *)self _assetQueries:deviceAttributes atlas:v8];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__PBBridgeAssetsManager__queryForImageAssets___block_invoke;
  v12[3] = &unk_2799F45D0;
  v12[4] = self;
  [(PBBridgeAssetsManager *)self _runQueries:v11 withCompletion:v12];
}

void __46__PBBridgeAssetsManager__queryForImageAssets___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a1 + 32);

    [v4 _beginAssetDownloads:a2];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v5 = pbb_mobileasset_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "No assets found after running multiple queries", v6, 2u);
    }
  }
}

- (id)_assetQueries:(id)queries atlas:(id)atlas
{
  v23[5] = *MEMORY[0x277D85DE8];
  atlasCopy = atlas;
  queriesCopy = queries;
  v8 = [(PBBridgeAssetsManager *)self _assetQueryForDeviceAttributes:0 deviceAttributes:queriesCopy];
  v9 = MEMORY[0x277CCACA8];
  v10 = [atlasCopy objectForKeyedSubscript:@"ImageAssetPointer"];
  v11 = [v9 stringWithFormat:@"%@", v10];

  [v8 addKeyValuePair:@"ImageAssetPointer" with:v11];
  v12 = [(PBBridgeAssetsManager *)self _assetQueryForDeviceAttributes:0 deviceAttributes:queriesCopy];

  v13 = MEMORY[0x277CCACA8];
  v14 = [atlasCopy objectForKeyedSubscript:@"UniqueVideoAssetPointer"];

  v15 = [v13 stringWithFormat:@"%@", v14];

  [v12 addKeyValuePair:@"UniqueVideoAssetPointer" with:v15];
  _assetQueryForBridgeLaunchSplash = [(PBBridgeAssetsManager *)self _assetQueryForBridgeLaunchSplash];
  _assetQueryForFamilySetupImage = [(PBBridgeAssetsManager *)self _assetQueryForFamilySetupImage];
  _assetQueryForZeroDayForcedUpdate = [(PBBridgeAssetsManager *)self _assetQueryForZeroDayForcedUpdate];
  v19 = MEMORY[0x277CBEB18];
  v23[0] = v8;
  v23[1] = v12;
  v23[2] = _assetQueryForFamilySetupImage;
  v23[3] = _assetQueryForBridgeLaunchSplash;
  v23[4] = _assetQueryForZeroDayForcedUpdate;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:5];
  v21 = [v19 arrayWithArray:v20];

  return v21;
}

- (void)_runQueries:(id)queries withCompletion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  queriesCopy = queries;
  completionCopy = completion;
  v7 = dispatch_group_create();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = queriesCopy;
  v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v23 + 1) + 8 * v11);
        concurrentQueue = [(PBBridgeAssetsManager *)self concurrentQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __52__PBBridgeAssetsManager__runQueries_withCompletion___block_invoke;
        block[3] = &unk_2799F4710;
        block[4] = self;
        block[5] = v12;
        dispatch_group_async(v7, concurrentQueue, block);

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  serialQueue = [(PBBridgeAssetsManager *)self serialQueue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __52__PBBridgeAssetsManager__runQueries_withCompletion___block_invoke_2;
  v19[3] = &unk_2799F45F8;
  v20 = obj;
  v21 = completionCopy;
  v15 = completionCopy;
  v16 = obj;
  dispatch_group_notify(v7, serialQueue, v19);
}

void __52__PBBridgeAssetsManager__runQueries_withCompletion___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * v7) results];
        [v2 addObjectsFromArray:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v5);
  }

  v9 = pbb_mobileasset_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v2 count];
    *buf = 134217984;
    v16 = v10;
    _os_log_impl(&dword_25DE64000, v9, OS_LOG_TYPE_DEFAULT, "Queries returned %lu assets", buf, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_runNextQuery:(id)query
{
  v11 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  queryMetaDataSync = [queryCopy queryMetaDataSync];
  if (queryMetaDataSync)
  {
    v5 = queryMetaDataSync;
    v6 = pbb_mobileasset_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      v8 = queryCopy;
      v9 = 2048;
      v10 = v5;
      _os_log_impl(&dword_25DE64000, v6, OS_LOG_TYPE_DEFAULT, "Query: %@ failed with result: %ld", &v7, 0x16u);
    }
  }
}

- (void)_beginAssetDownloads:(id)downloads
{
  v25 = *MEMORY[0x277D85DE8];
  downloadsCopy = downloads;
  v5 = dispatch_group_create();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = downloadsCopy;
  v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        concurrentQueue = [(PBBridgeAssetsManager *)self concurrentQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __46__PBBridgeAssetsManager__beginAssetDownloads___block_invoke;
        block[3] = &unk_2799F4738;
        block[4] = v10;
        block[5] = self;
        v19 = v5;
        dispatch_group_async(v19, concurrentQueue, block);

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  serialQueue = [(PBBridgeAssetsManager *)self serialQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __46__PBBridgeAssetsManager__beginAssetDownloads___block_invoke_309;
  v15[3] = &unk_2799F4710;
  v16 = obj;
  selfCopy = self;
  v13 = obj;
  dispatch_group_notify(v5, serialQueue, v15);
}

void __46__PBBridgeAssetsManager__beginAssetDownloads___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) state];
  if (v2 == 1)
  {
    v5 = *(a1 + 32);
    *v14 = 0;
    if ([v5 spaceCheck:v14])
    {
      [*(a1 + 40) _startAssetDownload:*(a1 + 32) downloadGroup:*(a1 + 48)];
      return;
    }

    v6 = pbb_mobileasset_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(PBBridgeAssetsManager *)v6 _downloadAtlasAsset:v7, v8, v9, v10, v11, v12, v13];
    }

    goto LABEL_12;
  }

  if (v2 != 2)
  {
    v6 = pbb_mobileasset_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_25DE64000, v6, OS_LOG_TYPE_DEFAULT, "Atlas Asset Download in Progress...", v14, 2u);
    }

LABEL_12:

    return;
  }

  v3 = [*(a1 + 32) getLocalFileUrl];
  v4 = pbb_mobileasset_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 138412290;
    *&v14[4] = v3;
    _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "Asset Already Installed! %@", v14, 0xCu);
  }

  [*(a1 + 40) _linkDownloadedAsset:*(a1 + 32)];
}

void __46__PBBridgeAssetsManager__beginAssetDownloads___block_invoke_309(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v10 + 1) + 8 * v6) state] != 2)
        {
          v7 = 0;
          goto LABEL_11;
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__PBBridgeAssetsManager__beginAssetDownloads___block_invoke_2;
  v8[3] = &unk_2799F4760;
  v8[4] = *(a1 + 40);
  v9 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

void __46__PBBridgeAssetsManager__beginAssetDownloads___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 40));
    v3 = *(a1 + 32);
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;
  }
}

- (void)_startAssetDownload:(id)download downloadGroup:(id)group
{
  v18 = *MEMORY[0x277D85DE8];
  downloadCopy = download;
  groupCopy = group;
  v8 = objc_opt_new();
  [v8 setAllowsCellularAccess:1];
  [v8 setDiscretionary:0];
  dispatch_group_enter(groupCopy);
  v9 = pbb_mobileasset_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = downloadCopy;
    _os_log_impl(&dword_25DE64000, v9, OS_LOG_TYPE_DEFAULT, "Starting download on asset: %@", buf, 0xCu);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__PBBridgeAssetsManager__startAssetDownload_downloadGroup___block_invoke;
  v12[3] = &unk_2799F4788;
  v13 = downloadCopy;
  selfCopy = self;
  v15 = groupCopy;
  v10 = groupCopy;
  v11 = downloadCopy;
  [v11 startDownload:v8 then:v12];
}

void __59__PBBridgeAssetsManager__startAssetDownload_downloadGroup___block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = pbb_mobileasset_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138412546;
      v12 = v5;
      v13 = 2048;
      v14 = a2;
      _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "Download for asset: %@ was not successful with result: %lu", buf, 0x16u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__PBBridgeAssetsManager__startAssetDownload_downloadGroup___block_invoke_310;
  block[3] = &unk_2799F4738;
  v7 = *(a1 + 32);
  v6 = v7.i64[0];
  v9 = vextq_s8(v7, v7, 8uLL);
  v10 = *(a1 + 48);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __59__PBBridgeAssetsManager__startAssetDownload_downloadGroup___block_invoke_310(uint64_t a1)
{
  [*(a1 + 32) _linkDownloadedAsset:*(a1 + 40)];
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

- (void)_linkDownloadedAsset:(id)asset
{
  v34 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [assetCopy refreshState];
  if ([assetCopy state] == 2)
  {
    v20 = assetCopy;
    getLocalFileUrl = [assetCopy getLocalFileUrl];
    path = [getLocalFileUrl path];
    v32 = 0;
    v6 = [defaultManager contentsOfDirectoryAtPath:path error:&v32];
    v7 = v32;

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v6;
    v24 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v24)
    {
      v23 = *v29;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v29 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v28 + 1) + 8 * i);
          v10 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
          if ([v10 count])
          {
            v11 = MEMORY[0x277CCACA8];
            firstObject = [v10 firstObject];
            v13 = [v11 stringWithFormat:@"%@/%@/", firstObject, @"BridgeAssets"];

            v27 = v7;
            [defaultManager createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:&v27];
            v14 = v27;

            v15 = MEMORY[0x277CCACA8];
            path2 = [getLocalFileUrl path];
            v17 = [v15 stringWithFormat:@"%@/%@", path2, v9];

            v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", v13, v9];
            v26 = v14;
            [defaultManager removeItemAtPath:v18 error:&v26];
            v19 = v26;

            v25 = v19;
            [defaultManager createSymbolicLinkAtPath:v18 withDestinationPath:v17 error:&v25];
            v7 = v25;
          }
        }

        v24 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v24);
    }

    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_2);
    assetCopy = v20;
  }
}

void __46__PBBridgeAssetsManager__linkDownloadedAsset___block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"PBBridgeMobileAssetsChangedNotification" object:0];
}

- (void)purgeAllAssetsLocalOnly:(BOOL)only
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:@"com.apple.MobileAsset.BridgeAssets"];
  v5 = pbb_mobileasset_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = 341;
    v7 = 2080;
    v8 = "[PBBridgeAssetsManager purgeAllAssetsLocalOnly:]";
    _os_log_impl(&dword_25DE64000, v5, OS_LOG_TYPE_DEFAULT, "%d %s", v6, 0x12u);
  }

  [(PBBridgeAssetsManager *)self _runAssetQuery:v4 completion:&__block_literal_global_318];
}

void __49__PBBridgeAssetsManager_purgeAllAssetsLocalOnly___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a2;
  NSLog(&cfstr_DSAssets.isa, 344, "[PBBridgeAssetsManager purgeAllAssetsLocalOnly:]_block_invoke", v2);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 state] == 4)
        {
          v10[0] = MEMORY[0x277D85DD0];
          v10[1] = 3221225472;
          v10[2] = __49__PBBridgeAssetsManager_purgeAllAssetsLocalOnly___block_invoke_2;
          v10[3] = &unk_2799F47D0;
          v10[4] = v8;
          [v8 cancelDownload:v10];
        }

        else
        {
          v9[0] = MEMORY[0x277D85DD0];
          v9[1] = 3221225472;
          v9[2] = __49__PBBridgeAssetsManager_purgeAllAssetsLocalOnly___block_invoke_322;
          v9[3] = &unk_2799F47D0;
          v9[4] = v8;
          [v8 purge:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

void __49__PBBridgeAssetsManager_purgeAllAssetsLocalOnly___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = pbb_mobileasset_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6[0] = 67109890;
    v6[1] = 350;
    v7 = 2080;
    v8 = "[PBBridgeAssetsManager purgeAllAssetsLocalOnly:]_block_invoke_2";
    v9 = 2112;
    v10 = v5;
    v11 = 2048;
    v12 = a2;
    _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "%d %s CANCEL DOWNLOAD! %@ // %ld", v6, 0x26u);
  }
}

void __49__PBBridgeAssetsManager_purgeAllAssetsLocalOnly___block_invoke_322(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = pbb_mobileasset_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6[0] = 67109890;
    v6[1] = 354;
    v7 = 2080;
    v8 = "[PBBridgeAssetsManager purgeAllAssetsLocalOnly:]_block_invoke";
    v9 = 2112;
    v10 = v5;
    v11 = 2048;
    v12 = a2;
    _os_log_impl(&dword_25DE64000, v4, OS_LOG_TYPE_DEFAULT, "%d %s PURGE ASSET! %@ // %ld", v6, 0x26u);
  }
}

- (id)_assetQueryForBridgeLaunchSplash
{
  v2 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:@"com.apple.MobileAsset.BridgeAssets"];
  stringValue = [&unk_286FB41A8 stringValue];
  [v2 addKeyValuePair:@"Asset_Type" with:stringValue];

  return v2;
}

- (id)_assetQueryForFamilySetupImage
{
  v2 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:@"com.apple.MobileAsset.BridgeAssets"];
  stringValue = [&unk_286FB41C0 stringValue];
  [v2 addKeyValuePair:@"Asset_Type" with:stringValue];

  return v2;
}

- (id)_assetQueryForZeroDayForcedUpdate
{
  v2 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:@"com.apple.MobileAsset.BridgeAssets"];
  stringValue = [&unk_286FB41D8 stringValue];
  [v2 addKeyValuePair:@"Asset_Type" with:stringValue];

  return v2;
}

- (id)_assetQueryForDeviceAttributes:(unint64_t)attributes deviceAttributes:(id)deviceAttributes
{
  deviceAttributesCopy = deviceAttributes;
  v6 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:@"com.apple.MobileAsset.BridgeAssets"];
  if (attributes)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:attributes];
    stringValue = [v7 stringValue];
    [v6 addKeyValuePair:@"Asset_Type" with:stringValue];

    if (!deviceAttributesCopy)
    {
      goto LABEL_7;
    }

    if (attributes == 1)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = [deviceAttributesCopy objectForKeyedSubscript:@"Material_Type"];
      v11 = [v9 stringWithFormat:@"%@", v10];

      [v6 addKeyValuePair:@"Material_Type" with:v11];
    }
  }

  else if (!deviceAttributesCopy)
  {
    goto LABEL_7;
  }

  v12 = MEMORY[0x277CCACA8];
  v13 = [deviceAttributesCopy objectForKeyedSubscript:@"HW_Class"];
  v14 = [v12 stringWithFormat:@"%@", v13];

  [v6 addKeyValuePair:@"HW_Class" with:v14];
  v15 = MEMORY[0x277CCACA8];
  v16 = [deviceAttributesCopy objectForKeyedSubscript:@"Size_Type"];
  v17 = [v15 stringWithFormat:@"%@", v16];

  [v6 addKeyValuePair:@"Size_Type" with:v17];
LABEL_7:
  v18 = MEMORY[0x277CCABB0];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v20 = [v18 numberWithDouble:?];
  stringValue2 = [v20 stringValue];
  [v6 addKeyValuePair:@"Resolution_Scale" with:stringValue2];

  [v6 addKeyValuePair:@"Version_Number" with:@"1"];

  return v6;
}

void __51__PBBridgeAssetsManager__runAssetQuery_completion___block_invoke_3_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_error_impl(&dword_25DE64000, a2, OS_LOG_TYPE_ERROR, "Query error with MAQueryResult: %ld", &v3, 0xCu);
}

@end