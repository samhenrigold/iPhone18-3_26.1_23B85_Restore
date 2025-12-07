@interface CDMMentionResolverService
+ (id)getCDMServiceAssetConfig;
- (id)getPredictor:(id)predictor forLocale:(id)locale status:(id *)status;
- (id)handle:(id)handle;
- (id)handleRequestCommandTypeNames;
- (id)predictWithInput:(id)input forLocale:(id)locale status:(id *)status;
- (id)setup:(id)setup;
@end

@implementation CDMMentionResolverService

- (id)handleRequestCommandTypeNames
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[(CDMBaseCommand *)CDMMentionResolverRequestCommand];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [v2 setWithArray:v4];

  return v5;
}

+ (id)getCDMServiceAssetConfig
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(CDMServiceAssetConfig);
  v6 = @"marrs/mr";
  v7 = @"com.apple.siri.nl.marrs.mr";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [(CDMServiceAssetConfig *)v2 addCDMFactorToFoldersMapping:v4 forAssetSet:0];

  [(CDMServiceAssetConfig *)v2 setIsAssetRequiredForSetup:0];

  return v2;
}

- (id)predictWithInput:(id)input forLocale:(id)locale status:(id *)status
{
  inputCopy = input;
  v8 = [(MRRMultimodalMentionResolver *)self->_mentionResolver resolveMentionsInUtterance:inputCopy status:status];
  tokenChain = [inputCopy tokenChain];
  v10 = [CDMMentionResolverServiceUtils includeWhitespaceInIndices:v8 tokenchain:tokenChain];

  return v10;
}

- (id)getPredictor:(id)predictor forLocale:(id)locale status:(id *)status
{
  predictorCopy = predictor;
  localeCopy = locale;
  v9 = [objc_alloc(MEMORY[0x1E69AE148]) initWithAssets:predictorCopy forLocale:localeCopy status:status];

  return v9;
}

- (id)handle:(id)handle
{
  v23 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v18 = "[CDMMentionResolverService handle:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Calling Mention Resolver", buf, 0xCu);
  }

  if (handleCopy && self->_mentionResolver && ([handleCopy mrRequest], v6 = objc_claimAutoreleasedReturnValue(), v7 = v6 == 0, v6, !v7))
  {
    v8 = CDMLogContext;
    if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v18 = "[CDMMentionResolverService handle:]";
      v19 = 2112;
      v20 = @"mentionresolver";
      v21 = 2112;
      v22 = handleCopy;
      _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nMENTIONRESOLVERRequest: %@", buf, 0x20u);
    }

    if (self->_overrideMentionsForReplay)
    {
      v9 = [[CDMMentionResolverResponseCommand alloc] initWithMentions:self->_overrideMentionsForReplay];
      goto LABEL_14;
    }

    if (+[CDMFeatureFlags isLogNluEnabled])
    {
      mrRequest = [handleCopy mrRequest];
      [CDMMentionResolverServiceUtils logMRRequestToFile:mrRequest];
    }

    mrRequest2 = [handleCopy mrRequest];
    v16 = 0;
    v14 = [(CDMMentionResolverService *)self predictWithInput:mrRequest2 forLocale:0 status:&v16];
    v10 = v16;

    if (+[CDMFeatureFlags isLogNluEnabled])
    {
      [CDMMentionResolverServiceUtils logMRResponseToFile:v14];
    }

    v9 = [[CDMMentionResolverResponseCommand alloc] initWithResponse:v14];
    [(CDMBaseCommand *)v9 setCmdError:v10];
    v15 = CDMLogContext;
    if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v18 = "[CDMMentionResolverService handle:]";
      v19 = 2112;
      v20 = @"mentionresolver";
      v21 = 2112;
      v22 = v14;
      _os_log_debug_impl(&dword_1DC287000, v15, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nMENTIONRESOLVERResponse: %@", buf, 0x20u);
    }
  }

  else
  {
    v10 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v18 = "[CDMMentionResolverService handle:]";
      _os_log_error_impl(&dword_1DC287000, v10, OS_LOG_TYPE_ERROR, "%s [ERR]: Mention Resolver: Either Request and/or Predictor is nil", buf, 0xCu);
    }

    v9 = 0;
  }

LABEL_14:

  return v9;
}

- (id)setup:(id)setup
{
  v31 = *MEMORY[0x1E69E9840];
  setupCopy = setup;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v30 = "[CDMMentionResolverService setup:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Setting up Mention Resolver service", buf, 0xCu);
  }

  v6 = objc_alloc_init(CDMSetupResponseCommand);
  dynamicConfig = [setupCopy dynamicConfig];
  v8 = [dynamicConfig getAssetForFactorName:@"com.apple.siri.nl.marrs.mr"];
  nlAsset = self->_nlAsset;
  self->_nlAsset = v8;

  dynamicConfig2 = [setupCopy dynamicConfig];
  v11 = [dynamicConfig2 getAssetBundlePathForFactorName:@"com.apple.siri.nl.marrs.mr"];

  if (v11)
  {
    resourcePath = [v11 resourcePath];
    dynamicConfig3 = [setupCopy dynamicConfig];
    languageCode = [dynamicConfig3 languageCode];
    v28 = 0;
    v15 = [(CDMMentionResolverService *)self getPredictor:resourcePath forLocale:languageCode status:&v28];
    v16 = v28;
    mentionResolver = self->_mentionResolver;
    self->_mentionResolver = v15;

    if (v16)
    {
      localizedDescription = [v16 localizedDescription];
      v19 = [(CDMBaseService *)self createErrorWithCode:1 description:localizedDescription];
      [(CDMBaseCommand *)v6 setCmdError:v19];

      self->super.super._serviceState = 4;
      createSetupResponseCommand = v6;
      goto LABEL_12;
    }
  }

  else
  {
    v21 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v30 = "[CDMMentionResolverService setup:]";
      _os_log_impl(&dword_1DC287000, v21, OS_LOG_TYPE_INFO, "%s Mention Resolver model bundle not found", buf, 0xCu);
    }
  }

  dynamicConfig4 = [setupCopy dynamicConfig];
  overrideMentions = [dynamicConfig4 overrideMentions];
  overrideMentionsForReplay = self->_overrideMentionsForReplay;
  self->_overrideMentionsForReplay = overrideMentions;

  self->super.super._serviceState = 2;
  v25 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v30 = "[CDMMentionResolverService setup:]";
    _os_log_impl(&dword_1DC287000, v25, OS_LOG_TYPE_INFO, "%s Mention Resolver loaded", buf, 0xCu);
  }

  v16 = 0;
  createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
LABEL_12:
  v26 = createSetupResponseCommand;

  return v26;
}

@end