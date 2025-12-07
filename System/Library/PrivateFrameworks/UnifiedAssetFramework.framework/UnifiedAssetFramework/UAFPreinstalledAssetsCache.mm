@interface UAFPreinstalledAssetsCache
+ (BOOL)checkForAssetTypePath:(id)path;
+ (BOOL)isEnabled;
+ (id)assetSpecifier:(id)specifier assetSetConfiguration:(id)configuration;
+ (id)assetSpecifiersFromRoots:(id)roots;
+ (id)queryAssetType:(id)type;
+ (id)summary:(id)summary;
+ (void)initCache:(id)cache;
+ (void)invalidateCache;
+ (void)populateCache:(id)cache;
@end

@implementation UAFPreinstalledAssetsCache

+ (BOOL)isEnabled
{
  v2 = +[UAFCommonUtilities isInternalInstall];
  if (v2)
  {

    LOBYTE(v2) = +[UAFConfiguration assetRootSupported];
  }

  return v2;
}

+ (void)initCache:(id)cache
{
  cacheCopy = cache;
  if (_MergedGlobals_0 != -1)
  {
    dispatch_once(&_MergedGlobals_0, &__block_literal_global_1);
  }

  v4 = qword_1ED7D1060;
  objc_sync_enter(v4);
  v5 = qword_1ED7D1060;
  name = [cacheCopy name];
  LOBYTE(v5) = [v5 containsObject:name];

  if ((v5 & 1) == 0)
  {
    name2 = [cacheCopy name];
    v8 = qword_1ED7D1050;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __40__UAFPreinstalledAssetsCache_initCache___block_invoke_2;
    v12[3] = &unk_1E7FFCFD0;
    v9 = cacheCopy;
    v13 = v9;
    [UAFAssetSetObserver listenForUAFNotificationsForAssetSet:name2 forRoot:1 queue:v8 updateHandler:v12];

    v10 = qword_1ED7D1060;
    name3 = [v9 name];
    [v10 addObject:name3];
  }

  objc_sync_exit(v4);
}

void __40__UAFPreinstalledAssetsCache_initCache___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("com.apple.UnifiedAssetFramework.assetcache", v0);
  v2 = qword_1ED7D1050;
  qword_1ED7D1050 = v1;

  v3 = qword_1ED7D1058;
  qword_1ED7D1058 = MEMORY[0x1E695E0F8];

  v4 = objc_opt_new();
  v5 = qword_1ED7D1060;
  qword_1ED7D1060 = v4;
}

uint64_t __40__UAFPreinstalledAssetsCache_initCache___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) name];
    v5 = 136315394;
    v6 = "+[UAFPreinstalledAssetsCache initCache:]_block_invoke_2";
    v7 = 2114;
    v8 = v3;
    _os_log_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_DEFAULT, "%s Invalidating preinstalled asset cache due to root installation for %{public}@", &v5, 0x16u);
  }

  return +[UAFPreinstalledAssetsCache invalidateCache];
}

+ (void)invalidateCache
{
  v2 = qword_1ED7D1068;
  qword_1ED7D1068 = 0;

  v3 = qword_1ED7D1070;
  qword_1ED7D1070 = 0;
}

+ (void)populateCache:(id)cache
{
  v14 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  v4 = qword_1ED7D1068;
  if (!qword_1ED7D1068)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v6 = qword_1ED7D1068;
    qword_1ED7D1068 = dictionary;

    v4 = qword_1ED7D1068;
  }

  v7 = [v4 objectForKeyedSubscript:cacheCopy];

  if (!v7 && [UAFPreinstalledAssetsCache checkForAssetTypePath:cacheCopy])
  {
    v8 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "+[UAFPreinstalledAssetsCache populateCache:]";
      v12 = 2114;
      v13 = cacheCopy;
      _os_log_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_DEFAULT, "%s Querying for %{public}@", &v10, 0x16u);
    }

    v9 = [UAFPreinstalledAssetsCache queryAssetType:cacheCopy];
    [qword_1ED7D1068 setObject:v9 forKeyedSubscript:cacheCopy];
  }
}

+ (id)assetSpecifier:(id)specifier assetSetConfiguration:(id)configuration
{
  specifierCopy = specifier;
  configurationCopy = configuration;
  autoAssetType = [configurationCopy autoAssetType];

  if (autoAssetType)
  {
    if (+[UAFPreinstalledAssetsCache isEnabled])
    {
      [UAFPreinstalledAssetsCache initCache:configurationCopy];
      autoAssetType2 = [configurationCopy autoAssetType];
      v16 = 0;
      v17 = &v16;
      v18 = 0x3032000000;
      v19 = __Block_byref_object_copy__1;
      v20 = __Block_byref_object_dispose__1;
      v21 = 0;
      v9 = qword_1ED7D1050;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __67__UAFPreinstalledAssetsCache_assetSpecifier_assetSetConfiguration___block_invoke;
      block[3] = &unk_1E7FFD768;
      v13 = autoAssetType2;
      v15 = &v16;
      v14 = specifierCopy;
      v10 = autoAssetType2;
      dispatch_sync(v9, block);
      autoAssetType = v17[5];

      _Block_object_dispose(&v16, 8);
    }

    else
    {
      autoAssetType = 0;
    }
  }

  return autoAssetType;
}

void __67__UAFPreinstalledAssetsCache_assetSpecifier_assetSetConfiguration___block_invoke(void *a1)
{
  [UAFPreinstalledAssetsCache populateCache:a1[4]];
  v2 = [qword_1ED7D1068 objectForKeyedSubscript:a1[4]];

  if (v2)
  {
    v8 = [qword_1ED7D1068 objectForKeyedSubscript:a1[4]];
    v3 = [v8 objectForKeyedSubscript:a1[5]];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = v8;
  }

  else
  {
    v7 = *(a1[6] + 8);
    v6 = *(v7 + 40);
    *(v7 + 40) = 0;
  }
}

+ (BOOL)checkForAssetTypePath:(id)path
{
  v72 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v4 = qword_1ED7D1070;
  if (!qword_1ED7D1070)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v6 = qword_1ED7D1070;
    qword_1ED7D1070 = dictionary;

    v4 = qword_1ED7D1070;
  }

  v7 = [v4 objectForKeyedSubscript:pathCopy];
  v8 = v7;
  if (v7)
  {
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [pathCopy stringByReplacingOccurrencesOfString:@"." withString:@"_"];
    array = [MEMORY[0x1E695DF70] array];
    v13 = 0x1E7FFC000uLL;
    v14 = [UAFCommonUtilities getMAPath:1];
    [array addObject:v14];

    v15 = [UAFCommonUtilities getMAPath:2];
    [array addObject:v15];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v16 = array;
    v44 = [v16 countByEnumeratingWithState:&v51 objects:v71 count:16];
    if (v44)
    {
      v18 = *v52;
      v42 = *MEMORY[0x1E695DC30];
      *&v17 = 136315394;
      v37 = v17;
      context = v10;
      v40 = v16;
      v41 = v11;
      v38 = *v52;
      do
      {
        v19 = 0;
        do
        {
          if (*v52 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = [*(*(&v51 + 1) + 8 * v19) stringByAppendingPathComponent:{v11, v37}];
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v64 = 0u;
          memset(v63, 0, sizeof(v63));
          if (![*(v13 + 2584) stat:v20 withBuf:v63 error:0])
          {
            defaultManager = [MEMORY[0x1E696AC08] defaultManager];
            v22 = [MEMORY[0x1E695DFF8] URLWithString:v20];
            v62 = v42;
            v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
            v49[0] = MEMORY[0x1E69E9820];
            v49[1] = 3221225472;
            v49[2] = __52__UAFPreinstalledAssetsCache_checkForAssetTypePath___block_invoke;
            v49[3] = &unk_1E7FFD790;
            v43 = v20;
            v50 = v43;
            v24 = [defaultManager enumeratorAtURL:v22 includingPropertiesForKeys:v23 options:1 errorHandler:v49];

            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            v25 = v24;
            v26 = [v25 countByEnumeratingWithState:&v45 objects:v61 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v46;
              while (2)
              {
                for (i = 0; i != v27; ++i)
                {
                  if (*v46 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  path = [*(*(&v45 + 1) + 8 * i) path];
                  v31 = [path hasSuffix:@".asset"];

                  if (v31)
                  {
                    v35 = UAFGetLogCategory(&UAFLogContextClient);
                    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
                    {
                      *buf = 136315650;
                      v56 = "+[UAFPreinstalledAssetsCache checkForAssetTypePath:]";
                      v57 = 2114;
                      v58 = pathCopy;
                      v59 = 2114;
                      v60 = v43;
                      _os_log_impl(&dword_1BCF2C000, v35, OS_LOG_TYPE_INFO, "%s Root for asset type %{public}@ found at %{public}@", buf, 0x20u);
                    }

                    [qword_1ED7D1070 setObject:MEMORY[0x1E695E118] forKeyedSubscript:pathCopy];
                    objc_autoreleasePoolPop(context);
                    bOOLValue = 1;
                    v8 = 0;
                    goto LABEL_31;
                  }
                }

                v27 = [v25 countByEnumeratingWithState:&v45 objects:v61 count:16];
                if (v27)
                {
                  continue;
                }

                break;
              }
            }

            v32 = UAFGetLogCategory(&UAFLogContextClient);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              *buf = v37;
              v56 = "+[UAFPreinstalledAssetsCache checkForAssetTypePath:]";
              v57 = 2112;
              v58 = v43;
              _os_log_impl(&dword_1BCF2C000, v32, OS_LOG_TYPE_INFO, "%s %@ exists but does not contain any assets", buf, 0x16u);
            }

            v16 = v40;
            v11 = v41;
            v13 = 0x1E7FFC000;
            v18 = v38;
          }

          ++v19;
        }

        while (v19 != v44);
        v33 = [v16 countByEnumeratingWithState:&v51 objects:v71 count:16];
        v10 = context;
        v8 = 0;
        v44 = v33;
      }

      while (v33);
    }

    v34 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *v63 = 136315394;
      *&v63[4] = "+[UAFPreinstalledAssetsCache checkForAssetTypePath:]";
      *&v63[12] = 2114;
      *&v63[14] = pathCopy;
      _os_log_impl(&dword_1BCF2C000, v34, OS_LOG_TYPE_INFO, "%s No root asset type path found for %{public}@", v63, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [qword_1ED7D1070 setObject:MEMORY[0x1E695E110] forKeyedSubscript:pathCopy];
    bOOLValue = 0;
  }

LABEL_31:

  return bOOLValue;
}

uint64_t __52__UAFPreinstalledAssetsCache_checkForAssetTypePath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v10 = 136315906;
    v11 = "+[UAFPreinstalledAssetsCache checkForAssetTypePath:]_block_invoke";
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_INFO, "%s Error encountered while enumerating contents of %@.  URL: %@, error: %@", &v10, 0x2Au);
  }

  return 0;
}

+ (id)queryAssetType:(id)type
{
  v23 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_alloc(MEMORY[0x1E69B18E8]) initWithType:typeCopy];
  v6 = v5;
  if (!v5)
  {
    v9 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "+[UAFPreinstalledAssetsCache queryAssetType:]";
      v19 = 2112;
      v20 = typeCopy;
      _os_log_error_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_ERROR, "%s Error creating MAAssetQuery for asset type %@", buf, 0x16u);
    }

    goto LABEL_7;
  }

  [v5 returnTypes:3];
  [v6 setDoNotBlockOnNetworkStatus:1];
  [v6 setDoNotBlockBeforeFirstUnlock:1];
  [v6 addKeyValuePair:@"isRoot" with:@"1"];
  queryMetaDataSync = [v6 queryMetaDataSync];
  if (queryMetaDataSync)
  {
    v8 = queryMetaDataSync;
    v9 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v18 = "+[UAFPreinstalledAssetsCache queryAssetType:]";
      v19 = 2112;
      v20 = typeCopy;
      v21 = 2048;
      v22 = v8;
      _os_log_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_DEFAULT, "%s MA query for %@ failed with result: %ld", buf, 0x20u);
    }

LABEL_7:

    v10 = qword_1ED7D1058;
    goto LABEL_14;
  }

  results = [v6 results];
  v12 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v18 = "+[UAFPreinstalledAssetsCache queryAssetType:]";
    v19 = 2114;
    v20 = typeCopy;
    v21 = 1024;
    LODWORD(v22) = [results count];
    _os_log_debug_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_DEBUG, "%s Query for %{public}@ returned %d assets", buf, 0x1Cu);
  }

  if ([results count])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __45__UAFPreinstalledAssetsCache_queryAssetType___block_invoke;
    v15[3] = &unk_1E7FFD7B8;
    v10 = dictionary;
    v16 = v10;
    [results enumerateObjectsUsingBlock:v15];
  }

  else
  {
    v10 = qword_1ED7D1058;
  }

LABEL_14:
  objc_autoreleasePoolPop(v4);

  return v10;
}

void __45__UAFPreinstalledAssetsCache_queryAssetType___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 assetProperty:@"AssetSpecifier"];
  if (v4)
  {
    [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
  }

  else
  {
    v5 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 136315394;
      v7 = "+[UAFPreinstalledAssetsCache queryAssetType:]_block_invoke";
      v8 = 2114;
      v9 = v3;
      _os_log_debug_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEBUG, "%s MAAsset without specifier: %{public}@", &v6, 0x16u);
    }
  }
}

+ (id)assetSpecifiersFromRoots:(id)roots
{
  rootsCopy = roots;
  autoAssetType = [rootsCopy autoAssetType];

  if (autoAssetType)
  {
    if (+[UAFPreinstalledAssetsCache isEnabled])
    {
      [UAFPreinstalledAssetsCache initCache:rootsCopy];
      autoAssetType2 = [rootsCopy autoAssetType];
      v12 = 0;
      v13 = &v12;
      v14 = 0x3032000000;
      v15 = __Block_byref_object_copy__1;
      v16 = __Block_byref_object_dispose__1;
      v17 = 0;
      v6 = qword_1ED7D1050;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __55__UAFPreinstalledAssetsCache_assetSpecifiersFromRoots___block_invoke;
      v9[3] = &unk_1E7FFD0E8;
      v10 = autoAssetType2;
      v11 = &v12;
      v7 = autoAssetType2;
      dispatch_sync(v6, v9);
      autoAssetType = v13[5];

      _Block_object_dispose(&v12, 8);
    }

    else
    {
      autoAssetType = 0;
    }
  }

  return autoAssetType;
}

void __55__UAFPreinstalledAssetsCache_assetSpecifiersFromRoots___block_invoke(uint64_t a1)
{
  [UAFPreinstalledAssetsCache populateCache:*(a1 + 32)];
  v2 = [qword_1ED7D1068 objectForKeyedSubscript:*(a1 + 32)];
  if (v2 && (v3 = v2, [qword_1ED7D1068 objectForKeyedSubscript:*(a1 + 32)], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, v3, v5))
  {
    v6 = MEMORY[0x1E695DFD8];
    v13 = [qword_1ED7D1068 objectForKeyedSubscript:*(a1 + 32)];
    v7 = [v13 allKeys];
    v8 = [v6 setWithArray:v7];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = v13;
  }

  else
  {
    v12 = *(*(a1 + 40) + 8);
    v11 = *(v12 + 40);
    *(v12 + 40) = 0;
  }
}

+ (id)summary:(id)summary
{
  summaryCopy = summary;
  autoAssetType = [summaryCopy autoAssetType];

  if (autoAssetType)
  {
    if (+[UAFPreinstalledAssetsCache isEnabled])
    {
      [UAFPreinstalledAssetsCache initCache:summaryCopy];
      autoAssetType2 = [summaryCopy autoAssetType];
      v12 = 0;
      v13 = &v12;
      v14 = 0x3032000000;
      v15 = __Block_byref_object_copy__1;
      v16 = __Block_byref_object_dispose__1;
      v17 = 0;
      v6 = qword_1ED7D1050;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __38__UAFPreinstalledAssetsCache_summary___block_invoke;
      v9[3] = &unk_1E7FFD0E8;
      v10 = autoAssetType2;
      v11 = &v12;
      v7 = autoAssetType2;
      dispatch_sync(v6, v9);
      autoAssetType = v13[5];

      _Block_object_dispose(&v12, 8);
    }

    else
    {
      autoAssetType = 0;
    }
  }

  return autoAssetType;
}

void __38__UAFPreinstalledAssetsCache_summary___block_invoke(uint64_t a1)
{
  v1 = a1;
  v31 = *MEMORY[0x1E69E9840];
  [UAFPreinstalledAssetsCache populateCache:*(a1 + 32)];
  v2 = &getAFPreferencesClass_softClass;
  v3 = [qword_1ED7D1068 objectForKeyedSubscript:*(v1 + 32)];
  if (v3 && (v4 = v3, [qword_1ED7D1068 objectForKeyedSubscript:*(v1 + 32)], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v4, v6))
  {
    v25 = objc_opt_new();
    context = objc_autoreleasePoolPush();
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [qword_1ED7D1068 objectForKeyedSubscript:*(v1 + 32)];
    v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v27;
      do
      {
        v10 = 0;
        do
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v26 + 1) + 8 * v10);
          v12 = MEMORY[0x1E696AEC0];
          [v2[13] objectForKeyedSubscript:*(v1 + 32)];
          v13 = v1;
          v15 = v14 = v2;
          v16 = [v15 objectForKeyedSubscript:v11];
          v17 = [v16 assetId];
          v18 = [v12 stringWithFormat:@"%@#%@", v11, v17];
          [v25 addObject:v18];

          v2 = v14;
          v1 = v13;
          ++v10;
        }

        while (v8 != v10);
        v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v8);
    }

    objc_autoreleasePoolPop(context);
    v19 = *(*(v1 + 40) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v25;
  }

  else
  {
    v21 = *(*(v1 + 40) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = 0;
  }
}

@end