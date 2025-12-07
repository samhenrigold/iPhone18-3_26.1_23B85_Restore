@interface CDMPSCService
+ (id)_emptyResponse;
+ (id)getCDMServiceAssetConfig;
- (id)assetsPathURLForModelBundle:(id)bundle;
- (id)doInference:(id)inference error:(id *)error;
- (id)getSNLPPommesServerClassifierPath:(id)path error:(id *)error;
- (id)handle:(id)handle;
- (id)handleRequestCommandTypeNames;
- (id)setup:(id)setup;
- (id)warmup:(id)warmup;
@end

@implementation CDMPSCService

- (id)handleRequestCommandTypeNames
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[(CDMBaseCommand *)CDMPSCRequestCommand];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [v2 setWithArray:v4];

  return v5;
}

+ (id)getCDMServiceAssetConfig
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(CDMServiceAssetConfig);
  v6 = @"model_bundle_psc";
  v7 = @"com.apple.siri.nl.psc";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [(CDMServiceAssetConfig *)v2 addCDMFactorToFoldersMapping:v4 forAssetSet:0];

  [(CDMServiceAssetConfig *)v2 setIsAssetRequiredForSetup:0];

  return v2;
}

+ (id)_emptyResponse
{
  v2 = objc_alloc_init(MEMORY[0x1E69D12D8]);

  return v2;
}

- (id)getSNLPPommesServerClassifierPath:(id)path error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v13 = 136315394;
    v14 = "[CDMPSCService getSNLPPommesServerClassifierPath:error:]";
    v15 = 2112;
    v16 = pathCopy;
    _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_INFO, "%s creating SNLPPommesServerClassifier: %@", &v13, 0x16u);
  }

  v8 = [MEMORY[0x1E69D1478] classifierWithPathURL:pathCopy error:error];
  pscOrchestrator = self->_pscOrchestrator;
  self->_pscOrchestrator = v8;

  v10 = self->_pscOrchestrator;
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
    v12 = "[CDMPSCService doInference:error:]";
    _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_INFO, "%s Start PSC", &v11, 0xCu);
  }

  v8 = [(SNLPPommesServerClassifier *)self->_pscOrchestrator responseForRequest:inferenceCopy error:error];
  v9 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[CDMPSCService doInference:error:]";
    _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s PSC finished", &v11, 0xCu);
  }

  return v8;
}

- (id)assetsPathURLForModelBundle:(id)bundle
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
      v12 = "[CDMPSCService assetsPathURLForModelBundle:]";
      v13 = 2112;
      v14 = resourcePath;
      _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s [WARN]: PSC assets path does not exist or is not a directory: %@", buf, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)warmup:(id)warmup
{
  v28 = *MEMORY[0x1E69E9840];
  warmupCopy = warmup;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v25 = "[CDMPSCService warmup:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Prewarm PSC model", buf, 0xCu);
  }

  if (+[CDMUserDefaultsUtils prewarmModels])
  {
    dynamicConfig = [warmupCopy dynamicConfig];
    embeddingConfigs = [dynamicConfig embeddingConfigs];

    v8 = [embeddingConfigs getEmbeddingConfigForFactor:@"com.apple.siri.nl.psc"];
    embeddingModelDimension = [v8 embeddingModelDimension];
    v10 = [CDMNLServiceUtils buildSetupITFMRequest:embeddingModelDimension];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    pscOrchestrator = selfCopy->_pscOrchestrator;
    v23 = 0;
    v13 = [(SNLPPommesServerClassifier *)pscOrchestrator responseForRequest:v10 error:&v23];
    v14 = v23;
    if (!v13)
    {
      v15 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v14 localizedDescription];
        *buf = 136315394;
        v25 = "[CDMPSCService warmup:]";
        v26 = 2112;
        v27 = localizedDescription;
        v22 = localizedDescription;
        _os_log_error_impl(&dword_1DC287000, v15, OS_LOG_TYPE_ERROR, "%s [ERR]: Failed to run warm-up inference call: %@", buf, 0x16u);
      }
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    embeddingConfigs = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(embeddingConfigs, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v25 = "[CDMPSCService warmup:]";
      _os_log_debug_impl(&dword_1DC287000, embeddingConfigs, OS_LOG_TYPE_DEBUG, "%s Model prewarming is turned off. PSC will not prewarm.", buf, 0xCu);
    }
  }

  v16 = [CDMWarmupResponseCommand alloc];
  serviceState = [(CDMBaseService *)self serviceState];
  serviceName = [(CDMBaseService *)self serviceName];
  v19 = [(CDMWarmupResponseCommand *)v16 initWithServiceState:serviceState serviceName:serviceName];

  return v19;
}

- (id)setup:(id)setup
{
  v28 = *MEMORY[0x1E69E9840];
  setupCopy = setup;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v25 = "[CDMPSCService setup:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s PSC model setup", buf, 0xCu);
  }

  dynamicConfig = [setupCopy dynamicConfig];
  v7 = [dynamicConfig getAssetForFactorName:@"com.apple.siri.nl.psc"];
  nlAsset = self->_nlAsset;
  self->_nlAsset = v7;

  dynamicConfig2 = [setupCopy dynamicConfig];
  v10 = [dynamicConfig2 getAssetBundlePathForFactorName:@"com.apple.siri.nl.psc"];

  if (v10)
  {
    v11 = [(CDMPSCService *)self assetsPathURLForModelBundle:v10];
    if (v11)
    {
      createSetupResponseCommand = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(createSetupResponseCommand, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v25 = "[CDMPSCService setup:]";
        v26 = 2112;
        v27 = v11;
        _os_log_debug_impl(&dword_1DC287000, createSetupResponseCommand, OS_LOG_TYPE_DEBUG, "%s PSC proto service passing assets path to SNLPPommesServerClassifier: %@", buf, 0x16u);
      }

      selfCopy = self;
      objc_sync_enter(selfCopy);
      v23 = 0;
      v14 = [(CDMPSCService *)selfCopy getSNLPPommesServerClassifierPath:v11 error:&v23];
      v15 = v23;

      if (!v14)
      {
        v16 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          localizedDescription = [v15 localizedDescription];
          *buf = 136315394;
          v25 = "[CDMPSCService setup:]";
          v26 = 2112;
          v27 = localizedDescription;
          _os_log_error_impl(&dword_1DC287000, v16, OS_LOG_TYPE_ERROR, "%s [ERR]: Failed to create PSC Orchestrator: %@", buf, 0x16u);
        }

        selfCopy->super.super._serviceState = 3;
        createSetupResponseCommand = [(CDMBaseService *)selfCopy createSetupResponseCommand];
        [createSetupResponseCommand setCmdError:v15];
      }

      objc_sync_exit(selfCopy);
      if (v14)
      {
        v17 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v25 = "[CDMPSCService setup:]";
          _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s PSC model loaded", buf, 0xCu);
        }

        selfCopy->super.super._serviceState = 2;
        createSetupResponseCommand = [(CDMBaseService *)selfCopy createSetupResponseCommand];
      }
    }

    else
    {
      self->super.super._serviceState = 4;
      createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not look up PSC assets path"];
      v19 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v25 = "[CDMPSCService setup:]";
        v26 = 2112;
        v27 = v18;
        _os_log_impl(&dword_1DC287000, v19, OS_LOG_TYPE_INFO, "%s [WARN]: %@", buf, 0x16u);
      }

      v20 = [(CDMBaseService *)self createErrorWithCode:1 description:v18];
      [createSetupResponseCommand setCmdError:v20];

      v11 = 0;
    }
  }

  else
  {
    self->super.super._serviceState = 4;
    createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
    v11 = [(CDMBaseService *)self createErrorWithCode:1 description:@"Not able to find/load PSC model bundle directory"];
    [createSetupResponseCommand setCmdError:v11];
  }

  return createSetupResponseCommand;
}

- (id)handle:(id)handle
{
  v52 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v46 = "[CDMPSCService handle:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Running PSC inference...", buf, 0xCu);
  }

  if (self->super.super._serviceState == 2)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!selfCopy->_pscOrchestrator)
    {
      v7 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v46 = "[CDMPSCService handle:]";
        _os_log_error_impl(&dword_1DC287000, v7, OS_LOG_TYPE_ERROR, "%s [ERR]: _pscOrchestrator not initialized", buf, 0xCu);
      }
    }

    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      parserRequest = [handleCopy parserRequest];
      tokenisedUtterance = [parserRequest tokenisedUtterance];
      originalUtterance = [tokenisedUtterance originalUtterance];
      v12 = originalUtterance;
      uTF8String = [originalUtterance UTF8String];
      *buf = 136315394;
      v46 = "[CDMPSCService handle:]";
      v47 = 2080;
      v48 = uTF8String;
      _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s PSC Request for utterance: %s", buf, 0x16u);
    }

    v14 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v46 = "[CDMPSCService handle:]";
      _os_log_impl(&dword_1DC287000, v14, OS_LOG_TYPE_INFO, "%s Handling PSC Request", buf, 0xCu);
    }

    if (+[CDMFeatureFlags isLogNluEnabled])
    {
      parserRequest2 = [handleCopy parserRequest];
      v44 = 0;
      v16 = [CDMNluLogUtil writePSCRequestToDisk:parserRequest2 error:&v44];
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    parserRequest3 = [handleCopy parserRequest];
    tokenisedUtterance2 = [parserRequest3 tokenisedUtterance];
    tokenChain = [tokenisedUtterance2 tokenChain];
    tokens = [tokenChain tokens];

    v21 = [tokens countByEnumeratingWithState:&v40 objects:v51 count:16];
    if (v21)
    {
      v22 = *v41;
LABEL_16:
      v23 = 0;
      while (1)
      {
        if (*v41 != v22)
        {
          objc_enumerationMutation(tokens);
        }

        if (([*(*(&v40 + 1) + 8 * v23) isWhitespace] & 1) == 0)
        {
          break;
        }

        if (v21 == ++v23)
        {
          v21 = [tokens countByEnumeratingWithState:&v40 objects:v51 count:16];
          if (v21)
          {
            goto LABEL_16;
          }

          goto LABEL_22;
        }
      }

      v29 = selfCopy;
      objc_sync_enter(v29);
      parserRequest4 = [handleCopy parserRequest];
      v39 = 0;
      _emptyResponse = [(CDMPSCService *)v29 doInference:parserRequest4 error:&v39];
      v31 = v39;

      if (_emptyResponse)
      {
        v32 = CDMLogContext;
        if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v46 = "[CDMPSCService handle:]";
          v47 = 2112;
          v48 = @"psc";
          v49 = 2112;
          v50 = _emptyResponse;
          _os_log_debug_impl(&dword_1DC287000, v32, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nPSC Response: %@", buf, 0x20u);
        }
      }

      else
      {
        v33 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          localizedDescription = [v31 localizedDescription];
          *buf = 136315394;
          v46 = "[CDMPSCService handle:]";
          v47 = 2112;
          v48 = localizedDescription;
          _os_log_error_impl(&dword_1DC287000, v33, OS_LOG_TYPE_ERROR, "%s [ERR]: PSC inference failed with error: %@", buf, 0x16u);
        }
      }

      objc_sync_exit(v29);
      if (_emptyResponse)
      {
        goto LABEL_38;
      }
    }

    else
    {
LABEL_22:

      v24 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v46 = "[CDMPSCService handle:]";
        _os_log_impl(&dword_1DC287000, v24, OS_LOG_TYPE_INFO, "%s No non whitespace tokens found. Skipping call to PSC model inference.", buf, 0xCu);
      }
    }

    v34 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v46 = "[CDMPSCService handle:]";
      _os_log_impl(&dword_1DC287000, v34, OS_LOG_TYPE_INFO, "%s Given that PSC model call has been incomplete, returning an empty response.", buf, 0xCu);
    }

    _emptyResponse = [objc_opt_class() _emptyResponse];
LABEL_38:
    v27 = [CDMNLServiceUtils buildPSCResponse:_emptyResponse pscRequest:handleCopy];
    if (+[CDMFeatureFlags isLogNluEnabled])
    {
      v38 = 0;
      v35 = [CDMNluLogUtil writePSCResponseToDisk:_emptyResponse error:&v38];
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v25 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      serviceState = self->super.super._serviceState;
      *buf = 136315394;
      v46 = "[CDMPSCService handle:]";
      v47 = 2048;
      v48 = serviceState;
      _os_log_impl(&dword_1DC287000, v25, OS_LOG_TYPE_INFO, "%s Not Ready! State: %tu", buf, 0x16u);
    }

    v27 = objc_alloc_init(CDMPSCResponseCommand);
    _emptyResponse = [(CDMBaseService *)self createErrorWithCode:1 description:&stru_1F5800F50];
    [(CDMBaseCommand *)v27 setCmdError:_emptyResponse];
  }

  return v27;
}

@end