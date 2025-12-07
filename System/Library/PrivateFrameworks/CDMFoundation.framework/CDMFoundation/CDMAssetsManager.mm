@interface CDMAssetsManager
+ (id)getAssetSetsInCacheForGraphName:(id)name;
+ (id)getFactorNamesForService:(id)service;
+ (id)getFactorToUnprocessedNLAsset:(id)asset cdmAssetsInfo:(id)info locale:(id)locale;
+ (id)getHashKeyForAssetSets:(id)sets;
+ (id)getHashKeyForCDMAssetsInfo:(id)info;
+ (id)getSingletonCDMAssetsManager;
- (BOOL)areAssetsAvailableForCDMAssetsInfo:(id)info factorToAsset:(id)asset withError:(id *)error withSelfMetadata:(id)metadata withSelfContextId:(id)id withDataDispatcherContext:(id)context;
- (BOOL)isAssetAvailableForCDMAssetsFactorConfig:(id)config factorToAsset:(id)asset withError:(id *)error;
- (BOOL)registerForCDMAssetsInfo:(id)info withLocale:(id)locale withAssetsDelegate:(id)delegate selfContextId:(id)id selfMetadata:(id)metadata dataDispatcherContext:(id)context withAssetAvailabilityType:(int64_t)type withError:(id *)self0;
- (BOOL)shouldReSetupForLocale:(id)locale cdmAssetsInfo:(id)info;
- (id)getAssetsByFactorNamesForCDMAssetsInfo:(id)info assetDirPath:(id)path locale:(id)locale;
- (id)getSavedResponseFromCacheForCDMAssetsInfo:(id)info locale:(id)locale assetSets:(id)sets;
- (id)initManager;
- (id)processNLAsset:(id)asset withAssetFolders:(id)folders;
- (id)processSideLoadedAssetForNLAsset:(id)asset withAssetFolders:(id)folders assetDirPath:(id)path locale:(id)locale;
- (void)_setupUafAssetManagerForLocale:(id)locale cdmAssetsInfo:(id)info error:(id *)error;
- (void)saveGetAssetsResponseForCDMAssetsInfo:(id)info locale:(id)locale assetSets:(id)sets forResponse:(id)response;
- (void)setupForLocale:(id)locale cdmAssetsInfo:(id)info error:(id *)error;
@end

@implementation CDMAssetsManager

+ (id)getSingletonCDMAssetsManager
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = "+[CDMAssetsManager getSingletonCDMAssetsManager]";
    _os_log_debug_impl(&dword_1DC287000, v2, OS_LOG_TYPE_DEBUG, "%s Fetching CDMAssetsManager", &v5, 0xCu);
  }

  if (getSingletonCDMAssetsManager_once != -1)
  {
    dispatch_once(&getSingletonCDMAssetsManager_once, &__block_literal_global_658);
  }

  v3 = getSingletonCDMAssetsManager_singletonCdmAssetsManager;

  return v3;
}

- (BOOL)registerForCDMAssetsInfo:(id)info withLocale:(id)locale withAssetsDelegate:(id)delegate selfContextId:(id)id selfMetadata:(id)metadata dataDispatcherContext:(id)context withAssetAvailabilityType:(int64_t)type withError:(id *)self0
{
  infoCopy = info;
  localeCopy = locale;
  delegateCopy = delegate;
  idCopy = id;
  metadataCopy = metadata;
  contextCopy = context;
  v22 = +[CDMUAFAssetsManager getNLUAFClientManagers];
  objc_sync_enter(v22);
  LOBYTE(self) = [(CDMUAFAssetsManager *)self->_cdmUAFAssetsManager registerForCDMAssetsInfo:infoCopy withLocale:localeCopy withAssetsDelegate:delegateCopy useFileManager:self->_fileManager withSelfContextId:idCopy withSelfMetadata:metadataCopy withDataDispatcherContext:contextCopy withAssetAvailabilityType:type withError:error];
  objc_sync_exit(v22);

  return self;
}

- (BOOL)areAssetsAvailableForCDMAssetsInfo:(id)info factorToAsset:(id)asset withError:(id *)error withSelfMetadata:(id)metadata withSelfContextId:(id)id withDataDispatcherContext:(id)context
{
  v71 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  assetCopy = asset;
  metadataCopy = metadata;
  idCopy = id;
  contextCopy = context;
  v14 = objc_alloc(MEMORY[0x1E695DF90]);
  getAllAssetSets = [infoCopy getAllAssetSets];
  v52 = [v14 initWithCapacity:{objc_msgSend(getAllAssetSets, "count")}];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v16 = infoCopy;
  getAllAssetSets2 = [infoCopy getAllAssetSets];
  v18 = [getAllAssetSets2 countByEnumeratingWithState:&v59 objects:v70 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v60;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v60 != v20)
        {
          objc_enumerationMutation(getAllAssetSets2);
        }

        v22 = *(*(&v59 + 1) + 8 * i);
        v23 = [v16 getCDMAssetsFactorConfigCDMAssetSet:{objc_msgSend(v22, "integerValue")}];
        v58 = 0;
        v24 = [(CDMAssetsManager *)self isAssetAvailableForCDMAssetsFactorConfig:v23 factorToAsset:assetCopy withError:&v58];
        v25 = v58;

        if (!v24)
        {
          [v52 setObject:v25 forKey:v22];
        }
      }

      v19 = [getAllAssetSets2 countByEnumeratingWithState:&v59 objects:v70 count:16];
    }

    while (v19);
  }

  v26 = v52;
  v27 = [v52 count];
  if (v27)
  {
    allKeys = [v52 allKeys];
    v29 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v47 = [allKeys componentsJoinedByString:@", "];
      *buf = 136315394;
      v67 = "[CDMAssetsManager areAssetsAvailableForCDMAssetsInfo:factorToAsset:withError:withSelfMetadata:withSelfContextId:withDataDispatcherContext:]";
      v68 = 2112;
      v69 = v47;
      _os_log_error_impl(&dword_1DC287000, v29, OS_LOG_TYPE_ERROR, "%s [ERR]: Assets for assetSets: [%@] are not available. Return NO.", buf, 0x16u);
    }

    v30 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    allValues = [v52 allValues];
    v32 = [allValues countByEnumeratingWithState:&v54 objects:v65 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v55;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v55 != v34)
          {
            objc_enumerationMutation(allValues);
          }

          localizedFailureReason = [*(*(&v54 + 1) + 8 * j) localizedFailureReason];
          [v30 appendString:localizedFailureReason];

          [v30 appendString:@"\n"];
        }

        v33 = [allValues countByEnumeratingWithState:&v54 objects:v65 count:16];
      }

      while (v33);
    }

    v37 = MEMORY[0x1E696ABC0];
    v63[0] = *MEMORY[0x1E696A578];
    v38 = MEMORY[0x1E696AEC0];
    v39 = [allKeys componentsJoinedByString:@", "];
    v40 = [v38 stringWithFormat:@"Assets are missing for services: [%@].", v39];
    v63[1] = *MEMORY[0x1E696A588];
    v64[0] = v40;
    v64[1] = v30;
    v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:2];
    *error = [v37 errorWithDomain:@"CDMAssetsManager" code:0 userInfo:v41];

    v43 = idCopy;
    v42 = metadataCopy;
    v44 = contextCopy;
    [CDMSELFLogUtil cdmSetupMissingAssetsDetected:metadataCopy contextId:idCopy serviceNames:0 logMessage:@"SELF setup missing assets detected message emitted" dataDispatcherContext:contextCopy];
    v45 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v67 = "[CDMAssetsManager areAssetsAvailableForCDMAssetsInfo:factorToAsset:withError:withSelfMetadata:withSelfContextId:withDataDispatcherContext:]";
      _os_log_error_impl(&dword_1DC287000, v45, OS_LOG_TYPE_ERROR, "%s [ERR]: Self heal the cache because not all assets found in assetSet", buf, 0xCu);
    }

    +[CDMUAFAssetsManager reInitCDMUAFAssetsCache];
    v26 = v52;
  }

  else
  {
    allKeys = CDMOSLoggerForCategory(0);
    v43 = idCopy;
    v42 = metadataCopy;
    v44 = contextCopy;
    if (os_log_type_enabled(allKeys, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v67 = "[CDMAssetsManager areAssetsAvailableForCDMAssetsInfo:factorToAsset:withError:withSelfMetadata:withSelfContextId:withDataDispatcherContext:]";
      _os_log_debug_impl(&dword_1DC287000, allKeys, OS_LOG_TYPE_DEBUG, "%s All required assets are available. Return YES.", buf, 0xCu);
    }
  }

  return v27 == 0;
}

- (BOOL)isAssetAvailableForCDMAssetsFactorConfig:(id)config factorToAsset:(id)asset withError:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  configCopy = config;
  assetCopy = asset;
  getFactorToFoldersMapping = [configCopy getFactorToFoldersMapping];
  allKeys = [getFactorToFoldersMapping allKeys];

  v10 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v41 = "[CDMAssetsManager isAssetAvailableForCDMAssetsFactorConfig:factorToAsset:withError:]";
    v42 = 2112;
    v43 = allKeys;
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s Factors are: %@", buf, 0x16u);
  }

  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(allKeys, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v12 = allKeys;
  v13 = [v12 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v35;
    do
    {
      v16 = 0;
      do
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v34 + 1) + 8 * v16);
        if (([configCopy isFactorRequired:v17] & 1) == 0)
        {
          v20 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v41 = "[CDMAssetsManager isAssetAvailableForCDMAssetsFactorConfig:factorToAsset:withError:]";
            v42 = 2112;
            v43 = v17;
            _os_log_debug_impl(&dword_1DC287000, v20, OS_LOG_TYPE_DEBUG, "%s Skip current factor as it is not required: %@.", buf, 0x16u);
          }

          goto LABEL_14;
        }

        v18 = [assetCopy objectForKey:v17];
        getAssetType = [v18 getAssetType];

        if (getAssetType)
        {
          v20 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            v21 = [assetCopy objectForKey:v17];
            *buf = 136315650;
            v41 = "[CDMAssetsManager isAssetAvailableForCDMAssetsFactorConfig:factorToAsset:withError:]";
            v42 = 2112;
            v43 = v21;
            v44 = 2112;
            v45 = v17;
            _os_log_debug_impl(&dword_1DC287000, v20, OS_LOG_TYPE_DEBUG, "%s Asset: %@ is available for factor: %@.", buf, 0x20u);
          }

LABEL_14:

          goto LABEL_15;
        }

        [v11 addObject:v17];
LABEL_15:
        ++v16;
      }

      while (v14 != v16);
      v22 = [v12 countByEnumeratingWithState:&v34 objects:v46 count:16];
      v14 = v22;
    }

    while (v22);
  }

  v23 = [v11 count];
  if (v23)
  {
    v24 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A588];
    v38[0] = *MEMORY[0x1E696A578];
    v38[1] = v25;
    v39[0] = @"Assets are missing";
    v26 = MEMORY[0x1E696AEC0];
    v27 = [v11 componentsJoinedByString:{@", "}];
    v28 = [v26 stringWithFormat:@"Assets are missing for factors: [%@].", v27];
    v39[1] = v28;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
    *error = [v24 errorWithDomain:@"CDMAssetsManager" code:0 userInfo:v29];

    v30 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = *error;
      *buf = 136315394;
      v41 = "[CDMAssetsManager isAssetAvailableForCDMAssetsFactorConfig:factorToAsset:withError:]";
      v42 = 2112;
      v43 = v31;
      _os_log_error_impl(&dword_1DC287000, v30, OS_LOG_TYPE_ERROR, "%s [ERR]: Not all assets are available with error: %@. Return NO.", buf, 0x16u);
    }
  }

  else
  {
    v30 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v41 = "[CDMAssetsManager isAssetAvailableForCDMAssetsFactorConfig:factorToAsset:withError:]";
      _os_log_debug_impl(&dword_1DC287000, v30, OS_LOG_TYPE_DEBUG, "%s All assets are available. Return YES.", buf, 0xCu);
    }
  }

  return v23 == 0;
}

- (id)getAssetsByFactorNamesForCDMAssetsInfo:(id)info assetDirPath:(id)path locale:(id)locale
{
  v61 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  pathCopy = path;
  localeCopy = locale;
  obj = +[CDMUAFAssetsManager getNLUAFClientManagers];
  objc_sync_enter(obj);
  v31 = self->_getProcessedAssetsCache;
  objc_sync_enter(v31);
  getGraphName = [infoCopy getGraphName];
  v32 = [CDMAssetsManager getAssetSetsInCacheForGraphName:getGraphName];

  if (pathCopy)
  {
    v8 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
LABEL_3:

      goto LABEL_4;
    }

    *buf = 136315138;
    v54 = "[CDMAssetsManager getAssetsByFactorNamesForCDMAssetsInfo:assetDirPath:locale:]";
    v28 = "%s CDM custom sideloading path exists. Skip cached response.";
LABEL_43:
    _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, v28, buf, 0xCu);
    goto LABEL_3;
  }

  if (!v32)
  {
    v8 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_3;
    }

    *buf = 136315138;
    v54 = "[CDMAssetsManager getAssetsByFactorNamesForCDMAssetsInfo:assetDirPath:locale:]";
    v28 = "%s Cached asset sets are nil. Skip cached response.";
    goto LABEL_43;
  }

  v43 = [(CDMAssetsManager *)self getSavedResponseFromCacheForCDMAssetsInfo:infoCopy locale:localeCopy assetSets:?];
  if (v43)
  {
    v34 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v54 = "[CDMAssetsManager getAssetsByFactorNamesForCDMAssetsInfo:assetDirPath:locale:]";
      v55 = 2112;
      v56 = v43;
      _os_log_debug_impl(&dword_1DC287000, v34, OS_LOG_TYPE_DEBUG, "%s Found cached response: %@", buf, 0x16u);
    }

    goto LABEL_37;
  }

LABEL_4:
  v43 = objc_alloc_init(MEMORY[0x1E695DF90]);
  getAllAssetSets = [infoCopy getAllAssetSets];
  v10 = +[CDMPlatformUtils isInternalInstall];
  if (pathCopy)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  v42 = v11;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v34 = getAllAssetSets;
  v36 = [v34 countByEnumeratingWithState:&v49 objects:v60 count:16];
  if (v36)
  {
    v35 = *v50;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v50 != v35)
        {
          objc_enumerationMutation(v34);
        }

        v12 = [infoCopy getCDMAssetsFactorConfigCDMAssetSet:{objc_msgSend(*(*(&v49 + 1) + 8 * i), "integerValue")}];
        if (v12)
        {
          v37 = v12;
          getFactorToFoldersMapping = [v12 getFactorToFoldersMapping];
          localeIdentifier = [localeCopy localeIdentifier];
          v15 = [CDMAssetsManager getFactorToUnprocessedNLAsset:getFactorToFoldersMapping cdmAssetsInfo:infoCopy locale:localeIdentifier];

          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v16 = getFactorToFoldersMapping;
          v17 = [v16 countByEnumeratingWithState:&v45 objects:v59 count:16];
          if (!v17)
          {
            goto LABEL_27;
          }

          v18 = *v46;
          while (1)
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v46 != v18)
              {
                objc_enumerationMutation(v16);
              }

              v20 = *(*(&v45 + 1) + 8 * j);
              v21 = objc_alloc_init(NilAsset);
              v22 = [v16 objectForKey:v20];
              v23 = [v15 objectForKey:v20];
              v24 = [(CDMAssetsManager *)self processNLAsset:v23 withAssetFolders:v22];

              if (v22 && [v22 count])
              {
                if (!v42)
                {
                  goto LABEL_25;
                }

                [(CDMAssetsManager *)self processSideLoadedAssetForNLAsset:v24 withAssetFolders:v22 assetDirPath:pathCopy locale:localeCopy];
                v24 = v25 = v24;
              }

              else
              {
                v25 = CDMOSLoggerForCategory(0);
                if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315138;
                  v54 = "[CDMAssetsManager getAssetsByFactorNamesForCDMAssetsInfo:assetDirPath:locale:]";
                  _os_log_impl(&dword_1DC287000, v25, OS_LOG_TYPE_INFO, "%s [WARN]: Asset folder names are nil/empty", buf, 0xCu);
                }
              }

LABEL_25:
              [v43 setObject:v24 forKey:v20];
            }

            v17 = [v16 countByEnumeratingWithState:&v45 objects:v59 count:16];
            if (!v17)
            {
LABEL_27:

              v12 = v37;
              break;
            }
          }
        }
      }

      v36 = [v34 countByEnumeratingWithState:&v49 objects:v60 count:16];
    }

    while (v36);
  }

  v26 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    getGraphName2 = [infoCopy getGraphName];
    descriptionInStringsFileFormat = [v43 descriptionInStringsFileFormat];
    *buf = 136315650;
    v54 = "[CDMAssetsManager getAssetsByFactorNamesForCDMAssetsInfo:assetDirPath:locale:]";
    v55 = 2112;
    v56 = getGraphName2;
    v57 = 2112;
    v58 = descriptionInStringsFileFormat;
    _os_log_debug_impl(&dword_1DC287000, v26, OS_LOG_TYPE_DEBUG, "%s Assets paths for %@: %@", buf, 0x20u);
  }

  [(CDMAssetsManager *)self saveGetAssetsResponseForCDMAssetsInfo:infoCopy locale:localeCopy assetSets:v32 forResponse:v43];
LABEL_37:

  objc_sync_exit(v31);
  objc_sync_exit(obj);

  return v43;
}

- (id)getSavedResponseFromCacheForCDMAssetsInfo:(id)info locale:(id)locale assetSets:(id)sets
{
  v20 = *MEMORY[0x1E69E9840];
  setsCopy = sets;
  v8 = [CDMAssetsManager getHashKeyForCDMAssetsInfo:info];
  v9 = [CDMAssetsManager getHashKeyForAssetSets:setsCopy];

  v10 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    getProcessedAssetsCache = [(CDMAssetsManager *)self getProcessedAssetsCache];
    v16 = 136315394;
    v17 = "[CDMAssetsManager getSavedResponseFromCacheForCDMAssetsInfo:locale:assetSets:]";
    v18 = 2112;
    v19 = getProcessedAssetsCache;
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s Processed Assets Cache: %@", &v16, 0x16u);
  }

  getProcessedAssetsCache2 = [(CDMAssetsManager *)self getProcessedAssetsCache];
  v12 = [getProcessedAssetsCache2 objectForKey:v8];
  v13 = [v12 objectForKey:v9];

  return v13;
}

- (void)saveGetAssetsResponseForCDMAssetsInfo:(id)info locale:(id)locale assetSets:(id)sets forResponse:(id)response
{
  v22 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  setsCopy = sets;
  v11 = [CDMAssetsManager getHashKeyForCDMAssetsInfo:info];
  v12 = [CDMAssetsManager getHashKeyForAssetSets:setsCopy];

  getProcessedAssetsCache = self->_getProcessedAssetsCache;
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(NSMutableDictionary *)getProcessedAssetsCache setObject:v14 forKey:v11];

  v15 = [(NSMutableDictionary *)self->_getProcessedAssetsCache objectForKey:v11];
  [v15 setObject:responseCopy forKey:v12];

  v16 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    getProcessedAssetsCache = [(CDMAssetsManager *)self getProcessedAssetsCache];
    v18 = 136315394;
    v19 = "[CDMAssetsManager saveGetAssetsResponseForCDMAssetsInfo:locale:assetSets:forResponse:]";
    v20 = 2112;
    v21 = getProcessedAssetsCache;
    _os_log_debug_impl(&dword_1DC287000, v16, OS_LOG_TYPE_DEBUG, "%s Updated Processed Assets Cache: %@", &v18, 0x16u);
  }
}

- (id)processSideLoadedAssetForNLAsset:(id)asset withAssetFolders:(id)folders assetDirPath:(id)path locale:(id)locale
{
  v24 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v11 = [(CDMDefaultAssetsManager *)self->_cdmDefaultAssetsManager getAbsolutePathForServiceAssetFolders:folders assetDirPath:path locale:locale];
  v12 = v11;
  v13 = assetCopy;
  if (v11)
  {
    getAssetPath = [v11 getAssetPath];

    v13 = assetCopy;
    if (getAssetPath)
    {
      v15 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v18 = 136315650;
        v19 = "[CDMAssetsManager processSideLoadedAssetForNLAsset:withAssetFolders:assetDirPath:locale:]";
        v20 = 2112;
        v21 = v12;
        v22 = 2112;
        v23 = assetCopy;
        _os_log_debug_impl(&dword_1DC287000, v15, OS_LOG_TYPE_DEBUG, "%s Found valid custom asset: [%@] for NLAsset: %@. Return custom asset.", &v18, 0x20u);
      }

      v13 = v12;
    }
  }

  v16 = v13;

  return v16;
}

- (id)processNLAsset:(id)asset withAssetFolders:(id)folders
{
  v24 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  foldersCopy = folders;
  if (!assetCopy)
  {
    goto LABEL_16;
  }

  getAssetPath = [assetCopy getAssetPath];

  if (getAssetPath)
  {
    getAssetPath2 = [assetCopy getAssetPath];
    v10 = [CDMAssetsUtils findExistFolderInAssetFolders:foldersCopy underBasePath:getAssetPath2 useFileManager:self->_fileManager];

    if (v10)
    {
      [assetCopy appendPathWithServiceAssetFolder:v10];
LABEL_5:

      goto LABEL_6;
    }

    v13 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      getAssetPath3 = [assetCopy getAssetPath];
      v18 = 136315650;
      v19 = "[CDMAssetsManager processNLAsset:withAssetFolders:]";
      v20 = 2112;
      v21 = 0;
      v22 = 2112;
      v23 = getAssetPath3;
      _os_log_impl(&dword_1DC287000, v13, OS_LOG_TYPE_INFO, "%s [WARN]: No valid asset folders exist for asset folder: %@ under asset path: %@.", &v18, 0x20u);
    }

    if (!foldersCopy || ![foldersCopy count])
    {
      goto LABEL_5;
    }

    v15 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v18 = 136315138;
      v19 = "[CDMAssetsManager processNLAsset:withAssetFolders:]";
      _os_log_impl(&dword_1DC287000, v15, OS_LOG_TYPE_INFO, "%s [WARN]: Asset folders were provided but not found.Return Nil asset", &v18, 0xCu);
    }

LABEL_16:
    v12 = objc_alloc_init(NilAsset);
    goto LABEL_17;
  }

LABEL_6:
  v11 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v18 = 136315394;
    v19 = "[CDMAssetsManager processNLAsset:withAssetFolders:]";
    v20 = 2112;
    v21 = assetCopy;
    _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s NL asset: %@ ", &v18, 0x16u);
  }

  v12 = assetCopy;
LABEL_17:
  v16 = v12;

  return v16;
}

- (void)_setupUafAssetManagerForLocale:(id)locale cdmAssetsInfo:(id)info error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  cdmUAFAssetsManager = self->_cdmUAFAssetsManager;
  v15 = 0;
  [(CDMUAFAssetsManager *)cdmUAFAssetsManager setupForLocale:localeCopy cdmAssetsInfo:info error:&v15];
  v10 = v15;
  v11 = CDMOSLoggerForCategory(0);
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      localeIdentifier = [localeCopy localeIdentifier];
      *buf = 136315394;
      v17 = "[CDMAssetsManager _setupUafAssetManagerForLocale:cdmAssetsInfo:error:]";
      v18 = 2112;
      v19 = localeIdentifier;
      _os_log_error_impl(&dword_1DC287000, v12, OS_LOG_TYPE_ERROR, "%s [ERR]: Error occurred while setting up CDMUAFAssetsManager with locale: %@.", buf, 0x16u);
    }

    v13 = v10;
    *error = v10;
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v17 = "[CDMAssetsManager _setupUafAssetManagerForLocale:cdmAssetsInfo:error:]";
      _os_log_debug_impl(&dword_1DC287000, v12, OS_LOG_TYPE_DEBUG, "%s CDMUAFAssetsManager setup successfully.", buf, 0xCu);
    }
  }
}

- (BOOL)shouldReSetupForLocale:(id)locale cdmAssetsInfo:(id)info
{
  v64 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  infoCopy = info;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v55 = "[CDMAssetsManager shouldReSetupForLocale:cdmAssetsInfo:]";
    _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s Checking if asset manager needs to be resetup.", buf, 0xCu);
  }

  obj = +[CDMUAFAssetsManager getNLUAFClientManagers];
  objc_sync_enter(obj);
  v38 = +[CDMUAFAssetsManager getNLUAFClientManagers];
  getGraphName = [infoCopy getGraphName];
  v40 = [v38 objectForKey:getGraphName];

  v53 = 0;
  v41 = [CDMUAFAssetsManager getAssetSetNameToUafClientManager:v40 withError:&v53];
  v35 = v53;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  getAllAssetSets = [infoCopy getAllAssetSets];
  v8 = [getAllAssetSets countByEnumeratingWithState:&v49 objects:v63 count:16];
  if (v8)
  {
    v37 = *v50;
    *&v9 = 136315394;
    v33 = v9;
    v36 = getAllAssetSets;
    while (2)
    {
      v34 = v8;
      for (i = 0; i != v34; ++i)
      {
        if (*v50 != v37)
        {
          objc_enumerationMutation(v36);
        }

        v11 = *(*(&v49 + 1) + 8 * i);
        v43 = +[CDMAssetsUtils cdmAssetSetToStr:](CDMAssetsUtils, "cdmAssetSetToStr:", [v11 integerValue]);
        v12 = [v41 objectForKey:?];
        v13 = v12;
        if (!v12)
        {
          v13 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = v33;
            v55 = "[CDMAssetsManager shouldReSetupForLocale:cdmAssetsInfo:]";
            v56 = 2112;
            v57 = v43;
            _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s UAFClientManager not found for asset set: %@. Return Yes", buf, 0x16u);
          }

LABEL_36:

          v28 = 1;
          v27 = v36;
          goto LABEL_37;
        }

        getLocale = [v12 getLocale];
        v15 = [getLocale isEqualToString:localeCopy];

        if (v15)
        {
          v16 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = v33;
            v55 = "[CDMAssetsManager shouldReSetupForLocale:cdmAssetsInfo:]";
            v56 = 2112;
            v57 = v43;
            _os_log_debug_impl(&dword_1DC287000, v16, OS_LOG_TYPE_DEBUG, "%s Incoming locale is an exact match. No need to resetup for %@", buf, 0x16u);
          }
        }

        else
        {
          v16 = [infoCopy getCDMAssetsUsagesForCDMAssetSet:{objc_msgSend(v11, "integerValue")}];
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          getRawUsages = [v16 getRawUsages];
          v18 = [getRawUsages countByEnumeratingWithState:&v45 objects:v62 count:16];
          if (v18)
          {
            v19 = *v46;
            while (2)
            {
              for (j = 0; j != v18; ++j)
              {
                if (*v46 != v19)
                {
                  objc_enumerationMutation(getRawUsages);
                }

                v21 = *(*(&v45 + 1) + 8 * j);
                v22 = CDMOSLoggerForCategory(0);
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
                {
                  *buf = v33;
                  v55 = "[CDMAssetsManager shouldReSetupForLocale:cdmAssetsInfo:]";
                  v56 = 2112;
                  v57 = v43;
                  _os_log_debug_impl(&dword_1DC287000, v22, OS_LOG_TYPE_DEBUG, "%s Checking if %@ uses language code", buf, 0x16u);
                }

                if (!+[CDMAssetsUsages usesLanguageCode:](CDMAssetsUsages, "usesLanguageCode:", [v21 integerValue]))
                {
                  v29 = CDMOSLoggerForCategory(0);
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                  {
                    getLocale2 = [v13 getLocale];
                    *buf = 136315906;
                    v55 = "[CDMAssetsManager shouldReSetupForLocale:cdmAssetsInfo:]";
                    v56 = 2112;
                    v57 = getLocale2;
                    v58 = 2112;
                    v59 = localeCopy;
                    v60 = 2112;
                    v61 = v43;
                    _os_log_debug_impl(&dword_1DC287000, v29, OS_LOG_TYPE_DEBUG, "%s UAFClientManager's existing locale is: %@ but the new locale is: %@ for asset set: %@. Return Yes", buf, 0x2Au);
                  }

                  goto LABEL_35;
                }

                v23 = CDMOSLoggerForCategory(0);
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
                {
                  *buf = v33;
                  v55 = "[CDMAssetsManager shouldReSetupForLocale:cdmAssetsInfo:]";
                  v56 = 2112;
                  v57 = v43;
                  _os_log_debug_impl(&dword_1DC287000, v23, OS_LOG_TYPE_DEBUG, "%s Need to check language code for %@", buf, 0x16u);
                }

                getLocale3 = [v13 getLocale];
                v25 = [CDMAssetsUtils extractAssetKeyFromLocale:localeCopy];
                v26 = [getLocale3 isEqualToString:v25];

                if ((v26 & 1) == 0)
                {
                  v29 = CDMOSLoggerForCategory(0);
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
                  {
                    getLocale4 = [v13 getLocale];
                    *buf = 136315906;
                    v55 = "[CDMAssetsManager shouldReSetupForLocale:cdmAssetsInfo:]";
                    v56 = 2112;
                    v57 = getLocale4;
                    v58 = 2112;
                    v59 = localeCopy;
                    v60 = 2112;
                    v61 = v43;
                    _os_log_debug_impl(&dword_1DC287000, v29, OS_LOG_TYPE_DEBUG, "%s UAFClientManager's existing locale is: %@ but the new locale is: %@ for asset set: %@ (which uses only language code). Return Yes", buf, 0x2Au);
                  }

LABEL_35:

                  goto LABEL_36;
                }
              }

              v18 = [getRawUsages countByEnumeratingWithState:&v45 objects:v62 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }
        }
      }

      getAllAssetSets = v36;
      v8 = [v36 countByEnumeratingWithState:&v49 objects:v63 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v27 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v55 = "[CDMAssetsManager shouldReSetupForLocale:cdmAssetsInfo:]";
    v56 = 2112;
    v57 = v40;
    _os_log_debug_impl(&dword_1DC287000, v27, OS_LOG_TYPE_DEBUG, "%s Found UAFClientManagers: %@. No need to resetup", buf, 0x16u);
  }

  v28 = 0;
LABEL_37:

  objc_sync_exit(obj);
  return v28;
}

- (void)setupForLocale:(id)locale cdmAssetsInfo:(id)info error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  infoCopy = info;
  v10 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    localeIdentifier = [localeCopy localeIdentifier];
    getGraphName = [infoCopy getGraphName];
    v24 = 136315650;
    v25 = "[CDMAssetsManager setupForLocale:cdmAssetsInfo:error:]";
    v26 = 2112;
    v27 = localeIdentifier;
    v28 = 2112;
    v29 = getGraphName;
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s Setup CDMAssetsManager for locale: %@ and graph: %@", &v24, 0x20u);
  }

  v11 = os_signpost_id_generate(CDMLogContext);
  v12 = CDMLogContext;
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(v24) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "CDMAssetsManager", "CDMAssetsManager setup", &v24, 2u);
  }

  v14 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v24 = 136315138;
    v25 = "[CDMAssetsManager setupForLocale:cdmAssetsInfo:error:]";
    _os_log_debug_impl(&dword_1DC287000, v14, OS_LOG_TYPE_DEBUG, "%s Starting setup of CDMUAFAssetsManager.", &v24, 0xCu);
  }

  v15 = os_signpost_id_generate(CDMLogContext);
  v16 = CDMLogContext;
  v17 = v16;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    LOWORD(v24) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v15, "CDMAssetsManager", "UAFAssetsManager setup", &v24, 2u);
  }

  [(CDMAssetsManager *)self _setupUafAssetManagerForLocale:localeCopy cdmAssetsInfo:infoCopy error:error];
  v18 = CDMLogContext;
  v19 = v18;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    LOWORD(v24) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v19, OS_SIGNPOST_INTERVAL_END, v15, "CDMAssetsManager", " enableTelemetry=YES ", &v24, 2u);
  }

  v20 = CDMLogContext;
  v21 = v20;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    LOWORD(v24) = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v21, OS_SIGNPOST_INTERVAL_END, v11, "CDMAssetsManager", " enableTelemetry=YES ", &v24, 2u);
  }
}

- (id)initManager
{
  v16 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = CDMAssetsManager;
  v2 = [(CDMAssetsManager *)&v13 init];
  if (v2)
  {
    v3 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v15 = "[CDMAssetsManager initManager]";
      _os_log_impl(&dword_1DC287000, v3, OS_LOG_TYPE_INFO, "%s Initialize CDMAssetsManager", buf, 0xCu);
    }

    initManager = [[CDMDefaultAssetsManager alloc] initManager];
    cdmDefaultAssetsManager = v2->_cdmDefaultAssetsManager;
    v2->_cdmDefaultAssetsManager = initManager;

    initManager2 = [[CDMUAFAssetsManager alloc] initManager];
    cdmUAFAssetsManager = v2->_cdmUAFAssetsManager;
    v2->_cdmUAFAssetsManager = initManager2;

    v8 = objc_alloc_init(MEMORY[0x1E696AC08]);
    fileManager = v2->_fileManager;
    v2->_fileManager = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    getProcessedAssetsCache = v2->_getProcessedAssetsCache;
    v2->_getProcessedAssetsCache = v10;
  }

  return v2;
}

+ (id)getAssetSetsInCacheForGraphName:(id)name
{
  v28 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = +[CDMUAFAssetsManager getNLUAFClientManagers];
  v6 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v25 = "+[CDMAssetsManager getAssetSetsInCacheForGraphName:]";
    v26 = 2112;
    v27 = v5;
    _os_log_debug_impl(&dword_1DC287000, v6, OS_LOG_TYPE_DEBUG, "%s All UAFClientManagers: %@", buf, 0x16u);
  }

  v7 = [v5 objectForKey:nameCopy];
  v8 = v7;
  if (v7)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          assetSet = [v14 assetSet];

          if (!assetSet)
          {

            goto LABEL_14;
          }

          assetSet2 = [v14 assetSet];
          [v4 addObject:assetSet2];
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v4;
  }

  else
  {
LABEL_14:
    v17 = 0;
  }

  return v17;
}

+ (id)getHashKeyForAssetSets:(id)sets
{
  v17 = *MEMORY[0x1E69E9840];
  setsCopy = sets;
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = setsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      v10 = v4;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@%@", v10, *(*(&v12 + 1) + 8 * v9), v12];

        ++v9;
        v10 = v4;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)getHashKeyForCDMAssetsInfo:(id)info
{
  v3 = MEMORY[0x1E696AD60];
  infoCopy = info;
  v5 = objc_alloc_init(v3);
  v6 = MEMORY[0x1E696AD60];
  getGraphName = [infoCopy getGraphName];

  v8 = [v6 stringWithFormat:@"%@%@", v5, getGraphName];

  return v8;
}

+ (id)getFactorToUnprocessedNLAsset:(id)asset cdmAssetsInfo:(id)info locale:(id)locale
{
  v19 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  infoCopy = info;
  assetCopy = asset;
  v10 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136315138;
    v16 = "+[CDMAssetsManager getFactorToUnprocessedNLAsset:cdmAssetsInfo:locale:]";
    _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s Using UAF to get unprocessed NLAssets.", &v15, 0xCu);
  }

  allKeys = [assetCopy allKeys];

  v12 = [CDMUAFAssetsManager getUAFAssetsForFactors:allKeys withCDMAssetsInfo:infoCopy locale:localeCopy];

  v13 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = 136315394;
    v16 = "+[CDMAssetsManager getFactorToUnprocessedNLAsset:cdmAssetsInfo:locale:]";
    v17 = 2112;
    v18 = v12;
    _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s factorToUnprocessedNLAsset: %@.", &v15, 0x16u);
  }

  return v12;
}

+ (id)getFactorNamesForService:(id)service
{
  getCDMServiceAssetConfig = [NSClassFromString(service) getCDMServiceAssetConfig];
  getCDMAssetSetToFactorsConfig = [getCDMServiceAssetConfig getCDMAssetSetToFactorsConfig];

  getAllFactors = [getCDMAssetSetToFactorsConfig getAllFactors];

  return getAllFactors;
}

void __48__CDMAssetsManager_getSingletonCDMAssetsManager__block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    v3 = 136315138;
    v4 = "+[CDMAssetsManager getSingletonCDMAssetsManager]_block_invoke";
    _os_log_debug_impl(&dword_1DC287000, v0, OS_LOG_TYPE_DEBUG, "%s Singleton CDMAssetsManager has not been initialized yet. Initializing...", &v3, 0xCu);
  }

  v1 = [[CDMAssetsManager alloc] initManager];
  v2 = getSingletonCDMAssetsManager_singletonCdmAssetsManager;
  getSingletonCDMAssetsManager_singletonCdmAssetsManager = v1;
}

@end