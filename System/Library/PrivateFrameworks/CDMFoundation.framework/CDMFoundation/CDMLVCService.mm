@interface CDMLVCService
+ (id)assetsPathURLForModelBundle:(id)bundle;
+ (id)buildMultiLingualVariant:(id)variant;
+ (id)getCDMServiceAssetConfig;
- (BOOL)initializeLVCOverrides:(id)overrides;
- (id)doInference:(id)inference error:(id *)error;
- (id)getSNLPLanguageVariantClassifierPath:(id)path error:(id *)error;
- (id)handle:(id)handle;
- (id)handleRequestCommandTypeNames;
- (id)setup:(id)setup;
- (id)warmup:(id)warmup;
- (void)_prewarmModelWithEmbeddingConfigItem:(id)item;
@end

@implementation CDMLVCService

- (id)handleRequestCommandTypeNames
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[(CDMBaseCommand *)CDMLVCRequestCommand];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [v2 setWithArray:v4];

  return v5;
}

+ (id)getCDMServiceAssetConfig
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(CDMServiceAssetConfig);
  v6 = @"model_bundle_lvc";
  v7 = @"com.apple.siri.nl.lvc";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [(CDMServiceAssetConfig *)v2 addCDMFactorToFoldersMapping:v4 forAssetSet:0];

  [(CDMServiceAssetConfig *)v2 setIsAssetRequiredForSetup:0];

  return v2;
}

- (BOOL)initializeLVCOverrides:(id)overrides
{
  v16 = *MEMORY[0x1E69E9840];
  overridesCopy = overrides;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if ([defaultManager fileExistsAtPath:overridesCopy])
  {
    v6 = [[SiriNLUOverrideProxy alloc] initWithUseTrie:1 useMemory:0];
    overrideProxy = self->_overrideProxy;
    self->_overrideProxy = v6;

    v8 = [(SiriNLUOverrideProxy *)self->_overrideProxy loadComponentOverrideTrieStoreWithTrieFilePath:overridesCopy];
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = "NO";
      if (v8)
      {
        v10 = "YES";
      }

      v12 = 136315394;
      v13 = "[CDMLVCService initializeLVCOverrides:]";
      v14 = 2080;
      v15 = v10;
      _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s Override proxy returned the following for loading LVC overrides: %s", &v12, 0x16u);
    }
  }

  else
  {
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 136315394;
      v13 = "[CDMLVCService initializeLVCOverrides:]";
      v14 = 2112;
      v15 = overridesCopy;
      _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s [WARN]: Unable to initialize LVC override from path %@", &v12, 0x16u);
    }

    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)getSNLPLanguageVariantClassifierPath:(id)path error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "[CDMLVCService getSNLPLanguageVariantClassifierPath:error:]";
    v15 = 2112;
    v16 = pathCopy;
    _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_INFO, "%s creating SNLPLanguageVariantClassifier: %@", &v13, 0x16u);
  }

  v8 = [MEMORY[0x1E69D1468] classifierWithPathURL:pathCopy error:error];
  lvcOrchestrator = self->_lvcOrchestrator;
  self->_lvcOrchestrator = v8;

  v10 = self->_lvcOrchestrator;
  v11 = v10;

  return v10;
}

- (id)doInference:(id)inference error:(id *)error
{
  v13 = *MEMORY[0x1E69E9840];
  inferenceCopy = inference;
  v7 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[CDMLVCService doInference:error:]";
    _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_INFO, "%s Start LVC", &v11, 0xCu);
  }

  v8 = [(SNLPLanguageVariantClassifier *)self->_lvcOrchestrator responseForRequest:inferenceCopy error:error];
  v9 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[CDMLVCService doInference:error:]";
    _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s LVC finished", &v11, 0xCu);
  }

  return v8;
}

- (void)_prewarmModelWithEmbeddingConfigItem:(id)item
{
  v17 = *MEMORY[0x1E69E9840];
  embeddingModelDimension = [item embeddingModelDimension];
  v5 = [CDMNLServiceUtils buildSetupITFMRequest:embeddingModelDimension];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  lvcOrchestrator = selfCopy->_lvcOrchestrator;
  v12 = 0;
  v8 = [(SNLPLanguageVariantClassifier *)lvcOrchestrator responseForRequest:v5 error:&v12];
  v9 = v12;
  if (!v8)
  {
    v10 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v9 localizedDescription];
      *buf = 136315394;
      v14 = "[CDMLVCService _prewarmModelWithEmbeddingConfigItem:]";
      v15 = 2112;
      v16 = localizedDescription;
      _os_log_error_impl(&dword_1DC287000, v10, OS_LOG_TYPE_ERROR, "%s [ERR]: Failed to run warm-up inference call: %@", buf, 0x16u);
    }
  }

  objc_sync_exit(selfCopy);
}

- (id)warmup:(id)warmup
{
  v16 = *MEMORY[0x1E69E9840];
  warmupCopy = warmup;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v14 = 136315138;
    v15 = "[CDMLVCService warmup:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Prewarm LVC model", &v14, 0xCu);
  }

  if (+[CDMUserDefaultsUtils prewarmModels])
  {
    dynamicConfig = [warmupCopy dynamicConfig];
    embeddingConfigs = [dynamicConfig embeddingConfigs];

    v8 = [embeddingConfigs getEmbeddingConfigForFactor:@"com.apple.siri.nl.lvc"];
    [(CDMLVCService *)self _prewarmModelWithEmbeddingConfigItem:v8];
  }

  else
  {
    embeddingConfigs = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(embeddingConfigs, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315138;
      v15 = "[CDMLVCService warmup:]";
      _os_log_debug_impl(&dword_1DC287000, embeddingConfigs, OS_LOG_TYPE_DEBUG, "%s Model prewarming is turned off. LVC will not prewarm.", &v14, 0xCu);
    }
  }

  v9 = [CDMWarmupResponseCommand alloc];
  serviceState = [(CDMBaseService *)self serviceState];
  serviceName = [(CDMBaseService *)self serviceName];
  v12 = [(CDMWarmupResponseCommand *)v9 initWithServiceState:serviceState serviceName:serviceName];

  return v12;
}

- (id)setup:(id)setup
{
  v41 = *MEMORY[0x1E69E9840];
  setupCopy = setup;
  v6 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v38 = "[CDMLVCService setup:]";
    _os_log_impl(&dword_1DC287000, v6, OS_LOG_TYPE_INFO, "%s LVC model setup", buf, 0xCu);
  }

  dynamicConfig = [setupCopy dynamicConfig];
  v8 = [dynamicConfig getAssetForFactorName:@"com.apple.siri.nl.lvc"];
  nlAsset = self->_nlAsset;
  self->_nlAsset = v8;

  dynamicConfig2 = [setupCopy dynamicConfig];
  v11 = [dynamicConfig2 getAssetBundlePathForFactorName:@"com.apple.siri.nl.lvc"];

  if (!v11)
  {
    v22 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v38 = "[CDMLVCService setup:]";
      v23 = "%s Bundle not found for the LVC service";
LABEL_16:
      _os_log_impl(&dword_1DC287000, v22, OS_LOG_TYPE_INFO, v23, buf, 0xCu);
    }

LABEL_17:

    v24 = 0;
    self->super.super._serviceState = 4;
    createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
    goto LABEL_30;
  }

  v12 = [objc_opt_class() assetsPathURLForModelBundle:v11];
  if (!v12)
  {
    v22 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v38 = "[CDMLVCService setup:]";
      v23 = "%s Language variant classifier asset path not found";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v13 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v38 = "[CDMLVCService setup:]";
    v39 = 2112;
    v40 = v12;
    _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s LVC service passing assets path to SNLPLanguageVariantClassifier: %@", buf, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v34 = 0;
  v15 = [(CDMLVCService *)selfCopy getSNLPLanguageVariantClassifierPath:v12 error:&v34];
  v33 = v34;

  if (v15)
  {
    dynamicConfig3 = [setupCopy dynamicConfig];
    v17 = [dynamicConfig3 getAssetBundlePathForFactorName:@"com.apple.siri.nl.overrides"];

    resourcePath = [v17 resourcePath];
    v19 = [resourcePath stringByAppendingPathComponent:@"trie_bundle"];

    v20 = [(CDMLVCService *)selfCopy initializeLVCOverrides:v19];
    if (v20)
    {
      v21 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v38 = "[CDMLVCService setup:]";
        _os_log_impl(&dword_1DC287000, v21, OS_LOG_TYPE_INFO, "%s Trie Overrides: Loaded LVC overrides bundle", buf, 0xCu);
      }
    }

    else
    {
      v27 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v38 = "[CDMLVCService setup:]";
        _os_log_error_impl(&dword_1DC287000, v27, OS_LOG_TYPE_ERROR, "%s [ERR]: Trie Overrides: Failed to load LVC overrides bundle", buf, 0xCu);
      }

      selfCopy->super.super._serviceState = 4;
      createSetupResponseCommand = [(CDMBaseService *)selfCopy createSetupResponseCommand];
      v28 = MEMORY[0x1E696ABC0];
      v35 = *MEMORY[0x1E696A588];
      v36 = @"Failed to load LVC overrides bundle";
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v29 = [v28 errorWithDomain:*MEMORY[0x1E69D14E0] code:0 userInfo:v21];
      [createSetupResponseCommand setCmdError:v29];
    }

    v26 = v33;
  }

  else
  {
    v25 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v33 localizedDescription];
      *buf = 136315394;
      v38 = "[CDMLVCService setup:]";
      v39 = 2112;
      v40 = localizedDescription;
      _os_log_error_impl(&dword_1DC287000, v25, OS_LOG_TYPE_ERROR, "%s [ERR]: Failed to create LVC Orchestrator: %@", buf, 0x16u);
    }

    selfCopy->super.super._serviceState = 3;
    createSetupResponseCommand = [(CDMBaseService *)selfCopy createSetupResponseCommand];
    v26 = v33;
    [createSetupResponseCommand setCmdError:v33];
    v20 = 0;
  }

  objc_sync_exit(selfCopy);
  if (v20)
  {
    v30 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v38 = "[CDMLVCService setup:]";
      _os_log_impl(&dword_1DC287000, v30, OS_LOG_TYPE_INFO, "%s LVC model loaded", buf, 0xCu);
    }

    selfCopy->super.super._serviceState = 2;
    createSetupResponseCommand = [(CDMBaseService *)selfCopy createSetupResponseCommand];
  }

  v24 = v12;
LABEL_30:

  return createSetupResponseCommand;
}

- (id)handle:(id)handle
{
  v62 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v56 = "[CDMLVCService handle:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Running LVC inference...", buf, 0xCu);
  }

  if (self->super.super._serviceState == 2)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    overrideProxy = selfCopy->_overrideProxy;
    if (overrideProxy)
    {
      v8 = CDMLogContext;
      if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v56 = "[CDMLVCService handle:]";
        v57 = 2112;
        v58 = @"lvc";
        _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s [insights-cdm-%@]:\nLVC override start matching", buf, 0x16u);
        overrideProxy = selfCopy->_overrideProxy;
      }

      overridesInputs = [handleCopy overridesInputs];
      v10 = [(SiriNLUOverrideProxy *)overrideProxy matchWithInputs:overridesInputs overrideNamespace:4];

      if (v10)
      {
        v11 = [CDMLVCService buildMultiLingualVariant:v10];
        if (v11)
        {
          v12 = [CDMLVCResponseCommand alloc];
          v13 = objc_alloc_init(MEMORY[0x1E69D12D8]);
          v14 = [(CDMLVCResponseCommand *)v12 initWithITFMResponse:v13 languageVariantResult:v11];

          objc_sync_exit(selfCopy);
          goto LABEL_50;
        }
      }
    }

    if (!selfCopy->_lvcOrchestrator)
    {
      v17 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v56 = "[CDMLVCService handle:]";
        _os_log_error_impl(&dword_1DC287000, v17, OS_LOG_TYPE_ERROR, "%s [ERR]: _lvcOrchestrator not initialized", buf, 0xCu);
      }
    }

    v18 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      parserRequest = [handleCopy parserRequest];
      tokenisedUtterance = [parserRequest tokenisedUtterance];
      originalUtterance = [tokenisedUtterance originalUtterance];
      v22 = originalUtterance;
      uTF8String = [originalUtterance UTF8String];
      *buf = 136315394;
      v56 = "[CDMLVCService handle:]";
      v57 = 2080;
      v58 = uTF8String;
      _os_log_impl(&dword_1DC287000, v18, OS_LOG_TYPE_INFO, "%s LVC Request for utterance: %s", buf, 0x16u);
    }

    v24 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v56 = "[CDMLVCService handle:]";
      _os_log_impl(&dword_1DC287000, v24, OS_LOG_TYPE_INFO, "%s Handling LVC Request", buf, 0xCu);
    }

    if (+[CDMFeatureFlags isLogNluEnabled])
    {
      parserRequest2 = [handleCopy parserRequest];
      v54 = 0;
      v26 = [CDMNluLogUtil writeLVCRequestToDisk:parserRequest2 error:&v54];
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    parserRequest3 = [handleCopy parserRequest];
    tokenisedUtterance2 = [parserRequest3 tokenisedUtterance];
    tokenChain = [tokenisedUtterance2 tokenChain];
    tokens = [tokenChain tokens];

    v31 = [tokens countByEnumeratingWithState:&v50 objects:v61 count:16];
    if (v31)
    {
      v32 = *v51;
LABEL_26:
      v33 = 0;
      while (1)
      {
        if (*v51 != v32)
        {
          objc_enumerationMutation(tokens);
        }

        if (([*(*(&v50 + 1) + 8 * v33) isWhitespace] & 1) == 0)
        {
          break;
        }

        if (v31 == ++v33)
        {
          v31 = [tokens countByEnumeratingWithState:&v50 objects:v61 count:16];
          if (v31)
          {
            goto LABEL_26;
          }

          goto LABEL_32;
        }
      }

      v34 = selfCopy;
      objc_sync_enter(v34);
      parserRequest4 = [handleCopy parserRequest];
      v49 = 0;
      v36 = [v34 doInference:parserRequest4 error:&v49];
      v37 = v49;

      if (v36)
      {

        objc_sync_exit(v34);
        hypotheses = [v36 hypotheses];
        v39 = [hypotheses count] == 0;

        if (v39)
        {
          v40 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315138;
            v56 = "[CDMLVCService handle:]";
            _os_log_debug_impl(&dword_1DC287000, v40, OS_LOG_TYPE_DEBUG, "%s LVC returned no hypotheses", buf, 0xCu);
          }
        }

        v41 = CDMLogContext;
        if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v56 = "[CDMLVCService handle:]";
          v57 = 2112;
          v58 = @"lvc";
          v59 = 2112;
          v60 = v36;
          _os_log_debug_impl(&dword_1DC287000, v41, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nLVC Parser Response: %@", buf, 0x20u);
        }

        goto LABEL_47;
      }

      v42 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v37 localizedDescription];
        *buf = 136315394;
        v56 = "[CDMLVCService handle:]";
        v57 = 2112;
        v58 = localizedDescription;
        _os_log_error_impl(&dword_1DC287000, v42, OS_LOG_TYPE_ERROR, "%s [ERR]: LVC inference failed with error: %@", buf, 0x16u);
      }

      objc_sync_exit(v34);
    }

    else
    {
LABEL_32:

      v34 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v56 = "[CDMLVCService handle:]";
        _os_log_impl(&dword_1DC287000, v34, OS_LOG_TYPE_INFO, "%s No non whitespace tokens found. Skipping call to LVC model inference.", buf, 0xCu);
      }
    }

    v43 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v56 = "[CDMLVCService handle:]";
      _os_log_impl(&dword_1DC287000, v43, OS_LOG_TYPE_INFO, "%s Given that LVC model call has been incomplete, returning an empty response.", buf, 0xCu);
    }

    v36 = objc_opt_new();
LABEL_47:
    v44 = [CDMNLServiceUtils buildLVCResponse:v36 lvcRequest:handleCopy];
    if (+[CDMFeatureFlags isLogNluEnabled])
    {
      v48 = 0;
      v45 = [CDMNluLogUtil writeLVCResponseToDisk:v36 error:&v48];
    }

    objc_sync_exit(selfCopy);

    selfCopy = v44;
    v14 = selfCopy;
  }

  else
  {
    v15 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      serviceState = self->super.super._serviceState;
      *buf = 136315394;
      v56 = "[CDMLVCService handle:]";
      v57 = 2048;
      v58 = serviceState;
      _os_log_impl(&dword_1DC287000, v15, OS_LOG_TYPE_INFO, "%s Not Ready! State: %tu", buf, 0x16u);
    }

    v14 = objc_alloc_init(CDMLVCResponseCommand);
    selfCopy = [(CDMBaseService *)self createErrorWithCode:1 description:&stru_1F5800F50];
    [(CDMBaseCommand *)v14 setCmdError:selfCopy];
  }

LABEL_50:

  return v14;
}

+ (id)buildMultiLingualVariant:(id)variant
{
  v24 = *MEMORY[0x1E69E9840];
  variantCopy = variant;
  if ([variantCopy hasLvcOverrideValue] && (objc_msgSend(variantCopy, "lvcOverrideValue"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "hasLvcValue"), v4, v5))
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = objc_alloc_init(MEMORY[0x1E69D1190]);
    lvcOverrideValue = [variantCopy lvcOverrideValue];
    lvcValue = [lvcOverrideValue lvcValue];
    languageVariantName = [lvcValue languageVariantName];
    [v7 setLanguageVariantName:languageVariantName];

    lvcOverrideValue2 = [variantCopy lvcOverrideValue];
    lvcValue2 = [lvcOverrideValue2 lvcValue];
    [lvcValue2 languageVariantScore];
    [v7 setLanguageVariantScore:?];

    v13 = CDMLogContext;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      dictionaryRepresentation = [v7 dictionaryRepresentation];
      v18 = 136315650;
      v19 = "+[CDMLVCService buildMultiLingualVariant:]";
      v20 = 2112;
      v21 = @"lvc";
      v22 = 2112;
      v23 = dictionaryRepresentation;
      _os_log_impl(&dword_1DC287000, v13, OS_LOG_TYPE_INFO, "%s [insights-cdm-%@]:\nLVC override found:%@", &v18, 0x20u);
    }

    [array addObject:v7];
    v15 = objc_alloc_init(MEMORY[0x1E69D1180]);
    [v15 setMultilingualVariants:array];
    v16 = objc_alloc_init(MEMORY[0x1E69D11A8]);
    [v16 setAlgorithm:1];
    [v16 setParserId:8];
    [v15 setParser:v16];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)assetsPathURLForModelBundle:(id)bundle
{
  v15 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  resourcePath = [bundleCopy resourcePath];
  v10 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [defaultManager fileExistsAtPath:resourcePath isDirectory:&v10];

  if (v6 && (v10 & 1) != 0)
  {
    v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:resourcePath isDirectory:1];
  }

  else
  {
    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v12 = "+[CDMLVCService assetsPathURLForModelBundle:]";
      v13 = 2112;
      v14 = resourcePath;
      _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s [WARN]: LVC assets path does not exist or is not a directory: %@", buf, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

@end