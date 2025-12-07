@interface _LTDLanguageAssetService
+ (BOOL)_applyRequiredProgressUpdate:(id)update;
+ (NSArray)availableIdentifiers;
+ (NSArray)selectedLocales;
+ (NSSet)_selectedIdentifiers;
+ (id)_complementaryLocaleIfMissingForAssets:(id)assets preferredComplements:(id)complements;
+ (id)_installedLocales;
+ (id)_languageAssetFilterDescription:(unint64_t)description;
+ (id)_languageModelsForLocales:(id)locales initialState:(int64_t)state error:(id *)error;
+ (id)_localeRanks;
+ (id)_selectedAssets;
+ (id)_stringForOfflineState:(int64_t)state;
+ (id)_supportedLocalesWithError:(id *)error;
+ (id)_synthesizeInitialObservationsFromDefaults;
+ (id)queue;
+ (int64_t)_offlineStateFromString:(id)string;
+ (unint64_t)_languageAssetFilterFromOptions:(unint64_t)options;
+ (void)_availableAssetsWithCompletion:(id)completion;
+ (void)_cacheInstalledLanguages;
+ (void)_installedAssetsWithCompletion:(id)completion;
+ (void)_localeRanks;
+ (void)_preheatMissingCacheStatesAfter:(int64_t)after;
+ (void)_purgeUnusedAssetsWithCompletion:(id)completion;
+ (void)_resetSymlinkDirectory;
+ (void)_selectedAssetsWithCompletion:(id)completion;
+ (void)_syncInstalledLocales;
+ (void)_syncInstalledLocalesWithCompletion:(id)completion;
+ (void)_syncInstalledLocalesWithRetry:(int64_t)retry gateID:(id)d;
+ (void)addLanguages:(id)languages useCellular:(BOOL)cellular;
+ (void)assetsWithOptions:(unint64_t)options completion:(id)completion;
+ (void)cancelLanguageStatusSession:(id)session;
+ (void)removeLanguages:(id)languages;
+ (void)setAssets:(id)assets options:(unint64_t)options progress:(id)progress completion:(id)completion;
+ (void)setInstalledLocales:(id)locales useCellular:(BOOL)cellular progress:(id)progress completion:(id)completion;
+ (void)startLanguageStatusSession:(id)session taskHint:(int64_t)hint progress:(BOOL)progress observations:(id)observations completion:(id)completion;
+ (void)syncInstalledLocalesIfPowerAllows;
+ (void)syncInstalledLocalesOnAssetUpdate;
@end

@implementation _LTDLanguageAssetService

+ (NSSet)_selectedIdentifiers
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = _LTPreferencesInstalledLocales();
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v2, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        lt_localeIdentifier = [*(*(&v11 + 1) + 8 * i) lt_localeIdentifier];
        [v3 addObject:lt_localeIdentifier];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (id)queue
{
  if (queue_onceToken_1 != -1)
  {
    +[_LTDLanguageAssetService queue];
  }

  v3 = queue__queue_1;

  return v3;
}

+ (unint64_t)_languageAssetFilterFromOptions:(unint64_t)options
{
  if ((options & 0x40) != 0)
  {
    if ((options & 0x30) != 0)
    {
      v4 = _LTOSLogAssets(self, a2);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        +[_LTDLanguageAssetService _languageAssetFilterFromOptions:];
      }
    }

    return 64;
  }

  else if ((options & 0x20) != 0)
  {
    if ((options & 0x10) != 0)
    {
      v5 = _LTOSLogAssets(self, a2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        +[_LTDLanguageAssetService _languageAssetFilterFromOptions:];
      }
    }

    return 32;
  }

  else
  {
    return 16;
  }
}

+ (id)_languageAssetFilterDescription:(unint64_t)description
{
  v3 = @".available";
  if (description == 32)
  {
    v3 = @".selected";
  }

  if (description == 64)
  {
    return @".installed";
  }

  else
  {
    return v3;
  }
}

+ (void)assetsWithOptions:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  v7 = [self _languageAssetFilterFromOptions:options];
  v9 = _LTOSLogAssets(v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    +[_LTDLanguageAssetService assetsWithOptions:completion:];
  }

  v10 = +[_LTDLanguageAssetCache shared];
  v11 = [v10 assetsFilteredUsing:v7];

  if (v11)
  {
    v14 = _LTOSLogAssets(v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      +[_LTDLanguageAssetService assetsWithOptions:completion:];
      if (!completionCopy)
      {
        goto LABEL_12;
      }

      goto LABEL_6;
    }

    if (completionCopy)
    {
LABEL_6:
      completionCopy[2](completionCopy, v11, 0);
    }
  }

  else if (v7 == 32)
  {
    [self _selectedAssetsWithCompletion:completionCopy];
  }

  else if (v7 == 64)
  {
    [self _installedAssetsWithCompletion:completionCopy];
  }

  else
  {
    [self _availableAssetsWithCompletion:completionCopy];
  }

LABEL_12:
}

+ (void)_availableAssetsWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59___LTDLanguageAssetService__availableAssetsWithCompletion___block_invoke;
  v6[3] = &unk_2789B61D0;
  v7 = completionCopy;
  selfCopy = self;
  v5 = completionCopy;
  [_LTDConfigurationService offlineConfigurationWithCompletion:v6];
}

+ (void)_selectedAssetsWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58___LTDLanguageAssetService__selectedAssetsWithCompletion___block_invoke;
  v7[3] = &unk_2789B5E78;
  v8 = completionCopy;
  selfCopy = self;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

+ (void)_installedAssetsWithCompletion:(id)completion
{
  completionCopy = completion;
  selectedLocales = [self selectedLocales];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59___LTDLanguageAssetService__installedAssetsWithCompletion___block_invoke;
  v8[3] = &unk_2789B5AD0;
  v10 = completionCopy;
  selfCopy = self;
  v9 = selectedLocales;
  v6 = selectedLocales;
  v7 = completionCopy;
  [_LTDAssetService assetsForLocales:v6 includeTTS:1 completion:v8];
}

+ (id)_supportedLocalesWithError:(id *)error
{
  v4 = [_LTDConfigurationService offlineConfigurationWithError:?];
  v6 = v4;
  if (*error)
  {
    v7 = _LTOSLogAssets(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(_LTDLanguageAssetService *)error _supportedLocalesWithError:v7, v8, v9, v10, v11, v12, v13];
    }

    v14 = 0;
  }

  else
  {
    languageIdentifiers = [v4 languageIdentifiers];
    v14 = [languageIdentifiers _ltCompactMap:&__block_literal_global_17];
  }

  return v14;
}

+ (id)_localeRanks
{
  v37[1] = *MEMORY[0x277D85DE8];
  v35 = 0;
  v2 = [self _supportedLocalesWithError:&v35];
  v3 = v35;
  v5 = v3;
  if (v3 || (v3 = [v2 count]) == 0)
  {
    v6 = _LTOSLogAssets(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[_LTDLanguageAssetService _localeRanks];
    }

    v7 = 0;
  }

  else
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v10 = currentLocale;
    if (currentLocale)
    {
      v11 = MEMORY[0x277CBEAF8];
      v37[0] = currentLocale;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
      v13 = [v11 lt_bestMatchForPreferredLocales:v12 fromSupportedLocales:v2];

      if (v13)
      {
        v16 = _LTPreferencesAdditionalLikelyPreferredLocales(v13);
        if ([v16 count])
        {
          v36 = v13;
          v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
          v19 = [v18 arrayByAddingObjectsFromArray:v16];

          v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v19, "count")}];
          if ([v19 count])
          {
            v20 = 0;
            do
            {
              v21 = v20 + 1;
              v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20 + 1];
              v23 = [v19 objectAtIndexedSubscript:v20];
              [v7 setObject:v22 forKeyedSubscript:v23];

              v20 = v21;
            }

            while (v21 < [v19 count]);
          }
        }

        else
        {
          v26 = _LTOSLogAssets(0, v17);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            [(_LTDLanguageAssetService *)v26 _localeRanks:v27];
          }

          v7 = 0;
        }
      }

      else
      {
        v25 = _LTOSLogAssets(v14, v15);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          +[(_LTDLanguageAssetService *)v25];
        }

        v7 = 0;
      }
    }

    else
    {
      v24 = _LTOSLogAssets(0, v9);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        +[_LTDLanguageAssetService _localeRanks];
      }

      v7 = 0;
    }
  }

  return v7;
}

+ (id)_complementaryLocaleIfMissingForAssets:(id)assets preferredComplements:(id)complements
{
  v37 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  complementsCopy = complements;
  if ([assetsCopy count] != 1)
  {
    goto LABEL_3;
  }

  selectedLocales = [self selectedLocales];
  v9 = [selectedLocales count];

  if (v9 > 1)
  {
    goto LABEL_3;
  }

  selectedLocales2 = [self selectedLocales];
  if ([selectedLocales2 count] == 1)
  {
    selectedLocales3 = [self selectedLocales];
    firstObject = [selectedLocales3 firstObject];
    _ltLocaleIdentifier = [firstObject _ltLocaleIdentifier];
    firstObject2 = [assetsCopy firstObject];
    ltIdentifier = [firstObject2 ltIdentifier];
    v18 = [_ltLocaleIdentifier isEqualToString:ltIdentifier];

    if (!v18)
    {
LABEL_3:
      v10 = 0;
      goto LABEL_4;
    }
  }

  else
  {
  }

  firstObject3 = [assetsCopy firstObject];
  locale = [firstObject3 locale];

  v34 = 0;
  v21 = [self _supportedLocalesWithError:&v34];
  v22 = v34;
  v24 = v22;
  if (v22)
  {
    v25 = _LTOSLogAssets(v22, v23);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      +[_LTDLanguageAssetService _localeRanks];
    }

    v10 = 0;
  }

  else
  {
    v26 = [MEMORY[0x277CBEAF8] lt_bestMatchForPreferredLocales:complementsCopy fromSupportedLocales:v21];
    if (!v26)
    {
      v27 = _LTPreferencesAdditionalLikelyPreferredLocales(locale);
      if ([v27 count])
      {
        v26 = [MEMORY[0x277CBEAF8] lt_bestMatchForPreferredLocales:v27 fromSupportedLocales:v21];
      }

      else
      {
        v26 = 0;
      }
    }

    _ltLocaleIdentifier2 = [v26 _ltLocaleIdentifier];
    if (_ltLocaleIdentifier2)
    {
      _ltLocaleIdentifier3 = [locale _ltLocaleIdentifier];
      v31 = [_ltLocaleIdentifier3 isEqualToString:_ltLocaleIdentifier2];

      if (v31)
      {
        v32 = 0;
      }

      else
      {
        v32 = v26;
      }

      v10 = v32;
    }

    else
    {
      v33 = _LTOSLogAssets(0, v28);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v36 = complementsCopy;
        _os_log_impl(&dword_232E53000, v33, OS_LOG_TYPE_INFO, "Failed to locate a supported complement for %{public}@", buf, 0xCu);
      }

      v10 = 0;
    }
  }

LABEL_4:

  return v10;
}

+ (void)setAssets:(id)assets options:(unint64_t)options progress:(id)progress completion:(id)completion
{
  v67 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  progressCopy = progress;
  completionCopy = completion;
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke;
  v60[3] = &unk_2789B5D20;
  v13 = completionCopy;
  v61 = v13;
  v45 = MEMORY[0x238398770](v60);
  v15 = _LTOSLogAssets(v45, v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v64 = assetsCopy;
    _os_log_impl(&dword_232E53000, v15, OS_LOG_TYPE_INFO, "Language asset service received install request: %{public}@", buf, 0xCu);
  }

  v16 = [self _complementaryLocaleIfMissingForAssets:assetsCopy preferredComplements:0];
  v46 = v16;
  if (v16)
  {
    v18 = _LTOSLogAssets(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      firstObject = [assetsCopy firstObject];
      ltIdentifier = [firstObject ltIdentifier];
      [v46 _ltLocaleIdentifier];
      v23 = v22 = options;
      *buf = 138543618;
      v64 = ltIdentifier;
      v65 = 2114;
      v66 = v23;
      _os_log_impl(&dword_232E53000, v19, OS_LOG_TYPE_DEFAULT, "Request only downloads %{public}@, downloading complement %{public}@ to ensure a bi-directional pair", buf, 0x16u);

      options = v22;
    }

    v24 = [objc_alloc(MEMORY[0x277CE1B00]) initWithLocale:v46 state:1];
    v25 = [assetsCopy arrayByAddingObject:v24];

    assetsCopy = v25;
  }

  v26 = assetsCopy;
  allObjects = v26;
  optionsCopy = options;
  if ((options & 8) == 0)
  {
    v42 = v13;
    v43 = progressCopy;
    _selectedAssets = [self _selectedAssets];
    v29 = [_selectedAssets mutableCopy];

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v30 = v26;
    v31 = [v30 countByEnumeratingWithState:&v56 objects:v62 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v57;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v57 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v56 + 1) + 8 * i);
          progress = [v35 progress];
          offlineState = [progress offlineState];

          if (offlineState)
          {
            [v29 addObject:v35];
          }

          else
          {
            [v29 removeObject:v35];
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v56 objects:v62 count:16];
      }

      while (v32);
    }

    allObjects = [v29 allObjects];

    v13 = v42;
    progressCopy = v43;
  }

  _localeRanks = [self _localeRanks];
  v39 = +[_LTDLanguageAssetCache shared];
  v40 = [v39 preheatWithLanguages:allObjects];
  [v39 markReadyForFilter:32];
  if ([v40 count])
  {
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __66___LTDLanguageAssetService_setAssets_options_progress_completion___block_invoke_24;
    v47[3] = &unk_2789B6290;
    selfCopy = self;
    v51 = v13;
    v41 = v45;
    v52 = v45;
    v48 = v39;
    v49 = _localeRanks;
    v50 = v40;
    v55 = optionsCopy;
    v53 = progressCopy;
    [_LTDAssetService assetsForLocales:v50 includeTTS:1 completion:v47];
  }

  else
  {
    [v39 setRequiredAssets:MEMORY[0x277CBEBF8] localeRanks:_localeRanks];
    v41 = v45;
    if (v13)
    {
      v45[2](v45, 0);
    }
  }
}

+ (void)setInstalledLocales:(id)locales useCellular:(BOOL)cellular progress:(id)progress completion:(id)completion
{
  cellularCopy = cellular;
  v34 = *MEMORY[0x277D85DE8];
  localesCopy = locales;
  progressCopy = progress;
  completionCopy = completion;
  v11 = +[_LTDLanguageAssetCache shared];
  v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(localesCopy, "count")}];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = localesCopy;
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    do
    {
      v17 = 0;
      do
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v13);
        }

        _ltLocaleIdentifier = [*(*(&v29 + 1) + 8 * v17) _ltLocaleIdentifier];
        v19 = [v11 assetForIdentifier:_ltLocaleIdentifier];

        progress = [v19 progress];
        [progress setGreaterThanOrEqualToOfflineState:1];

        [v12 addObject:v19];
        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v15);
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __80___LTDLanguageAssetService_setInstalledLocales_useCellular_progress_completion___block_invoke;
  v27[3] = &unk_2789B62B8;
  v28 = progressCopy;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __80___LTDLanguageAssetService_setInstalledLocales_useCellular_progress_completion___block_invoke_2;
  v25[3] = &unk_2789B5D20;
  v26 = completionCopy;
  v21 = completionCopy;
  v22 = progressCopy;
  [self setAssets:v12 options:cellularCopy | 0xALL progress:v27 completion:v25];
}

+ (BOOL)_applyRequiredProgressUpdate:(id)update
{
  updateCopy = update;
  v4 = +[_LTDLanguageAssetCache shared];
  v5 = [v4 applyProgressUpdateForAsset:updateCopy];

  return v5;
}

+ (void)_syncInstalledLocalesWithCompletion:(id)completion
{
  completionCopy = completion;
  v6 = _LTOSLogAssets(completionCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_DEFAULT, "Sync install begin", buf, 2u);
  }

  onDeviceModeSupported = [self onDeviceModeSupported];
  v8 = onDeviceModeSupported;
  v10 = _LTOSLogAssets(onDeviceModeSupported, v9);
  v11 = v10;
  if ((v8 & 1) == 0)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[_LTDLanguageAssetService _syncInstalledLocalesWithCompletion:];
      if (!completionCopy)
      {
        goto LABEL_10;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_10;
    }

    completionCopy[2](completionCopy, 0);
    goto LABEL_10;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v11, OS_LOG_TYPE_DEFAULT, "Sync install query selected begin", buf, 2u);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64___LTDLanguageAssetService__syncInstalledLocalesWithCompletion___block_invoke;
  v12[3] = &unk_2789B5D70;
  v13 = completionCopy;
  selfCopy = self;
  [self assetsWithOptions:32 completion:v12];

LABEL_10:
}

+ (void)_syncInstalledLocalesWithRetry:(int64_t)retry gateID:(id)d
{
  dCopy = d;
  queue = [self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66___LTDLanguageAssetService__syncInstalledLocalesWithRetry_gateID___block_invoke;
  block[3] = &unk_2789B6368;
  v10 = dCopy;
  retryCopy = retry;
  selfCopy = self;
  v8 = dCopy;
  dispatch_async(queue, block);
}

+ (void)_syncInstalledLocales
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  [self _syncInstalledLocalesWithRetry:0 gateID:uUID];
}

+ (void)syncInstalledLocalesIfPowerAllows
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)syncInstalledLocalesOnAssetUpdate
{
  queue = [self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61___LTDLanguageAssetService_syncInstalledLocalesOnAssetUpdate__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  dispatch_async(queue, block);
}

+ (void)_purgeUnusedAssetsWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61___LTDLanguageAssetService__purgeUnusedAssetsWithCompletion___block_invoke;
  v6[3] = &unk_2789B5D70;
  v7 = completionCopy;
  selfCopy = self;
  v5 = completionCopy;
  [_LTDAssetService installedAssetsWithCompletion:v6];
}

+ (NSArray)availableIdentifiers
{
  v5 = 0;
  v2 = [_LTDConfigurationService offlineConfigurationWithError:&v5];
  languageIdentifiers = [v2 languageIdentifiers];

  return languageIdentifiers;
}

+ (NSArray)selectedLocales
{
  v2 = _LTPreferencesInstalledLocales();
  v3 = [v2 _ltCompactMap:&__block_literal_global_48];

  return v3;
}

+ (id)_selectedAssets
{
  v17 = *MEMORY[0x277D85DE8];
  _selectedIdentifiers = [self _selectedIdentifiers];
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(_selectedIdentifiers, "count")}];
  v4 = +[_LTDLanguageAssetCache shared];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = _selectedIdentifiers;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v4 assetForIdentifier:{*(*(&v12 + 1) + 8 * i), v12}];
        [v3 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v3;
}

+ (id)_installedLocales
{
  v2 = +[_LTDLanguageAssetCache shared];
  v3 = [v2 assetsFilteredUsing:64];

  v4 = [v3 _ltCompactMap:&__block_literal_global_52];

  return v4;
}

+ (void)_preheatMissingCacheStatesAfter:(int64_t)after
{
  v5 = dispatch_time(0, 1000000000 * after);
  queue = [self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60___LTDLanguageAssetService__preheatMissingCacheStatesAfter___block_invoke;
  v7[3] = &__block_descriptor_48_e5_v8__0l;
  v7[4] = self;
  v7[5] = after;
  dispatch_after(v5, queue, v7);
}

+ (void)startLanguageStatusSession:(id)session taskHint:(int64_t)hint progress:(BOOL)progress observations:(id)observations completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  observationsCopy = observations;
  completionCopy = completion;
  v16 = _LTOSLogAssets(completionCopy, v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = v16;
    uUIDString = [sessionCopy UUIDString];
    *buf = 138543362;
    v31 = uUIDString;
    _os_log_impl(&dword_232E53000, v17, OS_LOG_TYPE_INFO, "Start language status session %{public}@", buf, 0xCu);
  }

  queue = [self queue];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __97___LTDLanguageAssetService_startLanguageStatusSession_taskHint_progress_observations_completion___block_invoke;
  v23[3] = &unk_2789B6418;
  progressCopy = progress;
  v24 = sessionCopy;
  v25 = observationsCopy;
  v26 = completionCopy;
  hintCopy = hint;
  selfCopy = self;
  v20 = completionCopy;
  v21 = observationsCopy;
  v22 = sessionCopy;
  dispatch_async(queue, v23);
}

+ (void)cancelLanguageStatusSession:(id)session
{
  v15 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v6 = _LTOSLogAssets(sessionCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    uUIDString = [sessionCopy UUIDString];
    *buf = 138543362;
    v14 = uUIDString;
    _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_INFO, "Cancel language status session %{public}@", buf, 0xCu);
  }

  queue = [self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56___LTDLanguageAssetService_cancelLanguageStatusSession___block_invoke;
  block[3] = &unk_2789B5B70;
  v12 = sessionCopy;
  v10 = sessionCopy;
  dispatch_async(queue, block);
}

+ (void)addLanguages:(id)languages useCellular:(BOOL)cellular
{
  cellularCopy = cellular;
  v77 = *MEMORY[0x277D85DE8];
  languagesCopy = languages;
  v7 = _LTOSLogAssets(languagesCopy, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v76 = languagesCopy;
    _os_log_impl(&dword_232E53000, v7, OS_LOG_TYPE_DEFAULT, "Add languages %{public}@", buf, 0xCu);
  }

  LODWORD(v48) = cellularCopy;
  if (cellularCopy)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = +[_LTDLanguageAssetCache shared];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v10 = languagesCopy;
  v11 = [v10 countByEnumeratingWithState:&v68 objects:v74 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v69;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v69 != v13)
        {
          objc_enumerationMutation(v10);
        }

        _ltLocaleIdentifier = [*(*(&v68 + 1) + 8 * i) _ltLocaleIdentifier];
        v16 = [v9 assetForIdentifier:_ltLocaleIdentifier];
        progress = [v16 progress];
        offlineState = [progress offlineState];

        if (!offlineState)
        {
          progress2 = [v16 progress];
          [progress2 setOfflineState:1];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v68 objects:v74 count:16];
    }

    while (v12);
  }

  [v9 multicastObservers];
  v20 = MEMORY[0x277CBEB58];
  selectedLocales = [self selectedLocales];
  v22 = [v20 setWithArray:selectedLocales];

  v23 = [MEMORY[0x277CBEB98] setWithArray:v10];
  [v22 unionSet:v23];

  allObjects = [v22 allObjects];
  [self setSelectedLocales:allObjects];

  v67 = 0;
  v25 = [self _languageModelsForLocales:v10 initialState:1 error:&v67];
  v26 = v67;
  v28 = v26;
  if (!v26)
  {
    v51 = 0;
    v53 = v25;
    v55 = v22;
    v39 = 2;
    v61 = 0u;
    v62 = 0u;
    if (v49)
    {
      v39 = 3;
    }

    v50 = v39;
    v59 = 0uLL;
    v60 = 0uLL;
    v40 = v10;
    v41 = [v40 countByEnumeratingWithState:&v59 objects:v72 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v60;
      do
      {
        for (j = 0; j != v42; ++j)
        {
          if (*v60 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = *(*(&v59 + 1) + 8 * j);
          v46 = +[_LTDAssetAnalytics shared];
          v47 = [v46 createEventWithNSLocale:v45 connectionType:v8 downloadTriggerSource:0];

          [v47 startTimer];
        }

        v42 = [v40 countByEnumeratingWithState:&v59 objects:v72 count:16];
      }

      while (v42);
    }

    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __53___LTDLanguageAssetService_addLanguages_useCellular___block_invoke;
    v57[3] = &unk_2789B54E0;
    v58 = v40;
    v25 = v53;
    [self setAssets:v53 options:v50 progress:0 completion:v57];
    v30 = v58;
    v22 = v55;
    goto LABEL_36;
  }

  v29 = _LTOSLogAssets(v26, v27);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    +[_LTDLanguageAssetService addLanguages:useCellular:];
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v30 = v10;
  v31 = [v30 countByEnumeratingWithState:&v63 objects:v73 count:16];
  if (v31)
  {
    v32 = v31;
    v51 = v28;
    v52 = v25;
    v54 = v22;
    v33 = *v64;
    do
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v64 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v63 + 1) + 8 * k);
        v36 = +[_LTDAssetAnalytics shared];
        v37 = [v36 createEventWithNSLocale:v35 connectionType:v8 downloadTriggerSource:0];

        [v37 setDownloadOutcome:3];
        v38 = +[_LTDAssetAnalytics shared];
        [v38 sendEventToAnalytics:v37];
      }

      v32 = [v30 countByEnumeratingWithState:&v63 objects:v73 count:16];
    }

    while (v32);
    v25 = v52;
    v22 = v54;
LABEL_36:
    v28 = v51;
  }
}

+ (void)removeLanguages:(id)languages
{
  v54 = *MEMORY[0x277D85DE8];
  languagesCopy = languages;
  v6 = _LTOSLogAssets(languagesCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v53 = languagesCopy;
    _os_log_impl(&dword_232E53000, v6, OS_LOG_TYPE_DEFAULT, "Remove languages %{public}@", buf, 0xCu);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v7 = languagesCopy;
  v8 = [v7 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v47;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v47 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v46 + 1) + 8 * i);
        v13 = +[_LTDAssetAnalytics shared];
        v14 = [v13 getEventWithNSLocale:v12];

        if (v14)
        {
          [v14 setDownloadOutcome:2];
          v15 = +[_LTDAssetAnalytics shared];
          [v15 sendEventToAnalytics:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v9);
  }

  v16 = +[_LTDLanguageAssetCache shared];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v17 = v7;
  v18 = [v17 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v43;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v43 != v20)
        {
          objc_enumerationMutation(v17);
        }

        _ltLocaleIdentifier = [*(*(&v42 + 1) + 8 * j) _ltLocaleIdentifier];
        v23 = [v16 assetForIdentifier:_ltLocaleIdentifier];
        progress = [v23 progress];
        offlineState = [progress offlineState];

        if (offlineState)
        {
          progress2 = [v23 progress];
          [progress2 setOfflineState:0];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v19);
  }

  [v16 multicastObservers];
  v27 = MEMORY[0x277CBEB58];
  selectedLocales = [self selectedLocales];
  v29 = [v27 setWithArray:selectedLocales];

  v30 = [MEMORY[0x277CBEB98] setWithArray:v17];
  [v29 minusSet:v30];

  allObjects = [v29 allObjects];
  [self setSelectedLocales:allObjects];

  selectedLocales2 = [self selectedLocales];
  v33 = [selectedLocales2 count];

  if (!v33)
  {
    v34 = +[_LTDAssetService cleanupScheduler];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __44___LTDLanguageAssetService_removeLanguages___block_invoke;
    v41[3] = &__block_descriptor_40_e15_v16__0___v__B_8l;
    v41[4] = self;
    [v34 scheduleAssetCleanupWork:v41];
  }

  v40 = 0;
  v35 = [self _languageModelsForLocales:v17 initialState:0 error:&v40];
  v36 = v40;
  v38 = v36;
  if (v36)
  {
    v39 = _LTOSLogAssets(v36, v37);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      +[_LTDLanguageAssetService removeLanguages:];
    }
  }

  else
  {
    [self setAssets:v35 options:2 progress:0 completion:0];
  }
}

+ (void)_resetSymlinkDirectory
{
  OUTLINED_FUNCTION_10();
  v2 = v1;
  path = [OUTLINED_FUNCTION_2() path];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_1(&dword_232E53000, v4, v5, "Creation of symlink folder %@ failed: %@", v6, v7, v8, v9);
}

+ (id)_languageModelsForLocales:(id)locales initialState:(int64_t)state error:(id *)error
{
  localesCopy = locales;
  if ([localesCopy count])
  {
    v9 = [self _supportedLocalesWithError:error];
    v10 = v9;
    if (*error)
    {
      v11 = 0;
    }

    else
    {
      v12 = [v9 _ltCompactMap:&__block_literal_global_69];
      v13 = [MEMORY[0x277CBEB98] setWithArray:v12];
      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __73___LTDLanguageAssetService__languageModelsForLocales_initialState_error___block_invoke_2;
      v24 = &unk_2789B6460;
      v14 = v13;
      v25 = v14;
      stateCopy = state;
      v15 = [localesCopy _ltCompactMap:&v21];
      if ([v15 count])
      {
        v11 = [v15 copy];
      }

      else
      {
        v16 = MEMORY[0x277CCA9B8];
        firstObject = [localesCopy firstObject];
        v18 = [v16 lt_unsupportedLanguageError:firstObject];

        v19 = v18;
        *error = v18;

        v11 = 0;
      }
    }
  }

  else if (*error)
  {
    [MEMORY[0x277CCA9B8] lt_unsupportedLanguageError:0];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (void)_cacheInstalledLanguages
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (id)_synthesizeInitialObservationsFromDefaults
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = _LTPreferencesOfflineLanguageInstallationStatus();
  v26 = 0;
  v5 = [self _supportedLocalesWithError:&v26];
  v6 = v26;
  if (v6)
  {
    v7 = v3;
  }

  else
  {
    v20 = v5;
    v8 = v3;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = v5;
    v9 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          _ltLocaleIdentifier = [v13 _ltLocaleIdentifier];
          v15 = [v4 objectForKeyedSubscript:_ltLocaleIdentifier];

          if (v15)
          {
            v16 = [v15 objectForKey:@"status"];
            v17 = [self _offlineStateFromString:v16];
            v18 = [objc_alloc(MEMORY[0x277CE1B28]) initWithLocale:v13 progress:0 downloadSize:v17 status:0 rank:0.0];
            [v8 addObject:v18];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v10);
    }

    v3 = v8;
    v7 = [v8 sortedArrayUsingSelector:sel_compare_];
    v6 = 0;
    v5 = v20;
  }

  return v7;
}

+ (id)_stringForOfflineState:(int64_t)state
{
  if (state > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_2789B64A0[state];
  }
}

+ (int64_t)_offlineStateFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"unavailable"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"downloading"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"installed"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  return v4;
}

+ (void)_languageAssetFilterFromOptions:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_languageAssetFilterFromOptions:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)assetsWithOptions:completion:.cold.1()
{
  OUTLINED_FUNCTION_10();
  v6 = *MEMORY[0x277D85DE8];
  v3 = v2;
  v4 = [OUTLINED_FUNCTION_2() _languageAssetFilterDescription:v0];
  OUTLINED_FUNCTION_1_2();
  _os_log_debug_impl(&dword_232E53000, v1, OS_LOG_TYPE_DEBUG, "Language asset service received state request with filter %{public}@", v5, 0xCu);
}

+ (void)assetsWithOptions:completion:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_supportedLocalesWithError:(uint64_t)a3 .cold.1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_2_0(&dword_232E53000, a2, a3, "Failed to read offline configuration for supported locales %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)_localeRanks
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_syncInstalledLocalesWithCompletion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end