@interface _LTDConfigurationService
+ (id)_queue;
+ (id)aneConfigurationWithError:(id *)error;
+ (id)asrConfigurationWithError:(id *)error;
+ (id)assetConfigurationWithError:(id *)error;
+ (id)cache;
+ (id)configurationForType:(int64_t)type error:(id *)error;
+ (id)deserializedPlistContentsOf:(id)of error:(id *)error;
+ (id)fileNameForType:(int64_t)type;
+ (id)offlineConfigurationWithError:(id *)error;
+ (id)overlay:(id)overlay with:(id)with;
+ (id)preferenceOverridesFor:(int64_t)for;
+ (id)siriConfigurationWithError:(id *)error;
+ (id)supportedLocalePairsForTask:(int64_t)task error:(id *)error;
+ (id)textStreamingConfigurationWithError:(id *)error;
+ (id)urlForType:(int64_t)type source:(int64_t)source;
+ (void)aneConfigurationWithCompletion:(id)completion;
+ (void)asrConfigurationWithCompletion:(id)completion;
+ (void)assetConfigurationWithCompletion:(id)completion;
+ (void)configurationForType:(int64_t)type completion:(id)completion;
+ (void)flushCache;
+ (void)offlineConfigurationWithCompletion:(id)completion;
+ (void)siriConfigurationWithCompletion:(id)completion;
+ (void)supportedIdentifiersForTask:(int64_t)task completion:(id)completion;
+ (void)supportedLocalePairsForTask:(int64_t)task completion:(id)completion;
+ (void)textStreamingConfigurationWithCompletion:(id)completion;
@end

@implementation _LTDConfigurationService

+ (id)fileNameForType:(int64_t)type
{
  if (type > 9)
  {
    return &stru_284834138;
  }

  else
  {
    return off_2789B5EC0[type];
  }
}

+ (id)cache
{
  if (cache_onceToken != -1)
  {
    +[_LTDConfigurationService cache];
  }

  v3 = cache_cache;

  return v3;
}

+ (id)_queue
{
  if (_queue_onceToken != -1)
  {
    +[_LTDConfigurationService _queue];
  }

  v3 = _queue__queue;

  return v3;
}

+ (void)configurationForType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  _queue = [self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60___LTDConfigurationService_configurationForType_completion___block_invoke;
  block[3] = &unk_2789B5E50;
  selfCopy = self;
  typeCopy = type;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(_queue, block);
}

+ (id)configurationForType:(int64_t)type error:(id *)error
{
  v68 = *MEMORY[0x277D85DE8];
  cache = [self cache];
  v8 = [cache objectForType:type error:0];
  v9 = objc_opt_class();
  v10 = v8;
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v11 = [v10 lt_ensureTypesForKeys:v9 values:0], v12 = v10, (v11 & 1) == 0))
  {

    v12 = 0;
  }

  if (v12)
  {
    v15 = v12;
    v16 = v15;
    goto LABEL_61;
  }

  v17 = 0;
  if (type > 6)
  {
    if (type == 7)
    {
      selfCopy2 = self;
      v21 = 7;
LABEL_18:
      cache2 = [selfCopy2 urlForType:v21 source:0];
      v17 = 0;
      v19 = 0;
      goto LABEL_23;
    }

    if (type == 9)
    {
      v22 = _LTOSLogAssets(v13, v14);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        [_LTDConfigurationService configurationForType:v22 error:?];
      }

      cache2 = [self cache];
      [cache2 removeObjectForType:9];
      v15 = 0;
      v16 = 0;
      goto LABEL_60;
    }

    v19 = 0;
    cache2 = 0;
    if (type == 8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if ((type - 2) < 5)
    {
LABEL_9:
      cache2 = [self urlForType:type source:0];
      v19 = [self urlForType:type source:1];
      v17 = 0;
      goto LABEL_23;
    }

    if (type)
    {
      v19 = 0;
      cache2 = 0;
      if (type != 1)
      {
        goto LABEL_23;
      }

      selfCopy2 = self;
      v21 = 1;
      goto LABEL_18;
    }

    cache2 = [self urlForType:1 source:0];
    v17 = [self urlForType:0 source:0];
    v19 = [self urlForType:0 source:1];
  }

LABEL_23:
  v23 = [self fileNameForType:type];
  v25 = v23;
  if (!cache2)
  {
    v15 = 0;
    goto LABEL_33;
  }

  v26 = _LTOSLogAssets(v23, v24);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    +[_LTDConfigurationService configurationForType:error:];
  }

  v65 = 0;
  v15 = [self deserializedPlistContentsOf:cache2 error:&v65];
  v23 = v65;
  if (!v23)
  {
LABEL_33:
    if (!v17)
    {
      goto LABEL_42;
    }

    v59 = v19;
    v31 = _LTOSLogAssets(v23, v24);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      +[_LTDConfigurationService configurationForType:error:];
    }

    v32 = v25;
    v64 = 0;
    v33 = [self deserializedPlistContentsOf:v17 error:{&v64, v59}];
    v34 = v64;
    v36 = v34;
    if (!v34)
    {
      v39 = [self overlay:v15 with:v33];

      v15 = v39;
      goto LABEL_41;
    }

    v37 = _LTOSLogAssets(v34, v35);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      +[_LTDConfigurationService configurationForType:error:];
      if (!error)
      {
        goto LABEL_41;
      }
    }

    else if (!error)
    {
LABEL_41:

      v25 = v32;
      v19 = v60;
LABEL_42:
      if (!v19)
      {
LABEL_56:
        v27 = [self preferenceOverridesFor:type];
        v53 = [self overlay:v15 with:v27];

        v56 = _LTOSLogAssets(v54, v55);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
        {
          +[_LTDConfigurationService configurationForType:error:];
        }

        cache3 = [self cache];
        [cache3 setObject:v53 forType:type];

        v15 = v53;
        v16 = v15;
        goto LABEL_59;
      }

      v40 = _LTOSLogAssets(v23, v24);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        +[_LTDConfigurationService configurationForType:error:];
      }

      v63 = 0;
      v41 = [self deserializedPlistContentsOf:v19 error:&v63];
      v42 = v63;
      v44 = v42;
      if (!v42)
      {
        v47 = [self overlay:v15 with:v41];

        v15 = v47;
LABEL_55:

        goto LABEL_56;
      }

      v61 = v25;
      v45 = _LTOSLogAssets(v42, v43);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v67 = v44;
        _os_log_impl(&dword_232E53000, v45, OS_LOG_TYPE_INFO, "Failed to retrieve managed configuration %@", buf, 0xCu);
      }

      domain = [v44 domain];
      if (domain == *MEMORY[0x277CCA050])
      {
        code = [v44 code];

        if (code != 260)
        {
          goto LABEL_54;
        }

        v51 = _LTOSLogAssets(v49, v50);
        if (!os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          goto LABEL_54;
        }

        v52 = v51;
        domain = [v19 path];
        *buf = 138543362;
        v67 = domain;
        _os_log_impl(&dword_232E53000, v52, OS_LOG_TYPE_INFO, "File not installed at: %{public}@", buf, 0xCu);
      }

LABEL_54:
      v25 = v62;
      goto LABEL_55;
    }

    v38 = v36;
    *error = v36;
    goto LABEL_41;
  }

  v27 = v23;
  v28 = _LTOSLogAssets(v23, v24);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    +[_LTDConfigurationService configurationForType:error:];
  }

  if (error)
  {
    v29 = v27;
    *error = v27;
  }

  cache4 = [self cache];
  [cache4 removeObjectForType:type];

  v16 = 0;
LABEL_59:

LABEL_60:
LABEL_61:

  return v16;
}

+ (id)urlForType:(int64_t)type source:(int64_t)source
{
  v5 = [self fileNameForType:type];
  v7 = v5;
  if (source == 2)
  {
    v18 = _LTOSLogAssets(v5, v6);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [_LTDConfigurationService urlForType:v18 source:?];
    }

    goto LABEL_11;
  }

  if (source == 1)
  {
    v12 = +[_LTDUAFAssetService _configBundleURL];
    v8 = v12;
    if (v12)
    {
      v14 = [v12 URLByAppendingPathComponent:v7];
      v9 = [v14 URLByAppendingPathExtension:@"plist"];

      v17 = _LTOSLogAssets(v15, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        +[_LTDConfigurationService urlForType:source:];
      }
    }

    else
    {
      v19 = _LTOSLogAssets(0, v13);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [_LTDConfigurationService urlForType:v19 source:?];
      }

      v9 = 0;
    }

    goto LABEL_15;
  }

  if (source)
  {
LABEL_11:
    v9 = 0;
    goto LABEL_16;
  }

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 URLForResource:v7 withExtension:@"plist"];
  v11 = _LTOSLogAssets(v9, v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    +[_LTDConfigurationService urlForType:source:];
  }

LABEL_15:

LABEL_16:

  return v9;
}

+ (id)preferenceOverridesFor:(int64_t)for
{
  v3 = [self fileNameForType:for];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [standardUserDefaults objectForKey:v3];
  v6 = objc_opt_class();
  v7 = v5;
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v8 = [v7 lt_ensureTypesForKeys:v6 values:0], v9 = v7, (v8 & 1) == 0))
  {

    v9 = 0;
  }

  return v9;
}

+ (id)overlay:(id)overlay with:(id)with
{
  overlayCopy = overlay;
  withCopy = with;
  if ([withCopy count])
  {
    v7 = [overlayCopy mutableCopy];
    [v7 addEntriesFromDictionary:withCopy];
    v8 = [v7 copy];
  }

  else
  {
    v8 = overlayCopy;
  }

  return v8;
}

+ (id)deserializedPlistContentsOf:(id)of error:(id *)error
{
  ofCopy = of;
  v7 = ofCopy;
  if (!ofCopy)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid configuration URL: %@", 0];
    v13 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:12 description:v11 userInfo:0];
    *error = v13;
    v15 = _LTOSLogAssets(v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      +[_LTDConfigurationService deserializedPlistContentsOf:error:];
    }

    goto LABEL_9;
  }

  v8 = _LTOSLogAssets(ofCopy, v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    +[_LTDConfigurationService deserializedPlistContentsOf:error:];
  }

  v9 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v7 options:0 error:error];
  v11 = v9;
  if (*error)
  {
    v12 = _LTOSLogAssets(v9, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[_LTDConfigurationService deserializedPlistContentsOf:error:];
    }

LABEL_9:
    v16 = 0;
    goto LABEL_10;
  }

  if (![v9 length])
  {
    v22 = [MEMORY[0x277CCA9B8] ltd_errorWithCode:10 description:@"Failed to read configuration file" userInfo:MEMORY[0x277CBEC10]];
    *error = v22;
    v24 = _LTOSLogAssets(v22, v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      +[_LTDConfigurationService deserializedPlistContentsOf:error:];
    }

    goto LABEL_9;
  }

  v18 = [MEMORY[0x277CCAC58] propertyListWithData:v11 options:0 format:0 error:error];
  v20 = v18;
  if (*error)
  {
    v21 = _LTOSLogAssets(v18, v19);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[_LTDConfigurationService deserializedPlistContentsOf:error:];
    }

    v16 = 0;
  }

  else
  {
    v16 = v18;
  }

LABEL_10:

  return v16;
}

+ (void)flushCache
{
  cache = [self cache];
  [cache removeAllObjects];
}

+ (id)asrConfigurationWithError:(id *)error
{
  v3 = [self configurationForType:8 error:0];
  v4 = [[_LTDASRConfigurationModel alloc] initWithDictionary:v3];

  return v4;
}

+ (void)asrConfigurationWithCompletion:(id)completion
{
  completionCopy = completion;
  _queue = [self _queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59___LTDConfigurationService_asrConfigurationWithCompletion___block_invoke;
  v7[3] = &unk_2789B5E78;
  v8 = completionCopy;
  selfCopy = self;
  v6 = completionCopy;
  dispatch_async(_queue, v7);
}

+ (id)offlineConfigurationWithError:(id *)error
{
  v3 = [self configurationForType:2 error:error];
  v4 = [[_LTDOfflineConfigurationModel alloc] initWithDictionary:v3];

  return v4;
}

+ (void)offlineConfigurationWithCompletion:(id)completion
{
  completionCopy = completion;
  _queue = [self _queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63___LTDConfigurationService_offlineConfigurationWithCompletion___block_invoke;
  v7[3] = &unk_2789B5E78;
  v8 = completionCopy;
  selfCopy = self;
  v6 = completionCopy;
  dispatch_async(_queue, v7);
}

+ (id)siriConfigurationWithError:(id *)error
{
  v3 = [self configurationForType:5 error:error];
  v4 = [[_LTDSiriConfigurationModel alloc] initWithDictionary:v3];

  return v4;
}

+ (void)siriConfigurationWithCompletion:(id)completion
{
  completionCopy = completion;
  _queue = [self _queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60___LTDConfigurationService_siriConfigurationWithCompletion___block_invoke;
  v7[3] = &unk_2789B5E78;
  v8 = completionCopy;
  selfCopy = self;
  v6 = completionCopy;
  dispatch_async(_queue, v7);
}

+ (id)textStreamingConfigurationWithError:(id *)error
{
  v3 = [self configurationForType:0 error:error];
  v4 = [[_LTDTextStreamingConfigurationModel alloc] initWithDictionary:v3];

  return v4;
}

+ (void)textStreamingConfigurationWithCompletion:(id)completion
{
  completionCopy = completion;
  _queue = [self _queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69___LTDConfigurationService_textStreamingConfigurationWithCompletion___block_invoke;
  v7[3] = &unk_2789B5E78;
  v8 = completionCopy;
  selfCopy = self;
  v6 = completionCopy;
  dispatch_async(_queue, v7);
}

+ (id)assetConfigurationWithError:(id *)error
{
  v3 = [self configurationForType:1 error:error];
  v4 = [[_LTDAssetConfigurationModel alloc] initWithDictionary:v3];

  return v4;
}

+ (void)assetConfigurationWithCompletion:(id)completion
{
  completionCopy = completion;
  _queue = [self _queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61___LTDConfigurationService_assetConfigurationWithCompletion___block_invoke;
  v7[3] = &unk_2789B5E78;
  v8 = completionCopy;
  selfCopy = self;
  v6 = completionCopy;
  dispatch_async(_queue, v7);
}

+ (id)aneConfigurationWithError:(id *)error
{
  v3 = [_LTDConfigurationService configurationForType:7 error:error];
  v4 = [[_LTDANEConfigurationModel alloc] initWithDictionary:v3];

  return v4;
}

+ (void)aneConfigurationWithCompletion:(id)completion
{
  completionCopy = completion;
  _queue = [self _queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59___LTDConfigurationService_aneConfigurationWithCompletion___block_invoke;
  v7[3] = &unk_2789B5E78;
  v8 = completionCopy;
  selfCopy = self;
  v6 = completionCopy;
  dispatch_async(_queue, v7);
}

+ (id)supportedLocalePairsForTask:(int64_t)task error:(id *)error
{
  v5 = 4;
  v6 = task - 9;
  v7 = 3;
  if (task == 4)
  {
    v7 = 5;
  }

  if (task != 2)
  {
    v5 = v7;
  }

  v8 = v6 < 2;
  if (v6 >= 2)
  {
    v9 = v5;
  }

  else
  {
    v9 = 8;
  }

  v18 = 0;
  v10 = [_LTDConfigurationService configurationForType:v9 error:&v18];
  v11 = v10;
  if (v8)
  {
    v12 = [[_LTDASRConfigurationModel alloc] initWithDictionary:v10];
    v13 = [(_LTDASRConfigurationModel *)v12 supportedLocaleIdentifiersForTaskHint:task];
    v14 = [MEMORY[0x277CE1B38] pairNamesForLocaleIdentifiers:v13];
  }

  else
  {
    v12 = [v10 objectForKeyedSubscript:@"LanguagePairs"];
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if ([(_LTDASRConfigurationModel *)v12 lt_ensureElementType:objc_opt_class()])
      {
        v15 = v12;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {

      v12 = 0;
      v15 = 0;
    }

    v14 = v15;
  }

  if (v14)
  {
    v16 = [(_LTDASRConfigurationModel *)v14 _ltCompactMap:&__block_literal_global_344_0];
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  return v16;
}

+ (void)supportedLocalePairsForTask:(int64_t)task completion:(id)completion
{
  completionCopy = completion;
  _queue = [self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67___LTDConfigurationService_supportedLocalePairsForTask_completion___block_invoke;
  block[3] = &unk_2789B5E50;
  selfCopy = self;
  taskCopy = task;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(_queue, block);
}

+ (void)supportedIdentifiersForTask:(int64_t)task completion:(id)completion
{
  completionCopy = completion;
  _queue = [self _queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67___LTDConfigurationService_supportedIdentifiersForTask_completion___block_invoke;
  block[3] = &unk_2789B5E50;
  taskCopy = task;
  selfCopy = self;
  v10 = completionCopy;
  v8 = completionCopy;
  dispatch_async(_queue, block);
}

+ (void)configurationForType:(os_log_t)log error:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 134217984;
  v2 = 9;
  _os_log_fault_impl(&dword_232E53000, log, OS_LOG_TYPE_FAULT, "Invalid configuration base type %zd", &v1, 0xCu);
}

+ (void)deserializedPlistContentsOf:error:.cold.2()
{
  OUTLINED_FUNCTION_4(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to read plist %@", v2, v3, v4, v5);
}

+ (void)deserializedPlistContentsOf:error:.cold.3()
{
  OUTLINED_FUNCTION_4(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Failed to deserialize plist %@", v2, v3, v4, v5);
}

+ (void)deserializedPlistContentsOf:error:.cold.4()
{
  OUTLINED_FUNCTION_4(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_232E53000, v0, v1, "Empty plist %@", v2, v3, v4, v5);
}

+ (void)deserializedPlistContentsOf:error:.cold.5()
{
  OUTLINED_FUNCTION_4(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  _os_log_fault_impl(&dword_232E53000, v0, OS_LOG_TYPE_FAULT, "Failed to get asset URL for installed MobileAsset; will attempt to fall back to bundled asset %@", v1, 0xCu);
}

@end