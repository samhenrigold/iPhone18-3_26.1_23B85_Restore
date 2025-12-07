@interface UAFConfigurationManager
+ (id)defaultManager;
+ (id)getAssetNameFromPath:(id)path;
+ (id)getConfigurationDirURL:(id)l;
+ (id)getDeprecatedUsageAliasNameFromPath:(id)path;
- (BOOL)isUsageLimitExceeded:(id)exceeded;
- (UAFConfigurationManager)initWithURLs:(id)ls;
- (id)applySubscriptions:(id)subscriptions;
- (id)getAllAssetSets;
- (id)getAssetSet:(id)set;
- (id)getMinVersion:(id)version provider:(id)provider;
- (id)getPrestage:(id)prestage;
- (id)getUsageAlias:(id)alias includeDeprecatedValues:(BOOL)values;
- (id)minVersions:(id)versions;
- (void)assetSetCacheMiss:(id)miss;
- (void)invalidateCache;
@end

@implementation UAFConfigurationManager

+ (id)defaultManager
{
  if (_MergedGlobals_10 != -1)
  {
    dispatch_once(&_MergedGlobals_10, &__block_literal_global_10);
  }

  v3 = qword_1ED7D1150;

  return v3;
}

void __41__UAFConfigurationManager_defaultManager__block_invoke()
{
  v0 = [[UAFConfigurationManager alloc] initWithURLs:0];
  v1 = qword_1ED7D1150;
  qword_1ED7D1150 = v0;
}

- (id)getAllAssetSets
{
  v61 = *MEMORY[0x1E69E9840];
  v3 = UAFGetLogCategory(&UAFLogContextConfiguration);
  v4 = os_signpost_id_generate(v3);

  v5 = UAFGetLogCategory(&UAFLogContextConfiguration);
  v6 = v5;
  spid = v4;
  v35 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "AssetSet Configuration", "", buf, 2u);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = [(UAFConfigurationManager *)self baseURLs];
  v39 = [obj countByEnumeratingWithState:&v48 objects:v60 count:16];
  v7 = 0;
  if (v39)
  {
    v38 = *v49;
    v37 = *MEMORY[0x1E695DBB8];
    v8 = &UAFLogContextConfiguration;
    v9 = @"plist";
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v49 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v48 + 1) + 8 * i);
        v12 = [v11 URLByAppendingPathComponent:@"AssetSets"];
        if (v12)
        {
          v41 = i;
          defaultManager = [MEMORY[0x1E696AC08] defaultManager];
          v53 = v37;
          v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
          v40 = v12;
          v15 = [defaultManager enumeratorAtURL:v12 includingPropertiesForKeys:v14 options:0 errorHandler:0];

          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          v16 = v15;
          v43 = [v16 countByEnumeratingWithState:&v44 objects:v52 count:16];
          if (v43)
          {
            v17 = *v45;
            v42 = *v45;
            do
            {
              for (j = 0; j != v43; ++j)
              {
                if (*v45 != v17)
                {
                  objc_enumerationMutation(v16);
                }

                v19 = *(*(&v44 + 1) + 8 * j);
                pathExtension = [(__CFString *)v19 pathExtension];
                v21 = [pathExtension isEqualToString:v9];

                if (v21)
                {
                  v22 = [objc_opt_class() getAssetNameFromPath:v19];
                  v23 = [(UAFConfigurationManager *)self getAssetSet:v22];
                  if (v23)
                  {
                    if (!v7)
                    {
                      v7 = objc_opt_new();
                    }

                    if (([v7 containsObject:v23] & 1) == 0)
                    {
                      [v7 addObject:v23];
                    }
                  }

                  else
                  {
                    v24 = v16;
                    selfCopy = self;
                    v26 = v9;
                    v27 = v7;
                    v28 = v8;
                    v29 = UAFGetLogCategory(v8);
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315650;
                      v55 = "[UAFConfigurationManager getAllAssetSets]";
                      v56 = 2112;
                      v57 = v22;
                      v58 = 2112;
                      v59 = v19;
                      _os_log_error_impl(&dword_1BCF2C000, v29, OS_LOG_TYPE_ERROR, "%s Asset with name %@ could not be loaded from %@.", buf, 0x20u);
                    }

                    v8 = v28;
                    v7 = v27;
                    v9 = v26;
                    self = selfCopy;
                    v16 = v24;
                    v17 = v42;
                  }
                }

                else
                {
                  v22 = UAFGetLogCategory(v8);
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    v55 = "[UAFConfigurationManager getAllAssetSets]";
                    v56 = 2112;
                    v57 = v19;
                    _os_log_impl(&dword_1BCF2C000, v22, OS_LOG_TYPE_DEFAULT, "%s Not trying to load %@ as an asset set configuration file as it lacks the plist extension", buf, 0x16u);
                  }
                }
              }

              v43 = [v16 countByEnumeratingWithState:&v44 objects:v52 count:16];
            }

            while (v43);
          }

          v12 = v40;
          i = v41;
        }

        else
        {
          v16 = UAFGetLogCategory(v8);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v55 = "[UAFConfigurationManager getAllAssetSets]";
            v56 = 2112;
            v57 = v11;
            v58 = 2112;
            v59 = @"AssetSets";
            _os_log_error_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_ERROR, "%s Could not create URL from %@ by appending %@", buf, 0x20u);
          }
        }
      }

      v39 = [obj countByEnumeratingWithState:&v48 objects:v60 count:16];
    }

    while (v39);
  }

  v30 = UAFGetLogCategory(&UAFLogContextConfiguration);
  v31 = v30;
  if (v35 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v31, OS_SIGNPOST_INTERVAL_END, spid, "AssetSet Configuration", "", buf, 2u);
  }

  allObjects = [v7 allObjects];

  return allObjects;
}

+ (id)getConfigurationDirURL:(id)l
{
  lCopy = l;
  v4 = +[UAFCommonUtilities rootDirectory];
  v5 = [v4 stringByAppendingString:lCopy];

  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5 isDirectory:1 relativeToURL:0];

  return v6;
}

+ (id)getAssetNameFromPath:(id)path
{
  uRLByDeletingPathExtension = [path URLByDeletingPathExtension];
  lastPathComponent = [uRLByDeletingPathExtension lastPathComponent];

  if (lastPathComponent)
  {
    v5 = lastPathComponent;
  }

  else
  {
    v5 = &stru_1F3B6B510;
  }

  return v5;
}

+ (id)getDeprecatedUsageAliasNameFromPath:(id)path
{
  uRLByDeletingPathExtension = [path URLByDeletingPathExtension];
  lastPathComponent = [uRLByDeletingPathExtension lastPathComponent];

  if (lastPathComponent && (v5 = [lastPathComponent rangeOfString:@".deprecated"], v5 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v6 = [lastPathComponent substringWithRange:{0, v5}];
  }

  else
  {
    v6 = &stru_1F3B6B510;
  }

  return v6;
}

- (UAFConfigurationManager)initWithURLs:(id)ls
{
  lsCopy = ls;
  v16.receiver = self;
  v16.super_class = UAFConfigurationManager;
  v5 = [(UAFConfigurationManager *)&v16 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    assetSetCache = v5->_assetSetCache;
    v5->_assetSetCache = v6;

    if (lsCopy)
    {
      v8 = lsCopy;
      baseURLs = v5->_baseURLs;
      v5->_baseURLs = v8;
    }

    else
    {
      v10 = objc_opt_new();
      v11 = objc_autoreleasePoolPush();
      if (+[UAFCommonUtilities isInternalInstall])
      {
        v12 = [UAFConfigurationManager getConfigurationDirURL:@"/AppleInternal/Library/UnifiedAssetFramework"];
        if (v12)
        {
          [(NSArray *)v10 addObject:v12];
        }
      }

      v13 = [UAFConfigurationManager getConfigurationDirURL:@"/System/Library/UnifiedAssetFramework"];
      if (v13)
      {
        [(NSArray *)v10 addObject:v13];
      }

      objc_autoreleasePoolPop(v11);
      baseURLs = v5->_baseURLs;
      v5->_baseURLs = v10;
    }

    v14 = v5;
  }

  return v5;
}

- (void)invalidateCache
{
  obj = [(UAFConfigurationManager *)self assetSetCache];
  objc_sync_enter(obj);
  v3 = objc_opt_new();
  [(UAFConfigurationManager *)self setAssetSetCache:v3];

  objc_sync_exit(obj);
}

- (void)assetSetCacheMiss:(id)miss
{
  v40 = *MEMORY[0x1E69E9840];
  missCopy = miss;
  selfCopy = self;
  context = objc_autoreleasePoolPush();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = [(UAFConfigurationManager *)self baseURLs];
  v5 = [obj countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v24 = *v28;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v27 + 1) + 8 * i) URLByAppendingPathComponent:@"AssetSets"];

        v10 = missCopy;
        v11 = [v9 URLByAppendingPathComponent:missCopy];

        v7 = [v11 URLByAppendingPathExtension:@"plist"];

        v26 = 0;
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        absoluteURL = [v7 absoluteURL];
        path = [absoluteURL path];
        v15 = [defaultManager fileExistsAtPath:path isDirectory:&v26];
        v16 = v26;

        if (v15 && (v16 & 1) == 0)
        {
          v25 = 0;
          v17 = [UAFAssetSetConfiguration fromContentsOfURL:v7 error:&v25];
          v18 = v25;
          missCopy = v10;
          if (!v17)
          {
            v19 = UAFGetLogCategory(&UAFLogContextConfiguration);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315906;
              v32 = "[UAFConfigurationManager assetSetCacheMiss:]";
              v33 = 2114;
              v34 = v10;
              v35 = 2114;
              v36 = v7;
              v37 = 2114;
              v38 = v18;
              _os_log_error_impl(&dword_1BCF2C000, v19, OS_LOG_TYPE_ERROR, "%s Could not load asset set %{public}@ from URL %{public}@: %{public}@", buf, 0x2Au);
            }
          }

          objc_autoreleasePoolPop(context);
          assetSetCache = [(UAFConfigurationManager *)selfCopy assetSetCache];
          [assetSetCache setValue:v17 forKey:v10];
          goto LABEL_16;
        }

        missCopy = v10;
      }

      v6 = [obj countByEnumeratingWithState:&v27 objects:v39 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(context);
  v17 = UAFGetLogCategory(&UAFLogContextConfiguration);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    assetSetCache = [(UAFConfigurationManager *)selfCopy baseURLs];
    *buf = 136315650;
    v32 = "[UAFConfigurationManager assetSetCacheMiss:]";
    v33 = 2112;
    v34 = missCopy;
    v35 = 2112;
    v36 = assetSetCache;
    _os_log_error_impl(&dword_1BCF2C000, v17, OS_LOG_TYPE_ERROR, "%s '%@' does not exist in %@", buf, 0x20u);
LABEL_16:
  }
}

- (id)getAssetSet:(id)set
{
  v21 = *MEMORY[0x1E69E9840];
  setCopy = set;
  v5 = UAFGetLogCategory(&UAFLogContextConfiguration);
  v6 = os_signpost_id_generate(v5);

  v7 = UAFGetLogCategory(&UAFLogContextConfiguration);
  v8 = v7;
  v9 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v19 = 138543362;
    v20 = setCopy;
    _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "AssetSet Configuration", "%{public}@", &v19, 0xCu);
  }

  assetSetCache = [(UAFConfigurationManager *)self assetSetCache];
  objc_sync_enter(assetSetCache);
  assetSetCache2 = [(UAFConfigurationManager *)self assetSetCache];
  v12 = [assetSetCache2 objectForKey:setCopy];

  if (v12)
  {
    v13 = UAFGetLogCategory(&UAFLogContextConfiguration);
    v14 = v13;
    if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      v19 = 138543362;
      v20 = setCopy;
      _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v14, OS_SIGNPOST_INTERVAL_END, v6, "AssetSet Configuration", "%{public}@", &v19, 0xCu);
    }
  }

  else
  {
    [(UAFConfigurationManager *)self assetSetCacheMiss:setCopy];
    v15 = UAFGetLogCategory(&UAFLogContextConfiguration);
    v14 = v15;
    if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      v19 = 138543362;
      v20 = setCopy;
      _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v14, OS_SIGNPOST_INTERVAL_END, v6, "AssetSet Configuration", "%{public}@", &v19, 0xCu);
    }
  }

  assetSetCache3 = [(UAFConfigurationManager *)self assetSetCache];
  v17 = [assetSetCache3 objectForKey:setCopy];

  objc_sync_exit(assetSetCache);

  return v17;
}

- (id)getUsageAlias:(id)alias includeDeprecatedValues:(BOOL)values
{
  valuesCopy = values;
  v75 = *MEMORY[0x1E69E9840];
  aliasCopy = alias;
  context = objc_autoreleasePoolPush();
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  selfCopy = self;
  obj = [(UAFConfigurationManager *)self baseURLs];
  v6 = [obj countByEnumeratingWithState:&v60 objects:v74 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v52 = *v61;
    v46 = *MEMORY[0x1E695DBB8];
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v61 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v60 + 1) + 8 * i);
        v11 = UAFGetLogCategory(&UAFLogContextConfiguration);
        v12 = os_signpost_id_generate(v11);

        v13 = UAFGetLogCategory(&UAFLogContextConfiguration);
        v14 = v13;
        spid = v12;
        v50 = v12 - 1;
        if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "UsageAlias Configuration", "", buf, 2u);
        }

        v15 = [v10 URLByAppendingPathComponent:@"UsageAliases"];

        v16 = [v15 URLByAppendingPathComponent:aliasCopy];

        v8 = [v16 URLByAppendingPathExtension:@"plist"];

        v59 = 0;
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        absoluteURL = [v8 absoluteURL];
        path = [absoluteURL path];
        v20 = [defaultManager fileExistsAtPath:path isDirectory:&v59];
        v21 = v59;

        if (v20 && (v21 & 1) == 0)
        {
          v53 = [UAFUsageAliasConfiguration fromContentsOfURL:v8 assetSetManager:selfCopy error:0];
          if (valuesCopy)
          {
            v25 = [v10 URLByAppendingPathComponent:@"UsageAliases"];

            v26 = [v25 URLByAppendingPathComponent:@"Deprecated"];

            defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
            v73 = v46;
            v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
            v29 = [defaultManager2 enumeratorAtURL:v26 includingPropertiesForKeys:v28 options:1 errorHandler:0];

            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v30 = v29;
            v31 = [v30 countByEnumeratingWithState:&v55 objects:v72 count:16];
            v32 = aliasCopy;
            if (v31)
            {
              v33 = v31;
              v34 = *v56;
              do
              {
                for (j = 0; j != v33; ++j)
                {
                  v36 = v26;
                  if (*v56 != v34)
                  {
                    objc_enumerationMutation(v30);
                  }

                  v26 = *(*(&v55 + 1) + 8 * j);

                  pathExtension = [v26 pathExtension];
                  v38 = [pathExtension isEqualToString:@"plist"];

                  if (v38)
                  {
                    v39 = [UAFConfigurationManager getDeprecatedUsageAliasNameFromPath:v26];
                    if ([v32 isEqualToString:v39])
                    {
                      v40 = [UAFUsageAliasConfiguration fromContentsOfURL:v26 assetSetManager:selfCopy error:0];
                      if (([v53 addDeprecatedValues:v40] & 1) == 0)
                      {
                        v41 = UAFGetLogCategory(&UAFLogContextConfiguration);
                        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136315394;
                          v65 = "[UAFConfigurationManager getUsageAlias:includeDeprecatedValues:]";
                          v66 = 2114;
                          v67 = v26;
                          _os_log_error_impl(&dword_1BCF2C000, v41, OS_LOG_TYPE_ERROR, "%s Failed to add deprecated values from %{public}@", buf, 0x16u);
                        }

                        v32 = aliasCopy;
                      }
                    }

                    else
                    {
                      v40 = UAFGetLogCategory(&UAFLogContextConfiguration);
                      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
                      {
                        *buf = 136315906;
                        v65 = "[UAFConfigurationManager getUsageAlias:includeDeprecatedValues:]";
                        v66 = 2112;
                        v67 = v26;
                        v68 = 2114;
                        v69 = v39;
                        v70 = 2114;
                        v71 = v32;
                        _os_log_impl(&dword_1BCF2C000, v40, OS_LOG_TYPE_INFO, "%s Not trying to load %@ as a deprecated usage alias configuration file as it for usage alias %{public}@, not %{public}@", buf, 0x2Au);
                      }
                    }
                  }

                  else
                  {
                    v39 = UAFGetLogCategory(&UAFLogContextConfiguration);
                    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      v65 = "[UAFConfigurationManager getUsageAlias:includeDeprecatedValues:]";
                      v66 = 2112;
                      v67 = v26;
                      _os_log_impl(&dword_1BCF2C000, v39, OS_LOG_TYPE_DEFAULT, "%s Not trying to load %@ as a deprecated usage alias configuration file as it lacks the plist extension", buf, 0x16u);
                    }
                  }
                }

                v33 = [v30 countByEnumeratingWithState:&v55 objects:v72 count:16];
              }

              while (v33);
            }

            v8 = 0;
          }

          else
          {
            v32 = aliasCopy;
          }

          v43 = UAFGetLogCategory(&UAFLogContextConfiguration);
          v44 = v43;
          if (v50 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v44, OS_SIGNPOST_INTERVAL_END, spid, "UsageAlias Configuration", "", buf, 2u);
          }

          v42 = v53;
          objc_autoreleasePoolPop(context);

          goto LABEL_46;
        }

        v22 = UAFGetLogCategory(&UAFLogContextConfiguration);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v65 = "[UAFConfigurationManager getUsageAlias:includeDeprecatedValues:]";
          v66 = 2112;
          v67 = v8;
          _os_log_debug_impl(&dword_1BCF2C000, v22, OS_LOG_TYPE_DEBUG, "%s %@ does not exist or is not a regular file", buf, 0x16u);
        }

        v23 = UAFGetLogCategory(&UAFLogContextConfiguration);
        v24 = v23;
        if (v50 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v24, OS_SIGNPOST_INTERVAL_END, spid, "UsageAlias Configuration", "", buf, 2u);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v60 objects:v74 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

  objc_autoreleasePoolPop(context);
  v42 = 0;
  v32 = aliasCopy;
LABEL_46:

  return v42;
}

- (id)getPrestage:(id)prestage
{
  v46 = *MEMORY[0x1E69E9840];
  prestageCopy = prestage;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [(UAFConfigurationManager *)self baseURLs];
  v4 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v34 = *v38;
    v33 = *MEMORY[0x1E696A3D8];
    v31 = *MEMORY[0x1E696A3E8];
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v38 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v37 + 1) + 8 * i);
        v9 = UAFGetLogCategory(&UAFLogContextConfiguration);
        v10 = os_signpost_id_generate(v9);

        v11 = UAFGetLogCategory(&UAFLogContextConfiguration);
        v12 = v11;
        v13 = v10 - 1;
        if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "Prestage Configuration", "", buf, 2u);
        }

        v14 = [v8 URLByAppendingPathComponent:@"Prestage"];

        v15 = [v14 URLByAppendingPathComponent:prestageCopy];

        v6 = [v15 URLByAppendingPathExtension:@"plist"];

        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        path = [v6 path];
        v36 = 0;
        v18 = [defaultManager attributesOfItemAtPath:path error:&v36];
        v19 = v36;

        if (v18)
        {
          v20 = v19 == 0;
        }

        else
        {
          v20 = 0;
        }

        if (v20)
        {
          v21 = [v18 objectForKeyedSubscript:v33];
          if (v21)
          {
            v22 = v21;
            v23 = [v18 objectForKeyedSubscript:v33];

            if (v23 == v31)
            {
              v27 = [UAFPrestageConfiguration fromContentsOfURL:v6 error:0];
              v28 = UAFGetLogCategory(&UAFLogContextConfiguration);
              v29 = v28;
              if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v29, OS_SIGNPOST_INTERVAL_END, v10, "Prestage Configuration", "", buf, 2u);
              }

              goto LABEL_30;
            }
          }
        }

        v24 = UAFGetLogCategory(&UAFLogContextConfiguration);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v42 = "[UAFConfigurationManager getPrestage:]";
          v43 = 2112;
          v44 = v6;
          _os_log_debug_impl(&dword_1BCF2C000, v24, OS_LOG_TYPE_DEBUG, "%s %@ does not exist or is not a regular file", buf, 0x16u);
        }

        v25 = UAFGetLogCategory(&UAFLogContextConfiguration);
        v26 = v25;
        if (v13 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v26, OS_SIGNPOST_INTERVAL_END, v10, "Prestage Configuration", "", buf, 2u);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 0;
  }

  v27 = 0;
LABEL_30:

  return v27;
}

- (id)minVersions:(id)versions
{
  v87 = *MEMORY[0x1E69E9840];
  versionsCopy = versions;
  context = objc_autoreleasePoolPush();
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = [(UAFConfigurationManager *)self baseURLs];
  v48 = [obj countByEnumeratingWithState:&v73 objects:v86 count:16];
  v4 = 0;
  if (v48)
  {
    v46 = *v74;
    v5 = *MEMORY[0x1E695DBB8];
    v53 = *MEMORY[0x1E695DBB8];
    do
    {
      v6 = 0;
      do
      {
        if (*v74 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v52 = v6;
        v7 = *(*(&v73 + 1) + 8 * v6);
        v8 = UAFGetLogCategory(&UAFLogContextConfiguration);
        v9 = os_signpost_id_generate(v8);

        v10 = UAFGetLogCategory(&UAFLogContextConfiguration);
        v11 = v10;
        spid = v9;
        v51 = v9 - 1;
        if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "MinVersion Configuration", "", buf, 2u);
        }

        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", versionsCopy, @".minversion."];
        v13 = [v7 URLByAppendingPathComponent:@"MinVersions"];
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v85 = v5;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v85 count:1];
        v50 = v13;
        v16 = [defaultManager enumeratorAtURL:v13 includingPropertiesForKeys:v15 options:0 errorHandler:0];

        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v57 = v16;
        v59 = [v57 countByEnumeratingWithState:&v69 objects:v84 count:16];
        if (v59)
        {
          v58 = *v70;
          v55 = v12;
          do
          {
            for (i = 0; i != v59; ++i)
            {
              if (*v70 != v58)
              {
                objc_enumerationMutation(v57);
              }

              v60 = i;
              v18 = *(*(&v69 + 1) + 8 * i);
              path = [v18 path];
              lastPathComponent = [path lastPathComponent];
              v21 = [lastPathComponent hasPrefix:v12];

              if (v21)
              {
                path2 = [v18 path];
                pathExtension = [path2 pathExtension];
                v24 = [pathExtension isEqualToString:@"plist"];

                if (v24)
                {
                  v67 = 0;
                  v68 = 0;
                  v25 = [v18 getResourceValue:&v68 forKey:v5 error:&v67];
                  v26 = v68;
                  v27 = v67;
                  if (v25 && !v27)
                  {
                    if ([v26 BOOLValue])
                    {
                      v66 = 0;
                      v28 = [UAFMinVersionConfiguration fromContentsOfURL:v18 error:&v66];
                      v56 = v66;
                      if (v28)
                      {
                        v64 = 0u;
                        v65 = 0u;
                        v62 = 0u;
                        v63 = 0u;
                        minVersions = [v28 minVersions];
                        v29 = [minVersions countByEnumeratingWithState:&v62 objects:v77 count:16];
                        if (v29)
                        {
                          v30 = v29;
                          v54 = v26;
                          v31 = *v63;
                          do
                          {
                            for (j = 0; j != v30; ++j)
                            {
                              if (*v63 != v31)
                              {
                                objc_enumerationMutation(minVersions);
                              }

                              v33 = *(*(&v62 + 1) + 8 * j);
                              if (!v4)
                              {
                                v4 = objc_opt_new();
                              }

                              v34 = [v4 objectForKeyedSubscript:v33];

                              if (v34)
                              {
                                v35 = [v4 objectForKeyedSubscript:v33];
                                minVersions2 = [v28 minVersions];
                                v37 = [minVersions2 objectForKeyedSubscript:v33];
                                v38 = [UAFPlatform compareVersion:v35 with:v37];

                                if (v38 != 1)
                                {
                                  continue;
                                }
                              }

                              minVersions3 = [v28 minVersions];
                              v40 = [minVersions3 objectForKeyedSubscript:v33];
                              [v4 setObject:v40 forKeyedSubscript:v33];
                            }

                            v30 = [minVersions countByEnumeratingWithState:&v62 objects:v77 count:16];
                          }

                          while (v30);
                          v5 = v53;
                          v26 = v54;
                        }
                      }

                      else
                      {
                        minVersions = UAFGetLogCategory(&UAFLogContextConfiguration);
                        if (os_log_type_enabled(minVersions, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136315650;
                          v79 = "[UAFConfigurationManager minVersions:]";
                          v80 = 2112;
                          v81 = v18;
                          v82 = 2112;
                          v83 = v56;
                          _os_log_error_impl(&dword_1BCF2C000, minVersions, OS_LOG_TYPE_ERROR, "%s Failed to load %@:%@", buf, 0x20u);
                        }
                      }

                      v12 = v55;
                      v27 = v56;
                    }

                    else
                    {
                      v27 = 0;
                    }
                  }

                  i = v60;
                }
              }
            }

            v59 = [v57 countByEnumeratingWithState:&v69 objects:v84 count:16];
          }

          while (v59);
        }

        v41 = UAFGetLogCategory(&UAFLogContextConfiguration);
        v42 = v41;
        if (v51 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v42, OS_SIGNPOST_INTERVAL_END, spid, "MinVersion Configuration", "", buf, 2u);
        }

        v6 = v52 + 1;
      }

      while (v52 + 1 != v48);
      v48 = [obj countByEnumeratingWithState:&v73 objects:v86 count:16];
    }

    while (v48);
  }

  objc_autoreleasePoolPop(context);

  return v4;
}

- (id)getMinVersion:(id)version provider:(id)provider
{
  v35 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  providerCopy = provider;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(UAFConfigurationManager *)self baseURLs];
  v6 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v22 = *v27;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(*(&v26 + 1) + 8 * i) URLByAppendingPathComponent:@"MinVersions"];

        providerCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", versionCopy, @".minversion.", providerCopy];
        v12 = [v10 URLByAppendingPathComponent:providerCopy];

        v8 = [v12 URLByAppendingPathExtension:@"plist"];

        v25 = 0;
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        absoluteURL = [v8 absoluteURL];
        path = [absoluteURL path];
        v16 = [defaultManager fileExistsAtPath:path isDirectory:&v25];
        v17 = v25;

        if (v16 && (v17 & 1) == 0)
        {
          v19 = [UAFMinVersionConfiguration fromContentsOfURL:v8 error:0];
          goto LABEL_16;
        }

        v18 = UAFGetLogCategory(&UAFLogContextConfiguration);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v31 = "[UAFConfigurationManager getMinVersion:provider:]";
          v32 = 2112;
          v33 = v8;
          _os_log_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_DEFAULT, "%s %@ does not exist or is not a regular file", buf, 0x16u);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

  v19 = 0;
LABEL_16:

  return v19;
}

- (id)applySubscriptions:(id)subscriptions
{
  v103 = *MEMORY[0x1E69E9840];
  subscriptionsCopy = subscriptions;
  v4 = UAFGetLogCategory(&UAFLogContextConfiguration);
  v5 = os_signpost_id_generate(v4);

  v6 = UAFGetLogCategory(&UAFLogContextConfiguration);
  v7 = v6;
  v63 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Apply Configuration", "", buf, 2u);
  }

  spid = v5;

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = subscriptionsCopy;
  v66 = [obj countByEnumeratingWithState:&v89 objects:v102 count:16];
  v8 = 0;
  if (v66)
  {
    v65 = *v90;
    do
    {
      v9 = 0;
      do
      {
        if (*v90 != v65)
        {
          v10 = v9;
          objc_enumerationMutation(obj);
          v9 = v10;
        }

        v67 = v9;
        v11 = *(*(&v89 + 1) + 8 * v9);
        v85 = 0u;
        v86 = 0u;
        v87 = 0u;
        v88 = 0u;
        v75 = v11;
        assetSets = [v11 assetSets];
        v13 = [assetSets countByEnumeratingWithState:&v85 objects:v101 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v86;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v86 != v15)
              {
                objc_enumerationMutation(assetSets);
              }

              v17 = *(*(&v85 + 1) + 8 * i);
              if (!v8)
              {
                v8 = objc_opt_new();
              }

              v18 = [v8 objectForKeyedSubscript:v17];

              if (!v18)
              {
                v19 = objc_opt_new();
                [v8 setObject:v19 forKeyedSubscript:v17];
              }

              assetSets2 = [v75 assetSets];
              v21 = [assetSets2 objectForKeyedSubscript:v17];

              if (!v21)
              {
                v21 = MEMORY[0x1E695E0F8];
              }

              v22 = [v8 objectForKeyedSubscript:v17];
              v23 = [v22 containsObject:v21];

              if ((v23 & 1) == 0)
              {
                v24 = [v8 objectForKeyedSubscript:v17];
                [v24 addObject:v21];
              }
            }

            v14 = [assetSets countByEnumeratingWithState:&v85 objects:v101 count:16];
          }

          while (v14);
        }

        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        usageAliases = [v75 usageAliases];
        v26 = [usageAliases countByEnumeratingWithState:&v81 objects:v100 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v82;
          v68 = *v82;
          v69 = usageAliases;
          do
          {
            v29 = 0;
            v70 = v27;
            do
            {
              if (*v82 != v28)
              {
                objc_enumerationMutation(usageAliases);
              }

              v30 = *(*(&v81 + 1) + 8 * v29);
              usageAliases2 = [v75 usageAliases];
              v32 = [usageAliases2 objectForKeyedSubscript:v30];

              v33 = [(UAFConfigurationManager *)self getUsageAlias:v30 includeDeprecatedValues:0];
              if (v33)
              {
                v34 = v33;
                values = [v33 values];
                v74 = v32;
                v36 = [values objectForKeyedSubscript:v32];

                if (v36)
                {
                  v37 = v74;
                }

                else
                {
                  v38 = UAFGetLogCategory(&UAFLogContextClient);
                  v37 = v74;
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136315650;
                    v95 = "[UAFConfigurationManager applySubscriptions:]";
                    v96 = 2114;
                    v97 = v30;
                    v98 = 2114;
                    v99 = v74;
                    _os_log_debug_impl(&dword_1BCF2C000, v38, OS_LOG_TYPE_DEBUG, "%s Loading deprecated values to process subscription for usage alias %{public}@ with value %{public}@", buf, 0x20u);
                  }

                  v39 = [(UAFConfigurationManager *)self getUsageAlias:v30 includeDeprecatedValues:1];

                  v34 = v39;
                }

                v73 = v29;
                v40 = v34;
                values2 = [v34 values];
                v42 = [values2 objectForKeyedSubscript:v37];

                log = v40;
                values3 = [v40 values];
                v44 = [values3 objectForKeyedSubscript:v37];
                if (v44)
                {
                  v45 = v44;
                  v46 = [v42 count];

                  if (v46)
                  {
                    v79 = 0u;
                    v80 = 0u;
                    v77 = 0u;
                    v78 = 0u;
                    v47 = v42;
                    v48 = [v47 countByEnumeratingWithState:&v77 objects:v93 count:16];
                    if (v48)
                    {
                      v49 = v48;
                      v71 = v42;
                      v50 = *v78;
                      do
                      {
                        for (j = 0; j != v49; ++j)
                        {
                          if (*v78 != v50)
                          {
                            objc_enumerationMutation(v47);
                          }

                          v52 = *(*(&v77 + 1) + 8 * j);
                          if (!v8)
                          {
                            v8 = objc_opt_new();
                          }

                          v53 = [v8 objectForKeyedSubscript:v52];

                          if (!v53)
                          {
                            v54 = objc_opt_new();
                            [v8 setObject:v54 forKeyedSubscript:v52];
                          }

                          v55 = [v47 objectForKeyedSubscript:v52];
                          v56 = [v8 objectForKeyedSubscript:v52];
                          v57 = [v56 containsObject:v55];

                          if ((v57 & 1) == 0)
                          {
                            v58 = [v8 objectForKeyedSubscript:v52];
                            [v58 addObject:v55];
                          }
                        }

                        v49 = [v47 countByEnumeratingWithState:&v77 objects:v93 count:16];
                      }

                      while (v49);
                      v28 = v68;
                      usageAliases = v69;
                      v27 = v70;
                      v42 = v71;
                    }

                    v32 = v74;
LABEL_57:

                    v29 = v73;
                    goto LABEL_58;
                  }
                }

                else
                {
                }

                v47 = UAFGetLogCategory(&UAFLogContextClient);
                v32 = v74;
                if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  v95 = "[UAFConfigurationManager applySubscriptions:]";
                  v96 = 2114;
                  v97 = v30;
                  v98 = 2114;
                  v99 = v74;
                  _os_log_error_impl(&dword_1BCF2C000, v47, OS_LOG_TYPE_ERROR, "%s Could not process subscription for usage alias %{public}@ with value %{public}@", buf, 0x20u);
                }

                goto LABEL_57;
              }

              log = UAFGetLogCategory(&UAFLogContextClient);
              if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v95 = "[UAFConfigurationManager applySubscriptions:]";
                v96 = 2114;
                v97 = v30;
                _os_log_error_impl(&dword_1BCF2C000, log, OS_LOG_TYPE_ERROR, "%s Could not process subscription for usage alias %{public}@", buf, 0x16u);
              }

LABEL_58:

              ++v29;
            }

            while (v29 != v27);
            v27 = [usageAliases countByEnumeratingWithState:&v81 objects:v100 count:16];
          }

          while (v27);
        }

        v9 = v67 + 1;
      }

      while (v67 + 1 != v66);
      v66 = [obj countByEnumeratingWithState:&v89 objects:v102 count:16];
    }

    while (v66);
  }

  v59 = UAFGetLogCategory(&UAFLogContextConfiguration);
  v60 = v59;
  if (v63 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v60, OS_SIGNPOST_INTERVAL_END, spid, "Apply Configuration", "", buf, 2u);
  }

  return v8;
}

- (BOOL)isUsageLimitExceeded:(id)exceeded
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  exceededCopy = exceeded;
  v5 = [exceededCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(exceededCopy);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [(UAFConfigurationManager *)self getAssetSet:v9, v15];
        if (v10)
        {
          v11 = [exceededCopy objectForKeyedSubscript:v9];
          v12 = [v10 isUsageLimitExceeded:v11];

          if (v12)
          {

            v13 = 1;
            goto LABEL_12;
          }
        }
      }

      v6 = [exceededCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_12:

  return v13;
}

@end