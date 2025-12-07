@interface _LTDASRAssetService
+ (BOOL)_supportsGASR;
+ (BOOL)isSupportedTaskHint:(int64_t)hint;
+ (id)_assetTypesForDevice;
+ (id)_availableAssets;
+ (id)_catalog;
+ (id)_requiredAssets;
+ (id)_requiredSFConfigsForAssets:(id)assets;
+ (id)_selectedLTLocalesIdentifiers;
+ (id)_subscribedSFConfigs;
+ (id)_supportedGASRLocaleIdentifiers;
+ (id)_supportedLTLocaleIdentifiers;
+ (id)assetSpecifierForSFConfig:(id)config;
+ (id)deferredUnsubscribeAssets;
+ (id)pathToSFAsset:(id)asset;
+ (id)pendingDownloadSchedulingAssetsNameToEntry;
+ (id)queryAssetType:(id)type filter:(unint64_t)filter error:(id *)error;
+ (id)queue;
+ (id)supportedLanguagesForTaskHint:(int64_t)hint;
+ (void)_downloadAsset:(id)asset options:(unint64_t)options progress:(id)progress completion:(id)completion;
+ (void)_scheduleNextDownloadIfNeededWithCompletedDownloadEntry:(id)entry;
+ (void)_subscribe:(id)_subscribe progress:(id)progress completion:(id)completion;
+ (void)_unsubscribe:(id)_unsubscribe completion:(id)completion;
+ (void)cancelDeferredUnsubscribeTimer;
+ (void)deferredUnsubscribe;
+ (void)downloadAsset:(id)asset options:(unint64_t)options progress:(id)progress completion:(id)completion;
+ (void)purgeAsset:(id)asset completion:(id)completion;
+ (void)queryAssetType:(id)type filter:(unint64_t)filter completion:(id)completion;
+ (void)updateDeferredUnsubscribeTimer;
@end

@implementation _LTDASRAssetService

+ (id)deferredUnsubscribeAssets
{
  if (deferredUnsubscribeAssets_onceToken != -1)
  {
    +[_LTDASRAssetService deferredUnsubscribeAssets];
  }

  v3 = deferredUnsubscribeAssets__deferredUnsubscribeAssets;

  return v3;
}

+ (id)pendingDownloadSchedulingAssetsNameToEntry
{
  if (pendingDownloadSchedulingAssetsNameToEntry_onceToken != -1)
  {
    +[_LTDASRAssetService pendingDownloadSchedulingAssetsNameToEntry];
  }

  v3 = pendingDownloadSchedulingAssetsNameToEntry__pendingDownloadSchedulingAssets;

  return v3;
}

+ (id)queue
{
  if (queue_onceToken != -1)
  {
    +[_LTDASRAssetService queue];
  }

  v3 = queue__queue;

  return v3;
}

+ (BOOL)_supportsGASR
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    v3 = MEMORY[0x277CDCF20];

    LOBYTE(v2) = [v3 isGeneralASRSupportedOnDevice];
  }

  return v2;
}

+ (BOOL)isSupportedTaskHint:(int64_t)hint
{
  if ((hint - 9) < 2)
  {
    return [self _supportsGASR];
  }

  if (hint == 1)
  {
    return [self _supportsNGASR];
  }

  return 0;
}

+ (void)queryAssetType:(id)type filter:(unint64_t)filter completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  queue = [self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56___LTDASRAssetService_queryAssetType_filter_completion___block_invoke;
  v13[3] = &unk_2789B5818;
  selfCopy = self;
  filterCopy = filter;
  v14 = typeCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = typeCopy;
  dispatch_async(queue, v13);
}

+ (id)queryAssetType:(id)type filter:(unint64_t)filter error:(id *)error
{
  _catalog = [self _catalog];
  v7 = _catalog;
  if (filter >= 2)
  {
    if (filter != 2)
    {
      v9 = MEMORY[0x277CBEBF8];
      goto LABEL_7;
    }

    v8 = [_catalog lt_filterUsingBlock:&__block_literal_global_344];
  }

  else
  {
    v8 = _catalog;
  }

  v9 = v8;
LABEL_7:

  return v9;
}

+ (id)_assetTypesForDevice
{
  array = [MEMORY[0x277CBEB18] array];
  if ([self _supportsGASR])
  {
    [array addObject:@"com.apple.MobileAsset.UAF.Speech.AutomaticSpeechRecognition"];
  }

  if ([self _supportsNGASR])
  {
    [array addObject:@"com.apple.MobileAsset.UAF.Siri.Understanding"];
  }

  return array;
}

+ (id)supportedLanguagesForTaskHint:(int64_t)hint
{
  switch(hint)
  {
    case 11:
      v3 = &unk_284867D80;
      goto LABEL_12;
    case 10:
      v3 = &unk_284867D50;
      if (_LTIsInternalInstall())
      {
        v4 = _LTPreferencesIncludeHiddenCallTranslationLocales();
        v5 = &unk_284867D68;
LABEL_8:
        if (v4)
        {
          v3 = v5;
        }
      }

LABEL_12:
      v6 = [MEMORY[0x277CBEB98] setWithArray:v3];
      goto LABEL_14;
    case 9:
      v3 = &unk_284867D20;
      if (_LTIsInternalInstall())
      {
        v4 = _LTPreferencesIncludeHiddenCallTranslationLocales();
        v5 = &unk_284867D38;
        goto LABEL_8;
      }

      goto LABEL_12;
  }

  v6 = 0;
LABEL_14:

  return v6;
}

+ (id)_selectedLTLocalesIdentifiers
{
  v2 = _LTPreferencesInstalledLocales();
  v3 = [MEMORY[0x277CBEB98] setWithArray:v2];

  return v3;
}

+ (id)_supportedLTLocaleIdentifiers
{
  v2 = +[_LTDUAFAssetService _allAssetLocales];
  v3 = [v2 _ltCompactMap:&__block_literal_global_403];
  v4 = [MEMORY[0x277CBEB98] setWithArray:v3];

  return v4;
}

+ (id)_supportedGASRLocaleIdentifiers
{
  if ([self _supportsGASR])
  {
    v3 = [_LTDASRAssetService supportedLanguagesForTaskHint:9];
    v4 = [v3 mutableCopy];

    v5 = [self supportedLanguagesForTaskHint:10];
    [v4 unionSet:v5];
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] set];
  }

  return v4;
}

+ (id)_availableAssets
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39___LTDASRAssetService__availableAssets__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_availableAssets_onceToken != -1)
  {
    dispatch_once(&_availableAssets_onceToken, block);
  }

  v2 = _availableAssets_shared;

  return v2;
}

+ (id)_requiredAssets
{
  v19 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  _availableAssets = [self _availableAssets];
  _selectedLTLocalesIdentifiers = [self _selectedLTLocalesIdentifiers];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [_selectedLTLocalesIdentifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(_selectedLTLocalesIdentifiers);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [_availableAssets objectForKeyedSubscript:v10];
        if (v11)
        {
          [dictionary setObject:v11 forKeyedSubscript:v10];
        }
      }

      v7 = [_selectedLTLocalesIdentifiers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [dictionary copy];

  return v12;
}

+ (id)assetSpecifierForSFConfig:(id)config
{
  v3 = MEMORY[0x277CCACA8];
  configCopy = config;
  language = [configCopy language];
  [configCopy assetType];

  v6 = SFEntitledAssetTypeToString();
  v7 = [v3 stringWithFormat:@"ASR-%@_%@", language, v6];

  return v7;
}

+ (id)_requiredSFConfigsForAssets:(id)assets
{
  v35 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = assetsCopy;
  obj = [assetsCopy allValues];
  v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v23)
  {
    v22 = *v30;
    do
    {
      v6 = 0;
      do
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = v6;
        v7 = *(*(&v29 + 1) + 8 * v6);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        components = [v7 components];
        v9 = [components countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v26;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v26 != v11)
              {
                objc_enumerationMutation(components);
              }

              v13 = *(*(&v25 + 1) + 8 * i);
              if (v13)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v14 = v13;
                }

                else
                {
                  v14 = 0;
                }
              }

              else
              {
                v14 = 0;
              }

              v15 = v14;

              provider = [v15 provider];
              v17 = [self assetSpecifierForSFConfig:provider];

              provider2 = [v15 provider];

              [dictionary setObject:provider2 forKeyedSubscript:v17];
            }

            v10 = [components countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v10);
        }

        v6 = v24 + 1;
      }

      while (v24 + 1 != v23);
      v23 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v23);
  }

  return dictionary;
}

+ (id)_subscribedSFConfigs
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CDCEB8] subscriptionsForClientIdentifier:@"com.apple.translationd.asr"];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
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
        v11 = [self assetSpecifierForSFConfig:{v10, v13}];
        [dictionary setObject:v10 forKeyedSubscript:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return dictionary;
}

+ (id)_catalog
{
  v87 = *MEMORY[0x277D85DE8];
  v2 = _LTOSLogAssets(self, a2);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v2, OS_LOG_TYPE_DEFAULT, "ASR Asset in the _catalog", buf, 2u);
  }

  v5 = _LTOSLogAssets(v3, v4);
  v6 = os_signpost_id_generate(v5);
  v8 = _LTOSLogAssets(v6, v7);
  v9 = v8;
  v57 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v6, "asrCatalog", "begin", buf, 2u);
  }

  spid = v6;

  os_unfair_lock_lock(&_subscriptionLock);
  _availableAssets = [self _availableAssets];
  v60 = [_availableAssets mutableCopy];

  _requiredAssets = [self _requiredAssets];
  v11 = [self _requiredSFConfigsForAssets:?];
  _subscribedSFConfigs = [self _subscribedSFConfigs];
  v13 = [_subscribedSFConfigs mutableCopy];

  deferredUnsubscribeAssets = [self deferredUnsubscribeAssets];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  allKeys = [v13 allKeys];
  v16 = [allKeys countByEnumeratingWithState:&v78 objects:v86 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v79;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v79 != v18)
        {
          objc_enumerationMutation(allKeys);
        }

        v20 = *(*(&v78 + 1) + 8 * i);
        v21 = [v11 objectForKeyedSubscript:{v20, spid}];

        if (!v21)
        {
          v22 = [v13 objectForKeyedSubscript:v20];
          [deferredUnsubscribeAssets setObject:v22 forKeyedSubscript:v20];

          [v13 removeObjectForKey:v20];
        }
      }

      v17 = [allKeys countByEnumeratingWithState:&v78 objects:v86 count:16];
    }

    while (v17);
  }

  v55 = deferredUnsubscribeAssets;
  v56 = v11;

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = [_requiredAssets allKeys];
  v62 = [obj countByEnumeratingWithState:&v74 objects:v85 count:16];
  if (v62)
  {
    v66 = 0;
    v59 = *v75;
    p_vtable = &OBJC_METACLASS____LTDANEService.vtable;
    do
    {
      v24 = 0;
      do
      {
        if (*v75 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v65 = v24;
        v63 = *(*(&v74 + 1) + 8 * v24);
        v25 = [_requiredAssets objectForKeyedSubscript:spid];
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v73 = 0u;
        v64 = v25;
        components = [v25 components];
        v27 = [components countByEnumeratingWithState:&v70 objects:v84 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v71;
          v67 = *v71;
          v68 = 0;
          do
          {
            for (j = 0; j != v28; ++j)
            {
              if (*v71 != v29)
              {
                objc_enumerationMutation(components);
              }

              v31 = *(*(&v70 + 1) + 8 * j);
              if (v31 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                provider = [v31 provider];
                v33 = [self assetSpecifierForSFConfig:provider];

                if (v33)
                {
                  v36 = [v13 objectForKeyedSubscript:v33];

                  if (!v36)
                  {
                    provider2 = [v31 provider];
                    [v13 setObject:provider2 forKeyedSubscript:v33];

                    v66 = 1;
                  }

                  v38 = p_vtable;
                  v39 = objc_alloc((p_vtable + 152));
                  assetName = [v31 assetName];
                  v41 = v13;
                  v42 = [v13 objectForKeyedSubscript:v33];
                  v43 = [v39 initWithAssetIdentifier:assetName provider:v42];

                  if (v68)
                  {
                    [(_LTDAssetModel *)v68 addComponentAsset:v43];
                  }

                  else
                  {
                    v68 = [[_LTDAssetModel alloc] initWithProvider:v43];
                  }

                  v13 = v41;
                  p_vtable = v38;
                  v29 = v67;
                }

                else
                {
                  v47 = _LTOSLogAssets(v34, v35);
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    v83 = v31;
                    _os_log_error_impl(&dword_232E53000, v47, OS_LOG_TYPE_ERROR, "Failed to obtain asset specifier for ASR asset %{public}@", buf, 0xCu);
                  }
                }
              }

              else
              {

                v46 = _LTOSLogAssets(v44, v45);
                if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v83 = v31;
                  _os_log_error_impl(&dword_232E53000, v46, OS_LOG_TYPE_ERROR, "Skipping invalid non-ASR asset %{public}@", buf, 0xCu);
                }
              }
            }

            v28 = [components countByEnumeratingWithState:&v70 objects:v84 count:16];
          }

          while (v28);
        }

        else
        {
          v68 = 0;
        }

        [v60 setObject:v68 forKeyedSubscript:v63];
        v24 = v65 + 1;
      }

      while (v65 + 1 != v62);
      v62 = [obj countByEnumeratingWithState:&v74 objects:v85 count:16];
    }

    while (v62);
  }

  else
  {
    v66 = 0;
  }

  if ([v55 count] || (v66 & 1) != 0)
  {
    [self updateDeferredUnsubscribeTimer];
  }

  os_unfair_lock_unlock(&_subscriptionLock);
  v50 = _LTOSLogAssets(v48, v49);
  v51 = v50;
  if (v57 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v51, OS_SIGNPOST_INTERVAL_END, spid, "asrCatalog", "end", buf, 2u);
  }

  allValues = [v60 allValues];

  return allValues;
}

+ (void)_subscribe:(id)_subscribe progress:(id)progress completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  _subscribeCopy = _subscribe;
  progressCopy = progress;
  completionCopy = completion;
  v11 = _LTOSLogAssets(completionCopy, v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    language = [_subscribeCopy language];
    *buf = 138412290;
    v23 = language;
    _os_log_impl(&dword_232E53000, v12, OS_LOG_TYPE_DEFAULT, "Actually in subscribe for %@", buf, 0xCu);
  }

  if (_subscribeCopy)
  {
    v14 = MEMORY[0x277CDCEB8];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __54___LTDASRAssetService__subscribe_progress_completion___block_invoke;
    v20[3] = &unk_2789B5880;
    v21 = progressCopy;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __54___LTDASRAssetService__subscribe_progress_completion___block_invoke_2;
    v17[3] = &unk_2789B58A8;
    v18 = _subscribeCopy;
    v19 = completionCopy;
    [v14 fetchAssetWithConfig:v18 clientIdentifier:@"com.apple.translationd.asr" progress:v20 completion:v17];

    v15 = v21;
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Subscribe request with nil SFEntitledAssetConfig"];
    v16 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:7 description:v15 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v16);

    goto LABEL_7;
  }

LABEL_8:
}

+ (void)_unsubscribe:(id)_unsubscribe completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  _unsubscribeCopy = _unsubscribe;
  completionCopy = completion;
  v8 = completionCopy;
  if (_unsubscribeCopy)
  {
    v9 = _LTOSLogAssets(completionCopy, v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      language = [_unsubscribeCopy language];
      *buf = 138543362;
      v19 = language;
      _os_log_impl(&dword_232E53000, v10, OS_LOG_TYPE_DEFAULT, "ASR unsubscribe for %{public}@", buf, 0xCu);
    }

    v12 = MEMORY[0x277CDCEB8];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __47___LTDASRAssetService__unsubscribe_completion___block_invoke;
    v15[3] = &unk_2789B58D0;
    v16 = _unsubscribeCopy;
    v17 = v8;
    [v12 unsubscribeFromAssetWithConfig:v16 clientIdentifier:@"com.apple.translationd.asr" completion:v15];
  }

  else if (completionCopy)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Subscribe request with nil SFEntitledAssetConfig"];
    v14 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:7 description:v13 userInfo:0];
    (v8)[2](v8, v14);
  }
}

+ (void)_scheduleNextDownloadIfNeededWithCompletedDownloadEntry:(id)entry
{
  v83 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  v6 = _LTOSLogAssets(entryCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_DEFAULT, "ASR Asset downloads finished download", buf, 2u);
  }

  os_unfair_lock_lock(&_downloadThrottlingLock);
  if (entryCopy)
  {
    asset = [entryCopy asset];
    progress = [asset progress];
    offlineState = [progress offlineState];

    if (offlineState == 2)
    {
      duplicateEntries = [entryCopy duplicateEntries];
      v11 = [duplicateEntries count];

      if (v11)
      {
        v14 = _LTOSLogAssets(v12, v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v14;
          asset2 = [entryCopy asset];
          assetName = [asset2 assetName];
          *buf = 138412290;
          v79 = assetName;
          _os_log_impl(&dword_232E53000, v15, OS_LOG_TYPE_DEFAULT, "ASR Asset downloads successfully finished with deduped entries %@", buf, 0xCu);
        }

        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v73 = entryCopy;
        duplicateEntries2 = [entryCopy duplicateEntries];
        v19 = [duplicateEntries2 countByEnumeratingWithState:&v74 objects:v82 count:16];
        if (v19)
        {
          v21 = v19;
          v22 = *v75;
          do
          {
            v23 = 0;
            do
            {
              if (*v75 != v22)
              {
                objc_enumerationMutation(duplicateEntries2);
              }

              v24 = *(*(&v74 + 1) + 8 * v23);
              v25 = _LTOSLogAssets(v19, v20);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                v26 = v25;
                asset3 = [v24 asset];
                assetName2 = [asset3 assetName];
                *buf = 138412290;
                v79 = assetName2;
                _os_log_impl(&dword_232E53000, v26, OS_LOG_TYPE_DEFAULT, "ASR Asset downloads updating offlineStatus and calling completion on the duplicate entry assets %@", buf, 0xCu);
              }

              asset4 = [v24 asset];
              progress2 = [asset4 progress];
              [progress2 updatePercentComplete:1.0];

              asset5 = [v24 asset];
              progress3 = [asset5 progress];
              [progress3 setOfflineState:2];

              progress4 = [v24 progress];

              if (progress4)
              {
                progress5 = [v24 progress];
                asset6 = [v24 asset];
                (progress5)[2](progress5, asset6);
              }

              completion = [v24 completion];
              completion[2](completion, 0);

              ++v23;
            }

            while (v21 != v23);
            v19 = [duplicateEntries2 countByEnumeratingWithState:&v74 objects:v82 count:16];
            v21 = v19;
          }

          while (v19);
        }

        entryCopy = v73;
        duplicateEntries3 = [v73 duplicateEntries];
        [duplicateEntries3 removeAllObjects];

        self = v72;
      }
    }
  }

  duplicateEntries4 = [entryCopy duplicateEntries];
  v39 = [duplicateEntries4 count];

  if (v39)
  {
    v42 = _LTOSLogAssets(v40, v41);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = v42;
      asset7 = [entryCopy asset];
      assetName3 = [asset7 assetName];
      *buf = 138412290;
      v79 = assetName3;
      _os_log_impl(&dword_232E53000, v43, OS_LOG_TYPE_DEFAULT, "ASR Asset downloads re-enqueue same assets %@", buf, 0xCu);
    }

    duplicateEntries5 = [entryCopy duplicateEntries];
    firstObject = [duplicateEntries5 firstObject];

    duplicateEntries6 = [entryCopy duplicateEntries];
    [duplicateEntries6 removeObjectAtIndex:0];

    duplicateEntries7 = [entryCopy duplicateEntries];
    [firstObject setDuplicateEntries:duplicateEntries7];

    pendingDownloadSchedulingAssetsNameToEntry = [self pendingDownloadSchedulingAssetsNameToEntry];
    asset8 = [firstObject asset];
    assetName4 = [asset8 assetName];
    [pendingDownloadSchedulingAssetsNameToEntry setObject:firstObject forKey:assetName4];

    os_unfair_lock_unlock(&_downloadThrottlingLock);
    options = [firstObject options];
    progress6 = [firstObject progress];
    completion2 = [firstObject completion];
    [self _downloadAsset:firstObject options:options progress:progress6 completion:completion2];
  }

  else
  {
    pendingDownloadSchedulingAssetsNameToEntry2 = [self pendingDownloadSchedulingAssetsNameToEntry];
    asset9 = [entryCopy asset];
    assetName5 = [asset9 assetName];
    [pendingDownloadSchedulingAssetsNameToEntry2 removeObjectForKey:assetName5];

    v61 = _LTOSLogAssets(v59, v60);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      v62 = v61;
      asset10 = [entryCopy asset];
      assetName6 = [asset10 assetName];
      pendingDownloadSchedulingAssetsNameToEntry3 = [self pendingDownloadSchedulingAssetsNameToEntry];
      v66 = [pendingDownloadSchedulingAssetsNameToEntry3 count];
      *buf = 138412546;
      v79 = assetName6;
      v80 = 2048;
      v81 = v66;
      _os_log_impl(&dword_232E53000, v62, OS_LOG_TYPE_DEFAULT, "ASR Asset downloads finished downloading assets %@ pending assets count %lu", buf, 0x16u);
    }

    pendingDownloadSchedulingAssetsNameToEntry4 = [self pendingDownloadSchedulingAssetsNameToEntry];
    v68 = [pendingDownloadSchedulingAssetsNameToEntry4 count];

    [self updateDeferredUnsubscribeTimer];
    os_unfair_lock_unlock(&_downloadThrottlingLock);
    if (!v68)
    {
      v71 = _LTOSLogAssets(v69, v70);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_232E53000, v71, OS_LOG_TYPE_DEFAULT, "ASR Asset downloads completed all pending downloads", buf, 2u);
      }

      +[_LTDLanguageAssetService syncInstalledLocalesIfPowerAllows];
    }
  }
}

+ (void)_downloadAsset:(id)asset options:(unint64_t)options progress:(id)progress completion:(id)completion
{
  assetCopy = asset;
  progressCopy = progress;
  completionCopy = completion;
  asset = [assetCopy asset];
  if (!asset || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    asset = 0;
LABEL_6:
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"ASR asset service unsupported asset type"];
    v15 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:16 description:v14 userInfo:0];
    v17 = _LTOSLogAssets(v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [_LTDASRAssetService _downloadAsset:v17 options:? progress:? completion:?];
      if (!completionCopy)
      {
        goto LABEL_9;
      }
    }

    else if (!completionCopy)
    {
LABEL_9:
      [self _scheduleNextDownloadIfNeededWithCompletedDownloadEntry:assetCopy];

      goto LABEL_10;
    }

    completionCopy[2](completionCopy, v15);
    goto LABEL_9;
  }

  if ([asset managedAssetProvider] != 3)
  {
    goto LABEL_6;
  }

  provider = [asset provider];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __66___LTDASRAssetService__downloadAsset_options_progress_completion___block_invoke;
  v24[3] = &unk_2789B58F8;
  v25 = asset;
  v26 = progressCopy;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __66___LTDASRAssetService__downloadAsset_options_progress_completion___block_invoke_2;
  v18[3] = &unk_2789B5920;
  asset = v25;
  v19 = asset;
  v21 = v26;
  v20 = assetCopy;
  v22 = completionCopy;
  selfCopy = self;
  [self _subscribe:provider progress:v24 completion:v18];

  v14 = v25;
LABEL_10:
}

+ (void)downloadAsset:(id)asset options:(unint64_t)options progress:(id)progress completion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  completionCopy = completion;
  progressCopy = progress;
  os_unfair_lock_lock(&_downloadThrottlingLock);
  v13 = [[_LTDASRAssetModelDownloadEntry alloc] initWithAsset:assetCopy options:options progress:progressCopy completion:completionCopy];

  pendingDownloadSchedulingAssetsNameToEntry = [self pendingDownloadSchedulingAssetsNameToEntry];
  assetName = [assetCopy assetName];
  v16 = [pendingDownloadSchedulingAssetsNameToEntry objectForKeyedSubscript:assetName];

  if (v16)
  {
    v19 = _LTOSLogAssets(v17, v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      asset = [v16 asset];
      assetName2 = [asset assetName];
      v35 = 138412290;
      v36 = assetName2;
      _os_log_impl(&dword_232E53000, v20, OS_LOG_TYPE_DEFAULT, "ASR Asset downloads found existing same entry %@", &v35, 0xCu);
    }

    duplicateEntries = [v16 duplicateEntries];
    [duplicateEntries addObject:v13];

    os_unfair_lock_unlock(&_downloadThrottlingLock);
  }

  else
  {
    pendingDownloadSchedulingAssetsNameToEntry2 = [self pendingDownloadSchedulingAssetsNameToEntry];
    assetName3 = [assetCopy assetName];
    [pendingDownloadSchedulingAssetsNameToEntry2 setObject:v13 forKey:assetName3];

    v28 = _LTOSLogAssets(v26, v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v28;
      asset2 = [(_LTDASRAssetModelDownloadEntry *)v13 asset];
      assetName4 = [asset2 assetName];
      v35 = 138412290;
      v36 = assetName4;
      _os_log_impl(&dword_232E53000, v29, OS_LOG_TYPE_DEFAULT, "ASR Asset downloads downloads starting first download of %@", &v35, 0xCu);
    }

    [self cancelDeferredUnsubscribeTimer];
    os_unfair_lock_unlock(&_downloadThrottlingLock);
    options = [(_LTDASRAssetModelDownloadEntry *)v13 options];
    progress = [(_LTDASRAssetModelDownloadEntry *)v13 progress];
    completion = [(_LTDASRAssetModelDownloadEntry *)v13 completion];
    [self _downloadAsset:v13 options:options progress:progress completion:completion];
  }
}

+ (void)purgeAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  v8 = assetCopy;
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = v8;
    if ([v8 managedAssetProvider] == 3)
    {
      provider = [v8 provider];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __45___LTDASRAssetService_purgeAsset_completion___block_invoke;
      v15[3] = &unk_2789B58D0;
      v9 = v8;
      v16 = v9;
      v17 = completionCopy;
      [self _unsubscribe:provider completion:v15];

      v11 = v16;
      goto LABEL_9;
    }
  }

  else
  {

    v9 = 0;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"ASR asset service unsupported asset type"];
  v12 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:20 description:v11 userInfo:0];
  v14 = _LTOSLogAssets(v12, v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    +[_LTDASRAssetService purgeAsset:completion:];
  }

  (*(completionCopy + 2))(completionCopy, 0, v12);

LABEL_9:
}

+ (id)pathToSFAsset:(id)asset
{
  if (asset)
  {
    v4 = [MEMORY[0x277CDCEB8] pathToAssetWithConfig:asset clientIdentifier:@"com.apple.translationd.asr"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)updateDeferredUnsubscribeTimer
{
  cancelDeferredUnsubscribeTimer = [self cancelDeferredUnsubscribeTimer];
  v5 = _LTOSLogAssets(cancelDeferredUnsubscribeTimer, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[(_LTDASRAssetService *)v5];
  }

  queue = [self queue];
  v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);
  v8 = _deferredUnsubscribeTimer;
  _deferredUnsubscribeTimer = v7;

  v9 = _deferredUnsubscribeTimer;
  v10 = dispatch_time(0, 120000000000);
  dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __53___LTDASRAssetService_updateDeferredUnsubscribeTimer__block_invoke;
  handler[3] = &__block_descriptor_40_e5_v8__0l;
  handler[4] = self;
  dispatch_source_set_event_handler(_deferredUnsubscribeTimer, handler);
  dispatch_resume(_deferredUnsubscribeTimer);
}

+ (void)cancelDeferredUnsubscribeTimer
{
  if (_deferredUnsubscribeTimer)
  {
    dispatch_source_cancel(_deferredUnsubscribeTimer);
    v2 = _deferredUnsubscribeTimer;
    _deferredUnsubscribeTimer = 0;
  }
}

+ (void)deferredUnsubscribe
{
  v19 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&_subscriptionLock);
  _requiredAssets = [self _requiredAssets];
  v4 = [self _requiredSFConfigsForAssets:_requiredAssets];
  deferredUnsubscribeAssets = [self deferredUnsubscribeAssets];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [deferredUnsubscribeAssets allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v4 objectForKeyedSubscript:v11];

        if (!v12)
        {
          v13 = [deferredUnsubscribeAssets objectForKeyedSubscript:v11];
          [self _unsubscribe:v13 completion:0];
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [deferredUnsubscribeAssets removeAllObjects];
  [self cancelDeferredUnsubscribeTimer];
  os_unfair_lock_unlock(&_subscriptionLock);
}

+ (void)_downloadAsset:(void *)a1 options:progress:completion:.cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2() asset];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_232E53000, v4, v5, "ASR failed to download asset %{public}@: %@", v6, v7, v8, v9);
}

+ (void)purgeAsset:completion:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  v3 = v0;
  _os_log_error_impl(&dword_232E53000, v1, OS_LOG_TYPE_ERROR, "ASR failed to download asset %{public}@: %@", v2, 0x16u);
}

@end