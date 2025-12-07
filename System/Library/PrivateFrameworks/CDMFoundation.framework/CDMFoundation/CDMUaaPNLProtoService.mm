@interface CDMUaaPNLProtoService
+ (id)createErrorResponse:(id)response;
+ (id)detectForegroundAppForLocale:(id)locale;
+ (id)getCDMServiceAssetConfig;
+ (id)loadAppModelBundles:(id)bundles;
+ (id)loadModelBundle:(id)bundle error:(id *)error;
- (id)handle:(id)handle;
- (id)handleRequestCommandTypeNames;
- (id)setup:(id)setup;
- (void)loadOverrides:(id)overrides;
@end

@implementation CDMUaaPNLProtoService

- (id)handleRequestCommandTypeNames
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[(CDMBaseCommand *)CDMUaaPNLProtoRequestCommand];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [v2 setWithArray:v4];

  return v5;
}

+ (id)getCDMServiceAssetConfig
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(CDMServiceAssetConfig);
  v6 = @"uaap/ssu";
  v7 = @"com.apple.siri.nl.uaap.ssu";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [(CDMServiceAssetConfig *)v2 addCDMFactorToFoldersMapping:v4 forAssetSet:0];

  [(CDMServiceAssetConfig *)v2 setIsAssetRequiredForSetup:0];

  return v2;
}

- (void)loadOverrides:(id)overrides
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AC08];
  overridesCopy = overrides;
  defaultManager = [v4 defaultManager];
  v7 = [MEMORY[0x1E695DFF8] URLWithString:@"overrides.pb" relativeToURL:overridesCopy];

  if (v7 && ([v7 path], (v8 = objc_claimAutoreleasedReturnValue()) != 0) && (v9 = v8, objc_msgSend(v7, "path"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(defaultManager, "fileExistsAtPath:", v10), v10, v9, (v11 & 1) != 0))
  {
    v12 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v7];
    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:v12];
      v14 = objc_alloc_init(MEMORY[0x1E69D1340]);
      [v14 readFrom:v13];
      [(CDMUaaPNLProtoService *)self addOverride:v14];
      v15 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = 136315394;
        v17 = "[CDMUaaPNLProtoService loadOverrides:]";
        v18 = 2112;
        v19 = v7;
        _os_log_impl(&dword_1DC287000, v15, OS_LOG_TYPE_INFO, "%s UaaP added override from pb file: %@", &v16, 0x16u);
      }
    }
  }

  else
  {
    v12 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v16 = 136315138;
      v17 = "[CDMUaaPNLProtoService loadOverrides:]";
      _os_log_impl(&dword_1DC287000, v12, OS_LOG_TYPE_INFO, "%s UaaP component override file is missing", &v16, 0xCu);
    }
  }
}

- (id)handle:(id)handle
{
  v38 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v35 = "[CDMUaaPNLProtoService handle:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Calling UAAP Inference", buf, 0xCu);
  }

  if (self->super.super._serviceState == 2)
  {
    parserRequest = [handleCopy parserRequest];
    tokenChain = [parserRequest tokenChain];

    v8 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      stringValue = [tokenChain stringValue];
      *buf = 136315394;
      v35 = "[CDMUaaPNLProtoService handle:]";
      v36 = 2112;
      v37 = stringValue;
      _os_log_debug_impl(&dword_1DC287000, v8, OS_LOG_TYPE_DEBUG, "%s Handling UaaP request for utterance: %@", buf, 0x16u);
    }

    parserRequest2 = [handleCopy parserRequest];
    hasTokenChain = [parserRequest2 hasTokenChain];

    if (hasTokenChain)
    {
      v11 = [CDMUaaPNLModelBundleFilter selectModelBundlesForLoadedAppModelBundles:self->__appModelBundles];
      v12 = v11;
      if (v11 && [v11 count])
      {
        v13 = objc_alloc(MEMORY[0x1E69D14D8]);
        parserModel = [(UPModelBundle *)self->__coreModelBundle parserModel];
        v15 = [v13 initWithCoreModel:parserModel domainModelBundles:v12];

        parserRequest3 = [handleCopy parserRequest];
        v33 = 0;
        v17 = [v15 predictionFromProtobufQuery:parserRequest3 error:&v33];
        v18 = v33;

        if (v17)
        {
          if ([v17 hypothesesCount])
          {
            hypotheses = [v17 hypotheses];
            v20 = objc_alloc_init(MEMORY[0x1E69D1158]);
            requestId = [handleCopy requestId];
            [v20 setRequestId:requestId];

            [v20 setParses:hypotheses];
            v22 = [[CDMUaaPNLProtoResponseCommand alloc] initWithParserResponse:v17 nluResponse:v20];
          }

          else
          {
            v31 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              localizedDescription = [v18 localizedDescription];
              *buf = 136315394;
              v35 = "[CDMUaaPNLProtoService handle:]";
              v36 = 2112;
              v37 = localizedDescription;
              _os_log_impl(&dword_1DC287000, v31, OS_LOG_TYPE_INFO, "%s [WARN]: UaaP provided no candidate parses: %@", buf, 0x16u);
            }

            v22 = [CDMUaaPNLProtoService createErrorResponse:v18];
          }
        }

        else
        {
          v29 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v35 = "[CDMUaaPNLProtoService handle:]";
            _os_log_impl(&dword_1DC287000, v29, OS_LOG_TYPE_INFO, "%s [WARN]: Received no UaaP result", buf, 0xCu);
          }

          v22 = [CDMUaaPNLProtoService createErrorResponse:v18];
        }
      }

      else
      {
        v15 = objc_alloc_init(MEMORY[0x1E69D1158]);
        requestId2 = [handleCopy requestId];
        [v15 setRequestId:requestId2];

        v27 = objc_alloc_init(MEMORY[0x1E69D13E8]);
        v22 = [[CDMUaaPNLProtoResponseCommand alloc] initWithParserResponse:v27 nluResponse:v15];
      }
    }

    else
    {
      v25 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v35 = "[CDMUaaPNLProtoService handle:]";
        _os_log_impl(&dword_1DC287000, v25, OS_LOG_TYPE_INFO, "%s [WARN]: CDM tokens empty", buf, 0xCu);
      }

      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"UaaPNLProtobufServiceError" code:0 userInfo:0];
      v22 = [CDMUaaPNLProtoService createErrorResponse:v12];
    }
  }

  else
  {
    v23 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      serviceState = self->super.super._serviceState;
      *buf = 136315394;
      v35 = "[CDMUaaPNLProtoService handle:]";
      v36 = 2048;
      v37 = serviceState;
      _os_log_impl(&dword_1DC287000, v23, OS_LOG_TYPE_INFO, "%s Not Ready! State: %tu", buf, 0x16u);
    }

    tokenChain = [(CDMBaseService *)self createErrorWithCode:1 description:@"UaaP service is not ready"];
    v22 = [CDMUaaPNLProtoService createErrorResponse:tokenChain];
  }

  return v22;
}

- (id)setup:(id)setup
{
  v52 = *MEMORY[0x1E69E9840];
  setupCopy = setup;
  self->super.super._serviceState = 2;
  dynamicConfig = [setupCopy dynamicConfig];
  v6 = [dynamicConfig getAssetForFactorName:@"com.apple.siri.nl.uaap.ssu"];
  nlAsset = self->_nlAsset;
  self->_nlAsset = v6;

  dynamicConfig2 = [setupCopy dynamicConfig];
  v9 = [dynamicConfig2 getAssetBundlePathForFactorName:@"com.apple.siri.nl.uaap.ssu"];

  bundlePath = [v9 bundlePath];
  if ([objc_opt_class() isEnabled])
  {
    v11 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v49 = "[CDMUaaPNLProtoService setup:]";
      _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s Fetching core model configuration", buf, 0xCu);
    }

    dynamicConfig3 = [setupCopy dynamicConfig];
    languageCode = [dynamicConfig3 languageCode];
    v47 = 0;
    v14 = [CDMUaaPNLModelProvider getCoreModelConfigurationForLocale:languageCode bundlePath:bundlePath error:&v47];
    v15 = v47;

    v16 = CDMOSLoggerForCategory(0);
    v17 = v16;
    if (v14)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v49 = "[CDMUaaPNLProtoService setup:]";
        _os_log_debug_impl(&dword_1DC287000, v17, OS_LOG_TYPE_DEBUG, "%s Loading core model bundle", buf, 0xCu);
      }

      v46 = 0;
      v18 = [CDMUaaPNLProtoService loadModelBundle:v14 error:&v46];
      v19 = v46;
      coreModelBundle = self->__coreModelBundle;
      self->__coreModelBundle = v18;

      v21 = self->__coreModelBundle;
      v22 = CDMOSLoggerForCategory(0);
      v23 = v22;
      if (v21)
      {
        v43 = v19;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v49 = "[CDMUaaPNLProtoService setup:]";
          _os_log_debug_impl(&dword_1DC287000, v23, OS_LOG_TYPE_DEBUG, "%s Fetching app model configurations", buf, 0xCu);
        }

        v24 = objc_alloc_init(CDMUaaPNLModelProvider);
        dynamicConfig4 = [setupCopy dynamicConfig];
        languageCode2 = [dynamicConfig4 languageCode];
        v45 = 0;
        v27 = [(CDMUaaPNLModelProvider *)v24 getModelConfigsForLocale:languageCode2 error:&v45];
        v44 = v45;

        if (v27)
        {
          v28 = [v27 count];
          v29 = CDMOSLoggerForCategory(0);
          v30 = v29;
          if (v28)
          {
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315138;
              v49 = "[CDMUaaPNLProtoService setup:]";
              _os_log_debug_impl(&dword_1DC287000, &v30->super, OS_LOG_TYPE_DEBUG, "%s Loading app model bundles", buf, 0xCu);
            }

            v31 = [CDMUaaPNLProtoService loadAppModelBundles:v27];
            appModelBundles = self->__appModelBundles;
            self->__appModelBundles = v31;

            v33 = [(NSSet *)self->__appModelBundles count];
            v34 = CDMOSLoggerForCategory(0);
            v30 = v34;
            if (v33)
            {
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
              {
                v35 = [(NSSet *)self->__appModelBundles count];
                *buf = 136315394;
                v49 = "[CDMUaaPNLProtoService setup:]";
                v50 = 2048;
                v51 = v35;
                _os_log_debug_impl(&dword_1DC287000, &v30->super, OS_LOG_TYPE_DEBUG, "%s Loaded %lu app model bundles", buf, 0x16u);
              }
            }

            else if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v49 = "[CDMUaaPNLProtoService setup:]";
              _os_log_impl(&dword_1DC287000, &v30->super, OS_LOG_TYPE_INFO, "%s [WARN]: Failed to load any app model bundles (despite having configurations)", buf, 0xCu);
            }
          }

          else if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v49 = "[CDMUaaPNLProtoService setup:]";
            _os_log_impl(&dword_1DC287000, &v30->super, OS_LOG_TYPE_INFO, "%s [WARN]: getModelConfigsForLocale returned an unexpected empty set", buf, 0xCu);
          }
        }

        else
        {
          v39 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            localizedDescription = [v44 localizedDescription];
            *buf = 136315394;
            v49 = "[CDMUaaPNLProtoService setup:]";
            v50 = 2112;
            v51 = localizedDescription;
            _os_log_impl(&dword_1DC287000, v39, OS_LOG_TYPE_INFO, "%s [WARN]: Failed to fetch any app configuration (are any UaaP-enabled apps present?): %@", buf, 0x16u);
          }

          v41 = [MEMORY[0x1E695DFD8] set];
          v30 = self->__appModelBundles;
          self->__appModelBundles = v41;
        }

        createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];

        v19 = v43;
      }

      else
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          localizedDescription2 = [v19 localizedDescription];
          *buf = 136315394;
          v49 = "[CDMUaaPNLProtoService setup:]";
          v50 = 2112;
          v51 = localizedDescription2;
          _os_log_impl(&dword_1DC287000, v23, OS_LOG_TYPE_INFO, "%s [WARN]: Failed to load core model bundle: %@", buf, 0x16u);
        }

        createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
      }
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        localizedDescription3 = [v15 localizedDescription];
        *buf = 136315394;
        v49 = "[CDMUaaPNLProtoService setup:]";
        v50 = 2112;
        v51 = localizedDescription3;
        _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, "%s [WARN]: Failed to fetch core model configuration: %@", buf, 0x16u);
      }

      createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
    }
  }

  else
  {
    self->super.super._serviceState = 4;
    createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
  }

  return createSetupResponseCommand;
}

+ (id)loadModelBundle:(id)bundle error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69D14B8];
  bundleCopy = bundle;
  v7 = [[v5 alloc] initWithModelConfiguration:bundleCopy];

  if (v7)
  {
    v8 = [MEMORY[0x1E69D14D0] modelWithLoadedModelConfiguration:v7 error:error];
    if (v8)
    {
      hasCalibrationModel = [v7 hasCalibrationModel];
      v10 = CDMOSLoggerForCategory(0);
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
      if (hasCalibrationModel)
      {
        if (v11)
        {
          v20 = 136315138;
          v21 = "+[CDMUaaPNLProtoService loadModelBundle:error:]";
          _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s Found calibration model in configuration: loading it", &v20, 0xCu);
        }

        v12 = [MEMORY[0x1E69D14A8] modelWithLoadedModelConfiguration:v7 error:error];
        if (!v12)
        {
          v13 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v20 = 136315138;
            v21 = "+[CDMUaaPNLProtoService loadModelBundle:error:]";
            _os_log_impl(&dword_1DC287000, v13, OS_LOG_TYPE_INFO, "%s [WARN]: Failed to load calibration model", &v20, 0xCu);
          }

          if (error)
          {
            v14 = MEMORY[0x1E696ABC0];
            v15 = 2;
LABEL_19:
            [v14 errorWithDomain:@"UaaPNLProtobufServiceError" code:v15 userInfo:0];
            *error = v17 = 0;
LABEL_26:

            goto LABEL_27;
          }

          goto LABEL_25;
        }
      }

      else
      {
        if (v11)
        {
          v20 = 136315138;
          v21 = "+[CDMUaaPNLProtoService loadModelBundle:error:]";
          _os_log_debug_impl(&dword_1DC287000, v10, OS_LOG_TYPE_DEBUG, "%s Did not find calibration model in configuration: calibration will be disabled", &v20, 0xCu);
        }

        v12 = 0;
      }

      v17 = [objc_alloc(MEMORY[0x1E69D14C0]) initWithLoadedModelConfiguration:v7 parserModel:v8 calibrationModel:v12];

      goto LABEL_26;
    }

    v18 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v20 = 136315138;
      v21 = "+[CDMUaaPNLProtoService loadModelBundle:error:]";
      _os_log_impl(&dword_1DC287000, v18, OS_LOG_TYPE_INFO, "%s [WARN]: Failed to load parser model", &v20, 0xCu);
    }

    if (error)
    {
      v14 = MEMORY[0x1E696ABC0];
      v15 = 3;
      goto LABEL_19;
    }

LABEL_25:
    v17 = 0;
    goto LABEL_26;
  }

  v16 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v20 = 136315138;
    v21 = "+[CDMUaaPNLProtoService loadModelBundle:error:]";
    _os_log_impl(&dword_1DC287000, v16, OS_LOG_TYPE_INFO, "%s [WARN]: Failed to load model configuration from disk", &v20, 0xCu);
  }

  if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:@"UaaPNLProtobufServiceError" code:1 userInfo:0];
    *error = v17 = 0;
  }

  else
  {
    v17 = 0;
  }

LABEL_27:

  return v17;
}

+ (id)createErrorResponse:(id)response
{
  responseCopy = response;
  v4 = objc_alloc_init(CDMUaaPNLProtoResponseCommand);
  [(CDMBaseCommand *)v4 setCmdError:responseCopy];

  return v4;
}

+ (id)detectForegroundAppForLocale:(id)locale
{
  v20 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  v4 = objc_alloc_init(CDMUaaPNLModelProvider);
  v15 = 0;
  v5 = [(CDMUaaPNLModelProvider *)v4 getForegroundModelConfigForLocale:localeCopy error:&v15];

  v6 = v15;
  if (v5)
  {
    v14 = v6;
    v7 = [CDMUaaPNLProtoService loadModelBundle:v5 error:&v14];
    v8 = v14;

    if (v7)
    {
      v9 = v7;
      v10 = v9;
    }

    else
    {
      v11 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v13 = [v8 description];
        *buf = 136315394;
        v17 = "+[CDMUaaPNLProtoService detectForegroundAppForLocale:]";
        v18 = 2112;
        v19 = v13;
        _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s Failed to create foreground UaaP parser model %@", buf, 0x16u);
      }

      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    v9 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v17 = "+[CDMUaaPNLProtoService detectForegroundAppForLocale:]";
      _os_log_debug_impl(&dword_1DC287000, v9, OS_LOG_TYPE_DEBUG, "%s Failed to find foreground app model configuration", buf, 0xCu);
    }

    v10 = 0;
    v8 = v6;
  }

  return v10;
}

+ (id)loadAppModelBundles:(id)bundles
{
  v28 = *MEMORY[0x1E69E9840];
  bundlesCopy = bundles;
  v4 = [MEMORY[0x1E695DFA8] set];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = bundlesCopy;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v20;
    *&v7 = 136315394;
    v17 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v18 = 0;
        v12 = [CDMUaaPNLProtoService loadModelBundle:v11 error:&v18, v17];
        v13 = v18;
        if (v12)
        {
          [v4 addObject:v12];
        }

        else
        {
          v14 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            localizedDescription = [v13 localizedDescription];
            *buf = v17;
            v24 = "+[CDMUaaPNLProtoService loadAppModelBundles:]";
            v25 = 2112;
            v26 = localizedDescription;
            _os_log_impl(&dword_1DC287000, v14, OS_LOG_TYPE_INFO, "%s [WARN]: Error initializing model bundle: %@. Skipping.", buf, 0x16u);
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v8);
  }

  return v4;
}

@end