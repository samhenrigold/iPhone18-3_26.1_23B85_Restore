@interface CDMSNLCProtoService
+ (id)_stockServerResponse;
+ (id)getCDMServiceAssetConfig;
+ (id)getParserEnum;
- (id)assetsPathURLForModelBundle:(id)bundle;
- (id)doInference:(id)inference error:(id *)error;
- (id)getSNLPServerNLClassifierPath:(id)path error:(id *)error;
- (id)handle:(id)handle;
- (id)handleRequestCommandTypeNames;
- (id)setup:(id)setup;
- (id)warmup:(id)warmup;
@end

@implementation CDMSNLCProtoService

- (id)handleRequestCommandTypeNames
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[(CDMBaseCommand *)CDMSNLCProtoRequestCommand];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [v2 setWithArray:v4];

  return v5;
}

+ (id)getCDMServiceAssetConfig
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(CDMServiceAssetConfig);
  v6 = @"model_bundle_snlc";
  v7 = @"com.apple.siri.nl.snlc";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [(CDMServiceAssetConfig *)v2 addCDMFactorToFoldersMapping:v4 forAssetSet:0];

  return v2;
}

- (id)getSNLPServerNLClassifierPath:(id)path error:(id *)error
{
  v15 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v7 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v13 = 136315138;
    v14 = "[CDMSNLCProtoService getSNLPServerNLClassifierPath:error:]";
    _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_INFO, "%s creating _snlcInferenceOrchestrator", &v13, 0xCu);
  }

  v8 = [MEMORY[0x1E69D14A0] classifierWithPathURL:pathCopy error:error];
  snlcOrchestrator = self->_snlcOrchestrator;
  self->_snlcOrchestrator = v8;

  v10 = self->_snlcOrchestrator;
  v11 = v10;

  return v10;
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
      v12 = "[CDMSNLCProtoService assetsPathURLForModelBundle:]";
      v13 = 2112;
      v14 = resourcePath;
      _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s [WARN]: SNLC assets path does not exist or is not a directory: %@", buf, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)doInference:(id)inference error:(id *)error
{
  v13 = *MEMORY[0x1E69E9840];
  inferenceCopy = inference;
  v7 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[CDMSNLCProtoService doInference:error:]";
    _os_log_impl(&dword_1DC287000, v7, OS_LOG_TYPE_INFO, "%s Start SNLC", &v11, 0xCu);
  }

  v8 = [(SNLPServerNLClassifier *)self->_snlcOrchestrator responseForRequest:inferenceCopy error:error];
  v9 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = 136315138;
    v12 = "[CDMSNLCProtoService doInference:error:]";
    _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s SNLC finished", &v11, 0xCu);
  }

  return v8;
}

- (id)warmup:(id)warmup
{
  v27 = *MEMORY[0x1E69E9840];
  warmupCopy = warmup;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v24 = "[CDMSNLCProtoService warmup:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Prewarm SNLC model", buf, 0xCu);
  }

  if (+[CDMUserDefaultsUtils prewarmModels])
  {
    dynamicConfig = [warmupCopy dynamicConfig];
    embeddingConfigs = [dynamicConfig embeddingConfigs];

    v8 = [embeddingConfigs getEmbeddingConfigForFactor:@"com.apple.siri.nl.snlc"];
    embeddingModelDimension = [v8 embeddingModelDimension];
    v10 = [CDMNLServiceUtils buildSetupSNLCProtoRequest:embeddingModelDimension];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v22 = 0;
    v12 = [(CDMSNLCProtoService *)selfCopy doInference:v10 error:&v22];
    v13 = v22;
    if (!v12)
    {
      v14 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v13 localizedDescription];
        *buf = 136315394;
        v24 = "[CDMSNLCProtoService warmup:]";
        v25 = 2112;
        v26 = localizedDescription;
        v21 = localizedDescription;
        _os_log_error_impl(&dword_1DC287000, v14, OS_LOG_TYPE_ERROR, "%s [ERR]: SNLC inference failed with error: %@", buf, 0x16u);
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
      v24 = "[CDMSNLCProtoService warmup:]";
      _os_log_debug_impl(&dword_1DC287000, embeddingConfigs, OS_LOG_TYPE_DEBUG, "%s Model prewarming is turned off. SNLC will not prewarm.", buf, 0xCu);
    }
  }

  v15 = [CDMWarmupResponseCommand alloc];
  serviceState = [(CDMBaseService *)self serviceState];
  serviceName = [(CDMBaseService *)self serviceName];
  v18 = [(CDMWarmupResponseCommand *)v15 initWithServiceState:serviceState serviceName:serviceName];

  return v18;
}

- (id)setup:(id)setup
{
  v28 = *MEMORY[0x1E69E9840];
  setupCopy = setup;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v25 = "[CDMSNLCProtoService setup:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s SNLC model setup", buf, 0xCu);
  }

  dynamicConfig = [setupCopy dynamicConfig];
  v7 = [dynamicConfig getAssetForFactorName:@"com.apple.siri.nl.snlc"];
  nlAsset = self->_nlAsset;
  self->_nlAsset = v7;

  dynamicConfig2 = [setupCopy dynamicConfig];
  v10 = [dynamicConfig2 getAssetBundlePathForFactorName:@"com.apple.siri.nl.snlc"];

  if (v10)
  {
    v11 = [(CDMSNLCProtoService *)self assetsPathURLForModelBundle:v10];
    if (v11)
    {
      createSetupResponseCommand = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(createSetupResponseCommand, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v25 = "[CDMSNLCProtoService setup:]";
        v26 = 2112;
        v27 = v11;
        _os_log_debug_impl(&dword_1DC287000, createSetupResponseCommand, OS_LOG_TYPE_DEBUG, "%s SNLC proto service passing assets path to SNLPServerNLClassifier: %@", buf, 0x16u);
      }

      selfCopy = self;
      objc_sync_enter(selfCopy);
      v23 = 0;
      v14 = [(CDMSNLCProtoService *)selfCopy getSNLPServerNLClassifierPath:v11 error:&v23];
      v15 = v23;

      if (!v14)
      {
        v16 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          localizedDescription = [v15 localizedDescription];
          *buf = 136315394;
          v25 = "[CDMSNLCProtoService setup:]";
          v26 = 2112;
          v27 = localizedDescription;
          _os_log_error_impl(&dword_1DC287000, v16, OS_LOG_TYPE_ERROR, "%s [ERR]: Failed to create SNLC Orchestrator: %@", buf, 0x16u);
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
          v25 = "[CDMSNLCProtoService setup:]";
          _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s SNLC model loaded", buf, 0xCu);
        }

        selfCopy->super.super._serviceState = 2;
        createSetupResponseCommand = [(CDMBaseService *)selfCopy createSetupResponseCommand];
      }
    }

    else
    {
      self->super.super._serviceState = 3;
      createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Could not look up SNLC assets path"];
      v19 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v25 = "[CDMSNLCProtoService setup:]";
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
    self->super.super._serviceState = 3;
    createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
    v11 = [(CDMBaseService *)self createErrorWithCode:1 description:@"Not able to find/load SNLC model bundle directory"];
    [createSetupResponseCommand setCmdError:v11];
  }

  return createSetupResponseCommand;
}

- (id)handle:(id)handle
{
  v64 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v58 = "[CDMSNLCProtoService handle:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Running SNLC inference...", buf, 0xCu);
  }

  if (self->super.super._serviceState == 2)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (!selfCopy->_snlcOrchestrator)
    {
      v7 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v58 = "[CDMSNLCProtoService handle:]";
        _os_log_error_impl(&dword_1DC287000, v7, OS_LOG_TYPE_ERROR, "%s [ERR]: _snlcOrchestrator not initialized", buf, 0xCu);
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
      v58 = "[CDMSNLCProtoService handle:]";
      v59 = 2080;
      v60 = uTF8String;
      _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s SNLC Request for utterance: %s", buf, 0x16u);
    }

    v14 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v58 = "[CDMSNLCProtoService handle:]";
      _os_log_impl(&dword_1DC287000, v14, OS_LOG_TYPE_INFO, "%s Handling SNLC Request", buf, 0xCu);
    }

    if (+[CDMFeatureFlags isLogNluEnabled])
    {
      parserRequest2 = [handleCopy parserRequest];
      v56 = 0;
      v16 = [CDMNluLogUtil writeSNLCRequestToDisk:parserRequest2 error:&v56];
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    parserRequest3 = [handleCopy parserRequest];
    tokenisedUtterance2 = [parserRequest3 tokenisedUtterance];
    tokenChain = [tokenisedUtterance2 tokenChain];
    tokens = [tokenChain tokens];

    v21 = [tokens countByEnumeratingWithState:&v52 objects:v63 count:16];
    if (v21)
    {
      v22 = *v53;
LABEL_16:
      v23 = 0;
      while (1)
      {
        if (*v53 != v22)
        {
          objc_enumerationMutation(tokens);
        }

        if (([*(*(&v52 + 1) + 8 * v23) isWhitespace] & 1) == 0)
        {
          break;
        }

        if (v21 == ++v23)
        {
          v21 = [tokens countByEnumeratingWithState:&v52 objects:v63 count:16];
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
      v51 = 0;
      [(CDMSNLCProtoService *)v29 doInference:parserRequest4 error:&v51];
      v28 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v31 = v51;

      objc_sync_exit(v29);
      if (v28 == 0.0)
      {
        goto LABEL_31;
      }

      hypotheses = [*&v28 hypotheses];
      v33 = [hypotheses objectAtIndexedSubscript:0];
      [v33 probability];
      v35 = v34;
      hypotheses2 = [*&v28 hypotheses];
      v37 = [hypotheses2 objectAtIndexedSubscript:1];
      [v37 probability];
      if (v35 > v38)
      {
        hypotheses3 = [*&v28 hypotheses];
        [hypotheses3 objectAtIndexedSubscript:0];
      }

      else
      {
        hypotheses3 = [*&v28 hypotheses];
        [hypotheses3 objectAtIndexedSubscript:1];
      }
      v41 = ;

      v42 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        label = [v41 label];
        [v41 probability];
        v49 = "Device";
        if (!label)
        {
          v49 = "Server";
        }

        *buf = 136315650;
        v58 = "[CDMSNLCProtoService handle:]";
        v59 = 2080;
        v60 = v49;
        v61 = 2048;
        v62 = v48;
        _os_log_debug_impl(&dword_1DC287000, v42, OS_LOG_TYPE_DEBUG, "%s SNLC delegated this request to %s with probability %f", buf, 0x20u);
      }
    }

    else
    {
LABEL_22:

      v24 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v58 = "[CDMSNLCProtoService handle:]";
        _os_log_impl(&dword_1DC287000, v24, OS_LOG_TYPE_INFO, "%s No non whitespace tokens found. Skipping call to SNLC model inference.", buf, 0xCu);
      }

LABEL_31:
      v40 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v58 = "[CDMSNLCProtoService handle:]";
        _os_log_impl(&dword_1DC287000, v40, OS_LOG_TYPE_INFO, "%s Given that SNLC model call has been incomplete, returning the default SERVER response.", buf, 0xCu);
      }

      [objc_opt_class() _stockServerResponse];
      v28 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    }

    v43 = +[CDMSNLCProtoService getParserEnum];
    v27 = [CDMNLServiceUtils buildSNLCProtoResponse:*&v28 snlcRequest:handleCopy parserToSet:v43];

    v44 = CDMLogContext;
    if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v58 = "[CDMSNLCProtoService handle:]";
      v59 = 2112;
      v60 = @"snlc";
      v61 = 2112;
      v62 = v28;
      _os_log_debug_impl(&dword_1DC287000, v44, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nSNLCParserResponse: %@", buf, 0x20u);
    }

    if (+[CDMFeatureFlags isLogNluEnabled])
    {
      v50 = 0;
      v45 = [CDMNluLogUtil writeSNLCResponseToDisk:*&v28 error:&v50];
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
      v58 = "[CDMSNLCProtoService handle:]";
      v59 = 2048;
      v60 = serviceState;
      _os_log_impl(&dword_1DC287000, v25, OS_LOG_TYPE_INFO, "%s Not Ready! State: %tu", buf, 0x16u);
    }

    v27 = objc_alloc_init(CDMSNLCProtoResponseCommand);
    [(CDMBaseService *)self createErrorWithCode:1 description:&stru_1F5800F50];
    v28 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    [(CDMBaseCommand *)v27 setCmdError:*&v28];
  }

  return v27;
}

+ (id)getParserEnum
{
  v2 = objc_alloc_init(MEMORY[0x1E69D11A8]);
  [v2 setAlgorithm:2];
  [v2 setParserId:2];

  return v2;
}

+ (id)_stockServerResponse
{
  v2 = objc_alloc_init(MEMORY[0x1E69D12D8]);
  v3 = objc_alloc_init(MEMORY[0x1E69D12C8]);
  LODWORD(v4) = 1.0;
  [v3 setProbability:v4];
  [v3 setLabel:0];
  v5 = objc_alloc_init(MEMORY[0x1E69D12C8]);
  [v5 setProbability:0.0];
  [v5 setLabel:1];
  v6 = [MEMORY[0x1E695DF70] arrayWithObjects:{v3, v5, 0}];
  [v2 setHypotheses:v6];

  return v2;
}

@end