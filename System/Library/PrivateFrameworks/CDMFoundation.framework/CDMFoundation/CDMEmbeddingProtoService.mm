@interface CDMEmbeddingProtoService
+ (BOOL)isSiriInputRepresentationModel:(id)model;
+ (id)getCDMServiceAssetConfig;
- (BOOL)hasEmbedderOrchestrator;
- (id)addEmbeddingModelItemToEmbedders:(id)embedders;
- (id)assetsPathURLForModelBundle:(id)bundle;
- (id)createEmbedderOrchestrator:(id)orchestrator;
- (id)createEmbedderOrchestrator:(id)orchestrator embedding_bert_path:(id)embedding_bert_path embedding_config_path:(id)embedding_config_path reformulation_path:(id)reformulation_path;
- (id)createEmbeddingConfigItemEqualToNilResponse;
- (id)createEmbeddingProtoServiceErrorWithCode:(int64_t)code description:(id)description;
- (id)createEmbeddingsBundleMissingPathResponse;
- (id)createEmptyEmbeddingsBundleResponse:(id)response;
- (id)createNoStableEmbeddingsModelFoundResponse;
- (id)createNotReadyForHandleProtoResponse;
- (id)createOrchestratorConstructFailureResponse;
- (id)doEmbedding:(id)embedding;
- (id)getSpecificEmbeddingModelItem:(id)item dependentEmbeddingConfigs:(id)configs embeddingVersion:(id)version;
- (id)getStableEmbeddingModelItem:(id)item;
- (id)handle:(id)handle;
- (id)handleRequestCommandTypeNames;
- (id)legacyEmbeddingPaths:(id)paths;
- (id)setup:(id)setup;
- (id)warmup:(id)warmup;
@end

@implementation CDMEmbeddingProtoService

- (id)handleRequestCommandTypeNames
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[(CDMBaseCommand *)CDMEmbeddingProtoRequestCommand];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [v2 setWithArray:v4];

  return v5;
}

+ (id)getCDMServiceAssetConfig
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(CDMServiceAssetConfig);
  v6[0] = @"siri_input_representations";
  v6[1] = @"temp_model";
  v7 = @"com.apple.siri.nl.owl";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [(CDMServiceAssetConfig *)v2 addCDMFactorToFoldersMapping:v4 forAssetSet:0];

  return v2;
}

- (BOOL)hasEmbedderOrchestrator
{
  embedders = self->_embedders;
  if (embedders)
  {
    LOBYTE(embedders) = [(NSMutableArray *)embedders count]!= 0;
  }

  return embedders;
}

- (id)doEmbedding:(id)embedding
{
  v54 = *MEMORY[0x1E69E9840];
  embeddingCopy = embedding;
  v3 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v51 = "[CDMEmbeddingProtoService doEmbedding:]";
    _os_log_impl(&dword_1DC287000, v3, OS_LOG_TYPE_INFO, "%s Start doEmbedding", buf, 0xCu);
  }

  if ([(CDMDataDispatcherContext *)self->_dataDispatcherContext cdmSELFLoggingPolicyType]== 2)
  {
    v4 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v51 = "[CDMEmbeddingProtoService doEmbedding:]";
      _os_log_debug_impl(&dword_1DC287000, v4, OS_LOG_TYPE_DEBUG, "%s CDMEmbeddingProtoService::doEmbedding input: <Redacted>", buf, 0xCu);
    }
  }

  else
  {
    v4 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      request = [embeddingCopy request];
      *buf = 136315395;
      v51 = "[CDMEmbeddingProtoService doEmbedding:]";
      v52 = 2117;
      v53 = request;
      _os_log_debug_impl(&dword_1DC287000, v4, OS_LOG_TYPE_DEBUG, "%s CDMEmbeddingProtoService::doEmbedding input: %{sensitive}@", buf, 0x16u);
    }
  }

  v37 = objc_alloc_init(MEMORY[0x1E69D12B8]);
  v43 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_embedders, "count")}];
  v42 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_embedders, "count")}];
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v35 = [(NSMutableArray *)self->_embedders count];
    *buf = 136315394;
    v51 = "[CDMEmbeddingProtoService doEmbedding:]";
    v52 = 2048;
    v53 = v35;
    _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s Running doEmbedding for %lu embedders", buf, 0x16u);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = self->_embedders;
  v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v6)
  {
    v44 = 0;
    v40 = *v46;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v46 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v45 + 1) + 8 * i);
        v9 = objc_alloc_init(MEMORY[0x1E69D12C0]);
        v10 = objc_alloc_init(MEMORY[0x1E69D12C0]);
        snlpEmbedder = [v8 snlpEmbedder];
        request2 = [embeddingCopy request];
        v13 = [snlpEmbedder getEmbeddings:request2];

        [v9 setEmbeddingDim:{objc_msgSend(v13, "embeddingDim")}];
        embeddingTensorOutputs = [v13 embeddingTensorOutputs];
        v15 = [embeddingTensorOutputs objectAtIndexedSubscript:0];
        embeddingTensor = [v15 embeddingTensor];
        [v9 setEmbeddingTensor:embeddingTensor];

        embeddingConfigItem = [v8 embeddingConfigItem];
        [v9 setIsStableEmbeddingsVersion:{objc_msgSend(embeddingConfigItem, "isStableEmbeddingModel")}];

        embeddingConfigItem2 = [v8 embeddingConfigItem];
        embeddingModelVersion = [embeddingConfigItem2 embeddingModelVersion];
        [v9 setEmbeddingVersion:embeddingModelVersion];

        if ([v9 isStableEmbeddingsVersion])
        {
          v20 = v13;

          v44 = v20;
        }

        [v43 addObject:{v9, v37}];
        [v10 setEmbeddingDim:{objc_msgSend(v13, "embeddingDim")}];
        subwordEmbeddingTensorOutputs = [v13 subwordEmbeddingTensorOutputs];
        v22 = [subwordEmbeddingTensorOutputs objectAtIndexedSubscript:0];
        embeddingTensor2 = [v22 embeddingTensor];
        [v10 setEmbeddingTensor:embeddingTensor2];

        embeddingConfigItem3 = [v8 embeddingConfigItem];
        embeddingModelVersion2 = [embeddingConfigItem3 embeddingModelVersion];
        [v10 setEmbeddingVersion:embeddingModelVersion2];

        [v42 addObject:v10];
      }

      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v6);

    if (v44)
    {
      tokenChain = [v44 tokenChain];
      [v37 setTokenChain:tokenChain];

      [v37 setNumToken:{objc_msgSend(v44, "numToken")}];
      subwordTokenChain = [v44 subwordTokenChain];
      [v37 setSubwordTokenChain:subwordTokenChain];

      [v37 setNumSubwordToken:{objc_msgSend(v44, "numSubwordToken")}];
      [v37 setEmbeddingTensorOutputs:v43];
      [v37 setSubwordEmbeddingTensorOutputs:v42];
      v28 = [[CDMEmbeddingProtoResponseCommand alloc] initWithResponse:v37 embeddingConfigs:self->_embeddingConfigs];
      v29 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v51 = "[CDMEmbeddingProtoService doEmbedding:]";
        _os_log_impl(&dword_1DC287000, v29, OS_LOG_TYPE_INFO, "%s CDMEmbeddingProtoService::doEmbedding finished", buf, 0xCu);
      }

      v30 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        embeddingTensorOutputs2 = [v37 embeddingTensorOutputs];
        v32 = [embeddingTensorOutputs2 count];
        *buf = 136315394;
        v51 = "[CDMEmbeddingProtoService doEmbedding:]";
        v52 = 2048;
        v53 = v32;
        _os_log_debug_impl(&dword_1DC287000, v30, OS_LOG_TYPE_DEBUG, "%s CDMEmbeddingProtoService::doEmbedding produced %lu embedding tensors", buf, 0x16u);
      }

      goto LABEL_28;
    }
  }

  else
  {
  }

  self->super.super._serviceState = 3;
  v28 = [[CDMEmbeddingProtoResponseCommand alloc] initWithResponse:v37 embeddingConfigs:self->_embeddingConfigs];
  v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No stable embeddings model found. Aborting setup."];
  v33 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v51 = "[CDMEmbeddingProtoService doEmbedding:]";
    v52 = 2112;
    v53 = v44;
    _os_log_error_impl(&dword_1DC287000, v33, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", buf, 0x16u);
  }

  v30 = [(CDMEmbeddingProtoService *)self createEmbeddingProtoServiceErrorWithCode:2 description:v44];
  [(CDMBaseCommand *)v28 setCmdError:v30];
LABEL_28:

  return v28;
}

- (id)createEmbedderOrchestrator:(id)orchestrator
{
  orchestratorCopy = orchestrator;
  v4 = [objc_alloc(MEMORY[0x1E69D1460]) initFromAssetDirectoryURL:orchestratorCopy];

  return v4;
}

- (id)createEmbedderOrchestrator:(id)orchestrator embedding_bert_path:(id)embedding_bert_path embedding_config_path:(id)embedding_config_path reformulation_path:(id)reformulation_path
{
  orchestratorCopy = orchestrator;
  embedding_bert_pathCopy = embedding_bert_path;
  embedding_config_pathCopy = embedding_config_path;
  reformulation_pathCopy = reformulation_path;
  v13 = [objc_alloc(MEMORY[0x1E69D1460]) initFromSourceVocabPath:orchestratorCopy bertModelPath:embedding_bert_pathCopy bertConfigPath:embedding_config_pathCopy reformulatorPath:reformulation_pathCopy];

  return v13;
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
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "[CDMEmbeddingProtoService assetsPathURLForModelBundle:]";
      v13 = 2112;
      v14 = resourcePath;
      _os_log_error_impl(&dword_1DC287000, v8, OS_LOG_TYPE_ERROR, "%s [ERR]: Embeddings assets path does not exist or is not a directory: %@", buf, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)handle:(id)handle
{
  v23 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  request = [handleCopy request];
  text = [request text];

  if ([(CDMDataDispatcherContext *)self->_dataDispatcherContext cdmSELFLoggingPolicyType]== 2)
  {

    text = @"<Redacted>";
  }

  v7 = CDMLogContext;
  if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315651;
    v18 = "[CDMEmbeddingProtoService handle:]";
    v19 = 2112;
    v20 = @"embedding";
    v21 = 2117;
    v22 = text;
    _os_log_debug_impl(&dword_1DC287000, v7, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nEmbeddingRequest text: %{sensitive}@", &v17, 0x20u);
  }

  v8 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v17 = 136315138;
    v18 = "[CDMEmbeddingProtoService handle:]";
    _os_log_impl(&dword_1DC287000, v8, OS_LOG_TYPE_INFO, "%s calling SiriBERT embedding", &v17, 0xCu);
  }

  if ([(CDMEmbeddingProtoService *)self getServiceState]!= 2)
  {
    createNotReadyForHandleProtoResponse = [(CDMEmbeddingProtoService *)self createNotReadyForHandleProtoResponse];
    goto LABEL_11;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(CDMEmbeddingProtoService *)selfCopy hasEmbedderOrchestrator])
  {
    objc_sync_exit(selfCopy);

    createNotReadyForHandleProtoResponse = [(CDMEmbeddingProtoService *)selfCopy doEmbedding:handleCopy];
LABEL_11:
    v11 = createNotReadyForHandleProtoResponse;
    goto LABEL_17;
  }

  embedders = selfCopy->_embedders;
  v13 = CDMLogContext;
  v14 = os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_ERROR);
  if (embedders)
  {
    if (v14)
    {
      v17 = 136315394;
      v18 = "[CDMEmbeddingProtoService handle:]";
      v19 = 2112;
      v20 = @"embedding";
      v15 = "%s [ERR]: [insights-cdm-%@]:\nNo embedders were loaded";
LABEL_21:
      _os_log_error_impl(&dword_1DC287000, v13, OS_LOG_TYPE_ERROR, v15, &v17, 0x16u);
    }
  }

  else if (v14)
  {
    v17 = 136315394;
    v18 = "[CDMEmbeddingProtoService handle:]";
    v19 = 2112;
    v20 = @"embedding";
    v15 = "%s [ERR]: [insights-cdm-%@]:\n_embedders array is nil";
    goto LABEL_21;
  }

  objc_sync_exit(selfCopy);

  v11 = 0;
LABEL_17:

  return v11;
}

- (id)addEmbeddingModelItemToEmbedders:(id)embedders
{
  v54 = *MEMORY[0x1E69E9840];
  embeddersCopy = embedders;
  if (embeddersCopy)
  {
    v5 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      embeddingModelVersion = [embeddersCopy embeddingModelVersion];
      *buf = 136315394;
      v45 = "[CDMEmbeddingProtoService addEmbeddingModelItemToEmbedders:]";
      v46 = 2112;
      v47 = embeddingModelVersion;
      _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s Processing embedding config for model %@", buf, 0x16u);
    }

    v6 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      isStableEmbeddingModel = [embeddersCopy isStableEmbeddingModel];
      *buf = 136315394;
      v45 = "[CDMEmbeddingProtoService addEmbeddingModelItemToEmbedders:]";
      v46 = 1024;
      LODWORD(v47) = isStableEmbeddingModel;
      _os_log_debug_impl(&dword_1DC287000, v6, OS_LOG_TYPE_DEBUG, "%s Is stable model: %d", buf, 0x12u);
    }

    v7 = MEMORY[0x1E696AAE8];
    embeddingModelPath = [embeddersCopy embeddingModelPath];
    v9 = [v7 bundleWithPath:embeddingModelPath];

    if (!v9)
    {
      self->super.super._serviceState = 3;
      createSetupResponseCommand2 = [(CDMEmbeddingProtoService *)self createEmptyEmbeddingsBundleResponse:embeddersCopy];
      goto LABEL_19;
    }

    bundlePath = [v9 bundlePath];
    v11 = [CDMEmbeddingProtoService isSiriInputRepresentationModel:bundlePath];

    if (v11)
    {
      v12 = [(CDMEmbeddingProtoService *)self assetsPathURLForModelBundle:v9];
      if (v12)
      {
        v13 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v45 = "[CDMEmbeddingProtoService addEmbeddingModelItemToEmbedders:]";
          v46 = 2112;
          v47 = v12;
          _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s Embeddings proto service passing assets path to embeddings orchestrator: %@", buf, 0x16u);
        }

        selfCopy2 = self;
        objc_sync_enter(selfCopy2);
        v15 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          embeddingModelVersion2 = [embeddersCopy embeddingModelVersion];
          *buf = 136315394;
          v45 = "[CDMEmbeddingProtoService addEmbeddingModelItemToEmbedders:]";
          v46 = 2112;
          v47 = embeddingModelVersion2;
          _os_log_impl(&dword_1DC287000, v15, OS_LOG_TYPE_INFO, "%s creating SNLPEmbedder for embeddings model: %@", buf, 0x16u);
        }

        v17 = [(CDMEmbeddingProtoService *)selfCopy2 createEmbedderOrchestrator:v12];
        v18 = [[Embedder alloc] initWithSnlpEmbedder:v17 andEmbeddingConfigItem:embeddersCopy];
        [(NSMutableArray *)selfCopy2->_embedders addObject:v18];
        v19 = v12;
        goto LABEL_14;
      }

      self->super.super._serviceState = 3;
      createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
      v33 = MEMORY[0x1E696AEC0];
      v34 = [v9 description];
      v19 = [v33 stringWithFormat:@"Could not look up embeddings assets path %@", v34];

      v35 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v45 = "[CDMEmbeddingProtoService addEmbeddingModelItemToEmbedders:]";
        v46 = 2112;
        v47 = v19;
        _os_log_impl(&dword_1DC287000, v35, OS_LOG_TYPE_INFO, "%s [WARN]: %@", buf, 0x16u);
      }

      v36 = [(CDMBaseService *)self createErrorWithCode:1 description:v19];
      [createSetupResponseCommand setCmdError:v36];

LABEL_33:
      goto LABEL_34;
    }

    v19 = [(CDMEmbeddingProtoService *)self legacyEmbeddingPaths:v9];
    v23 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      srcVocabPath = [v19 srcVocabPath];
      modelPath = [v19 modelPath];
      configPath = [v19 configPath];
      reformulationPath = [v19 reformulationPath];
      *buf = 136316162;
      v45 = "[CDMEmbeddingProtoService addEmbeddingModelItemToEmbedders:]";
      v46 = 2112;
      v47 = srcVocabPath;
      v48 = 2112;
      v49 = modelPath;
      v50 = 2112;
      v51 = configPath;
      v52 = 2112;
      v53 = reformulationPath;
      _os_log_debug_impl(&dword_1DC287000, v23, OS_LOG_TYPE_DEBUG, "%s SrcVocabPath:%@, Model path:%@, Model config path:%@, Reformulation path:%@", buf, 0x34u);
    }

    srcVocabPath2 = [v19 srcVocabPath];
    if (srcVocabPath2)
    {
      modelPath2 = [v19 modelPath];
      if (modelPath2)
      {
        configPath2 = [v19 configPath];
        if (configPath2)
        {
          reformulationPath2 = [v19 reformulationPath];
          v28 = reformulationPath2 == 0;

          if (!v28)
          {
            selfCopy2 = self;
            objc_sync_enter(selfCopy2);
            srcVocabPath3 = [v19 srcVocabPath];
            modelPath3 = [v19 modelPath];
            configPath3 = [v19 configPath];
            reformulationPath3 = [v19 reformulationPath];
            v17 = [(CDMEmbeddingProtoService *)selfCopy2 createEmbedderOrchestrator:srcVocabPath3 embedding_bert_path:modelPath3 embedding_config_path:configPath3 reformulation_path:reformulationPath3];

            v18 = [[Embedder alloc] initWithSnlpEmbedder:v17 andEmbeddingConfigItem:embeddersCopy];
            [(NSMutableArray *)selfCopy2->_embedders addObject:v18];
LABEL_14:

            objc_sync_exit(selfCopy2);
            self->super.super._serviceState = 2;
            createSetupResponseCommand2 = [(CDMBaseService *)self createSetupResponseCommand];
LABEL_19:
            createSetupResponseCommand = createSetupResponseCommand2;
LABEL_34:

            goto LABEL_35;
          }

          goto LABEL_32;
        }
      }
    }

LABEL_32:
    self->super.super._serviceState = 3;
    createSetupResponseCommand = [(CDMEmbeddingProtoService *)self createEmbeddingsBundleMissingPathResponse];
    goto LABEL_33;
  }

  v21 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v45 = "[CDMEmbeddingProtoService addEmbeddingModelItemToEmbedders:]";
    _os_log_debug_impl(&dword_1DC287000, v21, OS_LOG_TYPE_DEBUG, "%s The CDMEmbeddingConfigItem to be used is nil. Fail the setup.", buf, 0xCu);
  }

  self->super.super._serviceState = 3;
  createSetupResponseCommand = [(CDMEmbeddingProtoService *)self createEmbeddingConfigItemEqualToNilResponse];
LABEL_35:

  return createSetupResponseCommand;
}

- (id)getStableEmbeddingModelItem:(id)item
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  itemCopy = item;
  v4 = [itemCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(itemCopy);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 isStableEmbeddingModel])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [itemCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)getSpecificEmbeddingModelItem:(id)item dependentEmbeddingConfigs:(id)configs embeddingVersion:(id)version
{
  v28 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  configsCopy = configs;
  versionCopy = version;
  v22 = itemCopy;
  v10 = [itemCopy objectForKey:versionCopy];

  v11 = versionCopy;
  if (v10)
  {
    v11 = [itemCopy objectForKey:versionCopy];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = configsCopy;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v21 = configsCopy;
    v14 = *v24;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        embeddingModelVersion = [v16 embeddingModelVersion];
        v18 = [embeddingModelVersion rangeOfString:v11] == 0x7FFFFFFFFFFFFFFFLL;

        if (!v18)
        {
          v19 = v16;
          goto LABEL_13;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_13:

  return v19;
}

- (id)warmup:(id)warmup
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v20 = "[CDMEmbeddingProtoService warmup:]";
    _os_log_impl(&dword_1DC287000, v4, OS_LOG_TYPE_INFO, "%s Prewarm Embedding models", buf, 0xCu);
  }

  if (+[CDMUserDefaultsUtils prewarmModels]&& [(CDMEmbeddingProtoService *)self hasEmbedderOrchestrator])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_embedders;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v14 + 1) + 8 * i) warmup];
        }

        v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v5 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(&v5->super.super, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v20 = "[CDMEmbeddingProtoService warmup:]";
      _os_log_debug_impl(&dword_1DC287000, &v5->super.super, OS_LOG_TYPE_DEBUG, "%s Model prewarming is turned off. Embedding models will not prewarm.", buf, 0xCu);
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
  v29 = *MEMORY[0x1E69E9840];
  setupCopy = setup;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v25 = 136315138;
    v26 = "[CDMEmbeddingProtoService setup:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Setup CDMEmbeddingProtoService", &v25, 0xCu);
  }

  dynamicConfig = [setupCopy dynamicConfig];
  embeddingConfigs = [dynamicConfig embeddingConfigs];
  embeddingConfigs = self->_embeddingConfigs;
  self->_embeddingConfigs = embeddingConfigs;

  dataDispatcherContext = [setupCopy dataDispatcherContext];
  dataDispatcherContext = self->_dataDispatcherContext;
  self->_dataDispatcherContext = dataDispatcherContext;

  dynamicConfig2 = [setupCopy dynamicConfig];
  embeddingVersion = [dynamicConfig2 embeddingVersion];

  getDependentEmbeddingConfigs = [(CDMEmbeddingConfigs *)self->_embeddingConfigs getDependentEmbeddingConfigs];
  v14 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v24 = [getDependentEmbeddingConfigs count];
    v25 = 136315394;
    v26 = "[CDMEmbeddingProtoService setup:]";
    v27 = 2048;
    v28 = v24;
    _os_log_debug_impl(&dword_1DC287000, v14, OS_LOG_TYPE_DEBUG, "%s Initialize _embedders array with capacity %lu", &v25, 0x16u);
  }

  v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(getDependentEmbeddingConfigs, "count")}];
  embedders = self->_embedders;
  self->_embedders = v15;

  if (embeddingVersion)
  {
    v17 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v25 = 136315394;
      v26 = "[CDMEmbeddingProtoService setup:]";
      v27 = 2112;
      v28 = embeddingVersion;
      _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s Client Embedding version is not nil and the value is %@.", &v25, 0x16u);
    }

    getEmbeddingVersionDictionary = [(CDMEmbeddingConfigs *)self->_embeddingConfigs getEmbeddingVersionDictionary];
    v19 = [(CDMEmbeddingProtoService *)self getSpecificEmbeddingModelItem:getEmbeddingVersionDictionary dependentEmbeddingConfigs:getDependentEmbeddingConfigs embeddingVersion:embeddingVersion];
    if (v19)
    {
      createNoStableEmbeddingsModelFoundResponse = [(CDMEmbeddingProtoService *)self addEmbeddingModelItemToEmbedders:v19];
LABEL_16:

      goto LABEL_18;
    }

    v21 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v25 = 136315138;
      v26 = "[CDMEmbeddingProtoService setup:]";
      _os_log_impl(&dword_1DC287000, v21, OS_LOG_TYPE_INFO, "%s Embedding version not found; fallback to stable embedding.", &v25, 0xCu);
    }
  }

  v19 = [(CDMEmbeddingProtoService *)self getStableEmbeddingModelItem:getDependentEmbeddingConfigs];
  if (v19)
  {
    createNoStableEmbeddingsModelFoundResponse = [(CDMEmbeddingProtoService *)self addEmbeddingModelItemToEmbedders:v19];
    getEmbeddingVersionDictionary = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(getEmbeddingVersionDictionary, OS_LOG_TYPE_INFO))
    {
      embeddingModelVersion = [v19 embeddingModelVersion];
      v25 = 136315394;
      v26 = "[CDMEmbeddingProtoService setup:]";
      v27 = 2112;
      v28 = embeddingModelVersion;
      _os_log_impl(&dword_1DC287000, getEmbeddingVersionDictionary, OS_LOG_TYPE_INFO, "%s Embeddings model successfully loaded: %@", &v25, 0x16u);
    }

    goto LABEL_16;
  }

  self->super.super._serviceState = 3;
  createNoStableEmbeddingsModelFoundResponse = [(CDMEmbeddingProtoService *)self createNoStableEmbeddingsModelFoundResponse];
LABEL_18:

  return createNoStableEmbeddingsModelFoundResponse;
}

- (id)legacyEmbeddingPaths:(id)paths
{
  v21 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    bundlePath = [pathsCopy bundlePath];
    v17 = 136315394;
    v18 = "[CDMEmbeddingProtoService legacyEmbeddingPaths:]";
    v19 = 2112;
    v20 = bundlePath;
    _os_log_debug_impl(&dword_1DC287000, v4, OS_LOG_TYPE_DEBUG, "%s Load legacy owl asset from: %@", &v17, 0x16u);
  }

  v5 = MEMORY[0x1E696AAE8];
  bundlePath2 = [pathsCopy bundlePath];
  v7 = [bundlePath2 stringByAppendingPathComponent:@"model_bundle/pathsCopy/bert.mlmodelc"];
  stringByDeletingLastPathComponent = [v7 stringByDeletingLastPathComponent];
  v9 = [v5 bundleWithPath:stringByDeletingLastPathComponent];

  v10 = [v9 pathForResource:@"src_vocab" ofType:@"txt"];
  v11 = [pathsCopy pathForResource:@"model.espresso" ofType:@"net" inDirectory:@"model_bundle/pathsCopy/bert.mlmodelc"];
  v12 = [pathsCopy pathForResource:@"config" ofType:@"json" inDirectory:@"model_bundle/pathsCopy/bert.mlmodelc"];
  v13 = [v9 pathForResource:@"reformulations" ofType:@"txt"];
  v14 = [[EmbeddingPaths alloc] initWithSrcVocabPath:v10 modelPath:v11 configPath:v12 reformulationPath:v13];

  return v14;
}

- (id)createOrchestratorConstructFailureResponse
{
  v12 = *MEMORY[0x1E69E9840];
  createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to get EmbedderOrchestrator"];
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "[CDMEmbeddingProtoService createOrchestratorConstructFailureResponse]";
    v10 = 2112;
    v11 = v4;
    _os_log_error_impl(&dword_1DC287000, v5, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", &v8, 0x16u);
  }

  v6 = [(CDMEmbeddingProtoService *)self createEmbeddingProtoServiceErrorWithCode:4 description:v4];
  [createSetupResponseCommand setCmdError:v6];

  return createSetupResponseCommand;
}

- (id)createEmbeddingsBundleMissingPathResponse
{
  v12 = *MEMORY[0x1E69E9840];
  createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Not able to find/load all values needed for Embedding model bundle."];
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "[CDMEmbeddingProtoService createEmbeddingsBundleMissingPathResponse]";
    v10 = 2112;
    v11 = v4;
    _os_log_error_impl(&dword_1DC287000, v5, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", &v8, 0x16u);
  }

  v6 = [(CDMEmbeddingProtoService *)self createEmbeddingProtoServiceErrorWithCode:3 description:v4];
  [createSetupResponseCommand setCmdError:v6];

  return createSetupResponseCommand;
}

- (id)createNoStableEmbeddingsModelFoundResponse
{
  v12 = *MEMORY[0x1E69E9840];
  createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No stable embeddings model found. Aborting setup."];
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "[CDMEmbeddingProtoService createNoStableEmbeddingsModelFoundResponse]";
    v10 = 2112;
    v11 = v4;
    _os_log_error_impl(&dword_1DC287000, v5, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", &v8, 0x16u);
  }

  v6 = [(CDMEmbeddingProtoService *)self createEmbeddingProtoServiceErrorWithCode:2 description:v4];
  [createSetupResponseCommand setCmdError:v6];

  return createSetupResponseCommand;
}

- (id)createEmbeddingConfigItemEqualToNilResponse
{
  createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CDM EmbeddingConfigItem is Nil. Aborting setup."];
  v5 = [(CDMEmbeddingProtoService *)self createEmbeddingProtoServiceErrorWithCode:5 description:v4];
  [createSetupResponseCommand setCmdError:v5];

  return createSetupResponseCommand;
}

- (id)createEmptyEmbeddingsBundleResponse:(id)response
{
  responseCopy = response;
  createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
  v6 = MEMORY[0x1E696AEC0];
  embeddingModelPath = [responseCopy embeddingModelPath];
  v8 = [v6 stringWithFormat:@"Not able to find/load Bert Embedding model bundle directory from path: %@.", embeddingModelPath];
  v9 = [(CDMEmbeddingProtoService *)self createEmbeddingProtoServiceErrorWithCode:1 description:v8];
  [createSetupResponseCommand setCmdError:v9];

  return createSetupResponseCommand;
}

- (id)createNotReadyForHandleProtoResponse
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    serviceState = self->super.super._serviceState;
    v8 = 136315394;
    v9 = "[CDMEmbeddingProtoService createNotReadyForHandleProtoResponse]";
    v10 = 2048;
    v11 = serviceState;
    _os_log_impl(&dword_1DC287000, v3, OS_LOG_TYPE_INFO, "%s Not Ready! State: %tu", &v8, 0x16u);
  }

  v5 = objc_alloc_init(CDMEmbeddingProtoResponseCommand);
  v6 = [(CDMEmbeddingProtoService *)self createEmbeddingProtoServiceErrorWithCode:0 description:@"Service not ready to handle requests"];
  [(CDMBaseCommand *)v5 setCmdError:v6];

  return v5;
}

- (id)createEmbeddingProtoServiceErrorWithCode:(int64_t)code description:(id)description
{
  v13[1] = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  v7 = MEMORY[0x1E696ABC0];
  serviceName = [(CDMBaseService *)self serviceName];
  v12 = *MEMORY[0x1E696A578];
  v13[0] = descriptionCopy;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [v7 errorWithDomain:serviceName code:code userInfo:v9];

  return v10;
}

+ (BOOL)isSiriInputRepresentationModel:(id)model
{
  pathComponents = [model pathComponents];
  v4 = [pathComponents containsObject:@"siri_input_representations"];

  return v4;
}

@end