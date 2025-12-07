@interface CDMMDSUaaPNLService
+ (id)getCDMServiceAssetConfig;
- (id)setup:(id)setup;
@end

@implementation CDMMDSUaaPNLService

+ (id)getCDMServiceAssetConfig
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(CDMServiceAssetConfig);
  v6 = @"uaap/mds";
  v7 = @"com.apple.siri.nl.uaap.mds";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [(CDMServiceAssetConfig *)v2 addCDMFactorToFoldersMapping:v4 forAssetSet:0];

  [(CDMServiceAssetConfig *)v2 setIsAssetRequiredForSetup:0];

  return v2;
}

- (id)setup:(id)setup
{
  v43 = *MEMORY[0x1E69E9840];
  setupCopy = setup;
  self->super.super.super._serviceState = 2;
  if ([objc_opt_class() isEnabled])
  {
    dynamicConfig = [setupCopy dynamicConfig];
    v6 = [dynamicConfig getAssetForFactorName:@"com.apple.siri.nl.uaap.mds"];
    nlAsset = self->_nlAsset;
    self->_nlAsset = v6;

    dynamicConfig2 = [setupCopy dynamicConfig];
    v9 = [dynamicConfig2 getAssetBundlePathForFactorName:@"com.apple.siri.nl.uaap.mds"];

    v10 = CDMOSLoggerForCategory(0);
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v40 = "[CDMMDSUaaPNLService setup:]";
        _os_log_debug_impl(&dword_1DC287000, v11, OS_LOG_TYPE_DEBUG, "%s Fetching app model configurations", buf, 0xCu);
      }

      bundleURL = [v9 bundleURL];
      v13 = [bundleURL URLByAppendingPathComponent:@"customLU" isDirectory:1];

      v38 = 0;
      v14 = [MEMORY[0x1E69D14C8] configurationFromDirectoryUrl:v13 error:&v38];
      v15 = v38;
      v16 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v14, 0}];
      v17 = v16;
      if (v16 && [v16 count])
      {
        v18 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v40 = "[CDMMDSUaaPNLService setup:]";
          _os_log_debug_impl(&dword_1DC287000, v18, OS_LOG_TYPE_DEBUG, "%s Loading MDS model bundle", buf, 0xCu);
        }

        v19 = [CDMUaaPNLProtoService loadAppModelBundles:v17];
        appModelBundles = self->super.__appModelBundles;
        self->super.__appModelBundles = v19;

        v21 = [(NSSet *)self->super.__appModelBundles count];
        v22 = CDMOSLoggerForCategory(0);
        v23 = v22;
        if (v21)
        {
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v24 = [(NSSet *)self->super.__appModelBundles count];
            *buf = 136315394;
            v40 = "[CDMMDSUaaPNLService setup:]";
            v41 = 2048;
            v42 = v24;
            _os_log_debug_impl(&dword_1DC287000, v23, OS_LOG_TYPE_DEBUG, "%s Loaded %lu app model bundles", buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v40 = "[CDMMDSUaaPNLService setup:]";
          _os_log_impl(&dword_1DC287000, v23, OS_LOG_TYPE_INFO, "%s [WARN]: Failed to load MDS model bundle (despite having configurations)", buf, 0xCu);
        }

        createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
      }

      else
      {
        v37 = v14;
        v26 = v13;
        v27 = MEMORY[0x1E696AEC0];
        v28 = v15;
        localizedDescription = [v15 localizedDescription];
        v30 = [v27 stringWithFormat:@"Failed to find MDS configuration: %@", localizedDescription];

        v31 = [MEMORY[0x1E695DFD8] set];
        v32 = self->super.__appModelBundles;
        self->super.__appModelBundles = v31;

        self->super.super.super._serviceState = 4;
        createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
        v33 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v40 = "[CDMMDSUaaPNLService setup:]";
          v41 = 2112;
          v42 = v30;
          _os_log_error_impl(&dword_1DC287000, v33, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", buf, 0x16u);
        }

        v34 = [(CDMBaseService *)self createErrorWithCode:0 description:v30];
        [createSetupResponseCommand setCmdError:v34];

        v15 = v28;
        v13 = v26;
        v14 = v37;
      }
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v40 = "[CDMMDSUaaPNLService setup:]";
        v41 = 2112;
        v42 = @"Failed to find an asset for service";
        _os_log_impl(&dword_1DC287000, v11, OS_LOG_TYPE_INFO, "%s [WARN]: %@", buf, 0x16u);
      }

      self->super.super.super._serviceState = 4;
      createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
      v35 = [(CDMBaseService *)self createErrorWithCode:0 description:@"Failed to find an asset for service"];
      [createSetupResponseCommand setCmdError:v35];
    }
  }

  else
  {
    self->super.super.super._serviceState = 4;
    createSetupResponseCommand = [(CDMBaseService *)self createSetupResponseCommand];
  }

  return createSetupResponseCommand;
}

@end