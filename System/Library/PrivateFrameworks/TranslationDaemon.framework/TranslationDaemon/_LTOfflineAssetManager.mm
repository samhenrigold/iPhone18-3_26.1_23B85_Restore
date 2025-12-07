@interface _LTOfflineAssetManager
+ (id)assetDirectory;
+ (id)fallBackAssetResourcePath;
+ (void)initialize;
- (_LTOfflineAssetManager)init;
- (id)_assetIdentifiersForLanguagePairDirectory:(id)directory;
- (id)_speechTranslationAssetInfoForLocalePair:(id)pair error:(id *)error;
- (id)_speechTranslationAssetInfoForLocalePair:(id)pair installedAssets:(id)assets catalogAssets:(id)catalogAssets offlineConfig:(id)config error:(id *)error;
- (id)assetIdentifierReferenceCountDictionary;
- (id)endpointAssetInfoWithContext:(id)context error:(id *)error;
- (id)getEndpointerAssetWithType:(unint64_t)type error:(id *)error;
- (id)languageDetectorAssetWithError:(id *)error;
- (id)modelURLsForLanguagePair:(id)pair;
- (id)speechTranslationAssetInfoForLocalePair:(id)pair taskHint:(int64_t)hint error:(id *)error;
- (void)_downloadPassthroughAssetForLocale:(id)locale userInitiated:(BOOL)initiated completion:(id)completion;
- (void)_queryLanguagePairStatusWithCompletion:(id)completion;
- (void)_updateAsset:(id)asset catalogAssets:(id)assets downloadGroup:(id)group completion:(id)completion;
- (void)assetSize:(id)size;
- (void)debugDumpAssets:(id)assets;
- (void)deleteAsset:(id)asset completion:(id)completion;
- (void)downloadAssetsForLanguagePair:(id)pair userInitiated:(BOOL)initiated completion:(id)completion;
- (void)offlineLanguageStatus:(id)status;
- (void)purgeAllAssetsExcludingConfig:(BOOL)config completion:(id)completion;
- (void)purgeAssetForLanguagePair:(id)pair userInitiated:(BOOL)initiated completion:(id)completion;
- (void)removeObsoleteAssets;
- (void)updateAllAssets:(id)assets;
- (void)updateAssetSymLinksForLocalePairs:(id)pairs;
@end

@implementation _LTOfflineAssetManager

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    _queue = dispatch_queue_create("com.apple.Translator.EMTAssetManager", 0);

    MEMORY[0x2821F96F8]();
  }
}

- (_LTOfflineAssetManager)init
{
  v7.receiver = self;
  v7.super_class = _LTOfflineAssetManager;
  v2 = [(_LTOfflineAssetManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(_LTOfflineAssetManager *)v2 _removeOldAssetDirectory];
    v4 = +[_LTHotfixManager shared];
    hotfixMgr = v3->_hotfixMgr;
    v3->_hotfixMgr = v4;
  }

  return v3;
}

- (void)removeObsoleteAssets
{
  v33 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v3 = [_LTDConfigurationService assetConfigurationWithError:&v27];
  v4 = v27;
  v6 = v4;
  if (v4)
  {
    v7 = _LTOSLogAssets(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineAssetManager removeObsoleteAssets];
    }
  }

  else
  {
    v22 = v3;
    speechTranslationAssetTypes = [v3 speechTranslationAssetTypes];
    if ([speechTranslationAssetTypes count] >= 2 && objc_msgSend(speechTranslationAssetTypes, "count") != 1)
    {
      v9 = 0;
      do
      {
        v10 = [speechTranslationAssetTypes objectAtIndexedSubscript:v9];
        v11 = [_LTDAssetService queryAssetType:v10 filter:0 error:0];
        v12 = [v11 count];
        if (v12)
        {
          v14 = _LTOSLogAssets(v12, v13);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = v14;
            v16 = [v11 count];
            *buf = 134218242;
            v30 = v16;
            v31 = 2114;
            v32 = v11;
            _os_log_impl(&dword_232E53000, v15, OS_LOG_TYPE_INFO, "Deleting %zu obsolete assets %{public}@", buf, 0x16u);
          }

          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v17 = v11;
          v18 = [v17 countByEnumeratingWithState:&v23 objects:v28 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v24;
            do
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v24 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                [(_LTOfflineAssetManager *)self deleteAsset:*(*(&v23 + 1) + 8 * i) completion:0];
              }

              v19 = [v17 countByEnumeratingWithState:&v23 objects:v28 count:16];
            }

            while (v19);
          }
        }

        ++v9;
      }

      while (v9 < [speechTranslationAssetTypes count] - 1);
    }

    v3 = v22;
  }
}

- (void)_queryLanguagePairStatusWithCompletion:(id)completion
{
  v52 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v50 = 0;
  v5 = [_LTDConfigurationService offlineConfigurationWithError:&v50];
  v6 = v50;
  if (!v6)
  {
    if (v5)
    {
      goto LABEL_6;
    }

    v35 = _LTOSLogAssets(0, v7);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineAssetManager _queryLanguagePairStatusWithCompletion:v35];
      if (completionCopy)
      {
        goto LABEL_19;
      }
    }

    else if (completionCopy)
    {
LABEL_19:
      v36 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE1C58] code:5 userInfo:0];
      completionCopy[2](completionCopy, 0, v36);

      v8 = 0;
      goto LABEL_24;
    }

LABEL_6:
    selfCopy = self;
    v39 = completionCopy;
    languagePairs = [v5 languagePairs];
    v11 = [MEMORY[0x277CBEB58] set];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v12 = languagePairs;
    v13 = [v12 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v47;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v47 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [MEMORY[0x277CE1B38] pairWithIdentifiers:*(*(&v46 + 1) + 8 * i)];
          [v11 addObject:v17];
          v18 = objc_alloc(MEMORY[0x277CE1B38]);
          sourceLocale = [v17 sourceLocale];
          sourceLocale2 = [v17 sourceLocale];
          v21 = [v18 initWithSourceLocale:sourceLocale targetLocale:sourceLocale2];
          [v11 addObject:v21];

          v22 = objc_alloc(MEMORY[0x277CE1B38]);
          targetLocale = [v17 targetLocale];
          targetLocale2 = [v17 targetLocale];
          v25 = [v22 initWithSourceLocale:targetLocale targetLocale:targetLocale2];
          [v11 addObject:v25];
        }

        v14 = [v12 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v14);
    }

    v26 = MEMORY[0x277CBEB18];
    allObjects = [v11 allObjects];
    v28 = [v26 arrayWithArray:allObjects];

    [v28 sortUsingComparator:&__block_literal_global_21];
    v45 = 0;
    v29 = [_LTDAssetService installedAssetsWithError:&v45];
    v30 = v45;
    v44 = v30;
    v31 = [_LTDAssetService catalogAssetsWithError:&v44];
    v8 = v44;

    if (!v8)
    {
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __65___LTOfflineAssetManager__queryLanguagePairStatusWithCompletion___block_invoke_9;
      v40[3] = &unk_2789B6DD0;
      v40[4] = selfCopy;
      v41 = v29;
      v42 = v31;
      v43 = v5;
      v37 = [v28 _ltCompactMap:v40];
      completionCopy = v39;
      if (v39)
      {
        (v39)[2](v39, v37, 0);
      }

      goto LABEL_23;
    }

    v34 = _LTOSLogAssets(v32, v33);
    completionCopy = v39;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineAssetManager _queryLanguagePairStatusWithCompletion:];
      if (!v39)
      {
        goto LABEL_23;
      }
    }

    else if (!v39)
    {
LABEL_23:

      goto LABEL_24;
    }

    v39[2](v39, 0, v8);
    goto LABEL_23;
  }

  v8 = v6;
  v9 = _LTOSLogAssets(v6, v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [_LTOfflineAssetManager removeObsoleteAssets];
    if (!completionCopy)
    {
      goto LABEL_24;
    }

    goto LABEL_4;
  }

  if (completionCopy)
  {
LABEL_4:
    completionCopy[2](completionCopy, 0, v8);
  }

LABEL_24:
}

- (void)deleteAsset:(id)asset completion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49___LTOfflineAssetManager_deleteAsset_completion___block_invoke;
  v7[3] = &unk_2789B6DF8;
  v8 = completionCopy;
  v6 = completionCopy;
  [_LTDAssetService purgeAsset:asset completion:v7];
}

- (void)offlineLanguageStatus:(id)status
{
  statusCopy = status;
  v5 = _queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48___LTOfflineAssetManager_offlineLanguageStatus___block_invoke;
  v7[3] = &unk_2789B6B60;
  v7[4] = self;
  v8 = statusCopy;
  v6 = statusCopy;
  dispatch_async(v5, v7);
}

+ (id)assetDirectory
{
  v2 = assetDirectory__assetURL;
  if (assetDirectory__assetURL)
  {
LABEL_2:
    v3 = v2;
    goto LABEL_7;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v20 = 0;
  v5 = [_LTDConfigurationService assetConfigurationWithError:&v20];
  v6 = v20;
  if (!v6)
  {
    v11 = +[_LTDAssetService assetDirectoryURL];
    currentAssetDirectoryName = [v5 currentAssetDirectoryName];
    v13 = [v11 URLByAppendingPathComponent:currentAssetDirectoryName];
    v14 = assetDirectory__assetURL;
    assetDirectory__assetURL = v13;

    v19 = 0;
    [defaultManager createDirectoryAtURL:assetDirectory__assetURL withIntermediateDirectories:1 attributes:0 error:&v19];
    v15 = v19;
    v17 = v15;
    if (v15)
    {
      v18 = _LTOSLogAssets(v15, v16);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        +[_LTOfflineAssetManager assetDirectory];
      }
    }

    v2 = assetDirectory__assetURL;
    goto LABEL_2;
  }

  v8 = v6;
  v9 = _LTOSLogAssets(v6, v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    +[_LTOfflineAssetManager assetDirectory];
  }

  v3 = 0;
LABEL_7:

  return v3;
}

- (id)_assetIdentifiersForLanguagePairDirectory:(id)directory
{
  directoryCopy = directory;
  v4 = [directoryCopy URLByAppendingPathComponent:@"assets.json"];
  v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v4];
  if (!v5)
  {
    v7 = 0;
LABEL_9:
    allKeys = MEMORY[0x277CBEBF8];
    goto LABEL_10;
  }

  v13 = 0;
  v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:0 error:&v13];
  v7 = v13;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_9;
  }

  allKeys = [v6 allKeys];

  if (!allKeys)
  {
    v11 = _LTOSLogAssets(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineAssetManager _assetIdentifiersForLanguagePairDirectory:];
    }

    allKeys = 0;
  }

LABEL_10:

  return allKeys;
}

- (id)assetIdentifierReferenceCountDictionary
{
  v38 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = +[_LTOfflineAssetManager assetDirectory];
  v35 = 0;
  v21 = defaultManager;
  v5 = [defaultManager contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:0 options:0 error:&v35];
  v6 = v35;

  if (v6)
  {
    v9 = _LTOSLogAssets(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineAssetManager assetIdentifierReferenceCountDictionary];
    }
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v5;
  v25 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v25)
  {
    v23 = *v32;
    do
    {
      v10 = 0;
      do
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = v10;
        v11 = [(_LTOfflineAssetManager *)self _assetIdentifiersForLanguagePairDirectory:*(*(&v31 + 1) + 8 * v10)];
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v12 = [v11 countByEnumeratingWithState:&v27 objects:v36 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v28;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v28 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v27 + 1) + 8 * i);
              v17 = [dictionary objectForKeyedSubscript:v16];
              if (v17)
              {
                v18 = v17;
                v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v17, "integerValue") + 1}];
              }

              else
              {
                v19 = &unk_2848680F8;
              }

              [dictionary setObject:v19 forKeyedSubscript:v16];
            }

            v13 = [v11 countByEnumeratingWithState:&v27 objects:v36 count:16];
          }

          while (v13);
        }

        v10 = v26 + 1;
      }

      while (v26 + 1 != v25);
      v25 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v25);
  }

  return dictionary;
}

- (void)purgeAssetForLanguagePair:(id)pair userInitiated:(BOOL)initiated completion:(id)completion
{
  initiatedCopy = initiated;
  completionCopy = completion;
  canonicalLocalePair = [pair canonicalLocalePair];
  v18 = 0;
  v10 = [(_LTOfflineAssetManager *)self _speechTranslationAssetInfoForLocalePair:canonicalLocalePair error:&v18];
  v11 = v18;
  v13 = v11;
  if (v11)
  {
    v14 = _LTOSLogAssets(v11, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineAssetManager purgeAssetForLanguagePair:userInitiated:completion:];
    }

    completionCopy[2](completionCopy, v13);
  }

  else
  {
    v15 = _queue;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __77___LTOfflineAssetManager_purgeAssetForLanguagePair_userInitiated_completion___block_invoke;
    v16[3] = &unk_2789B5D20;
    v17 = completionCopy;
    [v10 purgeAssetUserInitiated:initiatedCopy queue:v15 completion:v16];
  }
}

- (void)purgeAllAssetsExcludingConfig:(BOOL)config completion:(id)completion
{
  configCopy = config;
  v69 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v6 = _LTOSLogAssets(completionCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = configCopy;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_DEFAULT, "Requested to delete all offline assets, excluding config: %{BOOL}i", buf, 8u);
  }

  *buf = 0;
  v64 = buf;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__9;
  v67 = __Block_byref_object_dispose__9;
  v68 = 0;
  v7 = +[_LTOfflineAssetManager assetDirectory];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = v64;
  obj = *(v64 + 5);
  v10 = [defaultManager removeItemAtURL:v7 error:&obj];
  v34 = v7;
  objc_storeStrong(v9 + 5, obj);

  if ((v10 & 1) == 0)
  {
    v13 = _LTOSLogAssets(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineAssetManager purgeAllAssetsExcludingConfig:completion:];
    }
  }

  v14 = *(v64 + 5);
  *(v64 + 5) = 0;

  v15 = v64;
  v58 = *(v64 + 5);
  v36 = [_LTDAssetService installedAssetsWithError:&v58];
  objc_storeStrong(v15 + 5, v58);
  if (v36)
  {
    if ([v36 count])
    {
      v18 = dispatch_group_create();
      v51[0] = 0;
      v51[1] = v51;
      v51[2] = 0x3032000000;
      v51[3] = __Block_byref_object_copy__9;
      v51[4] = __Block_byref_object_dispose__9;
      v52 = 0;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v19 = v36;
      v20 = [v19 countByEnumeratingWithState:&v47 objects:v62 count:16];
      v21 = 0;
      if (v20)
      {
        v22 = *v48;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v48 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v47 + 1) + 8 * i);
            if (([v24 isConfig] & configCopy & 1) == 0)
            {
              dispatch_group_enter(v18);
              v44[0] = MEMORY[0x277D85DD0];
              v44[1] = 3221225472;
              v44[2] = __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_24;
              v44[3] = &unk_2789B55F0;
              v46 = v51;
              v45 = v18;
              [(_LTOfflineAssetManager *)self deleteAsset:v24 completion:v44];

              ++v21;
            }
          }

          v20 = [v19 countByEnumeratingWithState:&v47 objects:v62 count:16];
        }

        while (v20);
      }

      dispatch_group_enter(v18);
      hotfixMgr = self->_hotfixMgr;
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_2_25;
      v41[3] = &unk_2789B55F0;
      v43 = v51;
      v26 = v18;
      v42 = v26;
      v27 = [(_LTHotfixManager *)hotfixMgr deleteHotfix:v41];
      v29 = _LTOSLogAssets(v27, v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *v60 = 134217984;
        v61 = v21;
        _os_log_impl(&dword_232E53000, v29, OS_LOG_TYPE_INFO, "Waiting for %zd assets to be deleted", v60, 0xCu);
      }

      v30 = _queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_27;
      block[3] = &unk_2789B6E48;
      v40 = v51;
      v39 = completionCopy;
      dispatch_group_notify(v26, v30, block);

      _Block_object_dispose(v51, 8);
    }

    else
    {
      v33 = self->_hotfixMgr;
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke_2;
      v53[3] = &unk_2789B5D20;
      v54 = completionCopy;
      [(_LTHotfixManager *)v33 deleteHotfix:v53];
      v26 = v54;
    }
  }

  else
  {
    v31 = _LTOSLogAssets(v16, v17);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineAssetManager purgeAllAssetsExcludingConfig:completion:];
    }

    v32 = _queue;
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __67___LTOfflineAssetManager_purgeAllAssetsExcludingConfig_completion___block_invoke;
    v55[3] = &unk_2789B6980;
    v56 = completionCopy;
    v57 = buf;
    dispatch_async(v32, v55);
    v26 = v56;
  }

  _Block_object_dispose(buf, 8);
}

- (void)debugDumpAssets:(id)assets
{
  v31 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = assets;
  v3 = [obj countByEnumeratingWithState:&v16 objects:v30 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = _LTOSLogAssets(v3, v4);
        v3 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
        if (v3)
        {
          v10 = v9;
          assetTypeName = [v8 assetTypeName];
          assetVersion = [v8 assetVersion];
          requiredCapabilityIdentifier = [v8 requiredCapabilityIdentifier];
          identifier = [v8 identifier];
          *buf = 138413314;
          v21 = v8;
          v22 = 2112;
          v23 = assetTypeName;
          v24 = 2048;
          v25 = assetVersion;
          v26 = 2048;
          v27 = requiredCapabilityIdentifier;
          v28 = 2112;
          v29 = identifier;
          _os_log_impl(&dword_232E53000, v10, OS_LOG_TYPE_INFO, "%@ %@ Version %zd Capability %zd %@", buf, 0x34u);
        }

        ++v7;
      }

      while (v5 != v7);
      v3 = [obj countByEnumeratingWithState:&v16 objects:v30 count:16];
      v5 = v3;
    }

    while (v3);
  }
}

- (void)_updateAsset:(id)asset catalogAssets:(id)assets downloadGroup:(id)group completion:(id)completion
{
  v53 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  assetsCopy = assets;
  groupCopy = group;
  completionCopy = completion;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v14 = [assetsCopy countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v14)
  {
    v16 = v14;
    v17 = *v41;
    *&v15 = 138544130;
    v31 = v15;
    v32 = completionCopy;
    v33 = assetCopy;
    do
    {
      v18 = 0;
      v34 = v16;
      do
      {
        if (*v41 != v17)
        {
          objc_enumerationMutation(assetsCopy);
        }

        v19 = *(*(&v40 + 1) + 8 * v18);
        v20 = [v19 isNewerCompatibleVersionThan:{assetCopy, v31}];
        if (v20)
        {
          v22 = _LTOSLogAssets(v20, v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v23 = v22;
            [v19 assetTypeName];
            v25 = v24 = self;
            v26 = v17;
            v27 = groupCopy;
            v28 = assetsCopy;
            assetVersion = [v19 assetVersion];
            identifier = [v19 identifier];
            *buf = v31;
            v45 = v19;
            v46 = 2114;
            v47 = v25;
            v48 = 2048;
            v49 = assetVersion;
            assetsCopy = v28;
            groupCopy = v27;
            v17 = v26;
            v50 = 2114;
            v51 = identifier;
            _os_log_impl(&dword_232E53000, v23, OS_LOG_TYPE_INFO, "update asset: %{public}@; type: %{public}@; version: %zd; name: %{public}@", buf, 0x2Au);

            self = v24;
            completionCopy = v32;
            assetCopy = v33;
          }

          dispatch_group_enter(groupCopy);
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __78___LTOfflineAssetManager__updateAsset_catalogAssets_downloadGroup_completion___block_invoke;
          v35[3] = &unk_2789B6E70;
          v36 = groupCopy;
          v39 = completionCopy;
          selfCopy = self;
          v38 = assetCopy;
          [_LTDAssetService downloadAsset:v19 options:2 progress:0 completion:v35];

          v16 = v34;
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [assetsCopy countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v16);
  }
}

- (void)updateAllAssets:(id)assets
{
  v55 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  v5 = _LTOSLogAssets(assetsCopy, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_DEFAULT, "Attempting to update all assets", buf, 2u);
  }

  v53 = 0;
  assetsCopy = [_LTDAssetService installedAssetsWithError:&v53, assetsCopy];
  v6 = v53;
  v52 = v6;
  v33 = [_LTDAssetService catalogAssetsWithError:&v52];
  v7 = v52;

  if (v7)
  {
    v10 = _LTOSLogAssets(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineAssetManager updateAllAssets:];
    }

    (v30)[2](v30, v7);
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
    v51 = 0;
    v11 = [_LTDConfigurationService offlineConfigurationWithError:&v51];
    v12 = v51;
    if (v12)
    {
      v7 = v12;
      v14 = _LTOSLogAssets(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [_LTOfflineAssetManager updateAllAssets:];
      }

      (v30)[2](v30, v7);
    }

    else
    {
      languagePairs = [v11 languagePairs];
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      obj = languagePairs;
      v7 = 0;
      v16 = [obj countByEnumeratingWithState:&v47 objects:v54 count:16];
      if (v16)
      {
        v17 = *v48;
        do
        {
          v18 = 0;
          v19 = v7;
          do
          {
            if (*v48 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v20 = [MEMORY[0x277CE1B38] pairWithIdentifiers:*(*(&v47 + 1) + 8 * v18)];
            v46 = v19;
            v21 = [(_LTOfflineAssetManager *)self _speechTranslationAssetInfoForLocalePair:v20 installedAssets:assetsCopy catalogAssets:v33 offlineConfig:v11 error:&v46];
            v7 = v46;

            availabilityInfo = [v21 availabilityInfo];
            if ([availabilityInfo pairState] == 2)
            {
              [array addObject:v20];
            }

            ++v18;
            v19 = v7;
          }

          while (v16 != v18);
          v16 = [obj countByEnumeratingWithState:&v47 objects:v54 count:16];
        }

        while (v16);
      }

      v25 = _LTOSLogAssets(v23, v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_232E53000, v25, OS_LOG_TYPE_INFO, "----------------------------- check config asset for update ------------------------------------ ", buf, 2u);
      }

      v26 = [_LTDAssetService filterConfigAssetFromAssets:assetsCopy];
      v27 = dispatch_group_create();
      *buf = 0;
      v43 = buf;
      v44 = 0x2020000000;
      v45 = 0;
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __42___LTOfflineAssetManager_updateAllAssets___block_invoke;
      v41[3] = &unk_2789B6E98;
      v41[4] = buf;
      [(_LTOfflineAssetManager *)self _updateAsset:v26 catalogAssets:v33 downloadGroup:v27 completion:v41];
      v28 = _queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42___LTOfflineAssetManager_updateAllAssets___block_invoke_2;
      block[3] = &unk_2789B6F08;
      v39 = v30;
      block[4] = self;
      v36 = v33;
      v37 = assetsCopy;
      v38 = array;
      v40 = buf;
      dispatch_group_notify(v27, v28, block);

      _Block_object_dispose(buf, 8);
    }
  }
}

- (void)updateAssetSymLinksForLocalePairs:(id)pairs
{
  v35 = *MEMORY[0x277D85DE8];
  pairsCopy = pairs;
  if ([pairsCopy count])
  {
    v33 = 0;
    v5 = [_LTDConfigurationService offlineConfigurationWithError:&v33];
    v6 = v33;
    v32 = v6;
    v7 = [_LTDAssetService installedAssetsWithError:&v32];
    v8 = v32;

    v31 = v8;
    v9 = [_LTDAssetService catalogAssetsWithError:&v31];
    v10 = v31;

    v13 = _LTOSLogAssets(v11, v12);
    v14 = v13;
    if (v10)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [_LTOfflineAssetManager updateAssetSymLinksForLocalePairs:];
      }
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_232E53000, v14, OS_LOG_TYPE_INFO, "Fixing symlinks", buf, 2u);
      }

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v23 = pairsCopy;
      obj = pairsCopy;
      v15 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v15)
      {
        v16 = v15;
        v10 = 0;
        v17 = *v27;
        do
        {
          v18 = 0;
          v19 = v10;
          do
          {
            if (*v27 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v26 + 1) + 8 * v18);
            v25 = v19;
            v21 = [(_LTOfflineAssetManager *)self _speechTranslationAssetInfoForLocalePair:v20 installedAssets:v7 catalogAssets:v9 offlineConfig:v5 error:&v25];
            v10 = v25;

            availabilityInfo = [v21 availabilityInfo];
            if ([availabilityInfo pairState] == 2)
            {
              [v21 createSymlinkDirectoryForMTAssets];
            }

            ++v18;
            v19 = v10;
          }

          while (v16 != v18);
          v16 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v16);
      }

      else
      {
        v10 = 0;
      }

      pairsCopy = v23;
    }
  }
}

- (void)_downloadPassthroughAssetForLocale:(id)locale userInitiated:(BOOL)initiated completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  completionCopy = completion;
  [_LTDTTSAssetService downloadVoiceAssetsForLanguagePair:localeCopy];
  sourceLocale = [localeCopy sourceLocale];
  v20 = 0;
  v9 = [_LTDAssetService matchingASRAssetForLocale:sourceLocale error:&v20];
  v10 = v20;

  if (v10)
  {
    v13 = _LTOSLogAssets(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineAssetManager _downloadPassthroughAssetForLocale:userInitiated:completion:];
    }

    completionCopy[2](completionCopy, v10);
  }

  isInstalled = [v9 isInstalled];
  if (isInstalled)
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v16 = _LTOSLogAssets(isInstalled, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v22 = v9;
      _os_log_impl(&dword_232E53000, v16, OS_LOG_TYPE_INFO, "Starting download for passthrough asset with attributes: %{public}@", buf, 0xCu);
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __86___LTOfflineAssetManager__downloadPassthroughAssetForLocale_userInitiated_completion___block_invoke;
    v17[3] = &unk_2789B58D0;
    v18 = localeCopy;
    v19 = completionCopy;
    [_LTDAssetService downloadAsset:v9 options:2 progress:0 completion:v17];
  }
}

- (void)downloadAssetsForLanguagePair:(id)pair userInitiated:(BOOL)initiated completion:(id)completion
{
  initiatedCopy = initiated;
  completionCopy = completion;
  canonicalLocalePair = [pair canonicalLocalePair];
  if ([canonicalLocalePair isPassthrough])
  {
    [(_LTOfflineAssetManager *)self _downloadPassthroughAssetForLocale:canonicalLocalePair userInitiated:initiatedCopy completion:completionCopy];
  }

  else
  {
    [_LTDTTSAssetService downloadVoiceAssetsForLanguagePair:canonicalLocalePair];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __81___LTOfflineAssetManager_downloadAssetsForLanguagePair_userInitiated_completion___block_invoke;
    v10[3] = &unk_2789B6F30;
    v12 = completionCopy;
    v10[4] = self;
    v11 = canonicalLocalePair;
    v13 = initiatedCopy;
    [_LTDAssetService configAssetWithCompletion:v10];
  }
}

- (id)modelURLsForLanguagePair:(id)pair
{
  v18 = *MEMORY[0x277D85DE8];
  pairCopy = pair;
  v5 = +[_LTOfflineAssetManager assetDirectory];
  canonicalIdentifier = [pairCopy canonicalIdentifier];

  v7 = [v5 URLByAppendingPathComponent:canonicalIdentifier];

  hotfixURL = [(_LTHotfixManager *)self->_hotfixMgr hotfixURL];
  v9 = hotfixURL;
  if (hotfixURL)
  {
    v16 = hotfixURL;
    v17 = v7;
    v10 = MEMORY[0x277CBEA60];
    v11 = &v16;
    v12 = 2;
  }

  else
  {
    v15 = v7;
    v10 = MEMORY[0x277CBEA60];
    v11 = &v15;
    v12 = 1;
  }

  v13 = [v10 arrayWithObjects:v11 count:{v12, v15, v16, v17, v18}];

  return v13;
}

- (id)speechTranslationAssetInfoForLocalePair:(id)pair taskHint:(int64_t)hint error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  pairCopy = pair;
  v9 = [(_LTOfflineAssetManager *)self _speechTranslationAssetInfoForLocalePair:pairCopy error:error];
  v10 = v9;
  if (v9)
  {
    if ([v9 isCompletePassthroughModelForTaskHint:hint] || (objc_msgSend(v10, "isCompleteBidirectionalModelForTaskHint:", hint) & 1) != 0)
    {
      v11 = v10;
      goto LABEL_14;
    }

    v16 = MEMORY[0x277CCACA8];
    v17 = [pairCopy description];
    v18 = _LTTranslationTaskHintString();
    v19 = [v16 stringWithFormat:@"Incomplete speech translation model for %@ taksHint: %@", v17, v18];

    v20 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:19 description:v19 userInfo:0];
    v22 = _LTOSLogAssets(v20, v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v25 = v22;
      v26 = _LTTranslationTaskHintString();
      *buf = 138543874;
      v28 = pairCopy;
      v29 = 2112;
      v30 = v20;
      v31 = 2112;
      v32 = v26;
      _os_log_error_impl(&dword_232E53000, v25, OS_LOG_TYPE_ERROR, "Can't get speech asset info for pair %{public}@ because we don't have a complete bi-directional model: %@ taksHint: %@", buf, 0x20u);

      if (!error)
      {
        goto LABEL_12;
      }
    }

    else if (!error)
    {
LABEL_12:

      goto LABEL_13;
    }

    v23 = v20;
    *error = v20;
    goto LABEL_12;
  }

  v12 = [MEMORY[0x277CCA9B8] lt_unsupporedLocalePairError:pairCopy];
  v14 = _LTOSLogAssets(v12, v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [_LTOfflineAssetManager speechTranslationAssetInfoForLocalePair:taskHint:error:];
    if (!error)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (error)
  {
LABEL_7:
    v15 = v12;
    *error = v12;
  }

LABEL_8:

LABEL_13:
  v11 = 0;
LABEL_14:

  return v11;
}

- (id)_speechTranslationAssetInfoForLocalePair:(id)pair error:(id *)error
{
  pairCopy = pair;
  v31 = 0;
  v7 = [_LTDConfigurationService offlineConfigurationWithError:&v31];
  v8 = v31;
  if (v8)
  {
    v10 = v8;
    v11 = _LTOSLogAssets(v8, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineAssetManager _speechTranslationAssetInfoForLocalePair:error:];
      if (error)
      {
        goto LABEL_4;
      }
    }

    else if (error)
    {
LABEL_4:
      v12 = v10;
      v13 = 0;
      *error = v10;
      goto LABEL_27;
    }

    goto LABEL_13;
  }

  if (!v7)
  {
    v21 = _LTOSLogAssets(0, v9);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineAssetManager _speechTranslationAssetInfoForLocalePair:error:];
    }

    v10 = 0;
LABEL_13:
    v13 = 0;
    goto LABEL_27;
  }

  v30 = 0;
  v14 = [_LTDAssetService installedAssetsWithError:&v30];
  v15 = v30;
  v29 = v15;
  v16 = [_LTDAssetService catalogAssetsWithError:&v29];
  v10 = v29;

  if (!v10)
  {
    v28 = 0;
    v22 = [(_LTOfflineAssetManager *)self _speechTranslationAssetInfoForLocalePair:pairCopy installedAssets:v14 catalogAssets:v16 offlineConfig:v7 error:&v28];
    v23 = v28;
    v10 = v23;
    if (!v23)
    {
      v13 = v22;
      goto LABEL_25;
    }

    v25 = _LTOSLogAssets(v23, v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineAssetManager _speechTranslationAssetInfoForLocalePair:error:];
      if (error)
      {
        goto LABEL_17;
      }
    }

    else if (error)
    {
LABEL_17:
      v26 = v10;
      v13 = 0;
      *error = v10;
LABEL_25:

      goto LABEL_26;
    }

    v13 = 0;
    goto LABEL_25;
  }

  v19 = _LTOSLogAssets(v17, v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [_LTOfflineAssetManager _speechTranslationAssetInfoForLocalePair:error:];
    if (error)
    {
      goto LABEL_9;
    }

LABEL_22:
    v13 = 0;
    goto LABEL_26;
  }

  if (!error)
  {
    goto LABEL_22;
  }

LABEL_9:
  v20 = v10;
  v13 = 0;
  *error = v10;
LABEL_26:

LABEL_27:

  return v13;
}

- (id)_speechTranslationAssetInfoForLocalePair:(id)pair installedAssets:(id)assets catalogAssets:(id)catalogAssets offlineConfig:(id)config error:(id *)error
{
  pairCopy = pair;
  assetsCopy = assets;
  catalogAssetsCopy = catalogAssets;
  configCopy = config;
  canonicalLocalePair = [pairCopy canonicalLocalePair];
  canonicalIdentifier = [canonicalLocalePair canonicalIdentifier];
  v18 = [configCopy offlinePairConfigurationWithIdentifier:canonicalIdentifier];

  pairAssetList = [v18 pairAssetList];
  if ([pairAssetList count])
  {

LABEL_4:
    v21 = [[_LTSpeechTranslationAssetInfo alloc] initWithInstalledAssets:assetsCopy catalogAssets:catalogAssetsCopy localePair:canonicalLocalePair offlineConfig:v18 assetManager:self];
    goto LABEL_5;
  }

  isPassthrough = [canonicalLocalePair isPassthrough];

  if (isPassthrough)
  {
    goto LABEL_4;
  }

  v23 = [MEMORY[0x277CCA9B8] lt_unsupporedLocalePairError:pairCopy];
  v25 = _LTOSLogAssets(v23, v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    [_LTOfflineAssetManager _speechTranslationAssetInfoForLocalePair:installedAssets:catalogAssets:offlineConfig:error:];
    if (!error)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (error)
  {
LABEL_10:
    v26 = v23;
    *error = v23;
  }

LABEL_11:

  v21 = 0;
LABEL_5:

  return v21;
}

- (id)getEndpointerAssetWithType:(unint64_t)type error:(id *)error
{
  v21 = 0;
  v6 = [_LTDConfigurationService assetConfigurationWithError:&v21];
  v7 = v21;
  if (!v7)
  {
    currentEndpointAssetType = [v6 currentEndpointAssetType];
    v20 = 0;
    v14 = [_LTDAssetService queryAssetType:currentEndpointAssetType filter:type error:&v20];
    v15 = v20;
    v9 = v15;
    if (!v15)
    {
      v12 = v14;
      goto LABEL_14;
    }

    v17 = _LTOSLogAssets(v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineAssetManager getEndpointerAssetWithType:error:];
      if (error)
      {
        goto LABEL_8;
      }
    }

    else if (error)
    {
LABEL_8:
      v18 = v9;
      v12 = 0;
      *error = v9;
LABEL_14:

      goto LABEL_15;
    }

    v12 = 0;
    goto LABEL_14;
  }

  v9 = v7;
  v10 = _LTOSLogAssets(v7, v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [_LTOfflineAssetManager getEndpointerAssetWithType:error:];
    if (error)
    {
      goto LABEL_4;
    }
  }

  else if (error)
  {
LABEL_4:
    v11 = v9;
    v12 = 0;
    *error = v9;
    goto LABEL_15;
  }

  v12 = 0;
LABEL_15:

  return v12;
}

- (id)endpointAssetInfoWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  v7 = [(_LTOfflineAssetManager *)self getEndpointerAssetWithType:2 error:error];
  if (!v7)
  {
    if (error)
    {
      *error = 0;
    }

    v7 = [(_LTOfflineAssetManager *)self getEndpointerAssetWithType:3 error:error];
  }

  v8 = [[_LTHybridEndpointerAssetInfo alloc] initWithAvailableAssets:v7 context:contextCopy];

  return v8;
}

+ (id)fallBackAssetResourcePath
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  resourceURL = [v2 resourceURL];

  v6 = _LTOSLogAssets(v4, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    path = [resourceURL path];
    v10 = 138543362;
    v11 = path;
    _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "Fallback asset resource path : %{public}@", &v10, 0xCu);
  }

  return resourceURL;
}

- (id)languageDetectorAssetWithError:(id *)error
{
  v3 = +[_LTOfflineAssetManager fallBackAssetResourcePath];
  v4 = [v3 URLByAppendingPathComponent:@"LanguageDetectorDefaultAsset"];
  v5 = [v4 URLByAppendingPathComponent:@"featureCombinationLID.plist"];
  if (([v5 checkResourceIsReachableAndReturnError:0] & 1) == 0)
  {

    v5 = 0;
  }

  v6 = [[_LTLanguageDetectorAssetInfo alloc] initWithAssetUrl:v4 featureCombinationAssetUrl:v5];

  return v6;
}

- (void)assetSize:(id)size
{
  v54 = *MEMORY[0x277D85DE8];
  sizeCopy = size;
  v48 = 0;
  v4 = [_LTDConfigurationService assetConfigurationWithError:&v48];
  v5 = v48;
  v7 = v5;
  if (v5)
  {
    v8 = _LTOSLogAssets(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [_LTOfflineAssetManager assetSize:];
      if (!sizeCopy)
      {
        goto LABEL_32;
      }

      goto LABEL_4;
    }

    if (sizeCopy)
    {
LABEL_4:
      sizeCopy[2](sizeCopy, 0, v7);
    }
  }

  else
  {
    v33 = sizeCopy;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    currentSpeechTranslationAssetType = [v4 currentSpeechTranslationAssetType];
    v52[0] = currentSpeechTranslationAssetType;
    v32 = v4;
    currentEndpointAssetType = [v4 currentEndpointAssetType];
    v52[1] = currentEndpointAssetType;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];

    obj = v11;
    v36 = [v11 countByEnumeratingWithState:&v44 objects:v53 count:16];
    v12 = 0;
    if (v36)
    {
      v35 = *v45;
      while (2)
      {
        v13 = 0;
        do
        {
          if (*v45 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v44 + 1) + 8 * v13);
          v43 = 0;
          v15 = [_LTDAssetService queryAssetType:v14 filter:2 error:&v43];
          v16 = v43;
          v18 = v16;
          if (!v15)
          {
            v31 = _LTOSLogAssets(v16, v17);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v51 = v18;
              _os_log_impl(&dword_232E53000, v31, OS_LOG_TYPE_INFO, "Asset size calculation failure: %@", buf, 0xCu);
            }

            sizeCopy = v33;
            v33[2](v33, 0, v18);

            goto LABEL_31;
          }

          v37 = v13;
          v38 = v16;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v19 = v15;
          v20 = [v19 countByEnumeratingWithState:&v39 objects:v49 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v40;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v40 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v39 + 1) + 8 * i);
                unarchivedSize = [v24 unarchivedSize];
                if (unarchivedSize && (unarchivedSize = [v24 unarchivedSize], unarchivedSize > 0))
                {
                  v12 += [v24 unarchivedSize];
                }

                else
                {
                  v27 = _LTOSLogAssets(unarchivedSize, v26);
                  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v51 = v24;
                    _os_log_impl(&dword_232E53000, v27, OS_LOG_TYPE_INFO, "Asset unarchive size is nil or less than 1: %@", buf, 0xCu);
                  }
                }
              }

              v21 = [v19 countByEnumeratingWithState:&v39 objects:v49 count:16];
            }

            while (v21);
          }

          v13 = v37 + 1;
        }

        while (v37 + 1 != v36);
        v36 = [obj countByEnumeratingWithState:&v44 objects:v53 count:16];
        if (v36)
        {
          continue;
        }

        break;
      }
    }

    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v12];
    v30 = _LTOSLogAssets(v28, v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v51 = v28;
      _os_log_impl(&dword_232E53000, v30, OS_LOG_TYPE_INFO, "Asset size calculated as %{public}@", buf, 0xCu);
    }

    sizeCopy = v33;
    (v33)[2](v33, v28, 0);

LABEL_31:
    v7 = 0;
    v4 = v32;
  }

LABEL_32:
}

- (void)purgeAllAssetsExcludingConfig:completion:.cold.1()
{
  OUTLINED_FUNCTION_4(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to delete asset link directory: %@", v2, v3, v4, v5);
}

- (void)purgeAllAssetsExcludingConfig:completion:.cold.2()
{
  OUTLINED_FUNCTION_4(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed asset query: %@", v2, v3, v4, v5);
}

@end