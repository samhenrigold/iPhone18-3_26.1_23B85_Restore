@interface CSFOnDeviceCachedIrPurgingUtils
+ (void)cleanUpLegacyCachedIrDir:(id)dir;
+ (void)cleanUpPreviousBuildBnnsIrInCachedIrDir:(id)dir;
+ (void)purgeCachedIrExceptActiveCachedIrs:(id)irs cachedIrDir:(id)dir;
+ (void)purgeCachedIrForTrialAssetExcludingCurrentAsset:(id)asset baseCachedIrDir:(id)dir;
+ (void)removeOnDeviceCachedPath;
@end

@implementation CSFOnDeviceCachedIrPurgingUtils

+ (void)purgeCachedIrForTrialAssetExcludingCurrentAsset:(id)asset baseCachedIrDir:(id)dir
{
  v19 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  dirCopy = dir;
  if (dirCopy)
  {
    v7 = [CSOnDeviceCompilationUtils getCachedIrsFromCSAsset:assetCopy cachedIrDir:dirCopy];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __99__CSFOnDeviceCachedIrPurgingUtils_purgeCachedIrForTrialAssetExcludingCurrentAsset_baseCachedIrDir___block_invoke;
    v14 = &unk_1E865C030;
    v15 = dirCopy;
    v8 = v7;
    v16 = v8;
    v9 = MEMORY[0x1E12BA300](&v11);
    if (![assetCopy assetType])
    {
      (v9)[2](v9, CSOnDeviceCompileSupportedVoiceTriggerModelTypes);
    }

    if ([assetCopy assetType] == 6)
    {
      v9[2](v9, CSOnDeviceCompileSupportedMitigationModelTypes);
    }
  }

  else
  {
    v10 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v18 = "+[CSFOnDeviceCachedIrPurgingUtils purgeCachedIrForTrialAssetExcludingCurrentAsset:baseCachedIrDir:]";
      _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s cachedIrDir specified as nil for purging", buf, 0xCu);
    }
  }
}

void __99__CSFOnDeviceCachedIrPurgingUtils_purgeCachedIrForTrialAssetExcludingCurrentAsset_baseCachedIrDir___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = +[CSOnDeviceCompilationUtils getModelCompiledDirWithModelType:basePath:](CSOnDeviceCompilationUtils, "getModelCompiledDirWithModelType:basePath:", [*(*(&v9 + 1) + 8 * v7) intValue], *(a1 + 32));
        [CSFOnDeviceCachedIrPurgingUtils purgeCachedIrExceptActiveCachedIrs:*(a1 + 40) cachedIrDir:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

+ (void)removeOnDeviceCachedPath
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = +[CSFPreferences sharedPreferences];
  getOnDeviceCompilationCacheDirectory = [v2 getOnDeviceCompilationCacheDirectory];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v7 = 0;
  [defaultManager removeItemAtPath:getOnDeviceCompilationCacheDirectory error:&v7];
  v5 = v7;

  if (v5)
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "+[CSFOnDeviceCachedIrPurgingUtils removeOnDeviceCachedPath]";
      v10 = 2112;
      v11 = v5;
      _os_log_error_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_ERROR, "%s cleanUpOnDeviceCompilationPath cleanup has error: %@", buf, 0x16u);
    }
  }
}

+ (void)cleanUpLegacyCachedIrDir:(id)dir
{
  v14 = *MEMORY[0x1E69E9840];
  dirCopy = dir;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager fileExistsAtPath:dirCopy];

  if (v5)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v9 = 0;
    [defaultManager2 removeItemAtPath:dirCopy error:&v9];
    v7 = v9;

    if (v7)
    {
      v8 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v11 = "+[CSFOnDeviceCachedIrPurgingUtils cleanUpLegacyCachedIrDir:]";
        v12 = 2112;
        v13 = v7;
        _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s removing legacy path with error: %@", buf, 0x16u);
      }
    }
  }
}

+ (void)cleanUpPreviousBuildBnnsIrInCachedIrDir:(id)dir
{
  v34 = *MEMORY[0x1E69E9840];
  dirCopy = dir;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = [defaultManager contentsOfDirectoryAtPath:dirCopy error:0];

  if (v5 && [v5 count])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v19 = v5;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          if (![CSOnDeviceCompilationUtils isBnnsIrNameForCurrentBuild:v11])
          {
            v12 = [dirCopy stringByAppendingPathComponent:v11];
            stringByStandardizingPath = [v12 stringByStandardizingPath];

            v22 = 0;
            defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
            v15 = [defaultManager2 fileExistsAtPath:stringByStandardizingPath isDirectory:&v22];

            if (v15)
            {
              if (v22 == 1)
              {
                [self cleanUpPreviousBuildBnnsIrInCachedIrDir:stringByStandardizingPath];
              }

              else
              {
                defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
                v21 = 0;
                [defaultManager3 removeItemAtPath:stringByStandardizingPath error:&v21];
                v17 = v21;

                v18 = CSLogContextFacilityCoreSpeech;
                if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v28 = "+[CSFOnDeviceCachedIrPurgingUtils cleanUpPreviousBuildBnnsIrInCachedIrDir:]";
                  v29 = 2112;
                  v30 = stringByStandardizingPath;
                  v31 = 2112;
                  v32 = v17;
                  _os_log_impl(&dword_1DDA4B000, v18, OS_LOG_TYPE_DEFAULT, "%s remove folders or file for daemon start cleanup: %@ with error: %@", buf, 0x20u);
                }
              }
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v33 count:16];
      }

      while (v8);
    }

    v5 = v19;
  }
}

+ (void)purgeCachedIrExceptActiveCachedIrs:(id)irs cachedIrDir:(id)dir
{
  v84 = *MEMORY[0x1E69E9840];
  irsCopy = irs;
  dirCopy = dir;
  v7 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v75 = "+[CSFOnDeviceCachedIrPurgingUtils purgeCachedIrExceptActiveCachedIrs:cachedIrDir:]";
    v76 = 2112;
    v77 = irsCopy;
    _os_log_impl(&dword_1DDA4B000, v7, OS_LOG_TYPE_DEFAULT, "%s Current active Irs: %@", buf, 0x16u);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v73 = 0;
  v9 = [defaultManager contentsOfDirectoryAtPath:dirCopy error:&v73];
  v10 = v73;

  if (v10)
  {
    v11 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v75 = "+[CSFOnDeviceCachedIrPurgingUtils purgeCachedIrExceptActiveCachedIrs:cachedIrDir:]";
      v76 = 2112;
      v77 = v10;
      _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s Can't fetch files within bnns cached ir folder with error: %@", buf, 0x16u);
    }
  }

  else
  {
    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self ENDSWITH '.bnnsir'"];
    v13 = [v9 filteredArrayUsingPredicate:v12];

    if (v13 && [v13 count])
    {
      v50 = v9;
      v52 = irsCopy;
      v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v51 = v13;
      v15 = v13;
      v16 = [v15 countByEnumeratingWithState:&v69 objects:v83 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v70;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v70 != v18)
            {
              objc_enumerationMutation(v15);
            }

            if (*(*(&v69 + 1) + 8 * i))
            {
              v20 = [dirCopy stringByAppendingPathComponent:?];
              stringByStandardizingPath = [v20 stringByStandardizingPath];
              [v14 addObject:stringByStandardizingPath];
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v69 objects:v83 count:16];
        }

        while (v17);
      }

      v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v23 = v52;
      v24 = [v23 countByEnumeratingWithState:&v65 objects:v82 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v66;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v66 != v26)
            {
              objc_enumerationMutation(v23);
            }

            stringByStandardizingPath2 = [*(*(&v65 + 1) + 8 * j) stringByStandardizingPath];
            [v22 addObject:stringByStandardizingPath2];
          }

          v25 = [v23 countByEnumeratingWithState:&v65 objects:v82 count:16];
        }

        while (v25);
      }

      v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v30 = v14;
      v31 = [v30 countByEnumeratingWithState:&v61 objects:v81 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v62;
        do
        {
          for (k = 0; k != v32; ++k)
          {
            if (*v62 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v61 + 1) + 8 * k);
            if (([v22 containsObject:v35] & 1) == 0)
            {
              [v29 addObject:v35];
            }
          }

          v32 = [v30 countByEnumeratingWithState:&v61 objects:v81 count:16];
        }

        while (v32);
      }

      v36 = [CSOnDeviceCompilationUtils sortCachedIrsByLastAccessTimeStamp:v29];
      v37 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v75 = "+[CSFOnDeviceCachedIrPurgingUtils purgeCachedIrExceptActiveCachedIrs:cachedIrDir:]";
        v76 = 2112;
        v77 = v36;
        _os_log_impl(&dword_1DDA4B000, v37, OS_LOG_TYPE_DEFAULT, "%s All cached Irs sorted by modification timestamps: %@", buf, 0x16u);
      }

      v13 = v51;
      if ([v36 count] > 1)
      {
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v49 = v36;
        obj = v36;
        v40 = [obj countByEnumeratingWithState:&v57 objects:v80 count:16];
        if (v40)
        {
          v41 = 0;
          v10 = 0;
          v54 = *v58;
LABEL_44:
          v42 = 0;
          v43 = ~v41;
          v48 = v41 + v40;
          v44 = v10;
          v53 = v40;
          while (1)
          {
            if (*v58 != v54)
            {
              objc_enumerationMutation(obj);
            }

            v45 = *(*(&v57 + 1) + 8 * v42);
            defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
            v56 = v44;
            [defaultManager2 removeItemAtPath:v45 error:&v56];
            v10 = v56;

            v47 = CSLogContextFacilityCoreSpeech;
            if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v75 = "+[CSFOnDeviceCachedIrPurgingUtils purgeCachedIrExceptActiveCachedIrs:cachedIrDir:]";
              v76 = 2112;
              v77 = v45;
              v78 = 2112;
              v79 = v10;
              _os_log_impl(&dword_1DDA4B000, v47, OS_LOG_TYPE_DEFAULT, "%s removing cachedIr: %@ with error: %@", buf, 0x20u);
            }

            if (([obj count] + v43) < 2)
            {
              break;
            }

            ++v42;
            --v43;
            v44 = v10;
            if (v53 == v42)
            {
              v40 = [obj countByEnumeratingWithState:&v57 objects:v80 count:16];
              v41 = v48;
              if (v40)
              {
                goto LABEL_44;
              }

              break;
            }
          }
        }

        else
        {
          v10 = 0;
        }

        v13 = v51;
        irsCopy = v52;
        v36 = v49;
      }

      else
      {
        v38 = CSLogContextFacilityCoreSpeech;
        irsCopy = v52;
        if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v75 = "+[CSFOnDeviceCachedIrPurgingUtils purgeCachedIrExceptActiveCachedIrs:cachedIrDir:]";
          v76 = 2048;
          v77 = 1;
          _os_log_impl(&dword_1DDA4B000, v38, OS_LOG_TYPE_DEFAULT, "%s No need to purge as all cached Irs count less than %lu", buf, 0x16u);
        }

        v10 = 0;
      }

      v9 = v50;
    }

    else
    {
      v39 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v75 = "+[CSFOnDeviceCachedIrPurgingUtils purgeCachedIrExceptActiveCachedIrs:cachedIrDir:]";
        v76 = 2112;
        v77 = dirCopy;
        _os_log_impl(&dword_1DDA4B000, v39, OS_LOG_TYPE_DEFAULT, "%s No Cached Irs found in directory: %@", buf, 0x16u);
      }

      v10 = 0;
    }
  }
}

@end