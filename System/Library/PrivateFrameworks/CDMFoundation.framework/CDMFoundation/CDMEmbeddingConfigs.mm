@interface CDMEmbeddingConfigs
+ (id)generateEmbeddingModelIdList:(id)list;
+ (int)getMaxEmbeddingConcurrency;
- (CDMEmbeddingConfigs)initWithAssetPaths:(id)paths;
- (CDMEmbeddingConfigs)initWithAssetPaths:(id)paths embeddingVersion:(id)version;
- (CDMEmbeddingConfigs)initWithCoder:(id)coder;
- (id)generateEmbeddingConfigItemsWithError:(id *)error;
- (id)generateServiceDependentEmbeddingModelVersionsWithError:(id *)error;
- (id)getAllEmbeddingConfigs;
- (id)getDependentEmbeddingConfigs;
- (id)getEmbeddingConfigForEmbeddingModelVersion:(id)version;
- (id)getEmbeddingConfigForFactor:(id)factor;
- (id)getStableEmbeddingConfig;
- (void)encodeWithCoder:(id)coder;
- (void)setupWithError:(id *)error;
- (void)validateClientEmbeddingVersion:(id)version embeddingAssetVersion:(id)assetVersion embeddingModelIdList:(id)list multipleModels:(BOOL)models withError:(id *)error;
@end

@implementation CDMEmbeddingConfigs

+ (int)getMaxEmbeddingConcurrency
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = +[CDMEmbeddingConfigs getMaxEmbeddingConcurrencyConst];
  if (v2 == 1)
  {
    v3 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315138;
      v10 = "+[CDMEmbeddingConfigs getMaxEmbeddingConcurrency]";
      _os_log_debug_impl(&dword_1DC287000, v3, OS_LOG_TYPE_DEBUG, "%s Simplicity is good, just 1 embedding in the system.", &v9, 0xCu);
    }

    goto LABEL_4;
  }

  v4 = v2;
  if (v2 <= 0)
  {
    v3 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "+[CDMEmbeddingConfigs getMaxEmbeddingConcurrency]";
      v11 = 1024;
      v12 = v4;
      v7 = "%s [WARN]: ⚠️ Trust but verify, why is this set to %d? Returning 1 as we need to have at least a embedding in the system.";
LABEL_13:
      v4 = 1;
      goto LABEL_14;
    }
  }

  else
  {
    v5 = +[CDMEmbeddingConfigs isInternalBuild];
    v3 = CDMOSLoggerForCategory(0);
    v6 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
    if (v5)
    {
      if (!v6)
      {
        goto LABEL_15;
      }

      v9 = 136315394;
      v10 = "+[CDMEmbeddingConfigs getMaxEmbeddingConcurrency]";
      v11 = 1024;
      v12 = v4;
      v7 = "%s [WARN]: ⚠️ In active development on an internal build. Configured with multiple embeddings at the moment: %d";
LABEL_14:
      _os_log_impl(&dword_1DC287000, v3, OS_LOG_TYPE_INFO, v7, &v9, 0x12u);
      goto LABEL_15;
    }

    if (v6)
    {
      v9 = 136315394;
      v10 = "+[CDMEmbeddingConfigs getMaxEmbeddingConcurrency]";
      v11 = 1024;
      v12 = v4;
      v7 = "%s [WARN]: 🚨 Cannot have multiple embeddings (%d) on a non-internal build, so returning 1";
      goto LABEL_13;
    }
  }

LABEL_4:
  v4 = 1;
LABEL_15:

  return v4;
}

- (id)getDependentEmbeddingConfigs
{
  v22 = *MEMORY[0x1E69E9840];
  if (self->_setupCalled)
  {
    v3 = MEMORY[0x1E695DFD8];
    allValues = [(NSDictionary *)self->_serviceDependentEmbeddingModelVersions allValues];
    v5 = [v3 setWithArray:allValues];

    allObjects = [v5 allObjects];
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(allObjects, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = allObjects;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [(NSDictionary *)self->_embeddingConfigItems objectForKey:*(*(&v15 + 1) + 8 * i), v15];
          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v5 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v21 = "[CDMEmbeddingConfigs getDependentEmbeddingConfigs]";
      _os_log_error_impl(&dword_1DC287000, v5, OS_LOG_TYPE_ERROR, "%s [ERR]: The setup method has not been called. Please call setup first.", buf, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (id)getStableEmbeddingConfig
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_setupCalled)
  {
    v2 = [(NSDictionary *)self->_embeddingConfigItems objectForKey:self->_stableEmbeddingModelVersion];
    v3 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 136315394;
      v6 = "[CDMEmbeddingConfigs getStableEmbeddingConfig]";
      v7 = 2112;
      v8 = v2;
      _os_log_impl(&dword_1DC287000, v3, OS_LOG_TYPE_INFO, "%s Return stable embedding config: %@.", &v5, 0x16u);
    }
  }

  else
  {
    v3 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[CDMEmbeddingConfigs getStableEmbeddingConfig]";
      _os_log_error_impl(&dword_1DC287000, v3, OS_LOG_TYPE_ERROR, "%s [ERR]: The setup method has not been called. Please call setup first.", &v5, 0xCu);
    }

    v2 = 0;
  }

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  assetPaths = self->_assetPaths;
  coderCopy = coder;
  [coderCopy encodeObject:assetPaths forKey:@"assetPaths"];
  [coderCopy encodeObject:self->_stableEmbeddingModelVersion forKey:@"_stableEmbeddingModelVersion"];
  [coderCopy encodeObject:self->_embeddingConfigItems forKey:@"embeddingConfigItems"];
  [coderCopy encodeObject:self->_serviceDependentEmbeddingModelVersions forKey:@"serviceDependentEmbeddingModelVersions"];
  [coderCopy encodeBool:self->_setupCalled forKey:@"setupCalled"];
}

- (CDMEmbeddingConfigs)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = CDMEmbeddingConfigs;
  v5 = [(CDMEmbeddingConfigs *)&v28 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"assetPaths"];
    assetPaths = v5->_assetPaths;
    v5->_assetPaths = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_stableEmbeddingModelVersion"];
    stableEmbeddingModelVersion = v5->_stableEmbeddingModelVersion;
    v5->_stableEmbeddingModelVersion = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = [v16 setWithObjects:{v17, v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"embeddingConfigItems"];
    embeddingConfigItems = v5->_embeddingConfigItems;
    v5->_embeddingConfigItems = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"serviceDependentEmbeddingModelVersions"];
    serviceDependentEmbeddingModelVersions = v5->_serviceDependentEmbeddingModelVersions;
    v5->_serviceDependentEmbeddingModelVersions = v25;

    v5->_setupCalled = [coderCopy decodeBoolForKey:@"setupCalled"];
  }

  return v5;
}

- (id)generateServiceDependentEmbeddingModelVersionsWithError:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  if (self->_assetPaths)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v5 = self->_assetPaths;
    v6 = [(NSDictionary *)v5 countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v30;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v29 + 1) + 8 * i);
          v11 = [(NSDictionary *)self->_assetPaths objectForKey:v10];
          v12 = v11;
          if (v11 && [v11 getAssetType])
          {
            getAssetMetadata = [v12 getAssetMetadata];
            v14 = [getAssetMetadata objectForKey:@"EMBEDDING_VERSION"];

            if (!v14)
            {
              v15 = CDMOSLoggerForCategory(0);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315650;
                v36 = "[CDMEmbeddingConfigs generateServiceDependentEmbeddingModelVersionsWithError:]";
                v37 = 2112;
                v38 = v12;
                v39 = 2112;
                v40 = @"EMBEDDING_VERSION";
                _os_log_debug_impl(&dword_1DC287000, v15, OS_LOG_TYPE_DEBUG, "%s Asset: %@ doesn't have metadata with key: %@. Will use the stable embedding model version.", buf, 0x20u);
              }

              v14 = self->_stableEmbeddingModelVersion;
            }

            v16 = [(NSDictionary *)self->_embeddingConfigItems objectForKey:v14];

            if (!v16)
            {
              v20 = MEMORY[0x1E696ABC0];
              v33 = *MEMORY[0x1E696A578];
              v21 = MEMORY[0x1E696AEC0];
              allKeys = [(NSDictionary *)self->_embeddingConfigItems allKeys];
              v23 = [v21 stringWithFormat:@"The dependent embedding model version: %@ for uafFactorName: %@ doesn't exist in all available embedding model versions: %@.", v14, v10, allKeys];
              v34 = v23;
              v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
              *error = [v20 errorWithDomain:@"CDMEmbeddingConfigs" code:1 userInfo:v24];

              v25 = CDMOSLoggerForCategory(0);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                v27 = *error;
                *buf = 136315394;
                v36 = "[CDMEmbeddingConfigs generateServiceDependentEmbeddingModelVersionsWithError:]";
                v37 = 2112;
                v38 = v27;
                _os_log_error_impl(&dword_1DC287000, v25, OS_LOG_TYPE_ERROR, "%s [ERR]: Error: %@. Return empty map.", buf, 0x16u);
              }

              v18 = objc_alloc_init(MEMORY[0x1E695DF20]);
              goto LABEL_28;
            }

            [v4 setObject:v14 forKeyedSubscript:v10];
          }

          else
          {
            v14 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              v36 = "[CDMEmbeddingConfigs generateServiceDependentEmbeddingModelVersionsWithError:]";
              v37 = 2112;
              v38 = v10;
              _os_log_debug_impl(&dword_1DC287000, v14, OS_LOG_TYPE_DEBUG, "%s Asset for UAF factor: %@ is nil.", buf, 0x16u);
            }
          }
        }

        v7 = [(NSDictionary *)v5 countByEnumeratingWithState:&v29 objects:v41 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v36 = "[CDMEmbeddingConfigs generateServiceDependentEmbeddingModelVersionsWithError:]";
      v37 = 2112;
      v38 = v4;
      _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s CDM factor dependent embedding model version map is: %@.", buf, 0x16u);
    }

    v18 = v4;
LABEL_28:
  }

  else
  {
    v19 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v36 = "[CDMEmbeddingConfigs generateServiceDependentEmbeddingModelVersionsWithError:]";
      _os_log_debug_impl(&dword_1DC287000, v19, OS_LOG_TYPE_DEBUG, "%s Input asset paths is nil. Return empty map.", buf, 0xCu);
    }

    v18 = objc_alloc_init(MEMORY[0x1E695DF20]);
  }

  return v18;
}

- (void)validateClientEmbeddingVersion:(id)version embeddingAssetVersion:(id)assetVersion embeddingModelIdList:(id)list multipleModels:(BOOL)models withError:(id *)error
{
  modelsCopy = models;
  v38[1] = *MEMORY[0x1E69E9840];
  versionCopy = version;
  assetVersionCopy = assetVersion;
  listCopy = list;
  v15 = [CDMEmbeddingUtils isValidEmbeddingVersionOnlyNumber:self->_clientEmbeddingVersion];
  if (modelsCopy)
  {
    if (v15 && ![(NSString *)self->_clientEmbeddingVersion isEqualToString:assetVersionCopy])
    {
      v16 = MEMORY[0x1E696ABC0];
      v37 = *MEMORY[0x1E696A578];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The embeddingVersion is with format {OS}.{NCV}.{Patch}, and it does not match with the top-level embedding asset version. Return empty map."];
      v38[0] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      *error = [v16 errorWithDomain:@"CDMEmbeddingConfigs" code:2 userInfo:v18];

      v19 = [CDMPlatformUtils prettyPrintError:*error];
    }

    if (!+[CDMEmbeddingUtils isValidEmbeddingVersionOnlyNumber:](CDMEmbeddingUtils, "isValidEmbeddingVersionOnlyNumber:", self->_clientEmbeddingVersion) && ([listCopy containsObject:self->_clientEmbeddingVersion] & 1) == 0)
    {
      v20 = MEMORY[0x1E696ABC0];
      v35 = *MEMORY[0x1E696A578];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The embeddingVersion is not a valid bolt ID as it does not exist in the available embedding model ids provided in embedding asset configuration. Return empty map."];
      v36 = v21;
      v22 = MEMORY[0x1E695DF20];
      v23 = &v36;
      v24 = &v35;
LABEL_13:
      v29 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:1];
      *error = [v20 errorWithDomain:@"CDMEmbeddingConfigs" code:2 userInfo:v29];

      v30 = [CDMPlatformUtils prettyPrintError:*error];
    }
  }

  else
  {
    if (v15 && ![(NSString *)self->_clientEmbeddingVersion isEqualToString:assetVersionCopy])
    {
      v25 = MEMORY[0x1E696ABC0];
      v33 = *MEMORY[0x1E696A578];
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The embeddingVersion is with format {OS}.{NCV}.{Patch} (e.g. 3200.1002.1004) and it does not matche with the CDM embedding asset version. Return empty map."];
      v34 = v26;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      *error = [v25 errorWithDomain:@"CDMEmbeddingConfigs" code:2 userInfo:v27];

      v28 = [CDMPlatformUtils prettyPrintError:*error];
    }

    if (![CDMEmbeddingUtils isValidEmbeddingVersionOnlyNumber:self->_clientEmbeddingVersion])
    {
      v20 = MEMORY[0x1E696ABC0];
      v31 = *MEMORY[0x1E696A578];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"In a single embedding model case, it is not allowed that the embeddingVersion is with format {Espresso_Bolt_ID}. Return empty map."];
      v32 = v21;
      v22 = MEMORY[0x1E695DF20];
      v23 = &v32;
      v24 = &v31;
      goto LABEL_13;
    }
  }
}

- (id)generateEmbeddingConfigItemsWithError:(id *)error
{
  v95[1] = *MEMORY[0x1E69E9840];
  assetPaths = self->_assetPaths;
  if (assetPaths)
  {
    v6 = [(NSDictionary *)assetPaths objectForKey:@"com.apple.siri.nl.owl"];
    v7 = v6;
    if (!v6 || ![v6 getAssetType])
    {
      v19 = MEMORY[0x1E696ABC0];
      v94 = *MEMORY[0x1E696A578];
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Embedding asset is nil"];
      v95[0] = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v95 forKeys:&v94 count:1];
      *error = [v19 errorWithDomain:@"CDMEmbeddingConfigs" code:0 userInfo:v21];

      v22 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v53 = *error;
        *buf = 136315394;
        v89 = "[CDMEmbeddingConfigs generateEmbeddingConfigItemsWithError:]";
        v90 = 2112;
        v91 = v53;
        _os_log_error_impl(&dword_1DC287000, v22, OS_LOG_TYPE_ERROR, "%s [ERR]: Error: %@. Return empty map.", buf, 0x16u);
      }

      v18 = objc_alloc_init(MEMORY[0x1E695DF20]);
      goto LABEL_47;
    }

    errorCopy = error;
    getAssetVersion = [v7 getAssetVersion];
    getAssetPath = [v7 getAssetPath];
    getAssetMetadata = [v7 getAssetMetadata];
    v11 = [getAssetMetadata objectForKey:@"MULTI_EMBEDDING_MODEL_IDS"];
    v12 = [getAssetMetadata objectForKey:@"STABLE_EMBEDDING_MODEL_ID"];
    v13 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v89 = "[CDMEmbeddingConfigs generateEmbeddingConfigItemsWithError:]";
      v90 = 2112;
      v91 = v11;
      v92 = 2112;
      v93 = v12;
      _os_log_impl(&dword_1DC287000, v13, OS_LOG_TYPE_INFO, "%s Get embedding model ids: %@, stable embedding model id: %@", buf, 0x20u);
    }

    v74 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (v11 && v12)
    {
      v73 = getAssetPath;
      v14 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v89 = "[CDMEmbeddingConfigs generateEmbeddingConfigItemsWithError:]";
        _os_log_impl(&dword_1DC287000, v14, OS_LOG_TYPE_INFO, "%s In multi embedding model mode.", buf, 0xCu);
      }

      v15 = [CDMEmbeddingConfigs generateEmbeddingModelIdList:v11];
      if (self->_clientEmbeddingVersion)
      {
        v16 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          clientEmbeddingVersion = self->_clientEmbeddingVersion;
          *buf = 136315394;
          v89 = "[CDMEmbeddingConfigs generateEmbeddingConfigItemsWithError:]";
          v90 = 2112;
          v91 = clientEmbeddingVersion;
          _os_log_impl(&dword_1DC287000, v16, OS_LOG_TYPE_INFO, "%s Client Embedding version is not nil and the value is %@.", buf, 0x16u);
        }

        [(CDMEmbeddingConfigs *)self validateClientEmbeddingVersion:self->_clientEmbeddingVersion embeddingAssetVersion:getAssetVersion embeddingModelIdList:v15 multipleModels:1 withError:errorCopy];
        if (*errorCopy)
        {
          v18 = objc_alloc_init(MEMORY[0x1E695DF20]);
LABEL_45:

LABEL_46:
LABEL_47:

          goto LABEL_48;
        }
      }

      v72 = v12;
      if (([v15 containsObject:v12] & 1) == 0)
      {
        v48 = MEMORY[0x1E696ABC0];
        v86 = *MEMORY[0x1E696A578];
        v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't locate stable embedding id: %@ in embedding model id list: %@.", self->_stableEmbeddingModelVersion, v15];
        v87 = v49;
        v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
        *errorCopy = [v48 errorWithDomain:@"CDMEmbeddingConfigs" code:1 userInfo:v50];

        v51 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          v63 = *errorCopy;
          *buf = 136315394;
          v89 = "[CDMEmbeddingConfigs generateEmbeddingConfigItemsWithError:]";
          v90 = 2112;
          v91 = v63;
          _os_log_error_impl(&dword_1DC287000, v51, OS_LOG_TYPE_ERROR, "%s [ERR]: Error: %@. Return empty map.", buf, 0x16u);
        }

        v18 = objc_alloc_init(MEMORY[0x1E695DF20]);
        v12 = v72;
        goto LABEL_45;
      }

      v28 = +[CDMEmbeddingConfigs getMaxEmbeddingConcurrency];
      if ([v15 count] != v28)
      {
        v54 = MEMORY[0x1E696ABC0];
        v84 = *MEMORY[0x1E696A578];
        v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The count of embedding model ids in the configs: %lu doesn't match with max embedding concurrency count: %d.", objc_msgSend(v15, "count"), v28];
        v85 = v55;
        v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
        *errorCopy = [v54 errorWithDomain:@"CDMEmbeddingConfigs" code:1 userInfo:v56];

        v57 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v64 = *errorCopy;
          *buf = 136315394;
          v89 = "[CDMEmbeddingConfigs generateEmbeddingConfigItemsWithError:]";
          v90 = 2112;
          v91 = v64;
          _os_log_error_impl(&dword_1DC287000, v57, OS_LOG_TYPE_ERROR, "%s [ERR]: Error: %@. Return empty map.", buf, 0x16u);
        }

        v18 = objc_alloc_init(MEMORY[0x1E695DF20]);
        v12 = v72;
        goto LABEL_45;
      }

      v67 = v11;
      v68 = getAssetMetadata;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v66 = v15;
      v25 = v15;
      v29 = [(CDMEmbeddingConfigItem *)v25 countByEnumeratingWithState:&v75 objects:v83 count:16];
      if (v29)
      {
        v30 = v29;
        obj = v25;
        v70 = *v76;
        while (2)
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v76 != v70)
            {
              objc_enumerationMutation(obj);
            }

            v32 = *(*(&v75 + 1) + 8 * i);
            v33 = getAssetVersion;
            v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", getAssetVersion, v32];
            v35 = [CDMEmbeddingConfigItem alloc];
            v36 = [v73 stringByAppendingPathComponent:v32];
            v37 = -[CDMEmbeddingConfigItem initWithEmbeddingModelPath:isStableEmbeddingModel:](v35, "initWithEmbeddingModelPath:isStableEmbeddingModel:", v36, [v32 isEqualToString:v72]);

            embeddingModelVersion = [(CDMEmbeddingConfigItem *)v37 embeddingModelVersion];
            v39 = [embeddingModelVersion isEqualToString:v34];

            if ((v39 & 1) == 0)
            {
              v58 = MEMORY[0x1E696ABC0];
              v81 = *MEMORY[0x1E696A578];
              v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Embedding model version of embedding config for embedding model id: %@ doesn't match with expected embedding model version: %@.", v32, v34];
              v82 = v59;
              v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
              *errorCopy = [v58 errorWithDomain:@"CDMEmbeddingConfigs" code:1 userInfo:v60];

              v61 = CDMOSLoggerForCategory(0);
              if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
              {
                v65 = *errorCopy;
                *buf = 136315394;
                v89 = "[CDMEmbeddingConfigs generateEmbeddingConfigItemsWithError:]";
                v90 = 2112;
                v91 = v65;
                _os_log_error_impl(&dword_1DC287000, v61, OS_LOG_TYPE_ERROR, "%s [ERR]: Error: %@. Return empty map.", buf, 0x16u);
              }

              v18 = objc_alloc_init(MEMORY[0x1E695DF20]);
              getAssetVersion = v33;
              v12 = v72;
              getAssetPath = v73;
              v11 = v67;
              getAssetMetadata = v68;
              v15 = v66;
              goto LABEL_45;
            }

            embeddingModelVersion2 = [(CDMEmbeddingConfigItem *)v37 embeddingModelVersion];
            [v74 setObject:v37 forKeyedSubscript:embeddingModelVersion2];

            getAssetVersion = v33;
          }

          v25 = obj;
          v30 = [(CDMEmbeddingConfigItem *)obj countByEnumeratingWithState:&v75 objects:v83 count:16];
          if (v30)
          {
            continue;
          }

          break;
        }
      }

      v12 = v72;
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", getAssetVersion, v72];
      stableEmbeddingModelVersion = self->_stableEmbeddingModelVersion;
      self->_stableEmbeddingModelVersion = v41;

      getAssetPath = v73;
      v11 = v67;
      getAssetMetadata = v68;
    }

    else
    {
      if (v11 | v12)
      {
        v43 = MEMORY[0x1E696ABC0];
        v79 = *MEMORY[0x1E696A578];
        v44 = v12;
        v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid embedding configs with embedding model ids: %@, stable embedding model id: %@. CDM is confusing whether current is single embedding mode or multi embedding mode.", v11, v12];
        v80 = v45;
        v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
        *errorCopy = [v43 errorWithDomain:@"CDMEmbeddingConfigs" code:1 userInfo:v46];

        v47 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v62 = *errorCopy;
          *buf = 136315394;
          v89 = "[CDMEmbeddingConfigs generateEmbeddingConfigItemsWithError:]";
          v90 = 2112;
          v91 = v62;
          _os_log_error_impl(&dword_1DC287000, v47, OS_LOG_TYPE_ERROR, "%s [ERR]: Error: %@. Return empty map.", buf, 0x16u);
        }

        v18 = objc_alloc_init(MEMORY[0x1E695DF20]);
        v12 = v44;
        goto LABEL_46;
      }

      v24 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v89 = "[CDMEmbeddingConfigs generateEmbeddingConfigItemsWithError:]";
        _os_log_impl(&dword_1DC287000, v24, OS_LOG_TYPE_INFO, "%s In single embedding model mode. Skipping version check.", buf, 0xCu);
      }

      objc_storeStrong(&self->_stableEmbeddingModelVersion, getAssetVersion);
      v25 = [[CDMEmbeddingConfigItem alloc] initWithEmbeddingModelPath:getAssetPath isStableEmbeddingModel:1];
      [v74 setObject:v25 forKeyedSubscript:getAssetVersion];
    }

    v26 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = self->_stableEmbeddingModelVersion;
      *buf = 136315650;
      v89 = "[CDMEmbeddingConfigs generateEmbeddingConfigItemsWithError:]";
      v90 = 2112;
      v91 = v27;
      v92 = 2112;
      v93 = v74;
      _os_log_impl(&dword_1DC287000, v26, OS_LOG_TYPE_INFO, "%s Stable embedding asset version: %@. Embedding config items: %@.", buf, 0x20u);
    }

    v18 = v74;
    goto LABEL_46;
  }

  v23 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v89 = "[CDMEmbeddingConfigs generateEmbeddingConfigItemsWithError:]";
    _os_log_debug_impl(&dword_1DC287000, v23, OS_LOG_TYPE_DEBUG, "%s Input asset paths is nil. Return empty map.", buf, 0xCu);
  }

  v18 = objc_alloc_init(MEMORY[0x1E695DF20]);
LABEL_48:

  return v18;
}

- (id)getEmbeddingConfigForEmbeddingModelVersion:(id)version
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [(NSDictionary *)self->_embeddingConfigItems objectForKey:version];
  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[CDMEmbeddingConfigs getEmbeddingConfigForEmbeddingModelVersion:]";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1DC287000, v4, OS_LOG_TYPE_INFO, "%s Return embedding config: %@.", &v6, 0x16u);
  }

  return v3;
}

- (id)getAllEmbeddingConfigs
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_setupCalled)
  {
    allValues = [(NSDictionary *)self->_embeddingConfigItems allValues];
  }

  else
  {
    v3 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[CDMEmbeddingConfigs getAllEmbeddingConfigs]";
      _os_log_error_impl(&dword_1DC287000, v3, OS_LOG_TYPE_ERROR, "%s [ERR]: The setup method has not been called. Please call setup first.", &v5, 0xCu);
    }

    allValues = 0;
  }

  return allValues;
}

- (id)getEmbeddingConfigForFactor:(id)factor
{
  v16 = *MEMORY[0x1E69E9840];
  factorCopy = factor;
  if (self->_setupCalled)
  {
    getStableEmbeddingConfig = [(CDMEmbeddingConfigs *)self getStableEmbeddingConfig];
    v6 = [(NSDictionary *)self->_serviceDependentEmbeddingModelVersions objectForKey:factorCopy];
    if (v6)
    {
      v7 = [(CDMEmbeddingConfigs *)self getEmbeddingConfigForEmbeddingModelVersion:v6];

      getStableEmbeddingConfig = v7;
    }

    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 136315650;
      v11 = "[CDMEmbeddingConfigs getEmbeddingConfigForFactor:]";
      v12 = 2112;
      v13 = getStableEmbeddingConfig;
      v14 = 2112;
      v15 = factorCopy;
      _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s Return embedding config: %@ for factor :%@.", &v10, 0x20u);
    }
  }

  else
  {
    v6 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[CDMEmbeddingConfigs getEmbeddingConfigForFactor:]";
      _os_log_error_impl(&dword_1DC287000, v6, OS_LOG_TYPE_ERROR, "%s [ERR]: The setup method has not been called. Please call setup first.", &v10, 0xCu);
    }

    getStableEmbeddingConfig = 0;
  }

  return getStableEmbeddingConfig;
}

- (void)setupWithError:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  self->_setupCalled = 1;
  v5 = [(NSDictionary *)self->_assetPaths objectForKey:@"com.apple.siri.nl.owl"];
  getAssetMetadata = [v5 getAssetMetadata];
  v7 = [getAssetMetadata objectForKey:@"EMBEDDING_RETURN_FOR_VERSION"];

  v8 = objc_alloc_init(MEMORY[0x1E695DF20]);
  embeddingReturnForVersion = self->_embeddingReturnForVersion;
  self->_embeddingReturnForVersion = v8;

  if (v7 && (v28 = 0, [CDMEmbeddingUtils setStringToJSONDictionaryWithError:&v28 stringToConvert:v7], v10 = objc_claimAutoreleasedReturnValue(), v11 = v28, v12 = self->_embeddingReturnForVersion, self->_embeddingReturnForVersion = v10, v12, v11))
  {
    v13 = v11;
    *error = v11;
    v14 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v30 = "[CDMEmbeddingConfigs setupWithError:]";
      _os_log_debug_impl(&dword_1DC287000, v14, OS_LOG_TYPE_DEBUG, "%s Failed to save EMBEDDING_RETURN_FOR_VERSION value to dictionary.", buf, 0xCu);
    }
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF20]);
    embeddingConfigItems = self->_embeddingConfigItems;
    self->_embeddingConfigItems = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DF20]);
    serviceDependentEmbeddingModelVersions = self->_serviceDependentEmbeddingModelVersions;
    self->_serviceDependentEmbeddingModelVersions = v17;

    v27 = 0;
    v19 = [(CDMEmbeddingConfigs *)self generateEmbeddingConfigItemsWithError:&v27];
    v11 = v27;
    v20 = self->_embeddingConfigItems;
    self->_embeddingConfigItems = v19;

    if (v11)
    {
      v21 = v11;
      *error = v11;
    }

    else
    {
      v26 = 0;
      v22 = [(CDMEmbeddingConfigs *)self generateServiceDependentEmbeddingModelVersionsWithError:&v26];
      v23 = v26;
      v24 = self->_serviceDependentEmbeddingModelVersions;
      self->_serviceDependentEmbeddingModelVersions = v22;

      if (v23)
      {
        v25 = v23;
        *error = v23;
      }
    }
  }
}

- (CDMEmbeddingConfigs)initWithAssetPaths:(id)paths embeddingVersion:(id)version
{
  v20 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  versionCopy = version;
  v9 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v15 = "[CDMEmbeddingConfigs initWithAssetPaths:embeddingVersion:]";
    v16 = 2112;
    v17 = pathsCopy;
    v18 = 2112;
    v19 = versionCopy;
    _os_log_debug_impl(&dword_1DC287000, v9, OS_LOG_TYPE_DEBUG, "%s Init CDM embedding configs with asset paths: %@ and embedding version %@.", buf, 0x20u);
  }

  v13.receiver = self;
  v13.super_class = CDMEmbeddingConfigs;
  v10 = [(CDMEmbeddingConfigs *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_assetPaths, paths);
    objc_storeStrong(&v11->_clientEmbeddingVersion, version);
  }

  return v11;
}

- (CDMEmbeddingConfigs)initWithAssetPaths:(id)paths
{
  pathsCopy = paths;
  v9.receiver = self;
  v9.super_class = CDMEmbeddingConfigs;
  v6 = [(CDMEmbeddingConfigs *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetPaths, paths);
  }

  return v7;
}

+ (id)generateEmbeddingModelIdList:(id)list
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [list componentsSeparatedByString:{@", "}];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
        v12 = [v10 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

        if ([v12 length])
        {
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

@end