@interface CDMCATIProtoService
+ (id)getCDMServiceAssetConfig;
- (id)getChildServices;
- (id)handle:(id)handle;
- (id)handleRequestCommandTypeNames;
- (id)setup:(id)setup;
- (id)setupErrorResponse:(id)response serviceState:(int64_t)state;
@end

@implementation CDMCATIProtoService

- (id)handleRequestCommandTypeNames
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v3 = +[(CDMBaseCommand *)CDMCATIProtoRequestCommand];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [v2 setWithArray:v4];

  return v5;
}

+ (id)getCDMServiceAssetConfig
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(CDMServiceAssetConfig);
  v6 = @"cati_models";
  v7 = @"com.apple.siri.nl.cati";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [(CDMServiceAssetConfig *)v2 addCDMFactorToFoldersMapping:v4 forAssetSet:0];

  return v2;
}

- (id)getChildServices
{
  v2 = [(NSMutableArray *)self->_childServices copy];

  return v2;
}

- (id)handle:(id)handle
{
  v30 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v5 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v24 = "[CDMCATIProtoService handle:]";
    _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s Calling CATI ", buf, 0xCu);
  }

  if ([(CDMCATIProtoService *)self getServiceState]== 2)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    getChildServices = [(CDMCATIProtoService *)self getChildServices];
    v8 = [getChildServices countByEnumeratingWithState:&v19 objects:v29 count:16];
    if (v8)
    {
      v9 = *v20;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(getChildServices);
          }

          v11 = [*(*(&v19 + 1) + 8 * i) handle:handleCopy assetVersion:self->_assetVersion];
          if (v11)
          {
            [v6 addObject:v11];
          }
        }

        v8 = [getChildServices countByEnumeratingWithState:&v19 objects:v29 count:16];
      }

      while (v8);
    }

    v12 = objc_alloc_init(MEMORY[0x1E69D1280]);
    [v12 setHypotheses:v6];
    if (![v6 count])
    {
      v13 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v24 = "[CDMCATIProtoService handle:]";
        _os_log_debug_impl(&dword_1DC287000, v13, OS_LOG_TYPE_DEBUG, "%s No child service produced a hypothesis", buf, 0xCu);
      }
    }

    v14 = CDMLogContext;
    if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v24 = "[CDMCATIProtoService handle:]";
      v25 = 2112;
      v26 = @"cati";
      v27 = 2112;
      v28 = v12;
      _os_log_debug_impl(&dword_1DC287000, v14, OS_LOG_TYPE_DEBUG, "%s [insights-cdm-%@]:\nCATIResponse: %@", buf, 0x20u);
    }

    v15 = objc_alloc_init(CDMCATIProtoResponseCommand);
    [(CDMCATIProtoResponseCommand *)v15 setResponse:v12];
  }

  else
  {
    v16 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      getServiceState = [(CDMCATIProtoService *)self getServiceState];
      *buf = 136315394;
      v24 = "[CDMCATIProtoService handle:]";
      v25 = 2048;
      v26 = getServiceState;
      _os_log_impl(&dword_1DC287000, v16, OS_LOG_TYPE_INFO, "%s Not Ready! State: %tu", buf, 0x16u);
    }

    v15 = objc_alloc_init(CDMCATIProtoResponseCommand);
    v6 = [(CDMBaseService *)self createErrorWithCode:1 description:&stru_1F5800F50];
    [(CDMBaseCommand *)v15 setCmdError:v6];
  }

  return v15;
}

- (id)setupErrorResponse:(id)response serviceState:(int64_t)state
{
  v15 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  self->super.super._serviceState = state;
  createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
  v8 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v11 = 136315394;
    v12 = "[CDMCATIProtoService setupErrorResponse:serviceState:]";
    v13 = 2112;
    v14 = responseCopy;
    _os_log_error_impl(&dword_1DC287000, v8, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", &v11, 0x16u);
  }

  v9 = [(CDMBaseService *)self createErrorWithCode:1 description:responseCopy];
  [createSetupResponseCommand setCmdError:v9];

  return createSetupResponseCommand;
}

- (id)setup:(id)setup
{
  v80 = *MEMORY[0x1E69E9840];
  setupCopy = setup;
  v4 = CDMOSLoggerForCategory(0);
  selfCopy = self;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v75 = "[CDMCATIProtoService setup:]";
    _os_log_debug_impl(&dword_1DC287000, v4, OS_LOG_TYPE_DEBUG, "%s Begin CATI setup", buf, 0xCu);
  }

  dynamicConfig = [setupCopy dynamicConfig];
  v6 = [dynamicConfig getAssetForFactorName:@"com.apple.siri.nl.cati"];
  nlAsset = self->_nlAsset;
  self->_nlAsset = v6;

  dynamicConfig2 = [setupCopy dynamicConfig];
  v54 = [dynamicConfig2 getAssetForFactorName:@"com.apple.siri.nl.cati"];

  if (!v54 || ![(__CFString *)v54 getAssetType])
  {
    v22 = [(CDMCATIProtoService *)self setupErrorResponse:@"Not able to find/load CATI assets" serviceState:3];
    goto LABEL_68;
  }

  v9 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v75 = "[CDMCATIProtoService setup:]";
    v76 = 2112;
    v77 = v54;
    v78 = 2112;
    v79 = @"com.apple.siri.nl.cati";
    _os_log_debug_impl(&dword_1DC287000, v9, OS_LOG_TYPE_DEBUG, "%s Asset is: [%@] for factor: %@.", buf, 0x20u);
  }

  dynamicConfig3 = [setupCopy dynamicConfig];
  v11 = [dynamicConfig3 getAssetBundlePathForFactorName:@"com.apple.siri.nl.cati"];
  catiBundle = self->_catiBundle;
  self->_catiBundle = v11;

  getAssetVersion = [(__CFString *)v54 getAssetVersion];
  v13 = [getAssetVersion componentsSeparatedByString:@"."];
  firstObject = [v13 firstObject];
  self->_assetVersion = [firstObject integerValue];

  if (self->_catiBundle)
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    childServices = self->_childServices;
    self->_childServices = v15;

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    resourcePath = [(NSBundle *)self->_catiBundle resourcePath];
    v52 = [defaultManager contentsOfDirectoryAtPath:resourcePath error:0];

    v55 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (self->_assetVersion > 3103)
    {
      if (![v52 count])
      {
        v37 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v75 = "[CDMCATIProtoService setup:]";
          v76 = 2112;
          v77 = @"The cati_models directory is empty";
          _os_log_debug_impl(&dword_1DC287000, v37, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
        }

        createSetupResponseCommand = [(CDMCATIProtoService *)self setupErrorResponse:@"The cati_models directory is empty" serviceState:3];
        goto LABEL_62;
      }

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v19 = v52;
      v23 = [(CDMCATIChildService *)v19 countByEnumeratingWithState:&v67 objects:v73 count:16];
      if (v23)
      {
        v24 = *v68;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v68 != v24)
            {
              objc_enumerationMutation(v19);
            }

            v26 = *(*(&v67 + 1) + 8 * i);
            v27 = MEMORY[0x1E696AAE8];
            resourcePath2 = [(NSBundle *)selfCopy->_catiBundle resourcePath];
            v29 = [resourcePath2 stringByAppendingPathComponent:v26];
            v30 = [v27 bundleWithPath:v29];

            v66 = 0;
            defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
            resourcePath3 = [v30 resourcePath];
            LODWORD(v29) = [defaultManager2 fileExistsAtPath:resourcePath3 isDirectory:&v66];
            v33 = v66;

            if (v29 & v33)
            {
              v34 = [[CDMCATIChildService alloc] initWithAssetBundle:v30];
              v35 = [(CDMCATIChildService *)v34 setup:setupCopy assetVersion:selfCopy->_assetVersion];
              if (v35)
              {
                v36 = CDMOSLoggerForCategory(0);
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315394;
                  v75 = "[CDMCATIProtoService setup:]";
                  v76 = 2112;
                  v77 = v35;
                  _os_log_debug_impl(&dword_1DC287000, v36, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
                }

                [v55 addObject:v35];
              }

              else
              {
                [(NSMutableArray *)selfCopy->_childServices addObject:v34];
              }
            }

            else
            {
              v34 = CDMOSLoggerForCategory(0);
              if (os_log_type_enabled(&v34->super, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                v75 = "[CDMCATIProtoService setup:]";
                v76 = 2112;
                v77 = v26;
                _os_log_debug_impl(&dword_1DC287000, &v34->super, OS_LOG_TYPE_DEBUG, "%s %@ is not a valid directory", buf, 0x16u);
              }
            }
          }

          v23 = [(CDMCATIChildService *)v19 countByEnumeratingWithState:&v67 objects:v73 count:16];
        }

        while (v23);
      }
    }

    else
    {
      v19 = [[CDMCATIChildService alloc] initWithAssetBundle:self->_catiBundle];
      v20 = [(CDMCATIChildService *)v19 setup:setupCopy assetVersion:self->_assetVersion];
      if (v20)
      {
        v21 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v75 = "[CDMCATIProtoService setup:]";
          v76 = 2112;
          v77 = v20;
          _os_log_debug_impl(&dword_1DC287000, v21, OS_LOG_TYPE_DEBUG, "%s %@", buf, 0x16u);
        }

        v22 = [(CDMCATIProtoService *)self setupErrorResponse:v20 serviceState:3];

LABEL_65:
        goto LABEL_66;
      }

      [(NSMutableArray *)self->_childServices addObject:v19];
    }

    if (![(NSMutableArray *)selfCopy->_childServices count])
    {
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v45 = v55;
      v46 = [v45 countByEnumeratingWithState:&v62 objects:v72 count:16];
      if (v46)
      {
        v47 = *v63;
        v19 = @"No CATI child services were made, the following errors occurred:";
        do
        {
          v48 = 0;
          v49 = v19;
          do
          {
            if (*v63 != v47)
            {
              objc_enumerationMutation(v45);
            }

            v19 = [(CDMCATIChildService *)v49 stringByAppendingFormat:@" %@, ", *(*(&v62 + 1) + 8 * v48)];

            ++v48;
            v49 = v19;
          }

          while (v46 != v48);
          v46 = [v45 countByEnumeratingWithState:&v62 objects:v72 count:16];
        }

        while (v46);
      }

      else
      {
        v19 = @"No CATI child services were made, the following errors occurred:";
      }

      v22 = [(CDMCATIProtoService *)selfCopy setupErrorResponse:v19 serviceState:3];
      goto LABEL_65;
    }

    if ([v55 count])
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v39 = v55;
      v40 = [v39 countByEnumeratingWithState:&v58 objects:v71 count:16];
      if (v40)
      {
        v41 = *v59;
        v42 = @"Some CATI child services did not set up correctly, the following errors occurred:";
        do
        {
          v43 = 0;
          v44 = v42;
          do
          {
            if (*v59 != v41)
            {
              objc_enumerationMutation(v39);
            }

            v42 = [v44 stringByAppendingFormat:@" %@, ", *(*(&v58 + 1) + 8 * v43)];

            ++v43;
            v44 = v42;
          }

          while (v40 != v43);
          v40 = [v39 countByEnumeratingWithState:&v58 objects:v71 count:16];
        }

        while (v40);
      }

      else
      {
        v42 = @"Some CATI child services did not set up correctly, the following errors occurred:";
      }

      v50 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v75 = "[CDMCATIProtoService setup:]";
        v76 = 2112;
        v77 = v42;
        _os_log_impl(&dword_1DC287000, v50, OS_LOG_TYPE_INFO, "%s [WARN]: %@", buf, 0x16u);
      }
    }

    else
    {
      v42 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v75 = "[CDMCATIProtoService setup:]";
        _os_log_debug_impl(&dword_1DC287000, v42, OS_LOG_TYPE_DEBUG, "%s All child services set up successfully", buf, 0xCu);
      }
    }

    selfCopy->super.super._serviceState = 2;
    createSetupResponseCommand = [(CDMBaseService *)selfCopy createSetupResponseCommand];
LABEL_62:
    v22 = createSetupResponseCommand;
LABEL_66:

    goto LABEL_67;
  }

  v22 = [(CDMCATIProtoService *)self setupErrorResponse:@"Not able to find/load CATI model bundle directory" serviceState:3];
LABEL_67:

LABEL_68:

  return v22;
}

@end