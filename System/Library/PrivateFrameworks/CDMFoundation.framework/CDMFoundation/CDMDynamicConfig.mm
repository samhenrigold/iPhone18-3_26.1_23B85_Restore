@interface CDMDynamicConfig
+ (id)resolveActiveGraph:(id)graph;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualWithoutSandboxId:(id)id;
- (CDMDynamicConfig)initWithLanguageCode:(id)code embeddingVersion:(id)version graphName:(id)name sandboxId:(id)id assetPaths:(id)paths assetDirPath:(id)path overrideSiriVocabSpans:(id)spans overrideMentions:(id)self0 overrideContextualSpans:(id)self1 serviceStateDirectory:(id)self2;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)setAssetDirPath:(id)path;
- (void)setAssetPaths:(id)paths;
- (void)setEmbeddingConfigs:(id)configs;
- (void)setServiceStateDirectory:(id)directory;
@end

@implementation CDMDynamicConfig

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  languageCode = self->_languageCode;
  graphName = self->_graphName;
  assetPaths = [(CDMNLAssetCollection *)self->_assetCollection assetPaths];
  v7 = [v3 stringWithFormat:@"[CDMDynamicConfig] - Language Code: %@, Graph Name: %@, Asset Paths: %@, Asset Dir Path: %@, Siri Vocabulary Sandbox ID: %@, Service State Directory: %@", languageCode, graphName, assetPaths, self->_assetDirPath, self->_siriVocabularySandboxId, self->_serviceStateDirectory];

  return v7;
}

- (void)setServiceStateDirectory:(id)directory
{
  v11 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315394;
    v8 = "[CDMDynamicConfig setServiceStateDirectory:]";
    v9 = 2112;
    v10 = directoryCopy;
    _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s Set serviceStateDirectory to be: %@.", &v7, 0x16u);
  }

  serviceStateDirectory = self->_serviceStateDirectory;
  self->_serviceStateDirectory = directoryCopy;
}

- (void)setEmbeddingConfigs:(id)configs
{
  v11 = *MEMORY[0x1E69E9840];
  configsCopy = configs;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315394;
    v8 = "[CDMDynamicConfig setEmbeddingConfigs:]";
    v9 = 2112;
    v10 = configsCopy;
    _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s Set embedding configs to be: %@.", &v7, 0x16u);
  }

  embeddingConfigs = self->_embeddingConfigs;
  self->_embeddingConfigs = configsCopy;
}

- (BOOL)isEqualWithoutSandboxId:(id)id
{
  idCopy = id;
  v6 = idCopy;
  if (idCopy == self)
  {
    v12 = 1;
    goto LABEL_44;
  }

  if (!idCopy)
  {
    goto LABEL_43;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_43;
  }

  languageCode = self->_languageCode;
  v8 = languageCode;
  if (!languageCode)
  {
    languageCode = [(CDMDynamicConfig *)v6 languageCode];
    if (!languageCode)
    {
      goto LABEL_12;
    }

    v3 = languageCode;
    v8 = self->_languageCode;
  }

  languageCode2 = [(CDMDynamicConfig *)v6 languageCode];
  v11 = [(NSString *)v8 isEqualToString:languageCode2];

  if (languageCode)
  {
    if (!v11)
    {
      goto LABEL_43;
    }
  }

  else
  {

    if (!v11)
    {
      goto LABEL_43;
    }
  }

LABEL_12:
  embeddingVersion = self->_embeddingVersion;
  v14 = embeddingVersion;
  if (!embeddingVersion)
  {
    embeddingVersion = [(CDMDynamicConfig *)v6 embeddingVersion];
    if (!embeddingVersion)
    {
      goto LABEL_19;
    }

    v3 = embeddingVersion;
    v14 = self->_embeddingVersion;
  }

  embeddingVersion2 = [(CDMDynamicConfig *)v6 embeddingVersion];
  v17 = [(NSString *)v14 isEqualToString:embeddingVersion2];

  if (embeddingVersion)
  {
    if (!v17)
    {
      goto LABEL_43;
    }
  }

  else
  {

    if (!v17)
    {
      goto LABEL_43;
    }
  }

LABEL_19:
  graphName = self->_graphName;
  v19 = graphName;
  if (!graphName)
  {
    graphName = [(CDMDynamicConfig *)v6 graphName];
    if (!graphName)
    {
      goto LABEL_26;
    }

    v3 = graphName;
    v19 = self->_graphName;
  }

  graphName2 = [(CDMDynamicConfig *)v6 graphName];
  v19 = [v19 isEqualToString:graphName2];

  if (graphName)
  {
    if (!v19)
    {
      goto LABEL_43;
    }
  }

  else
  {

    if ((v19 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

LABEL_26:
  assetPaths = [(CDMNLAssetCollection *)self->_assetCollection assetPaths];
  if (assetPaths || ([(CDMDynamicConfig *)v6 assetPaths], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    assetPaths2 = [(CDMNLAssetCollection *)self->_assetCollection assetPaths];
    assetPaths3 = [(CDMDynamicConfig *)v6 assetPaths];
    v25 = [assetPaths2 isEqualToDictionary:assetPaths3];

    if (assetPaths)
    {

      if (!v25)
      {
        goto LABEL_43;
      }
    }

    else
    {

      if ((v25 & 1) == 0)
      {
        goto LABEL_43;
      }
    }
  }

  assetDirPath = self->_assetDirPath;
  v27 = assetDirPath;
  if (assetDirPath)
  {
    goto LABEL_35;
  }

  assetDirPath = [(CDMDynamicConfig *)v6 assetDirPath];
  if (assetDirPath)
  {
    assetPaths = assetDirPath;
    v27 = self->_assetDirPath;
LABEL_35:
    assetDirPath2 = [(CDMDynamicConfig *)v6 assetDirPath];
    v30 = [(NSString *)v27 isEqualToString:assetDirPath2];

    if (assetDirPath)
    {
      if (v30)
      {
        goto LABEL_37;
      }
    }

    else
    {

      if (v30)
      {
        goto LABEL_37;
      }
    }

LABEL_43:
    v12 = 0;
    goto LABEL_44;
  }

LABEL_37:
  serviceStateDirectory = self->_serviceStateDirectory;
  v32 = serviceStateDirectory;
  if (!serviceStateDirectory)
  {
    assetPaths = [(CDMDynamicConfig *)v6 serviceStateDirectory];
    if (!assetPaths)
    {
      v12 = 1;
LABEL_46:

      goto LABEL_44;
    }

    v32 = self->_serviceStateDirectory;
  }

  serviceStateDirectory = [(CDMDynamicConfig *)v6 serviceStateDirectory];
  v12 = [(NSString *)v32 isEqualToString:serviceStateDirectory];

  if (!serviceStateDirectory)
  {
    goto LABEL_46;
  }

LABEL_44:

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  v20 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  if (![(CDMDynamicConfig *)self isEqualWithoutSandboxId:equalCopy])
  {
    v11 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  siriVocabularySandboxId = self->_siriVocabularySandboxId;
  v7 = siriVocabularySandboxId;
  if (siriVocabularySandboxId)
  {
LABEL_5:
    siriVocabularySandboxId = [equalCopy siriVocabularySandboxId];
    v10 = [(NSString *)v7 isEqualToString:siriVocabularySandboxId];

    if (siriVocabularySandboxId)
    {
      if (v10)
      {
        goto LABEL_7;
      }
    }

    else
    {

      if (v10)
      {
        goto LABEL_7;
      }
    }

    v11 = CDMOSLoggerForCategory(0);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
LABEL_14:
      v12 = 0;
      goto LABEL_15;
    }

LABEL_16:
    v14 = 136315650;
    v15 = "[CDMDynamicConfig isEqual:]";
    v16 = 2112;
    selfCopy2 = self;
    v18 = 2112;
    v19 = equalCopy;
    _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s Dynamic config: %@ doesn't equal to dynamic config: %@.", &v14, 0x20u);
    goto LABEL_14;
  }

  siriVocabularySandboxId2 = [equalCopy siriVocabularySandboxId];
  if (siriVocabularySandboxId2)
  {
    v3 = siriVocabularySandboxId2;
    v7 = self->_siriVocabularySandboxId;
    goto LABEL_5;
  }

LABEL_7:
  v11 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315650;
    v15 = "[CDMDynamicConfig isEqual:]";
    v16 = 2112;
    selfCopy2 = self;
    v18 = 2112;
    v19 = equalCopy;
    _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s Dynamic config: %@ equals to dynamic config: %@.", &v14, 0x20u);
  }

  v12 = 1;
LABEL_15:

  return v12;
}

- (unint64_t)hash
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(NSString *)self->_languageCode hash];
  v4 = [(NSString *)self->_embeddingVersion hash]+ 89 * v3;
  v5 = [(NSString *)self->_graphName hash]+ 89 * v4;
  v6 = [(NSString *)self->_siriVocabularySandboxId hash]+ 89 * v5 + 62742241;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  assetPaths = [(CDMNLAssetCollection *)self->_assetCollection assetPaths];
  allKeys = [assetPaths allKeys];

  v9 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 hash] + 89 * v6;
        assetPaths2 = [(CDMNLAssetCollection *)self->_assetCollection assetPaths];
        v16 = [assetPaths2 objectForKeyedSubscript:v13];
        v6 = v14 + [v16 hash];
      }

      v10 = [allKeys countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v17 = [(NSString *)self->_assetDirPath hash];
  return [(NSString *)self->_serviceStateDirectory hash]+ 89 * (v17 + 89 * v6);
}

- (void)setAssetDirPath:(id)path
{
  v19 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  assetDirPath = self->_assetDirPath;
  p_assetDirPath = &self->_assetDirPath;
  v6 = assetDirPath;
  if (assetDirPath && ![(NSString *)v6 isEqualToString:pathCopy])
  {
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *p_assetDirPath;
      v13 = 136315650;
      v14 = "[CDMDynamicConfig setAssetDirPath:]";
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = pathCopy;
      _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s [WARN]: Asset dir path: %@ is not nil. It will be overwritten by new asset dir path: %@.", &v13, 0x20u);
    }
  }

  objc_storeStrong(p_assetDirPath, path);
  v11 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = *p_assetDirPath;
    v13 = 136315394;
    v14 = "[CDMDynamicConfig setAssetDirPath:]";
    v15 = 2112;
    v16 = v12;
    _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s Set asset dir path to be: %@.", &v13, 0x16u);
  }
}

- (void)setAssetPaths:(id)paths
{
  v19 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  assetPaths = [(CDMNLAssetCollection *)self->_assetCollection assetPaths];
  if (assetPaths)
  {
    v6 = assetPaths;
    assetPaths2 = [(CDMNLAssetCollection *)self->_assetCollection assetPaths];
    v8 = [assetPaths2 isEqualToDictionary:pathsCopy];

    if ((v8 & 1) == 0)
    {
      v9 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        assetPaths3 = [(CDMNLAssetCollection *)self->_assetCollection assetPaths];
        v13 = 136315650;
        v14 = "[CDMDynamicConfig setAssetPaths:]";
        v15 = 2112;
        v16 = assetPaths3;
        v17 = 2112;
        v18 = pathsCopy;
        _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s [WARN]: Asset paths: %@ are not nil. They will be overwritten by new asset paths: %@.", &v13, 0x20u);
      }
    }
  }

  v11 = [CDMNLAssetCollection assetCollectionWithAssetPaths:pathsCopy withLanguageCode:self->_languageCode];
  assetCollection = self->_assetCollection;
  self->_assetCollection = v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    v5 = [(NSString *)self->_languageCode copy];
    v6 = v4[1];
    v4[1] = v5;

    v7 = [(NSString *)self->_embeddingVersion copy];
    v8 = v4[2];
    v4[2] = v7;

    v9 = [(NSString *)self->_graphName copy];
    v10 = v4[3];
    v4[3] = v9;

    v11 = [(NSString *)self->_siriVocabularySandboxId copy];
    v12 = v4[4];
    v4[4] = v11;

    assetPaths = [(CDMDynamicConfig *)self assetPaths];
    v14 = [assetPaths copy];
    [v4 setAssetPaths:v14];

    v15 = [(NSString *)self->_serviceStateDirectory copy];
    v16 = v4[11];
    v4[11] = v15;
  }

  return v4;
}

- (CDMDynamicConfig)initWithLanguageCode:(id)code embeddingVersion:(id)version graphName:(id)name sandboxId:(id)id assetPaths:(id)paths assetDirPath:(id)path overrideSiriVocabSpans:(id)spans overrideMentions:(id)self0 overrideContextualSpans:(id)self1 serviceStateDirectory:(id)self2
{
  v45 = *MEMORY[0x1E69E9840];
  codeCopy = code;
  versionCopy = version;
  nameCopy = name;
  obj = id;
  idCopy = id;
  pathsCopy = paths;
  pathCopy = path;
  v21 = idCopy;
  v38 = pathCopy;
  spansCopy = spans;
  mentionsCopy = mentions;
  contextualSpansCopy = contextualSpans;
  directoryCopy = directory;
  if (idCopy && spansCopy)
  {
    v23 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v42 = "[CDMDynamicConfig initWithLanguageCode:embeddingVersion:graphName:sandboxId:assetPaths:assetDirPath:overrideSiriVocabSpans:overrideMentions:overrideContextualSpans:serviceStateDirectory:]";
      _os_log_impl(&dword_1DC287000, v23, OS_LOG_TYPE_INFO, "%s [WARN]: Both sandboxId and overrideSiriVocabSpans are attempted to be set in the CDMDynamicConfig! Only one of these should be set. If both are set, sandboxId will be ignored and only overrideSiriVocabSpans will be used.", buf, 0xCu);
    }

    v21 = idCopy;
  }

  v40.receiver = self;
  v40.super_class = CDMDynamicConfig;
  v24 = [(CDMDynamicConfig *)&v40 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_languageCode, code);
    objc_storeStrong(&v25->_embeddingVersion, version);
    v26 = [CDMDynamicConfig resolveActiveGraph:nameCopy];
    graphName = v25->_graphName;
    v25->_graphName = v26;

    objc_storeStrong(&v25->_siriVocabularySandboxId, obj);
    [(CDMDynamicConfig *)v25 setAssetPaths:pathsCopy];
    [(CDMDynamicConfig *)v25 setAssetDirPath:v38];
    objc_storeStrong(&v25->_overrideSiriVocabSpans, spans);
    objc_storeStrong(&v25->_overrideMentions, mentions);
    objc_storeStrong(&v25->_overrideContextualSpans, contextualSpans);
    objc_storeStrong(&v25->_serviceStateDirectory, directory);
  }

  v28 = nameCopy;
  v29 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v42 = "[CDMDynamicConfig initWithLanguageCode:embeddingVersion:graphName:sandboxId:assetPaths:assetDirPath:overrideSiriVocabSpans:overrideMentions:overrideContextualSpans:serviceStateDirectory:]";
    v43 = 2112;
    v44 = v25;
    _os_log_debug_impl(&dword_1DC287000, v29, OS_LOG_TYPE_DEBUG, "%s Dynamic config: %@.", buf, 0x16u);
  }

  return v25;
}

+ (id)resolveActiveGraph:(id)graph
{
  v11 = *MEMORY[0x1E69E9840];
  graphCopy = graph;
  v4 = graphCopy;
  if (!graphCopy || ![(__CFString *)graphCopy length])
  {

    v5 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 136315394;
      v8 = "+[CDMDynamicConfig resolveActiveGraph:]";
      v9 = 2112;
      v10 = @"CDMNLUServiceGraph";
      _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s [WARN]: No value for active graph provided to CDMDynamicConfig, using the active service graph default of %@", &v7, 0x16u);
    }

    v4 = @"CDMNLUServiceGraph";
  }

  return v4;
}

@end