@interface _LTDAssetService
+ (BOOL)_awaitDownloadForAsset:(id)asset;
+ (BOOL)preflightCheckForLocalePair:(id)pair withModelURLs:(id)ls;
+ (Class)_serviceProviderForAssetType:(id)type;
+ (id)_assetsIdentifiersForPairNames:(id)names error:(id *)error;
+ (id)_errorForAssetProviderResolutionForAssetType:(id)type;
+ (id)_libraryDirectory;
+ (id)_symlinkAssetsForLocalePair:(id)pair fromAssets:(id)assets;
+ (id)_symlinkPairNamesForLocales:(id)locales;
+ (id)_ttsAssetsForLocales:(id)locales;
+ (id)assetDirectoryURL;
+ (id)assetsForLocales:(id)locales includeTTS:(BOOL)s error:(id *)error;
+ (id)catalogAssetsWithError:(id *)error;
+ (id)configAssetIfAvailableWithError:(id *)error;
+ (id)defaultCatalogTypeWithError:(id *)error;
+ (id)filterAssets:(id)assets forLocales:(id)locales error:(id *)error;
+ (id)filterConfigAssetFromAssets:(id)assets;
+ (id)installedAssetsWithError:(id *)error;
+ (id)matchingASRAssetForLocale:(id)locale error:(id *)error;
+ (id)matchingASRAssetInAssets:(id)assets forLocale:(id)locale;
+ (id)queryAssetType:(id)type filter:(unint64_t)filter error:(id *)error;
+ (id)queue;
+ (unint64_t)_assetProviderForAssetType:(id)type;
+ (void)_addSyntheticASREntriesToAssets:(id)assets;
+ (void)_installConfigAsset:(id)asset completion:(id)completion;
+ (void)_refreshHotfixWithCompletion:(id)completion;
+ (void)assetsForLocales:(id)locales includeTTS:(BOOL)s completion:(id)completion;
+ (void)bootstrapWithCompletion:(id)completion;
+ (void)catalogAssetsWithCompletion:(id)completion;
+ (void)configAssetWithCompletion:(id)completion;
+ (void)downloadAsset:(id)asset options:(unint64_t)options progress:(id)progress completion:(id)completion;
+ (void)downloadAssets:(id)assets forLocales:(id)locales options:(unint64_t)options progress:(id)progress completion:(id)completion;
+ (void)downloadCatalogForAssetType:(id)type completion:(id)completion;
+ (void)installedAssetsWithCompletion:(id)completion;
+ (void)purgeAsset:(id)asset completion:(id)completion;
+ (void)queryAssetType:(id)type filter:(unint64_t)filter completion:(id)completion;
@end

@implementation _LTDAssetService

+ (id)queue
{
  if (queue_onceToken_0 != -1)
  {
    +[_LTDAssetService queue];
  }

  v3 = queue__queue_0;

  return v3;
}

+ (id)_errorForAssetProviderResolutionForAssetType:(id)type
{
  v9[1] = *MEMORY[0x277D85DE8];
  type = [MEMORY[0x277CCACA8] stringWithFormat:@"Asset service resolution failure for %@", type];
  v4 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA450];
  v9[0] = type;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v4 errorWithDomain:@"LTTranslationDaemonErrorDomain" code:7 userInfo:v5];

  return v6;
}

+ (unint64_t)_assetProviderForAssetType:(id)type
{
  typeCopy = type;
  if ([typeCopy hasPrefix:@"com.apple.MobileAsset.UAF.Translation.Assets"])
  {
    v4 = 2;
  }

  else if ([typeCopy hasPrefix:@"com.apple.MobileAsset.SpeechTranslationAssets"] & 1) != 0 || (objc_msgSend(typeCopy, "hasPrefix:", @"com.apple.MobileAsset.SpeechEndpointAssets") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", &stru_284834138))
  {
    v4 = 1;
  }

  else if ([typeCopy hasPrefix:@"com.apple.speech.automaticspeechrecognition"] & 1) != 0 || (objc_msgSend(typeCopy, "hasPrefix:", @"com.apple.MobileAsset.UAF.Speech.AutomaticSpeechRecognition") & 1) != 0 || (objc_msgSend(typeCopy, "hasPrefix:", @"com.apple.MobileAsset.UAF.Siri.Understanding"))
  {
    v4 = 3;
  }

  else
  {
    v6 = [typeCopy hasPrefix:@"com.apple.MobileAsset.Trial.Siri.SiriTextToSpeech"];
    if (v6)
    {
      v4 = 4;
    }

    else
    {
      v8 = _LTOSLogAssets(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        +[_LTDAssetService _assetProviderForAssetType:];
      }

      v4 = 0;
    }
  }

  return v4;
}

+ (Class)_serviceProviderForAssetType:(id)type
{
  typeCopy = type;
  if (_assetProviderFixture)
  {
    v5 = _assetProviderFixture;
LABEL_13:
    v9 = v5;
    goto LABEL_14;
  }

  v6 = [self _assetProviderForAssetType:typeCopy];
  if (v6 > 2)
  {
    if (v6 == 3 || v6 == 4)
    {
      goto LABEL_12;
    }
  }

  else if (v6 == 1 || v6 == 2)
  {
LABEL_12:
    v5 = objc_opt_class();
    goto LABEL_13;
  }

  v8 = _LTOSLogAssets(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    +[_LTDAssetService _serviceProviderForAssetType:];
  }

  v9 = 0;
LABEL_14:

  return v9;
}

+ (void)downloadCatalogForAssetType:(id)type completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  v7 = [self _serviceProviderForAssetType:typeCopy];
  if (v7)
  {
    [v7 downloadCatalogForAssetType:typeCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    v8 = [self _errorForAssetProviderResolutionForAssetType:typeCopy];
    completionCopy[2](completionCopy, 0, v8);
  }
}

+ (void)_addSyntheticASREntriesToAssets:(id)assets
{
  v39 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  v36 = 0;
  v24 = [_LTDAssetService queryAssetType:@"com.apple.speech.automaticspeechrecognition" filter:0 error:&v36];
  v4 = v36;
  if (!v4)
  {
LABEL_5:
    v22 = v4;
    v23 = assetsCopy;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = assetsCopy;
    v9 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v33;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v33 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v32 + 1) + 8 * i);
          if ([v13 assetType] == 2)
          {
            identifier = [v13 identifier];
            v30[0] = MEMORY[0x277D85DD0];
            v30[1] = 3221225472;
            v30[2] = __52___LTDAssetService__addSyntheticASREntriesToAssets___block_invoke;
            v30[3] = &unk_2789B5AA8;
            v15 = identifier;
            v31 = v15;
            v16 = [v24 lt_firstObjectPassingTest:v30];
            v26 = 0u;
            v27 = 0u;
            v28 = 0u;
            v29 = 0u;
            components = [v16 components];
            v18 = [components countByEnumeratingWithState:&v26 objects:v37 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v27;
              do
              {
                for (j = 0; j != v19; ++j)
                {
                  if (*v27 != v20)
                  {
                    objc_enumerationMutation(components);
                  }

                  [v13 addComponentAsset:*(*(&v26 + 1) + 8 * j)];
                }

                v19 = [components countByEnumeratingWithState:&v26 objects:v37 count:16];
              }

              while (v19);
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v10);
    }

    v4 = v22;
    assetsCopy = v23;
    goto LABEL_24;
  }

  v5 = [v24 count];
  v7 = _LTOSLogAssets(v5, v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (v8)
    {
      +[_LTDAssetService _addSyntheticASREntriesToAssets:];
    }

    goto LABEL_5;
  }

  if (v8)
  {
    +[_LTDAssetService _addSyntheticASREntriesToAssets:];
  }

LABEL_24:
}

+ (void)queryAssetType:(id)type filter:(unint64_t)filter completion:(id)completion
{
  typeCopy = type;
  completionCopy = completion;
  v10 = [self _serviceProviderForAssetType:typeCopy];
  if (v10)
  {
    v11 = v10;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __53___LTDAssetService_queryAssetType_filter_completion___block_invoke;
    v13[3] = &unk_2789B5AD0;
    v15 = completionCopy;
    selfCopy = self;
    v14 = typeCopy;
    [v11 queryAssetType:v14 filter:filter completion:v13];
  }

  else if (completionCopy)
  {
    v12 = [self _errorForAssetProviderResolutionForAssetType:typeCopy];
    (*(completionCopy + 2))(completionCopy, 0, v12);
  }
}

+ (void)downloadAsset:(id)asset options:(unint64_t)options progress:(id)progress completion:(id)completion
{
  v49 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  progressCopy = progress;
  completionCopy = completion;
  v29 = assetCopy;
  if ([assetCopy isInstalled])
  {
    if (progressCopy)
    {
      progressCopy[2](progressCopy, assetCopy);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    v26 = completionCopy;
    if ([assetCopy isAvailable])
    {
      progress = [assetCopy progress];
      [progress setOfflineState:1];

      if (progressCopy)
      {
        progressCopy[2](progressCopy, assetCopy);
      }
    }

    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x3032000000;
    v44[3] = __Block_byref_object_copy__4;
    v44[4] = __Block_byref_object_dispose__4;
    v45 = 0;
    v12 = dispatch_group_create();
    v14 = _LTOSLogAssets(v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [assetCopy identifier];
      *buf = 138543362;
      v48 = identifier;
      _os_log_impl(&dword_232E53000, v14, OS_LOG_TYPE_DEFAULT, "Download of asset required: %{public}@", buf, 0xCu);
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    components = [assetCopy components];
    v17 = [components countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v17)
    {
      v18 = *v41;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v41 != v18)
          {
            objc_enumerationMutation(components);
          }

          v20 = *(*(&v40 + 1) + 8 * i);
          if ([v20 isInstalled])
          {
            progress2 = [v20 progress];
            [progress2 setOfflineState:2];

            if (progressCopy)
            {
              progressCopy[2](progressCopy, v29);
            }
          }

          else
          {
            if (progressCopy)
            {
              progressCopy[2](progressCopy, v29);
            }

            dispatch_group_enter(v12);
            managedAssetType = [v20 managedAssetType];
            v23 = [self _serviceProviderForAssetType:managedAssetType];

            v24 = MEMORY[0x277D85DD0];
            v37[0] = MEMORY[0x277D85DD0];
            v37[1] = 3221225472;
            v37[2] = __62___LTDAssetService_downloadAsset_options_progress_completion___block_invoke;
            v37[3] = &unk_2789B5AF8;
            v39 = progressCopy;
            v38 = v29;
            v34[0] = v24;
            v34[1] = 3221225472;
            v34[2] = __62___LTDAssetService_downloadAsset_options_progress_completion___block_invoke_2;
            v34[3] = &unk_2789B5B20;
            v34[4] = v20;
            v36 = v44;
            v35 = v12;
            [v23 downloadAsset:v20 options:options progress:v37 completion:v34];
          }
        }

        v17 = [components countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v17);
    }

    queue = [self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62___LTDAssetService_downloadAsset_options_progress_completion___block_invoke_299;
    block[3] = &unk_2789B5B48;
    v31 = v29;
    v33 = v44;
    v32 = v26;
    dispatch_group_notify(v12, queue, block);

    _Block_object_dispose(v44, 8);
    completionCopy = v26;
  }
}

+ (BOOL)_awaitDownloadForAsset:(id)asset
{
  if (![asset isTTSModel])
  {
    return 1;
  }

  return [self _awaitDownloadOfTTSAssets];
}

+ (void)downloadAssets:(id)assets forLocales:(id)locales options:(unint64_t)options progress:(id)progress completion:(id)completion
{
  v98 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  localesCopy = locales;
  progressCopy = progress;
  completionCopy = completion;
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v14 = [uUIDString componentsSeparatedByString:@"-"];
  lastObject = [v14 lastObject];

  v17 = _LTOSLogAssets(v15, v16);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    v20 = v17;
    *buf = 138543618;
    *&buf[4] = lastObject;
    *&buf[12] = 2048;
    *&buf[14] = [assetsCopy count];
    _os_log_impl(&dword_232E53000, v20, OS_LOG_TYPE_DEFAULT, "Download %{public}@ start for %zd assets", buf, 0x16u);
  }

  v21 = _LTOSLogAssets(v18, v19);
  spid = os_signpost_id_generate(v21);
  v23 = _LTOSLogAssets(spid, v22);
  v24 = v23;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    v25 = lastObject;
    uTF8String = [lastObject UTF8String];
    *buf = 136315138;
    *&buf[4] = uTF8String;
    _os_signpost_emit_with_name_impl(&dword_232E53000, v24, OS_SIGNPOST_INTERVAL_BEGIN, spid, "downloadAssets", "%s", buf, 0xCu);
  }

  group = dispatch_group_create();
  v27 = [assetsCopy lt_hasObjectPassingTest:&__block_literal_global_308];
  v29 = v27;
  if ((v27 & 1) == 0)
  {
    v30 = _LTOSLogAssets(v27, v28);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = lastObject;
      _os_log_impl(&dword_232E53000, v30, OS_LOG_TYPE_DEFAULT, "Download %{public}@ no missing assets detected", buf, 0xCu);
    }

    dispatch_group_enter(group);
    queue = [self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74___LTDAssetService_downloadAssets_forLocales_options_progress_completion___block_invoke_309;
    block[3] = &unk_2789B5B70;
    v85 = group;
    dispatch_async(queue, block);
  }

  v32 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v95 = __Block_byref_object_copy__4;
  v96 = __Block_byref_object_dispose__4;
  v97 = 0;
  while (1)
  {
    v33 = v32 < [assetsCopy count] ? v29 : 0;
    if ((v33 & 1) == 0)
    {
      break;
    }

    v34 = [assetsCopy objectAtIndexedSubscript:v32];
    v36 = _LTOSLogAssets(v34, v35);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = [assetsCopy count];
      identifier = [v34 identifier];
      *v86 = 138544130;
      v87 = lastObject;
      v88 = 2048;
      v89 = v32 + 1;
      v90 = 2048;
      v91 = v37;
      v92 = 2114;
      v93 = identifier;
      _os_log_impl(&dword_232E53000, v36, OS_LOG_TYPE_INFO, "Download %{public}@ start item %zd / %zd: %{public}@", v86, 0x2Au);
    }

    v39 = [self _awaitDownloadForAsset:v34];
    v40 = v39;
    if (v39)
    {
      dispatch_group_enter(group);
    }

    queue2 = [self queue];
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __74___LTDAssetService_downloadAssets_forLocales_options_progress_completion___block_invoke_310;
    v73[3] = &unk_2789B5BC0;
    v83 = v40;
    optionsCopy = options;
    selfCopy = self;
    v74 = v34;
    v78 = progressCopy;
    v75 = lastObject;
    v82 = v32;
    v76 = assetsCopy;
    v79 = buf;
    v77 = group;
    v42 = v34;
    dispatch_async(queue2, v73);

    ++v32;
  }

  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __74___LTDAssetService_downloadAssets_forLocales_options_progress_completion___block_invoke_311;
  v65[3] = &unk_2789B5BE8;
  selfCopy2 = self;
  v43 = localesCopy;
  v66 = v43;
  v44 = assetsCopy;
  v67 = v44;
  v72 = v29 ^ 1;
  v45 = lastObject;
  v68 = v45;
  v46 = completionCopy;
  v69 = v46;
  v70 = buf;
  v47 = MEMORY[0x238398770](v65);
  queue3 = [self queue];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __74___LTDAssetService_downloadAssets_forLocales_options_progress_completion___block_invoke_317;
  v59[3] = &unk_2789B5C10;
  v60 = v45;
  v61 = v44;
  v63 = spid;
  selfCopy3 = self;
  v62 = v47;
  v49 = v47;
  v50 = v44;
  v51 = v45;
  dispatch_group_notify(group, queue3, v59);

  _Block_object_dispose(buf, 8);
}

+ (id)_symlinkPairNamesForLocales:(id)locales
{
  localesCopy = locales;
  v5 = +[_LTDLanguageAssetService selectedLocales];
  v6 = [v5 count];
  if (v6)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __48___LTDAssetService__symlinkPairNamesForLocales___block_invoke;
    v11[3] = &unk_2789B5C38;
    v3 = &v12;
    v12 = v5;
    v7 = [localesCopy lt_filterUsingBlock:v11];
  }

  else
  {
    v7 = localesCopy;
  }

  v8 = [MEMORY[0x277CE1B38] pairNamesForLocales:v7];
  v9 = [v8 _ltCompactMap:&__block_literal_global_323];

  if (v6)
  {
  }

  return v9;
}

+ (id)_symlinkAssetsForLocalePair:(id)pair fromAssets:(id)assets
{
  v32[2] = *MEMORY[0x277D85DE8];
  pairCopy = pair;
  assetsCopy = assets;
  sourceLocale = [pairCopy sourceLocale];
  v32[0] = sourceLocale;
  targetLocale = [pairCopy targetLocale];
  v32[1] = targetLocale;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  v30 = 0;
  v11 = [self filterAssets:assetsCopy forLocales:v10 error:&v30];
  v12 = v30;

  if (v12)
  {
    v15 = _LTOSLogAssets(v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[_LTDAssetService _symlinkAssetsForLocalePair:fromAssets:];
    }

    v16 = 0;
  }

  else
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__4;
    v28 = __Block_byref_object_dispose__4;
    v29 = 0;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __59___LTDAssetService__symlinkAssetsForLocalePair_fromAssets___block_invoke;
    v23[3] = &unk_2789B5C80;
    v23[4] = &v24;
    v17 = [v11 lt_filterUsingBlock:v23];
    v19 = v17;
    if (v25[5])
    {
      v20 = _LTOSLogAssets(v17, v18);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        assetName = [v25[5] assetName];
        [(_LTDAssetService *)assetName _symlinkAssetsForLocalePair:buf fromAssets:v20];
      }

      v16 = 0;
    }

    else
    {
      v16 = v17;
    }

    _Block_object_dispose(&v24, 8);
  }

  return v16;
}

+ (void)purgeAsset:(id)asset completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  completionCopy = completion;
  if (([assetCopy isAvailable] & 1) == 0)
  {
    progress = [assetCopy progress];
    [progress setOfflineState:0];
  }

  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__4;
  v32[4] = __Block_byref_object_dispose__4;
  v33 = 0;
  v8 = dispatch_group_create();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v19 = assetCopy;
  components = [assetCopy components];
  v10 = [components countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v10)
  {
    v11 = *v29;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(components);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        managedAssetType = [v13 managedAssetType];
        v15 = [self _serviceProviderForAssetType:managedAssetType];

        if (!v15)
        {
          if (completionCopy)
          {
            managedAssetType2 = [v13 managedAssetType];
            v18 = [self _errorForAssetProviderResolutionForAssetType:managedAssetType2];

            completionCopy[2](completionCopy, 0, v18);
          }

          goto LABEL_14;
        }

        dispatch_group_enter(v8);
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __42___LTDAssetService_purgeAsset_completion___block_invoke;
        v25[3] = &unk_2789B5CA8;
        v27 = v32;
        v26 = v8;
        [v15 purgeAsset:v13 completion:v25];
      }

      v10 = [components countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  queue = [self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42___LTDAssetService_purgeAsset_completion___block_invoke_2;
  block[3] = &unk_2789B5CD0;
  v23 = completionCopy;
  v24 = v32;
  v22 = v19;
  dispatch_group_notify(v8, queue, block);

  components = v23;
LABEL_14:

  _Block_object_dispose(v32, 8);
}

+ (void)bootstrapWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44___LTDAssetService_bootstrapWithCompletion___block_invoke;
  v6[3] = &unk_2789B5CF8;
  v7 = completionCopy;
  v5 = completionCopy;
  [self _refreshHotfixWithCompletion:v6];
}

+ (id)_libraryDirectory
{
  v2 = getuid();
  v3 = getpwuid(v2);
  if (v3 && (pw_dir = v3->pw_dir) != 0)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithCString:pw_dir encoding:4];
    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];
    v8 = [v7 URLByAppendingPathComponent:@"Library" isDirectory:1];
  }

  else
  {
    v9 = _LTOSLogAssets(v3, v4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[(_LTDAssetService *)v9];
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v15 = 0;
    v8 = [defaultManager URLForDirectory:5 inDomain:1 appropriateForURL:0 create:0 error:&v15];
    v6 = v15;

    if (v6)
    {
      v13 = _LTOSLogAssets(v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        +[_LTDAssetService _libraryDirectory];
      }
    }
  }

  return v8;
}

+ (id)assetDirectoryURL
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37___LTDAssetService_assetDirectoryURL__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (assetDirectoryURL_onceToken != -1)
  {
    dispatch_once(&assetDirectoryURL_onceToken, block);
  }

  v2 = assetDirectoryURL__assetDirectoryURL;

  return v2;
}

+ (id)defaultCatalogTypeWithError:(id *)error
{
  v12 = 0;
  v4 = [_LTDConfigurationService assetConfigurationWithError:&v12];
  v5 = v12;
  v7 = v5;
  if (v5)
  {
    v8 = _LTOSLogAssets(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[_LTDAssetService defaultCatalogTypeWithError:];
      if (error)
      {
        goto LABEL_4;
      }
    }

    else if (error)
    {
LABEL_4:
      v9 = v7;
      currentSpeechTranslationAssetType = 0;
      *error = v7;
      goto LABEL_8;
    }

    currentSpeechTranslationAssetType = 0;
  }

  else
  {
    currentSpeechTranslationAssetType = [v4 currentSpeechTranslationAssetType];
  }

LABEL_8:

  return currentSpeechTranslationAssetType;
}

+ (void)_refreshHotfixWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _LTOSLogAssets(completionCopy, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v5, OS_LOG_TYPE_INFO, "Trying to refresh hotfix asset", buf, 2u);
  }

  v6 = +[_LTHotfixManager shared];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49___LTDAssetService__refreshHotfixWithCompletion___block_invoke;
  v8[3] = &unk_2789B5D20;
  v9 = completionCopy;
  v7 = completionCopy;
  [v6 refreshHotfix:v8];
}

+ (void)configAssetWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = _LTOSLogAssets(completionCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_INFO, "Trying to download config asset", buf, 2u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46___LTDAssetService_configAssetWithCompletion___block_invoke;
  v8[3] = &unk_2789B5D70;
  v9 = completionCopy;
  selfCopy = self;
  v7 = completionCopy;
  [self catalogAssetsWithCompletion:v8];
}

+ (id)configAssetIfAvailableWithError:(id *)error
{
  v22 = 0;
  v5 = [self catalogAssetsWithError:&v22];
  v6 = v22;
  if (!v6)
  {
    v12 = [_LTDAssetService filterConfigAssetFromAssets:v5];
    v13 = v12;
    if (v12)
    {
      if ([v12 isInstalled])
      {
        v11 = v13;
        v8 = 0;
LABEL_21:

        goto LABEL_22;
      }

      [self _installConfigAsset:v13 completion:0];
      v8 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:8 description:@"Not installed" userInfo:0];
      v19 = _LTOSLogAssets(v8, v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        +[_LTDAssetService configAssetIfAvailableWithError:];
        if (error)
        {
          goto LABEL_14;
        }
      }

      else if (error)
      {
LABEL_14:
        v20 = v8;
        v11 = 0;
        *error = v8;
        goto LABEL_21;
      }

LABEL_20:
      v11 = 0;
      goto LABEL_21;
    }

    v14 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:7 description:@"No config asset in result from sync catalog request" userInfo:0];
    v16 = _LTOSLogAssets(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __46___LTDAssetService_configAssetWithCompletion___block_invoke_cold_2();
      if (!error)
      {
        goto LABEL_11;
      }
    }

    else if (!error)
    {
LABEL_11:

      v8 = 0;
      goto LABEL_20;
    }

    v17 = v14;
    *error = v14;
    goto LABEL_11;
  }

  v8 = v6;
  v9 = _LTOSLogAssets(v6, v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    +[_LTDAssetService configAssetIfAvailableWithError:];
    if (error)
    {
      goto LABEL_4;
    }
  }

  else if (error)
  {
LABEL_4:
    v10 = v8;
    v11 = 0;
    *error = v8;
    goto LABEL_22;
  }

  v11 = 0;
LABEL_22:

  return v11;
}

+ (void)_installConfigAsset:(id)asset completion:(id)completion
{
  assetCopy = asset;
  completionCopy = completion;
  isInstalled = [assetCopy isInstalled];
  if ((isInstalled & 1) != 0 || (isInstalled = [assetCopy isDownloading], isInstalled))
  {
    v10 = _LTOSLogAssets(isInstalled, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [_LTDAssetService _installConfigAsset:v10 completion:?];
      if (!completionCopy)
      {
        goto LABEL_9;
      }

      goto LABEL_5;
    }

    if (completionCopy)
    {
LABEL_5:
      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }

  else
  {
    v11 = _LTOSLogAssets(isInstalled, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [_LTDAssetService _installConfigAsset:v11 completion:assetCopy];
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __51___LTDAssetService__installConfigAsset_completion___block_invoke;
    v12[3] = &unk_2789B5D98;
    v14 = completionCopy;
    v13 = assetCopy;
    [self downloadAsset:v13 options:2 progress:0 completion:v12];
  }

LABEL_9:
}

+ (void)catalogAssetsWithCompletion:(id)completion
{
  completionCopy = completion;
  v9 = 0;
  v5 = [self defaultCatalogTypeWithError:&v9];
  v6 = v9;
  if (v6)
  {
    completionCopy[2](completionCopy, 0, v6);
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48___LTDAssetService_catalogAssetsWithCompletion___block_invoke;
    v7[3] = &unk_2789B5DC0;
    v8 = completionCopy;
    [self queryAssetType:v5 filter:1 completion:v7];
  }
}

+ (id)catalogAssetsWithError:(id *)error
{
  v15 = 0;
  v5 = [self defaultCatalogTypeWithError:&v15];
  v6 = v15;
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    if (!error)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v14 = 0;
  v8 = [self queryAssetType:v5 filter:1 error:&v14];
  v9 = v14;
  v7 = v9;
  if (!v9 || (v11 = _LTOSLogAssets(v9, v10), !os_log_type_enabled(v11, OS_LOG_TYPE_ERROR)))
  {
    if (!error)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  +[_LTDAssetService catalogAssetsWithError:];
  if (error)
  {
LABEL_7:
    v12 = v7;
    *error = v7;
  }

LABEL_8:

  return v8;
}

+ (void)installedAssetsWithCompletion:(id)completion
{
  completionCopy = completion;
  v9 = 0;
  v5 = [self defaultCatalogTypeWithError:&v9];
  v6 = v9;
  if (v6)
  {
    completionCopy[2](completionCopy, 0, v6);
  }

  else
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50___LTDAssetService_installedAssetsWithCompletion___block_invoke;
    v7[3] = &unk_2789B5DC0;
    v8 = completionCopy;
    [self queryAssetType:v5 filter:2 completion:v7];
  }
}

+ (id)installedAssetsWithError:(id *)error
{
  v15 = 0;
  v5 = [self defaultCatalogTypeWithError:&v15];
  v6 = v15;
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    if (!error)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v14 = 0;
  v8 = [self queryAssetType:v5 filter:2 error:&v14];
  v9 = v14;
  v7 = v9;
  if (!v9 || (v11 = _LTOSLogAssets(v9, v10), !os_log_type_enabled(v11, OS_LOG_TYPE_ERROR)))
  {
    if (!error)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  +[_LTDAssetService installedAssetsWithError:];
  if (error)
  {
LABEL_7:
    v12 = v7;
    *error = v7;
  }

LABEL_8:

  return v8;
}

+ (id)queryAssetType:(id)type filter:(unint64_t)filter error:(id *)error
{
  typeCopy = type;
  v17 = 0;
  v9 = [objc_msgSend(self _serviceProviderForAssetType:{typeCopy), "queryAssetType:filter:error:", typeCopy, filter, &v17}];
  v10 = v17;
  v12 = v10;
  if (v10)
  {
    v13 = _LTOSLogAssets(v10, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[_LTDAssetService queryAssetType:filter:error:];
      if (error)
      {
        goto LABEL_4;
      }
    }

    else if (error)
    {
LABEL_4:
      v14 = v12;
      v15 = 0;
      *error = v12;
      goto LABEL_10;
    }

    v15 = 0;
  }

  else
  {
    if ([self _assetProviderForAssetType:typeCopy] == 2)
    {
      [self _addSyntheticASREntriesToAssets:v9];
    }

    v15 = [self _assetsSortedByVersion:v9];
  }

LABEL_10:

  return v15;
}

+ (id)filterConfigAssetFromAssets:(id)assets
{
  v4 = [assets lt_filterUsingBlock:&__block_literal_global_349];
  if ([v4 count] > 1)
  {
    v6 = [self _assetsSortedByVersion:v4];
    firstObject = [v6 firstObject];
  }

  else
  {
    firstObject = [v4 firstObject];
  }

  return firstObject;
}

+ (id)_assetsIdentifiersForPairNames:(id)names error:(id *)error
{
  v58 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  v6 = [MEMORY[0x277CBEB58] set];
  v51 = 0;
  v38 = [_LTDConfigurationService offlineConfigurationWithError:&v51];
  v7 = v51;
  if (!v7)
  {
    v50 = 0;
    v13 = [_LTDConfigurationService asrConfigurationWithError:&v50];
    v14 = v50;
    v9 = v14;
    if (!v14)
    {
      v35 = namesCopy;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      obj = namesCopy;
      v39 = [obj countByEnumeratingWithState:&v46 objects:v57 count:16];
      if (v39)
      {
        v37 = *v47;
        do
        {
          v18 = 0;
          do
          {
            if (*v47 != v37)
            {
              objc_enumerationMutation(obj);
            }

            v40 = *(*(&v46 + 1) + 8 * v18);
            v41 = v18;
            v19 = [v40 componentsSeparatedByString:@"-"];
            v42 = 0u;
            v43 = 0u;
            v44 = 0u;
            v45 = 0u;
            v20 = [v19 countByEnumeratingWithState:&v42 objects:v56 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v43;
              do
              {
                for (i = 0; i != v21; ++i)
                {
                  if (*v43 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  v24 = *(*(&v42 + 1) + 8 * i);
                  localeIdentifiers = [v13 localeIdentifiers];
                  v26 = [localeIdentifiers containsObject:v24];

                  if (v26)
                  {
                    v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"ASR-%@", v24];
                    [v6 addObject:v27];
                  }

                  v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"TTS-%@", v24];
                  [v6 addObject:v28];
                }

                v21 = [v19 countByEnumeratingWithState:&v42 objects:v56 count:16];
              }

              while (v21);
            }

            v29 = [v38 offlinePairConfigurationWithIdentifier:v40];
            pairAssetList = [v29 pairAssetList];
            v32 = _LTOSLogAssets(pairAssetList, v31);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543618;
              v53 = pairAssetList;
              v54 = 2114;
              v55 = v40;
              _os_log_debug_impl(&dword_232E53000, v32, OS_LOG_TYPE_DEBUG, "Adding assets [%{public}@] for pair %{public}@", buf, 0x16u);
            }

            [v6 addObjectsFromArray:pairAssetList];

            v18 = v41 + 1;
          }

          while (v41 + 1 != v39);
          v39 = [obj countByEnumeratingWithState:&v46 objects:v57 count:16];
        }

        while (v39);
      }

      allObjects = [v6 allObjects];
      v12 = [allObjects sortedArrayUsingSelector:sel_compare_];

      v9 = 0;
      namesCopy = v35;
      goto LABEL_32;
    }

    v16 = _LTOSLogAssets(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[_LTDAssetService _assetsIdentifiersForPairNames:error:];
      if (error)
      {
        goto LABEL_8;
      }
    }

    else if (error)
    {
LABEL_8:
      v17 = v9;
      v12 = 0;
      *error = v9;
LABEL_32:

      goto LABEL_33;
    }

    v12 = 0;
    goto LABEL_32;
  }

  v9 = v7;
  v10 = _LTOSLogAssets(v7, v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    +[_LTDAssetService _assetsIdentifiersForPairNames:error:];
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
    goto LABEL_33;
  }

  v12 = 0;
LABEL_33:

  return v12;
}

+ (id)assetsForLocales:(id)locales includeTTS:(BOOL)s error:(id *)error
{
  sCopy = s;
  localesCopy = locales;
  v20 = 0;
  v9 = [self catalogAssetsWithError:&v20];
  v10 = v20;
  if (v10)
  {
    v12 = v10;
    v13 = _LTOSLogAssets(v10, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[_LTDAssetService assetsForLocales:includeTTS:error:];
      if (error)
      {
        goto LABEL_4;
      }
    }

    else if (error)
    {
LABEL_4:
      v14 = v12;
      v15 = 0;
      *error = v12;
      goto LABEL_10;
    }

    v15 = 0;
  }

  else
  {
    if (sCopy)
    {
      v16 = [self _ttsAssetsForLocales:localesCopy];
      v17 = [v9 arrayByAddingObjectsFromArray:v16];

      v9 = v17;
    }

    v19 = 0;
    v15 = [self filterAssets:v9 forLocales:localesCopy error:&v19];
    v12 = v19;
  }

LABEL_10:

  return v15;
}

+ (void)assetsForLocales:(id)locales includeTTS:(BOOL)s completion:(id)completion
{
  localesCopy = locales;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59___LTDAssetService_assetsForLocales_includeTTS_completion___block_invoke;
  v12[3] = &unk_2789B5E10;
  sCopy = s;
  v14 = completionCopy;
  selfCopy = self;
  v13 = localesCopy;
  v10 = localesCopy;
  v11 = completionCopy;
  [self catalogAssetsWithCompletion:v12];
}

+ (id)_ttsAssetsForLocales:(id)locales
{
  v21 = *MEMORY[0x277D85DE8];
  localesCopy = locales;
  v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(localesCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = localesCopy;
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = MEMORY[0x277CCACA8];
        _ltLocaleIdentifier = [*(*(&v16 + 1) + 8 * i) _ltLocaleIdentifier];
        v10 = [v8 stringWithFormat:@"TTS-%@", _ltLocaleIdentifier];

        v11 = [[_LTDTTSAssetModel alloc] initWithAssetIdentifier:v10];
        v12 = [[_LTDAssetModel alloc] initWithProvider:v11];
        if (v12)
        {
          [v15 addObject:v12];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  return v15;
}

+ (id)filterAssets:(id)assets forLocales:(id)locales error:(id *)error
{
  v61 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  localesCopy = locales;
  v9 = objc_opt_new();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v10 = assetsCopy;
  v11 = [v10 countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v54;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v54 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v53 + 1) + 8 * i);
        identifier = [v15 identifier];
        [v9 setObject:v15 forKeyedSubscript:identifier];
      }

      v12 = [v10 countByEnumeratingWithState:&v53 objects:v60 count:16];
    }

    while (v12);
  }

  v17 = localesCopy;
  v18 = [MEMORY[0x277CE1B38] pairNamesForLocales:localesCopy];
  v52 = 0;
  v19 = [self _assetsIdentifiersForPairNames:v18 error:&v52];
  v20 = v52;
  v22 = _LTOSLogAssets(v20, v21);
  v23 = v22;
  if (v20)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      +[_LTDAssetService filterAssets:forLocales:error:];
      if (!error)
      {
        goto LABEL_12;
      }
    }

    else if (!error)
    {
LABEL_12:
      allValues = MEMORY[0x277CBEBF8];
      goto LABEL_35;
    }

    v24 = v20;
    *error = v20;
    goto LABEL_12;
  }

  v43 = v18;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v59 = v19;
    _os_log_impl(&dword_232E53000, v23, OS_LOG_TYPE_INFO, "Required Assets: %{public}@", buf, 0xCu);
  }

  v26 = +[_LTDANEService capability];
  v47 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v19, "count")}];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v42 = v19;
  v27 = v19;
  v28 = [v27 countByEnumeratingWithState:&v48 objects:v57 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v49;
    v45 = v26;
    do
    {
      v31 = 0;
      do
      {
        if (*v49 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v48 + 1) + 8 * v31);
        v33 = [v9 objectForKeyedSubscript:v32];
        v34 = v33;
        if (v33)
        {
          assetType = [v33 assetType];
          if (assetType <= 0xB)
          {
            if (((1 << assetType) & 0xC1C) != 0)
            {
              goto LABEL_23;
            }

            if (((1 << assetType) & 0x300) != 0)
            {
              if ([v34 isANEModel])
              {
                requiredCapabilityIdentifier = [v34 requiredCapabilityIdentifier];
                if (v26 >= requiredCapabilityIdentifier)
                {
                  v37 = requiredCapabilityIdentifier;
                  v38 = [v47 objectForKeyedSubscript:v32];
                  requiredCapabilityIdentifier2 = [v38 requiredCapabilityIdentifier];

                  v26 = v45;
                  if (v37 > requiredCapabilityIdentifier2)
                  {
LABEL_23:
                    [v47 setObject:v34 forKeyedSubscript:v32];
                  }
                }
              }

              else
              {
                v39 = [v47 objectForKeyedSubscript:v32];

                if (!v39)
                {
                  goto LABEL_23;
                }
              }
            }
          }
        }

        ++v31;
      }

      while (v29 != v31);
      v40 = [v27 countByEnumeratingWithState:&v48 objects:v57 count:16];
      v29 = v40;
    }

    while (v40);
  }

  allValues = [v47 allValues];

  v18 = v43;
  v17 = localesCopy;
  v20 = 0;
  v19 = v42;
LABEL_35:

  return allValues;
}

+ (id)matchingASRAssetForLocale:(id)locale error:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  v17[0] = localeCopy;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v16 = 0;
  v8 = [self assetsForLocales:v7 includeTTS:1 error:&v16];
  v9 = v16;

  if (v9)
  {
    v12 = _LTOSLogAssets(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[_LTDAssetService matchingASRAssetForLocale:error:];
      if (error)
      {
        goto LABEL_4;
      }
    }

    else if (error)
    {
LABEL_4:
      v13 = v9;
      v14 = 0;
      *error = v9;
      goto LABEL_8;
    }

    v14 = 0;
  }

  else
  {
    v14 = [self matchingASRAssetInAssets:v8 forLocale:localeCopy];
  }

LABEL_8:

  return v14;
}

+ (id)matchingASRAssetInAssets:(id)assets forLocale:(id)locale
{
  v29 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  localeCopy = locale;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = assetsCopy;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if ([v12 isASRModel])
        {
          v13 = [v12 supportsLocale:localeCopy];
          if (v13)
          {
            v16 = _LTOSLogAssets(v13, v14);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = v16;
              localeIdentifier = [localeCopy localeIdentifier];
              *buf = 138412546;
              v25 = v12;
              v26 = 2114;
              v27 = localeIdentifier;
              _os_log_impl(&dword_232E53000, v17, OS_LOG_TYPE_DEFAULT, "Found matching ASR asset: %@ in assets for locale: %{public}@", buf, 0x16u);
            }

            v15 = v12;
            goto LABEL_14;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_14:

  return v15;
}

+ (BOOL)preflightCheckForLocalePair:(id)pair withModelURLs:(id)ls
{
  v105 = *MEMORY[0x277D85DE8];
  pairCopy = pair;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  lsCopy = ls;
  v6 = [lsCopy countByEnumeratingWithState:&v97 objects:v104 count:16];
  if (v6)
  {
    v7 = v6;
    v83 = 0;
    v8 = *v98;
    while (2)
    {
      v9 = lsCopy;
      for (i = 0; i != v7; ++i)
      {
        if (*v98 != v8)
        {
          objc_enumerationMutation(v9);
        }

        v11 = *(*(&v97 + 1) + 8 * i);
        path = [v11 path];
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v14 = [defaultManager isReadableFileAtPath:path];

        if ((v14 & 1) == 0)
        {
          v18 = _LTOSLogAssets(v15, v16);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            +[_LTDAssetService preflightCheckForLocalePair:withModelURLs:];
          }

          v19 = 0;
          lsCopy = v9;
          canonicalIdentifier = v9;
          v21 = pairCopy;
          v22 = v83;
          goto LABEL_65;
        }

        if ([path containsString:@"/AssetsV"])
        {
          v17 = v11;

          v83 = v17;
        }
      }

      lsCopy = v9;
      v7 = [v9 countByEnumeratingWithState:&v97 objects:v104 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v83 = 0;
  }

  v21 = pairCopy;
  canonicalIdentifier = [pairCopy canonicalIdentifier];
  v22 = v83;
  path2 = [v83 path];
  v24 = [path2 hasSuffix:canonicalIdentifier];

  if (v24)
  {
    v27 = [v83 URLByAppendingPathComponent:@"mt-quasar-config.json"];
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    path3 = [v27 path];
    v30 = [defaultManager2 isReadableFileAtPath:path3];

    if (v30)
    {
      v33 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v27];
      v96 = 0;
      v34 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v33 options:4 error:&v96];
      v35 = v96;
      v37 = v35;
      if (v35)
      {
        v38 = _LTOSLogAssets(v35, v36);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          +[_LTDAssetService preflightCheckForLocalePair:withModelURLs:];
        }

        v19 = 0;
      }

      else
      {
        v41 = [v34 objectForKeyedSubscript:@"mt-decoders"];
        v42 = [v41 objectForKeyedSubscript:@"mt_app"];
        v43 = [v42 objectForKeyedSubscript:@"block-definitions"];

        if (v43 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v79 = v43;
          allKeys = [v43 allKeys];
          v45 = [allKeys countByEnumeratingWithState:&v92 objects:v103 count:16];
          if (v45)
          {
            v46 = *v93;
            v37 = 0;
            v73 = v34;
            v74 = v33;
            v69 = *v93;
            v70 = allKeys;
            v75 = lsCopy;
            do
            {
              v47 = 0;
              v68 = v45;
              do
              {
                if (*v93 != v46)
                {
                  objc_enumerationMutation(allKeys);
                }

                v71 = v47;
                v48 = [v79 objectForKeyedSubscript:*(*(&v92 + 1) + 8 * v47)];
                v88 = 0u;
                v89 = 0u;
                v90 = 0u;
                v91 = 0u;
                v80 = v48;
                obj = [v48 allKeys];
                v77 = [obj countByEnumeratingWithState:&v88 objects:v102 count:16];
                if (v77)
                {
                  v78 = *v89;
                  do
                  {
                    for (j = 0; j != v77; ++j)
                    {
                      if (*v89 != v78)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v50 = *(*(&v88 + 1) + 8 * j);
                      if ([v50 containsString:@"-file"])
                      {
                        v72 = j;
                        v76 = [v80 objectForKeyedSubscript:v50];
                        v51 = [v76 componentsSeparatedByString:{@", "}];
                        v84 = 0u;
                        v85 = 0u;
                        v86 = 0u;
                        v87 = 0u;
                        v52 = v51;
                        v53 = [v52 countByEnumeratingWithState:&v84 objects:v101 count:16];
                        if (v53)
                        {
                          v54 = v53;
                          v55 = *v85;
                          while (2)
                          {
                            for (k = 0; k != v54; ++k)
                            {
                              if (*v85 != v55)
                              {
                                objc_enumerationMutation(v52);
                              }

                              v57 = [v83 URLByAppendingPathComponent:*(*(&v84 + 1) + 8 * k)];
                              defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
                              path4 = [v57 path];
                              v60 = [defaultManager3 isReadableFileAtPath:path4];

                              if ((v60 & 1) == 0)
                              {
                                v66 = _LTOSLogAssets(v61, v62);
                                v34 = v73;
                                v33 = v74;
                                if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                                {
                                  [_LTDAssetService preflightCheckForLocalePair:v66 withModelURLs:v57];
                                }

                                v19 = 0;
                                v21 = pairCopy;
                                v22 = v83;
                                lsCopy = v75;
                                v37 = 0;
                                allKeys = v70;
                                goto LABEL_62;
                              }
                            }

                            v54 = [v52 countByEnumeratingWithState:&v84 objects:v101 count:16];
                            if (v54)
                            {
                              continue;
                            }

                            break;
                          }
                        }

                        v21 = pairCopy;
                        v22 = v83;
                        v33 = v74;
                        lsCopy = v75;
                        j = v72;
                        v34 = v73;
                        v37 = 0;
                      }
                    }

                    allKeys = v70;
                    v77 = [obj countByEnumeratingWithState:&v88 objects:v102 count:16];
                  }

                  while (v77);
                }

                v47 = v71 + 1;
                v46 = v69;
              }

              while (v71 + 1 != v68);
              v45 = [allKeys countByEnumeratingWithState:&v92 objects:v103 count:16];
              v46 = v69;
              v19 = 1;
            }

            while (v45);
          }

          else
          {
            v19 = 1;
            v37 = 0;
          }

LABEL_62:
        }

        else
        {

          v65 = _LTOSLogAssets(v63, v64);
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            +[_LTDAssetService preflightCheckForLocalePair:withModelURLs:];
          }

          v19 = 0;
          v37 = 0;
        }
      }
    }

    else
    {
      v40 = _LTOSLogAssets(v31, v32);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [_LTDAssetService preflightCheckForLocalePair:v40 withModelURLs:v27];
      }

      v19 = 0;
    }
  }

  else
  {
    v39 = _LTOSLogAssets(v25, v26);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      [_LTDAssetService preflightCheckForLocalePair:v39 withModelURLs:v83];
    }

    v19 = 0;
  }

LABEL_65:

  return v19;
}

+ (void)_assetProviderForAssetType:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_fault_impl(&dword_232E53000, v0, OS_LOG_TYPE_FAULT, "No asset provider defined for asset type: %{public}@", v1, 0xCu);
}

+ (void)_serviceProviderForAssetType:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_fault_impl(&dword_232E53000, v0, OS_LOG_TYPE_FAULT, "No service provider defined for asset type: %{public}@", v1, 0xCu);
}

+ (void)_symlinkAssetsForLocalePair:(os_log_t)log fromAssets:.cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_232E53000, log, OS_LOG_TYPE_ERROR, "Filtered assets contains incomplete asset %{public}@", buf, 0xCu);
}

+ (void)_installConfigAsset:(void *)a1 completion:(void *)a2 .cold.1(void *a1, void *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 assetVersion];
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(&dword_232E53000, v3, OS_LOG_TYPE_DEBUG, "Config asset is outdated, downloading version %zd", v4, 0xCu);
}

+ (void)preflightCheckForLocalePair:(void *)a1 withModelURLs:(void *)a2 .cold.2(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 path];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1(&dword_232E53000, v5, v6, "Preflight MT URL does not match request locale pair: %{public}@ vs %{public}@", v7, v8, v9, v10);
}

+ (void)preflightCheckForLocalePair:(void *)a1 withModelURLs:(void *)a2 .cold.3(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 path];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5(&dword_232E53000, v5, v6, "Preflight missing quasar config at: %{public}@", v7, v8, v9, v10);
}

+ (void)preflightCheckForLocalePair:(void *)a1 withModelURLs:(void *)a2 .cold.5(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 path];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5(&dword_232E53000, v5, v6, "Preflight missing file %{public}@", v7, v8, v9, v10);
}

@end