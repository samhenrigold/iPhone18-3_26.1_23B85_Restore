@interface CDMOverridesProtoService
+ (id)getCDMServiceAssetConfig;
- (id)buildOverridesTurnInputAndPreprocessing;
- (id)createSetupErrorCmd:(id)cmd;
- (id)handle:(id)handle;
- (id)handleRequestCommandTypeNames;
- (id)matchOverride:(id)override shouldAppend:(BOOL *)append;
- (id)setup:(id)setup;
- (id)setupFailedFor:(id)for;
- (id)setupSucceeded;
- (id)warmup:(id)warmup;
- (void)dealloc;
@end

@implementation CDMOverridesProtoService

- (id)handleRequestCommandTypeNames
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[(CDMBaseCommand *)CDMOverridesProtoRequestCommand];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [v2 setWithArray:v4];

  return v5;
}

+ (id)getCDMServiceAssetConfig
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(CDMServiceAssetConfig);
  v6 = @"nlv4_overrides";
  v7 = @"com.apple.siri.nl.overrides";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [(CDMServiceAssetConfig *)v2 addCDMFactorToFoldersMapping:v4 forAssetSet:1];

  return v2;
}

- (id)buildOverridesTurnInputAndPreprocessing
{
  v2 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US"];
  v3 = objc_alloc_init(MEMORY[0x1E69D1140]);
  [v3 setUtterance:@"HelloWorld"];
  [v3 setProbability:1.0];
  v4 = MEMORY[0x1E69D13F8];
  v5 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  v6 = [v4 convertFromUUID:v5];
  [v3 setIdA:v6];

  v7 = objc_alloc_init(MEMORY[0x1E69D13D0]);
  [v7 setValue:@"HelloWorld"];
  [v7 setBegin:0];
  [v7 setEnd:10];
  [v7 setIsSignificant:1];
  [v7 setIsWhitespace:0];
  [v7 setCleanValue:@"HelloWorld"];
  [v7 setTokenIndex:0];
  [v7 setNonWhitespaceTokenIndex:0];
  v8 = objc_alloc_init(MEMORY[0x1E69D13D8]);
  localeIdentifier = [v2 localeIdentifier];
  [v8 setLocale:localeIdentifier];

  [v8 setStringValue:@"HelloWorld"];
  v10 = [MEMORY[0x1E695DF70] arrayWithObjects:{v7, 0}];
  [v8 setTokens:v10];

  v11 = objc_alloc_init(MEMORY[0x1E69D1228]);
  v12 = [MEMORY[0x1E695DF70] arrayWithObjects:{v3, 0}];
  [v11 setAsrOutputs:v12];

  localeIdentifier2 = [v2 localeIdentifier];
  [v11 setLocale:localeIdentifier2];

  v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
  v15 = objc_alloc_init(MEMORY[0x1E69D1338]);
  [v15 setUtterance:@"HelloWorld"];
  [v15 setTokenChain:v8];
  [v15 setTurnInput:v11];
  [v14 addObject:v15];

  return v14;
}

- (id)setupSucceeded
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[CDMOverridesProtoService setupSucceeded]";
    _os_log_impl(&dword_1DC287000, v3, OS_LOG_TYPE_INFO, "%s Overrides service has been setup successfully!", &v6, 0xCu);
  }

  self->super.super._serviceState = 2;
  createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];

  return createSetupResponseCommand;
}

- (void)dealloc
{
  [MEMORY[0x1E69D0928] clearCache];
  v3.receiver = self;
  v3.super_class = CDMOverridesProtoService;
  [(CDMOverridesProtoService *)&v3 dealloc];
}

- (id)matchOverride:(id)override shouldAppend:(BOOL *)append
{
  overrideCopy = override;
  store = [(CDMOverridesProtoService *)self store];
  v8 = [store matchWithInputs:overrideCopy shouldAppend:append];

  return v8;
}

- (id)handle:(id)handle
{
  v74 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v4 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    buf = 136315138;
    v69 = "[CDMOverridesProtoService handle:]";
    _os_log_debug_impl(&dword_1DC287000, v4, OS_LOG_TYPE_DEBUG, "%s Service is handling command to match user request to database of overrides", &buf, 0xCu);
  }

  if (self->super.super._serviceState != 2)
  {
    request = [MEMORY[0x1E696AEC0] stringWithFormat:@"Service is not ready to handle commands! State: %tu", self->super.super._serviceState];
    v27 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      buf = 136315394;
      v69 = "[CDMOverridesProtoService handle:]";
      v70 = 2112;
      v71 = request;
      _os_log_error_impl(&dword_1DC287000, v27, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", &buf, 0x16u);
    }

    v22 = objc_alloc_init(CDMOverridesProtoResponseCommand);
    inputs = [(CDMBaseService *)self createErrorWithCode:1 description:request];
    [(CDMBaseCommand *)v22 setCmdError:inputs];
    goto LABEL_26;
  }

  request = [handleCopy request];
  inputs = [(__CFString *)request inputs];
  v7 = [inputs objectAtIndex:0];
  tokenChain = [v7 tokenChain];
  if (!tokenChain)
  {
    goto LABEL_22;
  }

  tokenChain2 = [v7 tokenChain];
  tokens = [tokenChain2 tokens];
  if (!tokens)
  {

    goto LABEL_22;
  }

  tokenChain3 = [v7 tokenChain];
  tokens2 = [tokenChain3 tokens];
  v13 = [tokens2 count] == 0;

  if (v13)
  {
LABEL_22:
    v28 = CDMLogContext;
    if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_INFO))
    {
      buf = 136315650;
      v69 = "[CDMOverridesProtoService handle:]";
      v70 = 2112;
      v71 = @"overrides";
      v72 = 2112;
      v73 = @"Request has no tokens; ignoring command.";
      _os_log_impl(&dword_1DC287000, v28, OS_LOG_TYPE_INFO, "%s [WARN]: [insights-cdm-%@]:\nOverrides skipped request: %@", &buf, 0x20u);
    }

    v22 = objc_alloc_init(CDMOverridesProtoResponseCommand);
    v29 = MEMORY[0x1E696ABC0];
    selfCopy = [(CDMBaseService *)self serviceName];
    v66 = *MEMORY[0x1E696A578];
    v67 = @"Request has no tokens; ignoring command.";
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
    v31 = [v29 errorWithDomain:selfCopy code:3 userInfo:v30];
    [(CDMBaseCommand *)v22 setCmdError:v31];

    goto LABEL_25;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  tokenChain4 = [v7 tokenChain];
  tokens3 = [tokenChain4 tokens];

  v16 = [tokens3 countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (!v16)
  {
    goto LABEL_15;
  }

  v17 = *v58;
  while (2)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v58 != v17)
      {
        objc_enumerationMutation(tokens3);
      }

      if (![*(*(&v57 + 1) + 8 * i) isWhitespace])
      {

        utterance = [v7 utterance];
        v34 = [utterance stringByReplacingOccurrencesOfString:@"’" withString:@"'"];
        [v7 setUtterance:v34];

        selfCopy = self;
        objc_sync_enter(selfCopy);
        tokenChain5 = [v7 tokenChain];
        if (tokenChain5)
        {
          tokenChain6 = [v7 tokenChain];
          locale = [tokenChain6 locale];
          if (locale)
          {
            tokenChain7 = [v7 tokenChain];
            locale2 = [tokenChain7 locale];
            v40 = [locale2 isEqual:&stru_1F5800F50];

            if (!v40)
            {
              inputs2 = [(__CFString *)request inputs];
              v56 = 0;
              v42 = [(CDMOverridesProtoService *)selfCopy matchOverride:inputs2 shouldAppend:&v56];
              if ([(__CFString *)v42 count])
              {
                v43 = v56;
                v44 = CDMLogContext;
                v45 = os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEBUG);
                if (v43 == 1)
                {
                  if (v45)
                  {
                    buf = 136315650;
                    v69 = "[CDMOverridesProtoService handle:]";
                    v70 = 2112;
                    v71 = @"overrides";
                    v72 = 2112;
                    v73 = v42;
                    _os_log_debug_impl(&dword_1DC287000, v44, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nMatched override(s) to append: %@", &buf, 0x20u);
                  }

                  v46 = [CDMOverridesProtoResponseCommand alloc];
                  v47 = [(CDMOverridesProtoResponseCommand *)v46 initWithParsesForReplacement:MEMORY[0x1E695E0F0] parsesForAppending:v42];
                }

                else
                {
                  if (v45)
                  {
                    buf = 136315650;
                    v69 = "[CDMOverridesProtoService handle:]";
                    v70 = 2112;
                    v71 = @"overrides";
                    v72 = 2112;
                    v73 = v42;
                    _os_log_debug_impl(&dword_1DC287000, v44, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nMatched override: %@", &buf, 0x20u);
                  }

                  v54 = [CDMOverridesProtoResponseCommand alloc];
                  v47 = [(CDMOverridesProtoResponseCommand *)v54 initWithParsesForReplacement:v42 parsesForAppending:MEMORY[0x1E695E0F0]];
                }
              }

              else
              {
                v52 = CDMLogContext;
                if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEBUG))
                {
                  buf = 136315394;
                  v69 = "[CDMOverridesProtoService handle:]";
                  v70 = 2112;
                  v71 = @"overrides";
                  _os_log_debug_impl(&dword_1DC287000, v52, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nNo overrides were matched to the request.", &buf, 0x16u);
                }

                v53 = [CDMOverridesProtoResponseCommand alloc];
                v47 = [(CDMOverridesProtoResponseCommand *)v53 initWithParsesForReplacement:MEMORY[0x1E695E0F0] parsesForAppending:MEMORY[0x1E695E0F0]];
              }

              v22 = v47;

LABEL_41:
              objc_sync_exit(selfCopy);
              goto LABEL_25;
            }
          }

          else
          {
          }
        }

        v48 = CDMLogContext;
        if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_ERROR))
        {
          buf = 136315650;
          v69 = "[CDMOverridesProtoService handle:]";
          v70 = 2112;
          v71 = @"overrides";
          v72 = 2112;
          v73 = @"Language code is not set; unable to perform override lookup.";
          _os_log_error_impl(&dword_1DC287000, v48, OS_LOG_TYPE_ERROR, "%s [ERR]: [insights-cdm-%@]:\nOverrides skipped request: %@", &buf, 0x20u);
        }

        v22 = objc_alloc_init(CDMOverridesProtoResponseCommand);
        v49 = MEMORY[0x1E696ABC0];
        inputs2 = [(CDMBaseService *)selfCopy serviceName];
        v61 = *MEMORY[0x1E696A578];
        v62 = @"Language code is not set; unable to perform override lookup.";
        v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
        v51 = [v49 errorWithDomain:inputs2 code:3 userInfo:v50];
        [(CDMBaseCommand *)v22 setCmdError:v51];

        goto LABEL_41;
      }
    }

    v16 = [tokens3 countByEnumeratingWithState:&v57 objects:v65 count:16];
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_15:

  utterance2 = [v7 utterance];
  v20 = [utterance2 stringByReplacingOccurrencesOfString:@"’" withString:@"'"];
  [v7 setUtterance:v20];

  v21 = CDMLogContext;
  if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_INFO))
  {
    buf = 136315650;
    v69 = "[CDMOverridesProtoService handle:]";
    v70 = 2112;
    v71 = @"overrides";
    v72 = 2112;
    v73 = @"All tokens found contained only whitespace; ignoring command.";
    _os_log_impl(&dword_1DC287000, v21, OS_LOG_TYPE_INFO, "%s [WARN]: [insights-cdm-%@]:\nOverrides skipped request: %@", &buf, 0x20u);
  }

  v22 = objc_alloc_init(CDMOverridesProtoResponseCommand);
  v23 = MEMORY[0x1E696ABC0];
  selfCopy = [(CDMBaseService *)self serviceName];
  v63 = *MEMORY[0x1E696A578];
  v64 = @"All tokens found contained only whitespace; ignoring command.";
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
  v26 = [v23 errorWithDomain:selfCopy code:3 userInfo:v25];
  [(CDMBaseCommand *)v22 setCmdError:v26];

LABEL_25:
LABEL_26:

  return v22;
}

- (id)setupFailedFor:(id)for
{
  v13 = *MEMORY[0x1E69E9840];
  forCopy = for;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v9 = 136315394;
    v10 = "[CDMOverridesProtoService setupFailedFor:]";
    v11 = 2112;
    v12 = forCopy;
    _os_log_error_impl(&dword_1DC287000, v5, OS_LOG_TYPE_ERROR, "%s [ERR]: Overrides service failed to setup: %@", &v9, 0x16u);
  }

  self->super.super._serviceState = 3;
  createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
  v7 = [(CDMBaseService *)self createErrorWithCode:0 description:forCopy];
  [createSetupResponseCommand setCmdError:v7];

  return createSetupResponseCommand;
}

- (id)warmup:(id)warmup
{
  v19 = *MEMORY[0x1E69E9840];
  warmupCopy = warmup;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v17 = 136315138;
    v18 = "[CDMOverridesProtoService warmup:]";
    _os_log_impl(&dword_1DC287000, v6, OS_LOG_TYPE_INFO, "%s Warming Up CDMOverridesProtoService", &v17, 0xCu);
  }

  store = [(CDMOverridesProtoService *)selfCopy store];
  dynamicConfig = [warmupCopy dynamicConfig];
  languageCode = [dynamicConfig languageCode];
  [store preheatWithLanguageCode:languageCode];

  buildOverridesTurnInputAndPreprocessing = [(CDMOverridesProtoService *)selfCopy buildOverridesTurnInputAndPreprocessing];
  LOBYTE(v17) = 0;
  v11 = [(CDMOverridesProtoService *)selfCopy matchOverride:buildOverridesTurnInputAndPreprocessing shouldAppend:&v17];

  objc_sync_exit(selfCopy);
  v12 = [CDMWarmupResponseCommand alloc];
  serviceState = [(CDMBaseService *)selfCopy serviceState];
  serviceName = [(CDMBaseService *)selfCopy serviceName];
  v15 = [(CDMWarmupResponseCommand *)v12 initWithServiceState:serviceState serviceName:serviceName];

  return v15;
}

- (id)setup:(id)setup
{
  v34 = *MEMORY[0x1E69E9840];
  setupCopy = setup;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v30 = 136315138;
    v31 = "[CDMOverridesProtoService setup:]";
    _os_log_debug_impl(&dword_1DC287000, v5, OS_LOG_TYPE_DEBUG, "%s Beginning setup of new instance of Overrides (Protobuf) service", &v30, 0xCu);
  }

  dynamicConfig = [setupCopy dynamicConfig];
  languageCode = [dynamicConfig languageCode];

  isEnabled = [objc_opt_class() isEnabled];
  v9 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = "NO";
    if (isEnabled)
    {
      v10 = "YES";
    }

    v30 = 136315394;
    v31 = "[CDMOverridesProtoService setup:]";
    v32 = 2080;
    v33 = v10;
    _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s Is the Overrides (Protobuf) service enabled? %s", &v30, 0x16u);
  }

  if ((isEnabled & 1) == 0)
  {
    v26 = [(CDMOverridesProtoService *)self setupFailedFor:@"Feature flag prescribes that Overrides (Protobuf) service remain disabled bailing."];;
    goto LABEL_27;
  }

  dynamicConfig2 = [setupCopy dynamicConfig];
  v12 = [dynamicConfig2 getAssetForFactorName:@"com.apple.siri.nl.overrides"];
  nlAsset = self->_nlAsset;
  self->_nlAsset = v12;

  dynamicConfig3 = [setupCopy dynamicConfig];
  v15 = [dynamicConfig3 getAssetBundlePathForFactorName:@"com.apple.siri.nl.overrides"];

  if (v15)
  {
    if (+[CDMFeatureFlags isTrieOverridesEnabled])
    {
      resourcePath = [v15 resourcePath];
      v17 = [resourcePath stringByAppendingPathComponent:@"trie_bundle"];

      v18 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v30 = 136315394;
        v31 = "[CDMOverridesProtoService setup:]";
        v32 = 2112;
        v33 = v17;
        _os_log_impl(&dword_1DC287000, v18, OS_LOG_TYPE_INFO, "%s Overrides Trie asset bundle is:%@", &v30, 0x16u);
      }

      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      if ([defaultManager fileExistsAtPath:v17])
      {
        selfCopy = self;
        objc_sync_enter(selfCopy);
        v21 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v30 = 136315138;
          v31 = "[CDMOverridesProtoService setup:]";
          _os_log_impl(&dword_1DC287000, v21, OS_LOG_TYPE_INFO, "%s Trie Overrides Enabled! There is global overrides trie asset folder", &v30, 0xCu);
        }

        v22 = [[SiriNLUOverrideProxy alloc] initWithUseTrie:1 useMemory:0];
        store = selfCopy->__store;
        selfCopy->__store = v22;

        if ([(SiriNLUOverrideProxy *)selfCopy->__store loadGlobalOverrideTrieStoreWithTrieFilePath:v17])
        {
          v24 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v30 = 136315138;
            v31 = "[CDMOverridesProtoService setup:]";
            _os_log_impl(&dword_1DC287000, v24, OS_LOG_TYPE_INFO, "%s Trie Overrides store successfully initialized", &v30, 0xCu);
          }

          setupSucceeded = [(CDMOverridesProtoService *)selfCopy setupSucceeded];
        }

        else
        {
          setupSucceeded = [(CDMOverridesProtoService *)selfCopy setupFailedFor:@"Trie Overrides store unable to initialize"];
        }

        v26 = setupSucceeded;
        objc_sync_exit(selfCopy);

        goto LABEL_26;
      }

      v28 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v30 = 136315138;
        v31 = "[CDMOverridesProtoService setup:]";
        _os_log_impl(&dword_1DC287000, v28, OS_LOG_TYPE_INFO, "%s Trie Overrides Enabled! But there is no trie asset folder. Fallback to load protobuf overrides assets.", &v30, 0xCu);
      }
    }

    setupSucceeded2 = [(CDMOverridesProtoService *)self setupSucceeded];
  }

  else
  {
    setupSucceeded2 = [(CDMOverridesProtoService *)self setupFailedFor:@"Unable to locate NSBundle of requisite file assets to handle requests"];
  }

  v26 = setupSucceeded2;
LABEL_26:

LABEL_27:

  return v26;
}

- (id)createSetupErrorCmd:(id)cmd
{
  self->super.super._serviceState = 4;
  cmdCopy = cmd;
  createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
  v6 = [(CDMBaseService *)self createErrorWithCode:0 description:cmdCopy];

  [createSetupResponseCommand setCmdError:v6];

  return createSetupResponseCommand;
}

@end