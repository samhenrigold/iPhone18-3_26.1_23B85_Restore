@interface CSOnDeviceCompilationHandler
+ (id)sharedHandler;
- (CSOnDeviceCompilationHandler)init;
- (id)_compileModelAndAddToCacheWithConfigFiles:(id)files compileDirectoryPath:(id)path locale:(id)locale assetVersion:(id)version hashToUse:(id)use modelType:(int64_t)type compilationFramework:(int64_t)framework;
- (id)_compileModelWithModelListInAsset:(id)asset modelType:(id)type compileDirectoryPath:(id)path locale:(id)locale compilationFramework:(int64_t)framework;
- (void)compileAndUpdateDeviceCachesWithAsset:(id)asset assetType:(unint64_t)type endpointId:(id)id errOut:(id *)out;
- (void)compileAndUpdateDeviceCachesWithAsset:(id)asset assetType:(unint64_t)type modelType:(id)modelType deviceId:(id)id currentLocale:(id)locale compileDirectory:(id)directory errOut:(id *)out;
- (void)compileUsingConfig:(id)config locale:(id)locale compileDirectory:(id)directory modelType:(int64_t)type errOut:(id *)out;
@end

@implementation CSOnDeviceCompilationHandler

- (id)_compileModelAndAddToCacheWithConfigFiles:(id)files compileDirectoryPath:(id)path locale:(id)locale assetVersion:(id)version hashToUse:(id)use modelType:(int64_t)type compilationFramework:(int64_t)framework
{
  v70[1] = *MEMORY[0x1E69E9840];
  filesCopy = files;
  pathCopy = path;
  localeCopy = locale;
  versionCopy = version;
  useCopy = use;
  if (filesCopy)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v15 = [filesCopy countByEnumeratingWithState:&v54 objects:v68 count:16];
    if (v15)
    {
      v17 = v15;
      v18 = 0;
      v19 = 0x1E8659000uLL;
      v53 = *v55;
      v47 = *MEMORY[0x1E696A578];
      *&v16 = 136315138;
      v46 = v16;
      while (1)
      {
        v20 = 0;
        v52 = v17;
        do
        {
          if (*v55 != v53)
          {
            objc_enumerationMutation(filesCopy);
          }

          v21 = *(*(&v54 + 1) + 8 * v20);
          v22 = [*(v19 + 2472) readMilFilePathFromConfig:v21 modelType:{type, v46}];
          v23 = [*(v19 + 2472) getModelNameFromMilFilePath:v22];
          v24 = [*(v19 + 2472) getBackendTypeFromModelFile:v22];
          if (v24 == 2)
          {
            typeCopy = type;
            v29 = filesCopy;
            v30 = MEMORY[0x1E696ABC0];
            v66 = v47;
            v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"not avaiable for E5ML"];
            v67 = v31;
            v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
            v33 = [v30 errorWithDomain:@"com.apple.corespeech" code:2254 userInfo:v32];

            v34 = CSLogContextFacilityCoreSpeech;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_FAULT))
            {
              *buf = v46;
              v59 = "[CSOnDeviceCompilationHandler _compileModelAndAddToCacheWithConfigFiles:compileDirectoryPath:locale:assetVersion:hashToUse:modelType:compilationFramework:]";
              _os_log_fault_impl(&dword_1DDA4B000, v34, OS_LOG_TYPE_FAULT, "%s Not implemented", buf, 0xCu);
            }

            v26 = 0;
            v18 = v33;
            filesCopy = v29;
            type = typeCopy;
            v17 = v52;
            v19 = 0x1E8659000;
          }

          else if (v24 == 1)
          {
            v25 = [*(v19 + 2472) getIrNameFromModelNameForCompile:v23 locale:localeCopy assetVersion:versionCopy hashToUse:useCopy];
            v26 = [pathCopy stringByAppendingPathComponent:v25];

            v27 = [CSMil2BnnsUtils compileModelWithMilFile:v22 bnnsIrCachePath:v26 compilationFramework:framework];

            v18 = v27;
          }

          else
          {
            v35 = CSLogContextFacilityCoreSpeech;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v59 = "[CSOnDeviceCompilationHandler _compileModelAndAddToCacheWithConfigFiles:compileDirectoryPath:locale:assetVersion:hashToUse:modelType:compilationFramework:]";
              v60 = 2112;
              v61 = v22;
              v62 = 2112;
              v63 = v21;
              _os_log_impl(&dword_1DDA4B000, v35, OS_LOG_TYPE_DEFAULT, "%s No Valid backend for compilation is found for model file: %@ from config: %@", buf, 0x20u);
            }

            v26 = 0;
          }

          v36 = CSLogContextFacilityCoreSpeech;
          v37 = os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT);
          if (v18)
          {
            if (!v37)
            {
              goto LABEL_22;
            }

            *buf = 136315650;
            v59 = "[CSOnDeviceCompilationHandler _compileModelAndAddToCacheWithConfigFiles:compileDirectoryPath:locale:assetVersion:hashToUse:modelType:compilationFramework:]";
            v60 = 2112;
            v61 = v22;
            v62 = 2112;
            v63 = v18;
            v38 = v36;
            v39 = "%s mil2Bnns compilation failed for modelFile: %@ with error: %@";
            v40 = 32;
          }

          else
          {
            if (!v37)
            {
              goto LABEL_22;
            }

            *buf = 136315906;
            v59 = "[CSOnDeviceCompilationHandler _compileModelAndAddToCacheWithConfigFiles:compileDirectoryPath:locale:assetVersion:hashToUse:modelType:compilationFramework:]";
            v60 = 2112;
            v61 = v22;
            v62 = 2112;
            v63 = v26;
            v64 = 2112;
            v65 = 0;
            v38 = v36;
            v39 = "%s Compilation done for modelFile: %@, output cacheIrPath: %@ with error: %@";
            v40 = 42;
          }

          _os_log_impl(&dword_1DDA4B000, v38, OS_LOG_TYPE_DEFAULT, v39, buf, v40);
LABEL_22:

          ++v20;
        }

        while (v17 != v20);
        v17 = [filesCopy countByEnumeratingWithState:&v54 objects:v68 count:16];
        if (!v17)
        {
          goto LABEL_27;
        }
      }
    }

    v18 = 0;
  }

  else
  {
    v41 = MEMORY[0x1E696ABC0];
    v69 = *MEMORY[0x1E696A578];
    v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"config files passed in for compilation is nil"];
    v70[0] = v42;
    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:&v69 count:1];
    v18 = [v41 errorWithDomain:@"com.apple.corespeech" code:2255 userInfo:v43];
  }

LABEL_27:
  v44 = v18;

  return v18;
}

- (id)_compileModelWithModelListInAsset:(id)asset modelType:(id)type compileDirectoryPath:(id)path locale:(id)locale compilationFramework:(int64_t)framework
{
  v35[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  typeCopy = type;
  pathCopy = path;
  localeCopy = locale;
  if (assetCopy)
  {
    v15 = [CSOnDeviceCompilationModelListDecoder decodeConfigFrom:assetCopy];
    v16 = [v15 objectForKeyedSubscript:typeCopy];

    if (v16)
    {
      v17 = [v15 objectForKeyedSubscript:typeCopy];
      frameworkCopy = framework;
      v18 = pathCopy;
      v30 = [CSOnDeviceCompilationUtils getModelNameFromMilFilePath:v17];
      configVersion = [assetCopy configVersion];
      hashFromResourcePath = [assetCopy hashFromResourcePath];
      v21 = [CSOnDeviceCompilationUtils getIrNameFromModelNameForCompile:v30 locale:localeCopy assetVersion:configVersion hashToUse:hashFromResourcePath];
      [v18 stringByAppendingPathComponent:v21];
      v22 = typeCopy;
      v24 = v23 = localeCopy;

      pathCopy = v18;
      v25 = [CSMil2BnnsUtils compileModelWithMilFile:v17 bnnsIrCachePath:v24 compilationFramework:frameworkCopy];

      localeCopy = v23;
      typeCopy = v22;
    }

    else
    {
      v27 = MEMORY[0x1E696ABC0];
      v32 = *MEMORY[0x1E696A578];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"model type not found in compilation list"];
      v33 = v17;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v25 = [v27 errorWithDomain:@"com.apple.corespeech" code:2262 userInfo:v28];
    }
  }

  else
  {
    v26 = MEMORY[0x1E696ABC0];
    v34 = *MEMORY[0x1E696A578];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"asset being nil"];
    v35[0] = v15;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v25 = [v26 errorWithDomain:@"com.apple.corespeech" code:2263 userInfo:v17];
  }

  return v25;
}

- (void)compileUsingConfig:(id)config locale:(id)locale compileDirectory:(id)directory modelType:(int64_t)type errOut:(id *)out
{
  v32[1] = *MEMORY[0x1E69E9840];
  configCopy = config;
  localeCopy = locale;
  directoryCopy = directory;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__12693;
  v29 = __Block_byref_object_dispose__12694;
  v30 = 0;
  if (configCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __92__CSOnDeviceCompilationHandler_compileUsingConfig_locale_compileDirectory_modelType_errOut___block_invoke;
    block[3] = &unk_1E865C4B0;
    v23 = &v25;
    typeCopy = type;
    block[4] = self;
    v20 = configCopy;
    v21 = directoryCopy;
    v22 = localeCopy;
    dispatch_sync(queue, block);
    if (out)
    {
      *out = v26[5];
    }
  }

  else if (out)
  {
    v16 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A578];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"configfileNil"];
    v32[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    *out = [v16 errorWithDomain:@"com.apple.corespeech" code:2255 userInfo:v18];
  }

  _Block_object_dispose(&v25, 8);
}

void __92__CSOnDeviceCompilationHandler_compileUsingConfig_locale_compileDirectory_modelType_errOut___block_invoke(void *a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  if ((a1[9] & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = a1[4];
  v14[0] = a1[5];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v5 = [v3 _compileModelAndAddToCacheWithConfigFiles:v4 compileDirectoryPath:a1[6] locale:a1[7] assetVersion:@"override" hashToUse:@"defaultHash" modelType:a1[9] compilationFramework:v2];
  v6 = *(a1[8] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(a1[8] + 8) + 40);
    *buf = 136315394;
    v11 = "[CSOnDeviceCompilationHandler compileUsingConfig:locale:compileDirectory:modelType:errOut:]_block_invoke";
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s model compilation finished with error %@: ", buf, 0x16u);
  }
}

- (void)compileAndUpdateDeviceCachesWithAsset:(id)asset assetType:(unint64_t)type modelType:(id)modelType deviceId:(id)id currentLocale:(id)locale compileDirectory:(id)directory errOut:(id *)out
{
  v77[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  modelTypeCopy = modelType;
  idCopy = id;
  localeCopy = locale;
  directoryCopy = directory;
  if (idCopy)
  {
    if ([CSOnDeviceCompilationUtils shouldCompileForAssetType:type])
    {
      v69 = 0;
      v70 = &v69;
      v71 = 0x3032000000;
      v72 = __Block_byref_object_copy__12693;
      v73 = __Block_byref_object_dispose__12694;
      v74 = 0;
      v48 = localeCopy;
      v49 = assetCopy;
      if (type == 6 && (([modelTypeCopy isEqual:&unk_1F5916A90] & 1) != 0 || objc_msgSend(modelTypeCopy, "isEqual:", &unk_1F5916AA8)))
      {
        v20 = 2;
      }

      else
      {
        v20 = 1;
      }

      v24 = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __137__CSOnDeviceCompilationHandler_compileAndUpdateDeviceCachesWithAsset_assetType_modelType_deviceId_currentLocale_compileDirectory_errOut___block_invoke;
      block[3] = &unk_1E865C438;
      v67 = &v69;
      block[4] = self;
      v25 = v49;
      v63 = v25;
      v26 = modelTypeCopy;
      v64 = v26;
      v45 = directoryCopy;
      v65 = v45;
      v47 = v48;
      v66 = v47;
      v68 = v20;
      dispatch_sync(v24, block);
      if (v70[5])
      {
        if (type)
        {
          v27 = !+[CSUtils isDarwinOS];
          if (type == 5)
          {
            v28 = v27;
          }

          else
          {
            v28 = 1;
          }
        }

        else
        {
          v28 = 0;
        }

        if (([v26 intValue] != 1) | v28 & 1)
        {
          queue = v20;
          v29 = +[CSOnDeviceCompilationUtils getModelConfigsWithAsset:modelType:](CSOnDeviceCompilationUtils, "getModelConfigsWithAsset:modelType:", v25, [v26 intValue]);
          v42 = self->_queue;
          v50[0] = MEMORY[0x1E69E9820];
          v50[1] = 3221225472;
          v50[2] = __137__CSOnDeviceCompilationHandler_compileAndUpdateDeviceCachesWithAsset_assetType_modelType_deviceId_currentLocale_compileDirectory_errOut___block_invoke_24;
          v50[3] = &unk_1E865C488;
          v55[1] = &v69;
          v50[4] = self;
          v51 = v29;
          v52 = v45;
          v46 = &v53;
          v53 = v47;
          v30 = &v54;
          v54 = v25;
          v31 = v55;
          v32 = &v51;
          v33 = &v52;
          v55[0] = v26;
          v55[2] = queue;
          v34 = v29;
          v35 = v50;
          v36 = v42;
        }

        else
        {
          if (idCopy == @"Hub")
          {
            v40 = [CSVoiceTriggerSecondPassConfigDecoder fetchAllVoiceTriggerSecondPassRecognizer:v25];
          }

          else
          {
            v37 = [CSVoiceTriggerSecondPassConfigDecoder decodeConfigFrom:v25 forFirstPassSource:7];
            v38 = v37;
            if (v37)
            {
              configPathRecognizer = [v37 configPathRecognizer];
              v75 = configPathRecognizer;
              v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
            }

            else
            {
              v40 = 0;
            }
          }

          queuea = self->_queue;
          v56[0] = MEMORY[0x1E69E9820];
          v56[1] = 3221225472;
          v56[2] = __137__CSOnDeviceCompilationHandler_compileAndUpdateDeviceCachesWithAsset_assetType_modelType_deviceId_currentLocale_compileDirectory_errOut___block_invoke_23;
          v56[3] = &unk_1E865C460;
          v61[1] = &v69;
          v32 = &v57;
          v56[4] = self;
          v57 = v40;
          v33 = &v58;
          v58 = v45;
          v46 = &v59;
          v59 = v47;
          v41 = v40;
          v30 = &v60;
          v60 = v25;
          v31 = v61;
          v61[0] = v26;
          v34 = v41;
          v35 = v56;
          v36 = queuea;
        }

        dispatch_sync(v36, v35);

        if (out)
        {
          *out = v70[5];
        }
      }

      localeCopy = v48;
      assetCopy = v49;

      _Block_object_dispose(&v69, 8);
    }
  }

  else if (out)
  {
    v21 = MEMORY[0x1E696ABC0];
    v76 = *MEMORY[0x1E696A578];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"deviceId specified as nil"];
    v77[0] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:&v76 count:1];
    *out = [v21 errorWithDomain:@"com.apple.corespeech" code:2254 userInfo:v23];
  }
}

void __137__CSOnDeviceCompilationHandler_compileAndUpdateDeviceCachesWithAsset_assetType_modelType_deviceId_currentLocale_compileDirectory_errOut___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _compileModelWithModelListInAsset:*(a1 + 40) modelType:*(a1 + 48) compileDirectoryPath:*(a1 + 56) locale:*(a1 + 64) compilationFramework:*(a1 + 80)];
  v3 = *(*(a1 + 72) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 72) + 8) + 40);
  if (v5 && [v5 code] != 2262)
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(*(a1 + 72) + 8) + 40);
      v8 = *(a1 + 48);
      v9 = 136315650;
      v10 = "[CSOnDeviceCompilationHandler compileAndUpdateDeviceCachesWithAsset:assetType:modelType:deviceId:currentLocale:compileDirectory:errOut:]_block_invoke";
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s compilation with onDeviceCompilation list finished with error: %@ with modelType: %@", &v9, 0x20u);
    }
  }
}

void __137__CSOnDeviceCompilationHandler_compileAndUpdateDeviceCachesWithAsset_assetType_modelType_deviceId_currentLocale_compileDirectory_errOut___block_invoke_23(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = [*(a1 + 64) configVersion];
  v7 = [*(a1 + 64) hashFromResourcePath];
  v8 = [v2 _compileModelAndAddToCacheWithConfigFiles:v3 compileDirectoryPath:v4 locale:v5 assetVersion:v6 hashToUse:v7 modelType:objc_msgSend(*(a1 + 72) compilationFramework:{"intValue"), 1}];
  v9 = *(*(a1 + 80) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(*(*(a1 + 80) + 8) + 40);
    *buf = 136315394;
    v14 = "[CSOnDeviceCompilationHandler compileAndUpdateDeviceCachesWithAsset:assetType:modelType:deviceId:currentLocale:compileDirectory:errOut:]_block_invoke";
    v15 = 2112;
    v16 = v12;
    _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s second pass model compilation finished with error %@: ", buf, 0x16u);
  }
}

void __137__CSOnDeviceCompilationHandler_compileAndUpdateDeviceCachesWithAsset_assetType_modelType_deviceId_currentLocale_compileDirectory_errOut___block_invoke_24(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = [*(a1 + 64) configVersion];
  v7 = [*(a1 + 64) hashFromResourcePath];
  v8 = [v2 _compileModelAndAddToCacheWithConfigFiles:v3 compileDirectoryPath:v4 locale:v5 assetVersion:v6 hashToUse:v7 modelType:objc_msgSend(*(a1 + 72) compilationFramework:{"intValue"), *(a1 + 88)}];
  v9 = *(*(a1 + 80) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(*(*(a1 + 80) + 8) + 40);
    *buf = 136315394;
    v14 = "[CSOnDeviceCompilationHandler compileAndUpdateDeviceCachesWithAsset:assetType:modelType:deviceId:currentLocale:compileDirectory:errOut:]_block_invoke";
    v15 = 2112;
    v16 = v12;
    _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s second pass model compilation finished with error %@: ", buf, 0x16u);
  }
}

- (void)compileAndUpdateDeviceCachesWithAsset:(id)asset assetType:(unint64_t)type endpointId:(id)id errOut:(id *)out
{
  v50[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  idCopy = id;
  v10 = idCopy;
  if (idCopy)
  {
    v35 = idCopy;
    [CSUtils getSiriLanguageWithEndpointId:"getSiriLanguageWithEndpointId:fallbackLanguage:" fallbackLanguage:?];
  }

  else
  {
    v35 = @"Hub";
    v11 = @"Hub";
    [CSUtils getSiriLanguageWithFallback:@"en-US"];
  }
  v34 = ;
  v12 = +[CSFPreferences sharedPreferences];
  getOnDeviceCompilationCacheDirectory = [v12 getOnDeviceCompilationCacheDirectory];

  v33 = getOnDeviceCompilationCacheDirectory;
  if (getOnDeviceCompilationCacheDirectory)
  {
    v14 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v46 = "[CSOnDeviceCompilationHandler compileAndUpdateDeviceCachesWithAsset:assetType:endpointId:errOut:]";
      v47 = 2048;
      typeCopy = type;
      _os_log_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_DEFAULT, "%s compiling for modelType: %lu", buf, 0x16u);
    }

    if (type > 4)
    {
      if (type != 5)
      {
        if (type != 6)
        {
          goto LABEL_28;
        }

        v16 = &CSOnDeviceCompileSupportedMitigationModelTypes;
LABEL_20:
        v20 = *v16;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v19 = v20;
        v21 = [v19 countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v21)
        {
          v22 = v21;
          v18 = 0;
          v23 = *v39;
          do
          {
            v24 = 0;
            v25 = v18;
            do
            {
              if (*v39 != v23)
              {
                objc_enumerationMutation(v19);
              }

              v26 = *(*(&v38 + 1) + 8 * v24);
              v27 = +[CSOnDeviceCompilationUtils getModelCompiledDirWithModelType:basePath:](CSOnDeviceCompilationUtils, "getModelCompiledDirWithModelType:basePath:", [v26 intValue], v33);
              v37 = v25;
              [(CSOnDeviceCompilationHandler *)self compileAndUpdateDeviceCachesWithAsset:assetCopy assetType:type modelType:v26 deviceId:v35 currentLocale:v34 compileDirectory:v27 errOut:&v37];
              v18 = v37;

              ++v24;
              v25 = v18;
            }

            while (v22 != v24);
            v22 = [v19 countByEnumeratingWithState:&v38 objects:v42 count:16];
          }

          while (v22);
        }

        else
        {
          v18 = 0;
        }

        if (out)
        {
          v31 = v18;
          *out = v18;
        }

        goto LABEL_34;
      }

      if (!+[CSUtils isDarwinOS])
      {
        goto LABEL_28;
      }
    }

    else if (type)
    {
      if (type == 3)
      {
        v15 = CSLogContextFacilityCoreSpeech;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v46 = "[CSOnDeviceCompilationHandler compileAndUpdateDeviceCachesWithAsset:assetType:endpointId:errOut:]";
          _os_log_impl(&dword_1DDA4B000, v15, OS_LOG_TYPE_DEFAULT, "%s compiling for modelType forCSSpeakerRecognitionAssetType", buf, 0xCu);
        }

        v16 = &CSOnDeviceCompileSupportedSpeakerRecognitionModelTypes;
        goto LABEL_20;
      }

LABEL_28:
      if (out)
      {
        v28 = MEMORY[0x1E696ABC0];
        v43 = *MEMORY[0x1E696A578];
        type = [MEMORY[0x1E696AEC0] stringWithFormat:@"asset type is not supported: %lu", type];
        v44 = type;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        *out = [v28 errorWithDomain:@"com.apple.corespeech" code:2265 userInfo:v30];
      }

      v19 = 0;
      v18 = 0;
      goto LABEL_34;
    }

    v16 = &CSOnDeviceCompileSupportedVoiceTriggerModelTypes;
    goto LABEL_20;
  }

  if (out)
  {
    v17 = MEMORY[0x1E696ABC0];
    v49 = *MEMORY[0x1E696A578];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cached ir directory is nil"];
    v50[0] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
    *out = [v17 errorWithDomain:@"com.apple.corespeech" code:2264 userInfo:v19];
LABEL_34:
  }
}

- (CSOnDeviceCompilationHandler)init
{
  v6.receiver = self;
  v6.super_class = CSOnDeviceCompilationHandler;
  v2 = [(CSOnDeviceCompilationHandler *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSOnDeviceCompilationHanlder", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

+ (id)sharedHandler
{
  if (sharedHandler_onceToken_12738 != -1)
  {
    dispatch_once(&sharedHandler_onceToken_12738, &__block_literal_global_12739);
  }

  v3 = sharedHandler_sharedHandler_12740;

  return v3;
}

uint64_t __45__CSOnDeviceCompilationHandler_sharedHandler__block_invoke()
{
  v0 = objc_alloc_init(CSOnDeviceCompilationHandler);
  v1 = sharedHandler_sharedHandler_12740;
  sharedHandler_sharedHandler_12740 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end