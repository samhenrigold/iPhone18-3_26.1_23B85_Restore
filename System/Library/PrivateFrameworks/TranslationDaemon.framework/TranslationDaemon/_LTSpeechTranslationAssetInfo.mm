@interface _LTSpeechTranslationAssetInfo
+ (BOOL)_createSymlinkDirectoryForLocalePair:(id)pair assets:(id)assets configAsset:(id)asset validateIfNeeded:(BOOL)needed;
+ (BOOL)_createSymlinkDirectoryForLocalePair:(id)pair assets:(id)assets validateIfNeeded:(BOOL)needed;
+ (BOOL)_validTopLevelSymlinkDirectory:(id)directory configAssetURL:(id)l assets:(id)assets;
+ (id)_languagePairDirectoryForLocalePair:(id)pair;
+ (void)_createSymlink:(id)symlink target:(id)target error:(id *)error;
+ (void)_createSymlinksFromDirectory:(id)directory target:(id)target error:(id *)error;
- (BOOL)_validateSymlinksForAssets:(id)assets;
- (BOOL)isCompleteBidirectionalModelForTaskHint:(int64_t)hint;
- (BOOL)isCompletePassthroughModelForTaskHint:(int64_t)hint;
- (BOOL)updateAvailableInAssets:(id)assets;
- (_LTSpeechTranslationAssetInfo)initWithInstalledAssets:(id)assets catalogAssets:(id)catalogAssets localePair:(id)pair offlineConfig:(id)config assetManager:(id)manager;
- (id)availabilityInfo;
- (id)description;
- (id)speechModelURLForLocale:(id)locale taskHint:(int64_t)hint;
- (id)speechModelVersionForLocale:(id)locale;
- (id)translationModelURLs;
- (int64_t)_mtModelOfflineState;
- (void)_referenceAssets:(id)assets catalogAssets:(id)catalogAssets;
- (void)createSymlinkDirectoryForMTAssets;
- (void)downloadAssetsUserInitiated:(BOOL)initiated queue:(id)queue completion:(id)completion;
- (void)purgeAssetUserInitiated:(BOOL)initiated queue:(id)queue completion:(id)completion;
@end

@implementation _LTSpeechTranslationAssetInfo

- (id)description
{
  sourceLocale = [(_LTLocalePair *)self->_localePair sourceLocale];
  localeIdentifier = [sourceLocale localeIdentifier];

  targetLocale = [(_LTLocalePair *)self->_localePair targetLocale];
  localeIdentifier2 = [targetLocale localeIdentifier];

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ <-> %@ | %@ %@", localeIdentifier, localeIdentifier2, self->_offlineConfig, self->_allAssets];

  return v7;
}

- (_LTSpeechTranslationAssetInfo)initWithInstalledAssets:(id)assets catalogAssets:(id)catalogAssets localePair:(id)pair offlineConfig:(id)config assetManager:(id)manager
{
  assetsCopy = assets;
  catalogAssetsCopy = catalogAssets;
  pairCopy = pair;
  configCopy = config;
  managerCopy = manager;
  v29.receiver = self;
  v29.super_class = _LTSpeechTranslationAssetInfo;
  v17 = [(_LTSpeechTranslationAssetInfo *)&v29 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_assetManager, manager);
    objc_storeStrong(&v18->_offlineConfig, config);
    objc_storeStrong(&v18->_localePair, pair);
    v19 = [managerCopy modelURLsForLanguagePair:pairCopy];
    modelURLs = v18->_modelURLs;
    v18->_modelURLs = v19;

    pairAssetList = [(_LTDOfflineConfigurationModel *)v18->_offlineConfig pairAssetList];
    pairAssetConfigFile = [(_LTDOfflineConfigurationModel *)v18->_offlineConfig pairAssetConfigFile];
    v24 = pairAssetConfigFile;
    if (pairAssetList)
    {
      v25 = pairAssetConfigFile == 0;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      v26 = _LTOSLogAssets(pairAssetConfigFile, v23);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [_LTSpeechTranslationAssetInfo initWithInstalledAssets:v26 catalogAssets:? localePair:? offlineConfig:? assetManager:?];
      }
    }

    [(_LTSpeechTranslationAssetInfo *)v18 _referenceAssets:assetsCopy catalogAssets:catalogAssetsCopy];
    v18->_needsUpdate = [(_LTSpeechTranslationAssetInfo *)v18 updateAvailableInAssets:catalogAssetsCopy];
    if (([pairCopy isPassthrough] & 1) == 0 && !-[NSArray count](v18->_missingAssets, "count") && -[NSArray count](v18->_allAssets, "count") && !-[_LTSpeechTranslationAssetInfo _validateSymlinksForAssets:](v18, "_validateSymlinksForAssets:", v18->_mtAssets))
    {
      [_LTSpeechTranslationAssetInfo _createSymlinkDirectoryForLocalePair:pairCopy assets:v18->_mtAssets validateIfNeeded:0];
    }

    v27 = v18;
  }

  return v18;
}

- (void)createSymlinkDirectoryForMTAssets
{
  if (![(NSArray *)self->_missingMTAssets count]&& [(NSArray *)self->_allAssets count])
  {
    localePair = self->_localePair;
    mtAssets = self->_mtAssets;

    [_LTSpeechTranslationAssetInfo _createSymlinkDirectoryForLocalePair:localePair assets:mtAssets validateIfNeeded:0];
  }
}

- (void)_referenceAssets:(id)assets catalogAssets:(id)catalogAssets
{
  v73 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  catalogAssetsCopy = catalogAssets;
  pairAssetList = [(_LTDOfflineConfigurationModel *)self->_offlineConfig pairAssetList];
  v9 = [pairAssetList mutableCopy];

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  array4 = [MEMORY[0x277CBEB18] array];
  v12 = _os_feature_enabled_impl();
  sourceLocale = [(_LTLocalePair *)self->_localePair sourceLocale];
  if (v12)
  {
    v57 = assetsCopy;
    v70 = 0;
    v14 = [_LTDAssetService matchingASRAssetForLocale:sourceLocale error:&v70];
    v15 = v70;
    sourceASRModel = self->_sourceASRModel;
    self->_sourceASRModel = v14;

    v17 = self->_sourceASRModel;
    if (v17)
    {
      if ([(_LTDAssetModel *)v17 isInstalled])
      {
        v18 = array;
      }

      else
      {
        v18 = array3;
      }

      [v18 addObject:self->_sourceASRModel];
    }

    targetLocale = [(_LTLocalePair *)self->_localePair targetLocale];
    v69 = v15;
    v20 = [_LTDAssetService matchingASRAssetForLocale:targetLocale error:&v69];
    v21 = v69;

    targetASRModel = self->_targetASRModel;
    self->_targetASRModel = v20;

    v23 = self->_targetASRModel;
    if (v23)
    {
      if ([(_LTDAssetModel *)v23 isInstalled])
      {
        v24 = array;
      }

      else
      {
        v24 = array3;
      }

      [v24 addObject:self->_targetASRModel];
    }

    assetsCopy = v57;
  }

  else
  {
    v25 = [_LTDAssetService matchingASRAssetInAssets:catalogAssetsCopy forLocale:sourceLocale];
    v26 = self->_sourceASRModel;
    self->_sourceASRModel = v25;

    v27 = self->_sourceASRModel;
    if (v27)
    {
      if ([(_LTDAssetModel *)v27 isInstalled])
      {
        v28 = array;
      }

      else
      {
        v28 = array3;
      }

      [v28 addObject:self->_sourceASRModel];
    }

    targetLocale2 = [(_LTLocalePair *)self->_localePair targetLocale];
    v30 = [_LTDAssetService matchingASRAssetInAssets:catalogAssetsCopy forLocale:targetLocale2];
    v31 = self->_targetASRModel;
    self->_targetASRModel = v30;

    v32 = self->_targetASRModel;
    if (v32)
    {
      if ([(_LTDAssetModel *)v32 isInstalled])
      {
        v33 = array;
      }

      else
      {
        v33 = array3;
      }

      [v33 addObject:self->_targetASRModel];
    }
  }

  selfCopy = self;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v34 = assetsCopy;
  v35 = [v34 countByEnumeratingWithState:&v65 objects:v72 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v66;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v66 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v65 + 1) + 8 * i);
        identifier = [v39 identifier];
        if ([v9 containsObject:identifier] && ((objc_msgSend(v39, "isMTModel") & 1) != 0 || objc_msgSend(v39, "isPhrasebook")))
        {
          [array2 addObject:v39];
          [array addObject:v39];
          [v9 removeObject:identifier];
        }
      }

      v36 = [v34 countByEnumeratingWithState:&v65 objects:v72 count:16];
    }

    while (v36);
  }

  if ([v9 count])
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v56 = catalogAssetsCopy;
    v41 = catalogAssetsCopy;
    v42 = [v41 countByEnumeratingWithState:&v61 objects:v71 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v62;
      do
      {
        for (j = 0; j != v43; ++j)
        {
          if (*v62 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v61 + 1) + 8 * j);
          identifier2 = [v46 identifier];
          if ([v9 containsObject:identifier2] && ((objc_msgSend(v46, "isMTModel") & 1) != 0 || objc_msgSend(v46, "isPhrasebook")))
          {
            [array3 addObject:v46];
            [array4 addObject:v46];
            [v9 removeObject:identifier2];
          }
        }

        v43 = [v41 countByEnumeratingWithState:&v61 objects:v71 count:16];
      }

      while (v43);
    }

    catalogAssetsCopy = v56;
  }

  v48 = [array2 copy];
  mtAssets = selfCopy->_mtAssets;
  selfCopy->_mtAssets = v48;

  v50 = [array copy];
  allAssets = selfCopy->_allAssets;
  selfCopy->_allAssets = v50;

  v52 = [array3 copy];
  missingAssets = selfCopy->_missingAssets;
  selfCopy->_missingAssets = v52;

  v54 = [array4 copy];
  missingMTAssets = selfCopy->_missingMTAssets;
  selfCopy->_missingMTAssets = v54;
}

- (BOOL)updateAvailableInAssets:(id)assets
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  assetsCopy = assets;
  v5 = [assetsCopy countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(assetsCopy);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v10 = self->_allAssets;
        v11 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v18;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v18 != v13)
              {
                objc_enumerationMutation(v10);
              }

              if ([v9 isNewerCompatibleVersionThan:*(*(&v17 + 1) + 8 * j)])
              {

                v15 = 1;
                goto LABEL_19;
              }
            }

            v12 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }
      }

      v6 = [assetsCopy countByEnumeratingWithState:&v21 objects:v26 count:16];
      v15 = 0;
    }

    while (v6);
  }

  else
  {
    v15 = 0;
  }

LABEL_19:

  return v15;
}

- (id)speechModelURLForLocale:(id)locale taskHint:(int64_t)hint
{
  v29 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  sourceLocale = [(_LTLocalePair *)self->_localePair sourceLocale];
  v8 = [sourceLocale isEqual:localeCopy];

  v9 = 40;
  if (v8)
  {
    v9 = 32;
    v10 = @"Source";
  }

  else
  {
    v10 = @"Target";
  }

  v11 = *(&self->super.isa + v9);
  v12 = [v11 getLocalFileUrlForTaskHint:hint];
  v14 = _LTOSLogAssets(v12, v13);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    v17 = v14;
    localeIdentifier = [localeCopy localeIdentifier];
    v23 = 138543874;
    v24 = v10;
    v25 = 2114;
    v26 = localeIdentifier;
    v27 = 2112;
    v28 = v11;
    _os_log_impl(&dword_232E53000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ ASR Model locale: %{public}@ model: %@", &v23, 0x20u);
  }

  v19 = _LTOSLogAssets(v15, v16);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    v21 = _LTTranslationTaskHintString();
    v23 = 138543874;
    v24 = v10;
    v25 = 2112;
    v26 = v12;
    v27 = 2114;
    v28 = v21;
    _os_log_impl(&dword_232E53000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ ASR Model local file URL %@: for taskHint: %{public}@", &v23, 0x20u);
  }

  return v12;
}

- (id)speechModelVersionForLocale:(id)locale
{
  localePair = self->_localePair;
  localeCopy = locale;
  targetLocale = [(_LTLocalePair *)localePair targetLocale];
  v7 = [targetLocale isEqual:localeCopy];

  v8 = 32;
  if (v7)
  {
    v8 = 40;
  }

  assetVersion = [*(&self->super.isa + v8) assetVersion];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:assetVersion];
  stringValue = [v10 stringValue];

  return stringValue;
}

- (id)translationModelURLs
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_allAssets;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

        getLocalFileUrl = [*(*(&v11 + 1) + 8 * v7++) getLocalFileUrl];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  modelURLs = self->_modelURLs;

  return modelURLs;
}

- (BOOL)isCompletePassthroughModelForTaskHint:(int64_t)hint
{
  isPassthrough = [(_LTLocalePair *)self->_localePair isPassthrough];
  if (isPassthrough)
  {
    sourceASRModel = self->_sourceASRModel;
    if (sourceASRModel)
    {
      isPassthrough = [(_LTDAssetModel *)sourceASRModel isInstalled];
      if (isPassthrough)
      {
        v7 = self->_sourceASRModel;

        LOBYTE(isPassthrough) = [(_LTDAssetModel *)v7 isASRModelSupportingTaskHint:hint];
      }
    }

    else
    {
      LOBYTE(isPassthrough) = 1;
    }
  }

  return isPassthrough;
}

- (BOOL)isCompleteBidirectionalModelForTaskHint:(int64_t)hint
{
  v31 = *MEMORY[0x277D85DE8];
  if ([(_LTSpeechTranslationAssetInfo *)self _validateSymlinksForAssets:self->_mtAssets])
  {
    v5 = 1;
  }

  else
  {
    [(_LTSpeechTranslationAssetInfo *)self createSymlinkDirectoryForMTAssets];
    v5 = [(_LTSpeechTranslationAssetInfo *)self _validateSymlinksForAssets:self->_mtAssets];
  }

  sourceASRModel = self->_sourceASRModel;
  if (sourceASRModel)
  {
    if ([(_LTDAssetModel *)sourceASRModel isInstalled])
    {
      v7 = [(_LTDAssetModel *)self->_sourceASRModel isASRModelSupportingTaskHint:hint];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  targetASRModel = self->_targetASRModel;
  if (targetASRModel)
  {
    if ([(_LTDAssetModel *)targetASRModel isInstalled])
    {
      v9 = [(_LTDAssetModel *)self->_targetASRModel isASRModelSupportingTaskHint:hint];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  _mtModelOfflineState = [(_LTSpeechTranslationAssetInfo *)self _mtModelOfflineState];
  v12 = _LTOSLogAssets(_mtModelOfflineState, v11);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if ((hint & 0xFFFFFFFFFFFFFFFDLL) == 9)
  {
    if (v13)
    {
      v19 = 67109632;
      v20 = v7;
      v21 = 1024;
      v22 = v9;
      v23 = 1024;
      v24 = _mtModelOfflineState == 2;
      _os_log_impl(&dword_232E53000, v12, OS_LOG_TYPE_DEFAULT, "Models - sourceASR: %{BOOL}i (ignored), targetASR %{BOOL}i (ignored), mt: %{BOOL}i", &v19, 0x14u);
    }
  }

  else
  {
    if (v13)
    {
      v14 = v12;
      v15 = _LTTranslationTaskHintString();
      v16 = self->_sourceASRModel;
      v17 = self->_targetASRModel;
      v19 = 67110402;
      v20 = v7;
      v21 = 1024;
      v22 = v9;
      v23 = 1024;
      v24 = _mtModelOfflineState == 2;
      v25 = 2114;
      v26 = v15;
      v27 = 2112;
      v28 = v16;
      v29 = 2112;
      v30 = v17;
      _os_log_impl(&dword_232E53000, v14, OS_LOG_TYPE_DEFAULT, "Models - sourceASR: %{BOOL}i, targetASR: %{BOOL}i, mt: %{BOOL}i, taskHint: %{public}@, sourceASRModel: %@, targetASRModel: %@", &v19, 0x32u);
    }

    v5 &= v7 && v9;
  }

  if (_mtModelOfflineState == 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (int64_t)_mtModelOfflineState
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(NSArray *)self->_missingAssets count])
  {
    return 0;
  }

  if (_anyDownloading(self->_mtAssets))
  {
    return 1;
  }

  v4 = self->_modelURLs;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v4;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = MEMORY[0x277CCAA00];
        v11 = *(*(&v14 + 1) + 8 * v9);
        defaultManager = [v10 defaultManager];
        path = [v11 path];

        LODWORD(v11) = [defaultManager fileExistsAtPath:path];
        if (!v11)
        {

          return 0;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if (_allInstalled(self->_mtAssets))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (id)availabilityInfo
{
  v3 = [objc_alloc(MEMORY[0x277CE1B18]) initWithLocales:self->_localePair];
  _mtModelOfflineState = [(_LTSpeechTranslationAssetInfo *)self _mtModelOfflineState];
  v5 = _LTOfflineStateString();
  [v3 setMtState:v5];

  stateDescription = [(_LTDAssetModel *)self->_sourceASRModel stateDescription];
  [v3 setSourceASRState:stateDescription];

  stateDescription2 = [(_LTDAssetModel *)self->_targetASRModel stateDescription];
  [v3 setTargetASRState:stateDescription2];

  if (_mtModelOfflineState == 2 || [(_LTLocalePair *)self->_localePair isPassthrough]&& _allInstalled(self->_allAssets) && ![(NSArray *)self->_missingAssets count])
  {
    v8 = 2;
  }

  else
  {
    v8 = _anyDownloading(self->_allAssets);
  }

  [v3 setPairState:v8];
  [v3 setNeedsUpdate:self->_needsUpdate];

  return v3;
}

+ (id)_languagePairDirectoryForLocalePair:(id)pair
{
  pairCopy = pair;
  v4 = +[_LTOfflineAssetManager assetDirectory];
  canonicalIdentifier = [pairCopy canonicalIdentifier];

  v6 = [v4 URLByAppendingPathComponent:canonicalIdentifier];

  return v6;
}

- (BOOL)_validateSymlinksForAssets:(id)assets
{
  v20 = *MEMORY[0x277D85DE8];
  p_missingMTAssets = &self->_missingMTAssets;
  v5 = [(NSArray *)self->_missingMTAssets count];
  if (v5 || (v5 = [(NSArray *)self->_allAssets count]) == 0)
  {
    v7 = _LTOSLogAssets(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(_LTSpeechTranslationAssetInfo *)self _validateSymlinksForAssets:v7];
    }

    return 0;
  }

  localePair = self->_localePair;
  p_localePair = &self->_localePair;
  v12 = [_LTSpeechTranslationAssetInfo _validTopLevelSymlinkDirectory:localePair configAssetURL:0 assets:p_localePair[5]];
  v13 = v12;
  v15 = _LTOSLogAssets(v12, v14);
  v16 = v15;
  if ((v13 & 1) == 0)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [_LTSpeechTranslationAssetInfo _validateSymlinksForAssets:];
    }

    return 0;
  }

  v8 = 1;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v17 = *p_localePair;
    v18 = 138543362;
    v19 = v17;
    _os_log_impl(&dword_232E53000, v16, OS_LOG_TYPE_INFO, "Asset symlink skip accounting for %{public}@", &v18, 0xCu);
  }

  return v8;
}

+ (void)_createSymlink:(id)symlink target:(id)target error:(id *)error
{
  symlinkCopy = symlink;
  targetCopy = target;
  v10 = _LTOSLogAssets(targetCopy, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [_LTSpeechTranslationAssetInfo _createSymlink:v10 target:symlinkCopy error:?];
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [targetCopy path];
  path2 = [symlinkCopy path];
  [defaultManager createSymbolicLinkAtPath:path withDestinationPath:path2 error:error];

  if (*error)
  {
    v16 = _LTOSLogAssets(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[_LTSpeechTranslationAssetInfo _createSymlink:target:error:];
    }
  }
}

+ (void)_createSymlinksFromDirectory:(id)directory target:(id)target error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  targetCopy = target;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [targetCopy path];
  [defaultManager createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:error];

  if (*error)
  {
    v14 = _LTOSLogAssets(v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[_LTSpeechTranslationAssetInfo _createSymlinksFromDirectory:target:error:];
    }
  }

  else
  {
    path2 = [directoryCopy path];
    v16 = [defaultManager contentsOfDirectoryAtPath:path2 error:error];

    if (*error)
    {
      v19 = _LTOSLogAssets(v17, v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        +[_LTSpeechTranslationAssetInfo _createSymlinksFromDirectory:target:error:];
      }
    }

    else
    {
      selfCopy = self;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v31 = v16;
      obj = v16;
      v20 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v36;
        while (2)
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v36 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v35 + 1) + 8 * i);
            v25 = [targetCopy URLByAppendingPathComponent:{v24, v31}];
            v26 = [directoryCopy URLByAppendingPathComponent:v24];
            v34 = 0;
            path3 = [v26 path];
            [defaultManager fileExistsAtPath:path3 isDirectory:&v34];

            if (v34 == 1)
            {
              v30 = _LTOSLogAssets(v28, v29);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
              {
                [(_LTSpeechTranslationAssetInfo *)v39 _createSymlinksFromDirectory:v30 target:v26 error:&v40];
              }

              [selfCopy _createSymlinksFromDirectory:v26 target:v25 error:error];
            }

            else
            {
              [selfCopy _createSymlink:v26 target:v25 error:error];
            }

            if (*error)
            {

              goto LABEL_22;
            }
          }

          v21 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

LABEL_22:

      v16 = v31;
    }
  }
}

+ (BOOL)_createSymlinkDirectoryForLocalePair:(id)pair assets:(id)assets validateIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  assetsCopy = assets;
  pairCopy = pair;
  v9 = [_LTDAssetService configAssetIfAvailableWithError:0];
  LOBYTE(neededCopy) = [_LTSpeechTranslationAssetInfo _createSymlinkDirectoryForLocalePair:pairCopy assets:assetsCopy configAsset:v9 validateIfNeeded:neededCopy];

  return neededCopy;
}

+ (BOOL)_validTopLevelSymlinkDirectory:(id)directory configAssetURL:(id)l assets:(id)assets
{
  v68 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  lCopy = l;
  assetsCopy = assets;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [self _languagePairDirectoryForLocalePair:directoryCopy];
  v58 = [v12 URLByAppendingPathComponent:@"mt-quasar-config.json"];
  path = [v58 path];
  LOBYTE(l) = [defaultManager fileExistsAtPath:path];

  if ((l & 1) == 0)
  {
    v45 = _LTOSLogAssets(v14, v15);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      +[_LTSpeechTranslationAssetInfo _validTopLevelSymlinkDirectory:configAssetURL:assets:];
    }

    goto LABEL_31;
  }

  if (lCopy)
  {
    path2 = [v58 path];
    v64 = 0;
    v17 = [defaultManager destinationOfSymbolicLinkAtPath:path2 error:&v64];
    v18 = v64;

    if (!v18)
    {
      path3 = [lCopy path];
      v22 = [v17 isEqualToString:path3];

      if (v22)
      {

        goto LABEL_6;
      }
    }

    v46 = _LTOSLogAssets(v19, v20);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
    {
      +[_LTSpeechTranslationAssetInfo _validTopLevelSymlinkDirectory:configAssetURL:assets:];
    }

LABEL_31:
    v44 = 0;
    goto LABEL_44;
  }

LABEL_6:
  v54 = assetsCopy;
  v55 = lCopy;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v23 = assetsCopy;
  v24 = [v23 countByEnumeratingWithState:&v60 objects:v67 count:16];
  if (v24)
  {
    v25 = v24;
    v53 = directoryCopy;
    v26 = *v61;
    v56 = v12;
    v57 = v23;
LABEL_8:
    v27 = 0;
    while (1)
    {
      if (*v61 != v26)
      {
        objc_enumerationMutation(v23);
      }

      v28 = *(*(&v60 + 1) + 8 * v27);
      if ([v28 isMTModel])
      {
        break;
      }

      if ([v28 isPhrasebook])
      {
        identifier = [v28 identifier];
        v30 = [v12 URLByAppendingPathComponent:identifier];

        getLocalFileUrl = [v28 getLocalFileUrl];
        path4 = [v30 path];
        v59 = 0;
        v38 = [defaultManager destinationOfSymbolicLinkAtPath:path4 error:&v59];
        v39 = v59;

        path5 = [v30 path];
        if ([defaultManager fileExistsAtPath:path5])
        {
          v41 = v39 == 0;
        }

        else
        {
          v41 = 0;
        }

        if (!v41)
        {

          goto LABEL_39;
        }

        path6 = [getLocalFileUrl path];
        v43 = [v38 isEqualToString:path6];

        if ((v43 & 1) == 0)
        {
          v39 = 0;
LABEL_39:
          v51 = _LTOSLogAssets(v49, v50);
          assetsCopy = v54;
          lCopy = v55;
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
          {
            +[_LTSpeechTranslationAssetInfo _validTopLevelSymlinkDirectory:configAssetURL:assets:];
          }

          v12 = v56;
          v23 = v57;
          directoryCopy = v53;
LABEL_42:

          v44 = 0;
          goto LABEL_43;
        }

        v12 = v56;
        v23 = v57;
        goto LABEL_22;
      }

LABEL_23:
      if (v25 == ++v27)
      {
        v25 = [v23 countByEnumeratingWithState:&v60 objects:v67 count:16];
        if (v25)
        {
          goto LABEL_8;
        }

        v44 = 1;
        directoryCopy = v53;
        goto LABEL_33;
      }
    }

    coreAssetName = [v28 coreAssetName];
    v30 = [v12 URLByAppendingPathComponent:coreAssetName];

    path7 = [v30 path];
    v32 = [defaultManager fileExistsAtPath:path7];

    if ((v32 & 1) == 0)
    {
      v47 = _LTOSLogAssets(v33, v34);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        directoryCopy = v53;
        v66 = v53;
        _os_log_impl(&dword_232E53000, v47, OS_LOG_TYPE_INFO, "Did not find translation model folder in symlink directory for %{public}@", buf, 0xCu);
      }

      else
      {
        directoryCopy = v53;
      }

      assetsCopy = v54;
      lCopy = v55;
      goto LABEL_42;
    }

LABEL_22:

    goto LABEL_23;
  }

  v44 = 1;
LABEL_33:
  assetsCopy = v54;
  lCopy = v55;
LABEL_43:

LABEL_44:
  return v44;
}

+ (BOOL)_createSymlinkDirectoryForLocalePair:(id)pair assets:(id)assets configAsset:(id)asset validateIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v119 = *MEMORY[0x277D85DE8];
  pairCopy = pair;
  assetsCopy = assets;
  assetCopy = asset;
  if (pairCopy && [assetsCopy count])
  {
    isPassthrough = [pairCopy isPassthrough];
    if ((isPassthrough & 1) != 0 || (isPassthrough = [pairCopy isVariantPair], isPassthrough))
    {
      v15 = _LTOSLogAssets(isPassthrough, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = v15;
        identifier = [pairCopy identifier];
        *buf = 138543362;
        v115 = identifier;
        _os_log_impl(&dword_232E53000, v16, OS_LOG_TYPE_INFO, "Skipping symlinks creation for passthrough / variant pair %{public}@", buf, 0xCu);
      }

      goto LABEL_7;
    }

    v20 = _LTOSLogAssets(isPassthrough, v14);
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
    if (v21)
    {
      v23 = v20;
      identifier2 = [pairCopy identifier];
      *buf = 138543362;
      v115 = identifier2;
      _os_log_impl(&dword_232E53000, v23, OS_LOG_TYPE_INFO, "Updating symlinks for %{public}@", buf, 0xCu);
    }

    if (!assetCopy)
    {
      v32 = _LTOSLogAssets(v21, v22);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [_LTSpeechTranslationAssetInfo _createSymlinkDirectoryForLocalePair:v32 assets:? configAsset:? validateIfNeeded:?];
      }

      goto LABEL_7;
    }

    getLocalFileUrl = [assetCopy getLocalFileUrl];
    if (!getLocalFileUrl)
    {
      v33 = _LTOSLogAssets(0, v25);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [_LTSpeechTranslationAssetInfo _createSymlinkDirectoryForLocalePair:v33 assets:? configAsset:? validateIfNeeded:?];
      }

      v18 = 0;
      goto LABEL_75;
    }

    v113 = 0;
    v27 = [_LTDConfigurationService offlineConfigurationWithError:&v113];
    v28 = v113;
    if (v28)
    {
      v30 = v28;
      v31 = _LTOSLogAssets(v28, v29);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        +[_LTSpeechTranslationAssetInfo _createSymlinkDirectoryForLocalePair:assets:configAsset:validateIfNeeded:];
      }

      v18 = 0;
      goto LABEL_74;
    }

    canonicalIdentifier = [pairCopy canonicalIdentifier];
    v35 = [v27 offlinePairConfigurationWithIdentifier:canonicalIdentifier];

    v99 = v35;
    pairAssetConfigFile = [v35 pairAssetConfigFile];
    if (!pairAssetConfigFile)
    {
      v47 = _LTOSLogAssets(0, v36);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        [_LTSpeechTranslationAssetInfo _createSymlinkDirectoryForLocalePair:v47 assets:? configAsset:? validateIfNeeded:?];
      }

      v30 = 0;
      v18 = 0;
      v41 = v99;
      goto LABEL_73;
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v96 = [self _languagePairDirectoryForLocalePair:pairCopy];
    v95 = [getLocalFileUrl URLByAppendingPathComponent:pairAssetConfigFile];
    if (neededCopy)
    {
      v38 = [_LTSpeechTranslationAssetInfo _validTopLevelSymlinkDirectory:pairCopy configAssetURL:v95 assets:assetsCopy];
      if (v38)
      {
        v40 = _LTOSLogAssets(v38, v39);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v115 = pairCopy;
          _os_log_impl(&dword_232E53000, v40, OS_LOG_TYPE_INFO, "Skipping symlink directiory creation, found necessary symlinks on disk for %{public}@", buf, 0xCu);
        }

        v30 = 0;
        v18 = 0;
        v41 = v99;
        v42 = defaultManager;
        goto LABEL_72;
      }
    }

    v43 = [v96 URLByAppendingPathExtension:@"tmp"];
    [defaultManager removeItemAtURL:v43 error:0];
    v112 = 0;
    [defaultManager createDirectoryAtURL:v43 withIntermediateDirectories:1 attributes:0 error:&v112];
    v44 = v112;
    v101 = v44;
    v102 = v43;
    if (v44)
    {
      v46 = _LTOSLogAssets(v44, v45);
      v41 = v35;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v30 = v101;
        +[_LTSpeechTranslationAssetInfo _createSymlinkDirectoryForLocalePair:assets:configAsset:validateIfNeeded:];
        v18 = 0;
        v42 = defaultManager;
      }

      else
      {
        v18 = 0;
        v42 = defaultManager;
        v30 = v101;
      }

      goto LABEL_71;
    }

    v87 = pairAssetConfigFile;
    v88 = v27;
    v48 = [v43 URLByAppendingPathComponent:@"mt-quasar-config.json"];
    path = [v48 path];
    path2 = [v95 path];
    v111 = 0;
    [defaultManager createSymbolicLinkAtPath:path withDestinationPath:path2 error:&v111];
    v51 = v111;

    v89 = v51;
    if (v51)
    {
      v54 = _LTOSLogAssets(v52, v53);
      v30 = 0;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
      {
        +[_LTSpeechTranslationAssetInfo _createSymlinkDirectoryForLocalePair:assets:configAsset:validateIfNeeded:];
      }

      v18 = 0;
      pairAssetConfigFile = v87;
      v27 = v88;
      v41 = v99;
      v42 = defaultManager;
LABEL_70:

LABEL_71:
LABEL_72:

LABEL_73:
LABEL_74:

LABEL_75:
      goto LABEL_8;
    }

    v86 = getLocalFileUrl;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    obj = assetsCopy;
    v30 = 0;
    v97 = [obj countByEnumeratingWithState:&v107 objects:v118 count:16];
    if (!v97)
    {
LABEL_54:

      v104 = 0;
      v74 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictionary options:0 error:&v104];
      v75 = v104;
      v98 = v75;
      if (v75)
      {
        v77 = _LTOSLogAssets(v75, v76);
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          +[_LTSpeechTranslationAssetInfo _createSymlinkDirectoryForLocalePair:assets:configAsset:validateIfNeeded:];
        }
      }

      v78 = [v102 URLByAppendingPathComponent:@"assets.json"];
      [v74 writeToURL:v78 atomically:1];

      v42 = defaultManager;
      [defaultManager removeItemAtURL:v96 error:0];
      v103 = 0;
      [defaultManager moveItemAtURL:v102 toURL:v96 error:&v103];
      v79 = v103;
      v81 = v79;
      v27 = v88;
      if (v79)
      {
        v82 = _LTOSLogAssets(v79, v80);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
        {
          +[_LTSpeechTranslationAssetInfo _createSymlinkDirectoryForLocalePair:assets:configAsset:validateIfNeeded:];
        }
      }

      v18 = 1;
      getLocalFileUrl = v86;
      v41 = v99;
LABEL_69:

      pairAssetConfigFile = v87;
      goto LABEL_70;
    }

    v94 = *v108;
LABEL_40:
    v55 = 0;
    while (1)
    {
      if (*v108 != v94)
      {
        objc_enumerationMutation(obj);
      }

      v56 = *(*(&v107 + 1) + 8 * v55);
      if ([v56 isMTModel])
      {
        break;
      }

      if ([v56 isPhrasebook])
      {
        identifier3 = [v56 identifier];
        identifier4 = [v56 identifier];
        [dictionary setObject:identifier3 forKeyedSubscript:identifier4];

        v91 = identifier3;
        v60 = [v102 URLByAppendingPathComponent:identifier3];
        getLocalFileUrl2 = [v56 getLocalFileUrl];
        v69 = _LTOSLogAssets(getLocalFileUrl2, v68);
        if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
        {
          *buf = 138543618;
          v115 = getLocalFileUrl2;
          v116 = 2114;
          v117 = v60;
          _os_log_impl(&dword_232E53000, v69, OS_LOG_TYPE_INFO, "Creating link from %{public}@ to %{public}@", buf, 0x16u);
        }

        path3 = [v60 path];
        path4 = [getLocalFileUrl2 path];
        v105 = 0;
        [defaultManager createSymbolicLinkAtPath:path3 withDestinationPath:path4 error:&v105];
        v71 = v105;

        if (v71)
        {
          v84 = getLocalFileUrl2;
          v98 = v71;
          v85 = _LTOSLogAssets(v72, v73);
          v27 = v88;
          v30 = 0;
          if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
          {
            +[_LTSpeechTranslationAssetInfo _createSymlinkDirectoryForLocalePair:assets:configAsset:validateIfNeeded:];
          }

          getLocalFileUrl = v86;
          v41 = v99;
          v42 = defaultManager;
          v59 = v91;
          goto LABEL_68;
        }

        v30 = 0;
        v59 = v91;
        goto LABEL_51;
      }

LABEL_52:
      if (v97 == ++v55)
      {
        v97 = [obj countByEnumeratingWithState:&v107 objects:v118 count:16];
        if (v97)
        {
          goto LABEL_40;
        }

        goto LABEL_54;
      }
    }

    coreAssetName = [v56 coreAssetName];
    identifier5 = [v56 identifier];
    [dictionary setObject:coreAssetName forKeyedSubscript:identifier5];

    v59 = coreAssetName;
    v60 = [v102 URLByAppendingPathComponent:coreAssetName];
    getLocalFileUrl3 = [v56 getLocalFileUrl];
    v106 = 0;
    [self _createSymlinksFromDirectory:getLocalFileUrl3 target:v60 error:&v106];
    v62 = v106;

    if (v62)
    {
      v98 = v62;
      v83 = _LTOSLogAssets(v63, v64);
      v27 = v88;
      if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
      {
        +[_LTSpeechTranslationAssetInfo _createSymlinkDirectoryForLocalePair:assets:configAsset:validateIfNeeded:];
      }

      getLocalFileUrl = v86;
      v41 = v99;
      v42 = defaultManager;
      v30 = 0;
LABEL_68:

      [v42 removeItemAtURL:v102 error:0];
      v18 = 0;
      goto LABEL_69;
    }

    v30 = 0;
LABEL_51:

    goto LABEL_52;
  }

LABEL_7:
  v18 = 0;
LABEL_8:

  return v18;
}

- (void)downloadAssetsUserInitiated:(BOOL)initiated queue:(id)queue completion:(id)completion
{
  initiatedCopy = initiated;
  v54 = *MEMORY[0x277D85DE8];
  queue = queue;
  completionCopy = completion;
  if ([(NSArray *)self->_missingAssets count])
  {
    v9 = dispatch_group_create();
    v11 = _LTOSLogAssets(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      localePair = self->_localePair;
      v13 = v11;
      identifier = [(_LTLocalePair *)localePair identifier];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = identifier;
      _os_log_impl(&dword_232E53000, v13, OS_LOG_TYPE_INFO, "Requested to download asset for: %{public}@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v50 = 0x3032000000;
    v51 = __Block_byref_object_copy__13;
    v52 = __Block_byref_object_dispose__13;
    v53 = 0;
    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x3032000000;
    v44[3] = __Block_byref_object_copy__13;
    v44[4] = __Block_byref_object_dispose__13;
    v45 = self->_localePair;
    v42[0] = 0;
    v42[1] = v42;
    v42[2] = 0x3032000000;
    v42[3] = __Block_byref_object_copy__13;
    v42[4] = __Block_byref_object_dispose__13;
    v43 = [(NSArray *)self->_missingMTAssets arrayByAddingObjectsFromArray:self->_mtAssets];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = self->_missingAssets;
    v15 = [(NSArray *)obj countByEnumeratingWithState:&v38 objects:v48 count:16];
    v17 = v15;
    if (v15)
    {
      v18 = *v39;
      do
      {
        v19 = 0;
        do
        {
          if (*v39 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v38 + 1) + 8 * v19);
          v21 = _LTOSLogAssets(v15, v16);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *v46 = 138543362;
            v47 = v20;
            _os_log_impl(&dword_232E53000, v21, OS_LOG_TYPE_INFO, "Starting download for asset with attributes: %{public}@", v46, 0xCu);
          }

          dispatch_group_enter(v9);
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __78___LTSpeechTranslationAssetInfo_downloadAssetsUserInitiated_queue_completion___block_invoke;
          v34[3] = &unk_2789B7BF8;
          p_buf = &buf;
          v37 = v44;
          v35 = v9;
          [_LTDAssetService downloadAsset:v20 options:initiatedCopy | 2 progress:0 completion:v34];

          ++v19;
        }

        while (v17 != v19);
        v15 = [(NSArray *)obj countByEnumeratingWithState:&v38 objects:v48 count:16];
        v17 = v15;
      }

      while (v15);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __78___LTSpeechTranslationAssetInfo_downloadAssetsUserInitiated_queue_completion___block_invoke_31;
    block[3] = &unk_2789B5758;
    v31 = &buf;
    v32 = v44;
    v33 = v42;
    v30 = completionCopy;
    dispatch_group_notify(v9, queue, block);

    _Block_object_dispose(v42, 8);
    _Block_object_dispose(v44, 8);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v22 = _LTOSLogAssets(0, v8);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = self->_localePair;
      v24 = v22;
      identifier2 = [(_LTLocalePair *)v23 identifier];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = identifier2;
      _os_log_impl(&dword_232E53000, v24, OS_LOG_TYPE_INFO, "No downloadable assets missing asset for: %{public}@", &buf, 0xCu);
    }

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (void)purgeAssetUserInitiated:(BOOL)initiated queue:(id)queue completion:(id)completion
{
  initiatedCopy = initiated;
  v75 = *MEMORY[0x277D85DE8];
  queue = queue;
  completionCopy = completion;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v42 = +[_LTOfflineAssetManager assetDirectory];
  assetIdentifierReferenceCountDictionary = [(_LTOfflineAssetManager *)self->_assetManager assetIdentifierReferenceCountDictionary];
  v8 = _LTOSLogAssets(assetIdentifierReferenceCountDictionary, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    assetManager = self->_assetManager;
    v10 = v8;
    assetIdentifierReferenceCountDictionary2 = [(_LTOfflineAssetManager *)assetManager assetIdentifierReferenceCountDictionary];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = assetIdentifierReferenceCountDictionary2;
    _os_log_impl(&dword_232E53000, v10, OS_LOG_TYPE_INFO, "Reference counts before purge %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v71 = 0x3032000000;
  v72 = __Block_byref_object_copy__13;
  v73 = __Block_byref_object_dispose__13;
  v74 = 0;
  v12 = dispatch_group_create();
  identifier = [(_LTLocalePair *)self->_localePair identifier];
  v44 = [v42 URLByAppendingPathComponent:identifier];

  path = [v44 path];
  v15 = [defaultManager fileExistsAtPath:path];

  if (v15)
  {
    v18 = _LTOSLogAssets(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v66 = 138543618;
      v67 = v44;
      v68 = 1024;
      v69 = initiatedCopy;
      _os_log_impl(&dword_232E53000, v18, OS_LOG_TYPE_DEFAULT, "Starting purge for %{public}@; userInitiated: %{BOOL}i", v66, 0x12u);
    }

    v63 = 0;
    [defaultManager removeItemAtURL:v44 error:&v63];
    v19 = v63;
    v39 = v19;
    if (v19)
    {
      v21 = _LTOSLogAssets(v19, v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [_LTSpeechTranslationAssetInfo purgeAssetUserInitiated:queue:completion:];
      }
    }

    array = [MEMORY[0x277CBEB18] array];
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v23 = self->_allAssets;
    v24 = [(NSArray *)v23 countByEnumeratingWithState:&v59 objects:v65 count:16];
    if (v24)
    {
      v25 = *v60;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v60 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = *(*(&v59 + 1) + 8 * i);
          identifier2 = [v27 identifier];
          v29 = [assetIdentifierReferenceCountDictionary objectForKeyedSubscript:identifier2];

          if (!v29 || [v29 integerValue] <= 1)
          {
            [array addObject:v27];
          }
        }

        v24 = [(NSArray *)v23 countByEnumeratingWithState:&v59 objects:v65 count:16];
      }

      while (v24);
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = array;
    v30 = [obj countByEnumeratingWithState:&v55 objects:v64 count:16];
    v32 = v30;
    if (v30)
    {
      v33 = *v56;
      do
      {
        v34 = 0;
        do
        {
          if (*v56 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v55 + 1) + 8 * v34);
          v36 = _LTOSLogAssets(v30, v31);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            identifier3 = [v35 identifier];
            *v66 = 138543362;
            v67 = identifier3;
            _os_log_impl(&dword_232E53000, v36, OS_LOG_TYPE_INFO, "Starting purge for asset %{public}@", v66, 0xCu);
          }

          dispatch_group_enter(v12);
          v52[0] = MEMORY[0x277D85DD0];
          v52[1] = 3221225472;
          v52[2] = __74___LTSpeechTranslationAssetInfo_purgeAssetUserInitiated_queue_completion___block_invoke;
          v52[3] = &unk_2789B7C20;
          v52[4] = v35;
          p_buf = &buf;
          v53 = v12;
          [_LTDAssetService purgeAsset:v35 completion:v52];

          ++v34;
        }

        while (v32 != v34);
        v30 = [obj countByEnumeratingWithState:&v55 objects:v64 count:16];
        v32 = v30;
      }

      while (v30);
    }

    objc_initWeak(v66, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74___LTSpeechTranslationAssetInfo_purgeAssetUserInitiated_queue_completion___block_invoke_34;
    block[3] = &unk_2789B7C48;
    objc_copyWeak(&v51, v66);
    v50 = &buf;
    v49 = completionCopy;
    dispatch_group_notify(v12, queue, block);

    objc_destroyWeak(&v51);
    objc_destroyWeak(v66);
  }

  else
  {
    v38 = _LTOSLogAssets(v16, v17);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      *v66 = 138543362;
      v67 = v44;
      _os_log_impl(&dword_232E53000, v38, OS_LOG_TYPE_INFO, "Language pair directory doesn't exist %{public}@; nothing to purge", v66, 0xCu);
    }

    v39 = 0;
  }

  _Block_object_dispose(&buf, 8);
}

- (void)initWithInstalledAssets:(uint64_t)a1 catalogAssets:(void *)a2 localePair:offlineConfig:assetManager:.cold.1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_7() debugDescription];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5(&dword_232E53000, v5, v6, "Malformed config asset %@", v7, v8, v9, v10);
}

- (void)_validateSymlinksForAssets:.cold.1()
{
  OUTLINED_FUNCTION_4(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Did not find required top-level symlinks for %{public}@", v2, v3, v4, v5);
}

- (void)_validateSymlinksForAssets:(void *)a3 .cold.2(uint64_t a1, void **a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a3;
  v7 = [v5 count];
  v8 = [*(a1 + 48) count];
  v9 = 138543874;
  v10 = v4;
  v11 = 2048;
  v12 = v7;
  v13 = 2048;
  v14 = v8;
  _os_log_error_impl(&dword_232E53000, v6, OS_LOG_TYPE_ERROR, "Asset symlink validation for %{public}@ failed due to missing assets %zu or no assets %zu", &v9, 0x20u);
}

+ (void)_createSymlink:(void *)a1 target:(void *)a2 error:.cold.1(void *a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a1;
  [a2 path];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_7() path];
  v5 = 138543618;
  v6 = a2;
  v7 = 2114;
  v8 = v4;
  _os_log_debug_impl(&dword_232E53000, v3, OS_LOG_TYPE_DEBUG, "Creating link from %{public}@ to %{public}@", &v5, 0x16u);
}

+ (void)_createSymlink:target:error:.cold.2()
{
  OUTLINED_FUNCTION_4(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to link model file: %@", v2, v3, v4, v5);
}

+ (void)_createSymlinksFromDirectory:target:error:.cold.1()
{
  OUTLINED_FUNCTION_4(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to create model directory: %@", v2, v3, v4, v5);
}

+ (void)_createSymlinksFromDirectory:target:error:.cold.2()
{
  OUTLINED_FUNCTION_4(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to obtain content of locale model files directory: %@", v2, v3, v4, v5);
}

+ (void)_createSymlinksFromDirectory:(void *)a3 target:(void *)a4 error:.cold.3(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 path];
  *a1 = 138543362;
  *a4 = v8;
  _os_log_debug_impl(&dword_232E53000, v7, OS_LOG_TYPE_DEBUG, "File is a directory, further descending: %{public}@", a1, 0xCu);
}

+ (void)_createSymlinkDirectoryForLocalePair:(void *)a1 assets:configAsset:validateIfNeeded:.cold.8(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_7() canonicalIdentifier];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5(&dword_232E53000, v4, v5, "Failed to find offline configuration for pair: %{public}@", v6, v7, v8, v9);
}

+ (void)_createSymlinkDirectoryForLocalePair:(void *)a1 assets:configAsset:validateIfNeeded:.cold.9(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_7() assetVersion];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5(&dword_232E53000, v3, v4, "Failed to get local file URL for configuration [ver: %zd]", v5, v6, v7, v8);
}

@end