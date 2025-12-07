@interface UAFAutoAssetHistory
+ (BOOL)_createHistoryDirIfNeeded:(id)needed error:(id *)error;
+ (BOOL)_persistAssetSetInfo:(id)info assetSetIdentifier:(id)identifier isEliminating:(BOOL)eliminating jsonData:(id)data error:(id *)error;
+ (BOOL)_writeAssetInfoToFile:(id)file data:(id)data filePath:(id)path error:(id *)error;
+ (id)_getAutoAssetSetInfo:(id)info entries:(id)entries includeAssetVersion:(BOOL)version;
+ (id)_getPersistAssetInfoPath;
+ (id)getPersistedAssetInfo;
+ (void)persistAssetSetInfoConfiguring:(id)configuring entries:(id)entries isEliminating:(BOOL)eliminating reason:(id)reason;
+ (void)persistAssetSetInfoLocked:(id)locked atomicEntries:(id)entries autoAssetSet:(id)set isEliminating:(BOOL)eliminating reason:(id)reason;
@end

@implementation UAFAutoAssetHistory

+ (id)_getAutoAssetSetInfo:(id)info entries:(id)entries includeAssetVersion:(BOOL)version
{
  versionCopy = version;
  v41 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  entriesCopy = entries;
  v9 = 0x1E695D000uLL;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  assetSetIdentifier = [infoCopy assetSetIdentifier];
  v30 = dictionary;
  v31 = infoCopy;
  if (assetSetIdentifier)
  {
    assetSetIdentifier2 = [infoCopy assetSetIdentifier];
    [dictionary setObject:assetSetIdentifier2 forKeyedSubscript:@"assetSetIdentifier"];
  }

  else
  {
    [dictionary setObject:&stru_1F3B6B510 forKeyedSubscript:@"assetSetIdentifier"];
  }

  v13 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = entriesCopy;
  v35 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v35)
  {
    v34 = *v37;
    v32 = versionCopy;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v37 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v36 + 1) + 8 * i);
        dictionary2 = [*(v9 + 3984) dictionary];
        assetSelector = [v15 assetSelector];
        assetSpecifier = [assetSelector assetSpecifier];

        if (assetSpecifier)
        {
          assetSelector2 = [v15 assetSelector];
          assetSpecifier2 = [assetSelector2 assetSpecifier];

          if (!versionCopy)
          {
            goto LABEL_14;
          }
        }

        else
        {
          assetSpecifier2 = &stru_1F3B6B510;
          if (!versionCopy)
          {
LABEL_14:
            [dictionary2 setObject:assetSpecifier2 forKeyedSubscript:@"assetSpecifier"];
            goto LABEL_20;
          }
        }

        dictionary3 = [*(v9 + 3984) dictionary];
        [dictionary3 setObject:assetSpecifier2 forKeyedSubscript:@"assetSpecifier"];
        assetSelector3 = [v15 assetSelector];
        assetVersion = [assetSelector3 assetVersion];
        if (assetVersion)
        {
          assetSelector4 = [v15 assetSelector];
          [assetSelector4 assetVersion];
          v26 = v25 = v13;
          [dictionary3 setObject:v26 forKeyedSubscript:@"assetVersion"];

          v13 = v25;
          versionCopy = v32;
          v9 = 0x1E695D000;
        }

        else
        {
          [dictionary3 setObject:&stru_1F3B6B510 forKeyedSubscript:@"assetVersion"];
        }

        if (dictionary3)
        {
          v27 = dictionary3;
        }

        else
        {
          v27 = &unk_1F3B732E8;
        }

        [dictionary2 setObject:v27 forKeyedSubscript:@"assetSelector"];

LABEL_20:
        if ([v15 assetLockedInhibitsRemoval])
        {
          v28 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v15, "assetLockedInhibitsRemoval")}];
          [dictionary2 setObject:v28 forKeyedSubscript:@"assetLockedInhibitsRemoval"];
        }

        [v13 addObject:dictionary2];
      }

      v35 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v35);
  }

  if ([v13 count])
  {
    [v30 setObject:v13 forKeyedSubscript:@"autoAssetEntries"];
  }

  return v30;
}

+ (id)_getPersistAssetInfoPath
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = +[UAFCommonUtilities getDefaultStoragePath];
  v7[0] = v3;
  v7[1] = @"history";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v5 = [v2 pathWithComponents:v4];

  return v5;
}

+ (id)getPersistedAssetInfo
{
  v41[1] = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  array = [MEMORY[0x1E695DF70] array];
  v4 = +[UAFAutoAssetHistory _getPersistAssetInfoPath];
  if ([defaultManager fileExistsAtPath:v4])
  {
    v24 = v4;
    [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
    v36 = 0;
    v23 = v25 = defaultManager;
    v5 = [defaultManager contentsOfDirectoryAtURL:? includingPropertiesForKeys:? options:? error:?];
    v6 = v36;
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@".%@.%@", @"cur", @"json"];
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@".%@.%@", @"prev", @"json"];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v7)
    {
      v8 = v7;
      v29 = *v33;
      v9 = array;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v33 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v32 + 1) + 8 * i);
          lastPathComponent = [v11 lastPathComponent];
          if (lastPathComponent)
          {
            v13 = lastPathComponent;
            if (([(__CFString *)lastPathComponent hasSuffix:v28]& 1) != 0)
            {
              v14 = @"cur";
            }

            else if ([(__CFString *)v13 hasSuffix:v26])
            {
              v14 = @"prev";
            }

            else
            {
              v14 = @"unknown";
            }
          }

          else
          {
            v14 = @"unknown";
            v13 = @"unknown";
          }

          v31 = v6;
          v15 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v11 options:2 error:&v31];
          v16 = v31;

          if (v16 || !v15)
          {
            v19 = @"unknown error";
            if (v16)
            {
              v19 = v16;
            }

            v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to get data from persisted info URL '%@', err = '%@'", v11, v19];
            v6 = v16;
          }

          else
          {
            v30 = 0;
            v17 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v15 options:0 error:&v30];
            v6 = v30;
            if (v6)
            {
              v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to parse data from persisted info URL '%@', err = '%@'", v11, v6];

              v17 = v18;
            }
          }

          array = v9;
          v37[0] = @"assetSetInfo";
          v37[1] = @"filename";
          v38[0] = v17;
          v38[1] = v13;
          v37[2] = @"history";
          v38[2] = v14;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:3];
          [v9 addObject:v20];
        }

        v8 = [obj countByEnumeratingWithState:&v32 objects:v39 count:16];
      }

      while (v8);
    }

    v4 = v24;
    defaultManager = v25;
    v21 = v23;
  }

  else
  {
    v40 = @"error";
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"no info available, topdir '%@' does not exist", v4];
    v41[0] = v6;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    [array addObject:v21];
  }

  return array;
}

+ (BOOL)_createHistoryDirIfNeeded:(id)needed error:(id *)error
{
  v35[2] = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v21 = 0;
  if (![defaultManager fileExistsAtPath:neededCopy isDirectory:&v21])
  {
    v26 = *MEMORY[0x1E696A370];
    v8 = [MEMORY[0x1E696AD98] numberWithShort:448];
    v27 = v8;
    v7 = 1;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v10 = [defaultManager createDirectoryAtPath:neededCopy withIntermediateDirectories:1 attributes:v9 error:error];

    if (v10)
    {
      goto LABEL_22;
    }

    if (error)
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = UAFErrorCodeAssetHistoryFailedToCreateFile;
      if (*error)
      {
        v24[0] = *MEMORY[0x1E696A578];
        neededCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to create UAF history directory path at '%@'", neededCopy];
        v24[1] = *MEMORY[0x1E696AA08];
        v25[0] = neededCopy;
        v25[1] = *error;
        v14 = MEMORY[0x1E695DF20];
        v15 = v25;
        v16 = v24;
LABEL_11:
        v17 = 2;
LABEL_20:
        v19 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:v17];
        *error = [v11 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:v12 userInfo:v19];

        goto LABEL_21;
      }

      v22 = *MEMORY[0x1E696A578];
      neededCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to create UAF history directory path at '%@'", neededCopy];
      v23 = neededCopy;
      v14 = MEMORY[0x1E695DF20];
      v15 = &v23;
      v16 = &v22;
LABEL_19:
      v17 = 1;
      goto LABEL_20;
    }

    neededCopy = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(neededCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "+[UAFAutoAssetHistory _createHistoryDirIfNeeded:error:]";
      v30 = 2112;
      v31 = neededCopy;
      v18 = "%s failed to create UAF history directory path at '%@'";
LABEL_16:
      _os_log_error_impl(&dword_1BCF2C000, neededCopy, OS_LOG_TYPE_ERROR, v18, buf, 0x16u);
    }

LABEL_21:

    v7 = 0;
    goto LABEL_22;
  }

  if ((v21 & 1) == 0)
  {
    if (error)
    {
      v11 = MEMORY[0x1E696ABC0];
      v12 = UAFErrorCodeAssetHistoryPathExistsIsNotDir;
      if (*error)
      {
        v34[0] = *MEMORY[0x1E696A578];
        neededCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"UAF history directory path exists but is not a directory, not preserving info, path is '%@'", neededCopy];
        v35[0] = neededCopy;
        v34[1] = *MEMORY[0x1E696AA08];
        v35[1] = *error;
        v14 = MEMORY[0x1E695DF20];
        v15 = v35;
        v16 = v34;
        goto LABEL_11;
      }

      v32 = *MEMORY[0x1E696A578];
      neededCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"UAF history directory path exists but is not a directory, not preserving info, path is '%@'", neededCopy];
      v33 = neededCopy;
      v14 = MEMORY[0x1E695DF20];
      v15 = &v33;
      v16 = &v32;
      goto LABEL_19;
    }

    neededCopy = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(neededCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "+[UAFAutoAssetHistory _createHistoryDirIfNeeded:error:]";
      v30 = 2112;
      v31 = neededCopy;
      v18 = "%s UAF history directory path exists but is not a directory, not preserving info, path is '%@'";
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  v7 = 1;
LABEL_22:

  return v7;
}

+ (BOOL)_writeAssetInfoToFile:(id)file data:(id)data filePath:(id)path error:(id *)error
{
  v45[2] = *MEMORY[0x1E69E9840];
  fileCopy = file;
  dataCopy = data;
  pathCopy = path;
  v12 = [UAFCommonUtilities openFD:pathCopy oflags:1537 mode:420 error:error];
  if ((v12 & 0x80000000) != 0)
  {
    if (error)
    {
      v22 = MEMORY[0x1E696ABC0];
      v23 = UAFErrorCodeAssetHistoryFailedToCreateFile;
      if (*error)
      {
        v44[0] = *MEMORY[0x1E696A578];
        pathCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to open file for persisting info for assetSetIdentifier '%@' at path = '%@'", fileCopy, pathCopy];
        v44[1] = *MEMORY[0x1E696AA08];
        v24 = *error;
        v45[0] = pathCopy;
        v45[1] = v24;
        v25 = MEMORY[0x1E695DF20];
        v26 = v45;
        v27 = v44;
        v28 = 2;
      }

      else
      {
        v42 = *MEMORY[0x1E696A578];
        pathCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to open file for persisting info for assetSetIdentifier '%@' at path = '%@'", fileCopy, pathCopy];
        v43 = pathCopy;
        v25 = MEMORY[0x1E695DF20];
        v26 = &v43;
        v27 = &v42;
        v28 = 1;
      }

      v29 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:v28];
      *error = [v22 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:v23 userInfo:v29];
    }

    else
    {
      pathCopy = UAFGetLogCategory(&UAFLogContextMAConfig);
      if (os_log_type_enabled(pathCopy, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v37 = "+[UAFAutoAssetHistory _writeAssetInfoToFile:data:filePath:error:]";
        v38 = 2112;
        v39 = fileCopy;
        v40 = 2112;
        v41 = pathCopy;
        _os_log_error_impl(&dword_1BCF2C000, pathCopy, OS_LOG_TYPE_ERROR, "%s failed to open file for persisting info for assetSetIdentifier '%@' at path = '%@'", buf, 0x20u);
      }
    }

    goto LABEL_18;
  }

  v13 = 1;
  pathCopy = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v12 closeOnDealloc:1];
  if (([pathCopy writeData:dataCopy error:error]& 1) == 0)
  {
    if (error)
    {
      v15 = MEMORY[0x1E696ABC0];
      v16 = UAFErrorCodeAssetHistoryFailedToCreateFile;
      if (*error)
      {
        v34[0] = *MEMORY[0x1E696A578];
        pathCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to write to file for persisting info for assetSetIdentifier '%@' at path = '%@'", fileCopy, pathCopy];
        v34[1] = *MEMORY[0x1E696AA08];
        v35[0] = pathCopy2;
        v35[1] = *error;
        v18 = MEMORY[0x1E695DF20];
        v19 = v35;
        v20 = v34;
        v21 = 2;
      }

      else
      {
        pathCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to write to file for persisting info for assetSetIdentifier '%@' at path = '%@'", fileCopy, pathCopy, *MEMORY[0x1E696A578]];
        v33 = pathCopy2;
        v18 = MEMORY[0x1E695DF20];
        v19 = &v33;
        v20 = &v32;
        v21 = 1;
      }

      v30 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:v21];
      *error = [v15 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:v16 userInfo:v30];
    }

    else
    {
      pathCopy2 = UAFGetLogCategory(&UAFLogContextMAConfig);
      if (os_log_type_enabled(pathCopy2, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v37 = "+[UAFAutoAssetHistory _writeAssetInfoToFile:data:filePath:error:]";
        v38 = 2112;
        v39 = fileCopy;
        v40 = 2112;
        v41 = pathCopy;
        _os_log_error_impl(&dword_1BCF2C000, pathCopy2, OS_LOG_TYPE_ERROR, "%s failed to write to file for persisting info for assetSetIdentifier '%@' at path = '%@'", buf, 0x20u);
      }
    }

LABEL_18:
    v13 = 0;
  }

  return v13;
}

+ (BOOL)_persistAssetSetInfo:(id)info assetSetIdentifier:(id)identifier isEliminating:(BOOL)eliminating jsonData:(id)data error:(id *)error
{
  v66[2] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  identifierCopy = identifier;
  dataCopy = data;
  v13 = +[UAFAutoAssetManager getSerialQueue];
  dispatch_assert_queue_V2(v13);

  if ([@"configuration" isEqualToString:infoCopy])
  {
    v46 = infoCopy;
    v14 = @"uafConfiguredLog";
  }

  else
  {
    if (([@"locked" isEqualToString:infoCopy] & 1) == 0)
    {
      if (error)
      {
        v25 = MEMORY[0x1E696ABC0];
        v26 = UAFErrorCodeAssetHistoryUnknownType;
        if (*error)
        {
          v65[0] = *MEMORY[0x1E696A578];
          infoCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown infoType '%@'", infoCopy];
          v65[1] = *MEMORY[0x1E696AA08];
          v66[0] = infoCopy;
          v66[1] = *error;
          v28 = MEMORY[0x1E695DF20];
          v29 = v66;
          v30 = v65;
          v31 = 2;
        }

        else
        {
          v63 = *MEMORY[0x1E696A578];
          infoCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown infoType '%@'", infoCopy];
          v64 = infoCopy;
          v28 = MEMORY[0x1E695DF20];
          v29 = &v64;
          v30 = &v63;
          v31 = 1;
        }

        v39 = [v28 dictionaryWithObjects:v29 forKeys:v30 count:v31];
        *error = [v25 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:v26 userInfo:v39];
      }

      else
      {
        infoCopy = UAFGetLogCategory(&UAFLogContextMAConfig);
        if (os_log_type_enabled(infoCopy, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v54 = "+[UAFAutoAssetHistory _persistAssetSetInfo:assetSetIdentifier:isEliminating:jsonData:error:]";
          v55 = 2112;
          v56 = infoCopy;
          _os_log_error_impl(&dword_1BCF2C000, infoCopy, OS_LOG_TYPE_ERROR, "%s unknown infoType '%@'", buf, 0x16u);
        }
      }

      v18 = 0;
      v15 = 0;
      v21 = 0;
      v16 = 0;
      v17 = 0;
      goto LABEL_29;
    }

    v46 = infoCopy;
    v14 = @"uafLockedLog";
  }

  v15 = +[UAFAutoAssetHistory _getPersistAssetInfoPath];
  if (![UAFAutoAssetHistory _createHistoryDirIfNeeded:v15 error:error])
  {
    v18 = 0;
    v21 = 0;
    v16 = 0;
    v17 = 0;
    v24 = 0;
    infoCopy = v46;
    goto LABEL_31;
  }

  v45 = identifierCopy;
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@-%@", v15, identifierCopy, v14];
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@.%@", v16, @"cur", @"json"];
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@.%@", v16, @"prev", @"json"];
  v48 = 0;
  v19 = [UAFCommonUtilities rename:v17 toPath:v18 error:&v48];
  v20 = v48;
  v21 = v20;
  if (v19)
  {
    code = [v20 code];
    domain = [v21 domain];
    if (code != 2 && [*MEMORY[0x1E696A798] isEqualToString:domain])
    {
      log = UAFGetLogCategory(&UAFLogContextMAConfig);
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v54 = "+[UAFAutoAssetHistory _persistAssetSetInfo:assetSetIdentifier:isEliminating:jsonData:error:]";
        v55 = 2114;
        v56 = v17;
        v57 = 2114;
        v58 = v18;
        v59 = 2114;
        v60 = domain;
        v61 = 2048;
        v62 = code;
        _os_log_impl(&dword_1BCF2C000, log, OS_LOG_TYPE_DEFAULT, "%s failed to rename current persisted info file '%{public}@' to previous '%{public}@', domain = '%{public}@', code = %ld", buf, 0x34u);
      }
    }
  }

  if (!eliminating)
  {
    v32 = [MEMORY[0x1E695DFF8] fileURLWithPath:v17 isDirectory:0];
    identifierCopy = v45;
    if (v32)
    {
      infoCopy = v32;
      v24 = [UAFAutoAssetHistory _writeAssetInfoToFile:v45 data:dataCopy filePath:v17 error:error];
      infoCopy = v46;
LABEL_30:

      goto LABEL_31;
    }

    if (error)
    {
      loga = MEMORY[0x1E696ABC0];
      v33 = UAFErrorCodeAssetHistoryFailedToCreateObject;
      infoCopy = v46;
      if (*error)
      {
        v51[0] = *MEMORY[0x1E696A578];
        v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown infoType '%@'", v46];
        v51[1] = *MEMORY[0x1E696AA08];
        v52[0] = v34;
        v52[1] = *error;
        v35 = MEMORY[0x1E695DF20];
        v36 = v52;
        v37 = v51;
        v38 = 2;
      }

      else
      {
        v49 = *MEMORY[0x1E696A578];
        v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown infoType '%@'", v46];
        v50 = v34;
        v35 = MEMORY[0x1E695DF20];
        v36 = &v50;
        v37 = &v49;
        v38 = 1;
      }

      v42 = [v35 dictionaryWithObjects:v36 forKeys:v37 count:v38];
      *error = [loga errorWithDomain:@"com.apple.UnifiedAssetFramework" code:v33 userInfo:v42];

      infoCopy = 0;
      v24 = 0;
      identifierCopy = v45;
      goto LABEL_30;
    }

    v41 = UAFGetLogCategory(&UAFLogContextMAConfig);
    infoCopy = v46;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v54 = "+[UAFAutoAssetHistory _persistAssetSetInfo:assetSetIdentifier:isEliminating:jsonData:error:]";
      v55 = 2112;
      v56 = v46;
      _os_log_error_impl(&dword_1BCF2C000, v41, OS_LOG_TYPE_ERROR, "%s unknown infoType '%@'", buf, 0x16u);
    }

    infoCopy = 0;
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  v24 = 1;
  identifierCopy = v45;
  infoCopy = v46;
LABEL_31:

  return v24;
}

+ (void)persistAssetSetInfoConfiguring:(id)configuring entries:(id)entries isEliminating:(BOOL)eliminating reason:(id)reason
{
  eliminatingCopy = eliminating;
  v33[2] = *MEMORY[0x1E69E9840];
  configuringCopy = configuring;
  entriesCopy = entries;
  reasonCopy = reason;
  assetSetIdentifier = [configuringCopy assetSetIdentifier];
  if (eliminatingCopy)
  {
    data = [MEMORY[0x1E695DEF0] data];
    v14 = 0;
    v15 = 0;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if (!dictionary)
    {
      v23 = UAFGetLogCategory(&UAFLogContextMAConfig);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v27 = "+[UAFAutoAssetHistory persistAssetSetInfoConfiguring:entries:isEliminating:reason:]";
        v28 = 2114;
        v29 = assetSetIdentifier;
        _os_log_error_impl(&dword_1BCF2C000, v23, OS_LOG_TYPE_ERROR, "%s failed to create output dictionary for persisting info about configuring asset set '%{public}@', not persisting information", buf, 0x16u);
      }

      v14 = 0;
      data = 0;
      v15 = 0;
      goto LABEL_15;
    }

    v14 = dictionary;
    v32[0] = @"reason";
    v32[1] = @"timestamp";
    v33[0] = reasonCopy;
    date = [MEMORY[0x1E695DF00] date];
    v18 = [UAFCommonUtilities getISO8601Timestamp:date withFractionalSeconds:1];
    v33[1] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
    [v14 setObject:v19 forKeyedSubscript:@"UAFHistoryMetadata"];

    v20 = [UAFAutoAssetHistory _getAutoAssetSetInfo:configuringCopy entries:entriesCopy includeAssetVersion:0];
    [v14 setObject:v20 forKeyedSubscript:@"autoAssetSet"];

    v25 = 0;
    data = [UAFCommonUtilities serializeDictToJSONData:v14 error:&v25];
    v15 = v25;
    if (!data)
    {
      v23 = UAFGetLogCategory(&UAFLogContextMAConfig);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v27 = "+[UAFAutoAssetHistory persistAssetSetInfoConfiguring:entries:isEliminating:reason:]";
        v28 = 2114;
        v29 = assetSetIdentifier;
        v30 = 2114;
        v31 = v15;
        _os_log_error_impl(&dword_1BCF2C000, v23, OS_LOG_TYPE_ERROR, "%s could not serialize output dictionary to json, not persisting info about configuring asset set '%{public}@', error is '%{public}@'", buf, 0x20u);
      }

      data = 0;
      goto LABEL_15;
    }
  }

  v21 = v15;
  v24 = v15;
  v22 = [UAFAutoAssetHistory _persistAssetSetInfo:@"configuration" assetSetIdentifier:assetSetIdentifier isEliminating:eliminatingCopy jsonData:data error:&v24];
  v15 = v24;

  if (!v22 || v15)
  {
    v23 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v27 = "+[UAFAutoAssetHistory persistAssetSetInfoConfiguring:entries:isEliminating:reason:]";
      v28 = 2114;
      v29 = assetSetIdentifier;
      v30 = 2114;
      v31 = v15;
      _os_log_error_impl(&dword_1BCF2C000, v23, OS_LOG_TYPE_ERROR, "%s failed to persist info while configuring assetSetIdentifier '%{public}@', error is '%{public}@'", buf, 0x20u);
    }

LABEL_15:
  }
}

+ (void)persistAssetSetInfoLocked:(id)locked atomicEntries:(id)entries autoAssetSet:(id)set isEliminating:(BOOL)eliminating reason:(id)reason
{
  eliminatingCopy = eliminating;
  v81[2] = *MEMORY[0x1E69E9840];
  lockedCopy = locked;
  entriesCopy = entries;
  setCopy = set;
  reasonCopy = reason;
  assetSetIdentifier = [setCopy assetSetIdentifier];
  if (eliminatingCopy)
  {
    v50 = eliminatingCopy;
    data = [MEMORY[0x1E695DEF0] data];
    v51 = 0;
    v17 = 0;
    array = 0;
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    if (!array)
    {
      v20 = UAFGetLogCategory(&UAFLogContextMAConfig);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v70 = "+[UAFAutoAssetHistory persistAssetSetInfoLocked:atomicEntries:autoAssetSet:isEliminating:reason:]";
        v71 = 2114;
        v72 = assetSetIdentifier;
        _os_log_error_impl(&dword_1BCF2C000, v20, OS_LOG_TYPE_ERROR, "%s failed to create array for atomic entries for persisting info about locked asset set '%{public}@', not persisting information", buf, 0x16u);
      }

      v51 = 0;
      data = 0;
      v17 = 0;
      array = 0;
      goto LABEL_53;
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if (!dictionary)
    {
      v20 = UAFGetLogCategory(&UAFLogContextMAConfig);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v70 = "+[UAFAutoAssetHistory persistAssetSetInfoLocked:atomicEntries:autoAssetSet:isEliminating:reason:]";
        v71 = 2114;
        v72 = assetSetIdentifier;
        _os_log_error_impl(&dword_1BCF2C000, v20, OS_LOG_TYPE_ERROR, "%s failed to create output dictionary for persisting info about locked asset set '%{public}@', not persisting information", buf, 0x16u);
      }

      v51 = 0;
      data = 0;
      v17 = 0;
      goto LABEL_53;
    }

    v50 = 0;
    v46 = reasonCopy;
    if (reasonCopy)
    {
      v22 = reasonCopy;
    }

    else
    {
      v22 = @"<no reason provided>";
    }

    v80[0] = @"reason";
    v80[1] = @"timestamp";
    v81[0] = v22;
    v23 = dictionary;
    date = [MEMORY[0x1E695DF00] date];
    v25 = [UAFCommonUtilities getISO8601Timestamp:date withFractionalSeconds:1];
    v81[1] = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v81 forKeys:v80 count:2];
    [v23 setObject:v26 forKeyedSubscript:@"UAFHistoryMetadata"];

    v49 = lockedCopy;
    if (lockedCopy)
    {
      v27 = lockedCopy;
    }

    else
    {
      v27 = &stru_1F3B6B510;
    }

    [v23 setObject:v27 forKeyedSubscript:@"atomicInstance"];
    autoAssetEntries = [setCopy autoAssetEntries];
    v47 = setCopy;
    v29 = [UAFAutoAssetHistory _getAutoAssetSetInfo:setCopy entries:autoAssetEntries includeAssetVersion:1];
    v51 = v23;
    [v23 setObject:v29 forKeyedSubscript:@"autoAssetSet"];

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v48 = entriesCopy;
    obj = entriesCopy;
    v55 = [obj countByEnumeratingWithState:&v65 objects:v79 count:16];
    if (v55)
    {
      v53 = *v66;
      do
      {
        for (i = 0; i != v55; ++i)
        {
          if (*v66 != v53)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v65 + 1) + 8 * i);
          v77[0] = @"fullAssetSelector";
          v75[0] = @"assetSpecifier";
          fullAssetSelector = [v31 fullAssetSelector];
          assetSpecifier = [fullAssetSelector assetSpecifier];
          if (assetSpecifier)
          {
            fullAssetSelector2 = [v31 fullAssetSelector];
            assetSpecifier2 = [fullAssetSelector2 assetSpecifier];
            v34 = assetSpecifier2;
          }

          else
          {
            v34 = &stru_1F3B6B510;
          }

          v76[0] = v34;
          v75[1] = @"assetVersion";
          fullAssetSelector3 = [v31 fullAssetSelector];
          assetVersion = [fullAssetSelector3 assetVersion];
          if (assetVersion)
          {
            fullAssetSelector4 = [v31 fullAssetSelector];
            assetVersion2 = [fullAssetSelector4 assetVersion];
            v37 = assetVersion2;
          }

          else
          {
            v37 = &stru_1F3B6B510;
          }

          v76[1] = v37;
          v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:v75 count:2];
          v78[0] = v38;
          v77[1] = @"assetID";
          assetID = [v31 assetID];
          if (assetID)
          {
            assetID2 = [v31 assetID];
            v40 = assetID2;
          }

          else
          {
            v40 = &stru_1F3B6B510;
          }

          v78[1] = v40;
          v77[2] = @"localContentURL";
          localContentURL = [v31 localContentURL];
          if (localContentURL)
          {
            localContentURL2 = [v31 localContentURL];
            absoluteString = [localContentURL2 absoluteString];
            v42 = absoluteString;
          }

          else
          {
            v42 = &stru_1F3B6B510;
          }

          v78[2] = v42;
          v77[3] = @"inhibitedFromEmergencyRemoval";
          v43 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v31, "inhibitedFromEmergencyRemoval")}];
          v78[3] = v43;
          v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:v77 count:4];

          if (localContentURL)
          {
          }

          if (assetID)
          {
          }

          if (assetVersion)
          {
          }

          if (assetSpecifier)
          {
          }

          [array addObject:v44];
        }

        v55 = [obj countByEnumeratingWithState:&v65 objects:v79 count:16];
      }

      while (v55);
    }

    [v51 setObject:array forKeyedSubscript:@"atomicEntries"];
    v64 = 0;
    data = [UAFCommonUtilities serializeDictToJSONData:v51 error:&v64];
    v17 = v64;
    if (!data)
    {
      v20 = UAFGetLogCategory(&UAFLogContextMAConfig);
      entriesCopy = v48;
      lockedCopy = v49;
      assetSetIdentifier = v45;
      reasonCopy = v46;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v70 = "+[UAFAutoAssetHistory persistAssetSetInfoLocked:atomicEntries:autoAssetSet:isEliminating:reason:]";
        v71 = 2114;
        v72 = v45;
        v73 = 2114;
        v74 = v17;
        _os_log_error_impl(&dword_1BCF2C000, v20, OS_LOG_TYPE_ERROR, "%s could not serialize output dictionary to json, not persisting info about locked asset set '%{public}@', error is '%{public}@'", buf, 0x20u);
      }

      data = 0;
      setCopy = v47;
      goto LABEL_53;
    }

    entriesCopy = v48;
    lockedCopy = v49;
    reasonCopy = v46;
    setCopy = v47;
    assetSetIdentifier = v45;
  }

  v18 = v17;
  v63 = v17;
  v19 = [UAFAutoAssetHistory _persistAssetSetInfo:@"locked" assetSetIdentifier:assetSetIdentifier isEliminating:v50 jsonData:data error:&v63];
  v17 = v63;

  if (!v19 || v17)
  {
    v20 = UAFGetLogCategory(&UAFLogContextMAConfig);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v70 = "+[UAFAutoAssetHistory persistAssetSetInfoLocked:atomicEntries:autoAssetSet:isEliminating:reason:]";
      v71 = 2114;
      v72 = assetSetIdentifier;
      v73 = 2114;
      v74 = v17;
      _os_log_error_impl(&dword_1BCF2C000, v20, OS_LOG_TYPE_ERROR, "%s failed to persist info for locked assetSetIdentifier '%{public}@', error is '%{public}@'", buf, 0x20u);
    }

LABEL_53:
  }
}

@end