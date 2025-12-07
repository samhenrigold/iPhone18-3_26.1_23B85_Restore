@interface CSUAFAssetManager
+ (id)sharedInstance;
- (void)_getInstalledAssetofType:(unint64_t)type forLocale:(id)locale completion:(id)completion;
- (void)dealloc;
- (void)getInstalledAssetofType:(unint64_t)type forLocale:(id)locale completion:(id)completion;
- (void)mapAssetToExclaveKit:(id)kit completion:(id)completion;
- (void)retryMappingAssetToExclaveKit:(id)kit completion:(id)completion;
@end

@implementation CSUAFAssetManager

+ (id)sharedInstance
{
  if (+[CSUtils supportsUnifiedAssetFramework]&& sharedInstance_onceToken_6812 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_6812, &__block_literal_global_6813);
  }

  v2 = sharedInstance_sharedManager_6814;

  return v2;
}

uint64_t __35__CSUAFAssetManager_sharedInstance__block_invoke()
{
  v0 = [(CSUAFAssetManagerBase *)[CSUAFAssetManager alloc] initWithForceSetIsExclave:+[CSUtils exclaveManagerProxy:"isExclaveHardware"], 0];
  v1 = sharedInstance_sharedManager_6814;
  sharedInstance_sharedManager_6814 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)retryMappingAssetToExclaveKit:(id)kit completion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  kitCopy = kit;
  completionCopy = completion;
  v8 = self->_assetSet;
  v9 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[CSUAFAssetManager retryMappingAssetToExclaveKit:completion:]";
    v12 = 2112;
    v13 = @"com.apple.siri.sp.invocation";
    _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s Retrying to mapping asset %@ to ExclaveKit", &v10, 0x16u);
  }

  [(CSUAFAssetManagerBase *)self retryMappingAssetToExclaveKit:kitCopy assetName:@"com.apple.siri.sp.invocation" assetSet:v8 completion:completionCopy];
}

- (void)mapAssetToExclaveKit:(id)kit completion:(id)completion
{
  kitCopy = kit;
  completionCopy = completion;
  queue = [(CSUAFAssetManagerBase *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__CSUAFAssetManager_mapAssetToExclaveKit_completion___block_invoke;
  block[3] = &unk_1E865C678;
  block[4] = self;
  v12 = kitCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = kitCopy;
  dispatch_async(queue, block);
}

void __53__CSUAFAssetManager_mapAssetToExclaveKit_completion___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = @"com.apple.siri.sp.invocation";
  v3 = *(*(a1 + 32) + 64);
  v4 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315394;
    v18 = "[CSUAFAssetManager mapAssetToExclaveKit:completion:]_block_invoke";
    v19 = 2112;
    v20 = @"com.apple.siri.sp.invocation";
    _os_log_impl(&dword_1DDA4B000, v4, OS_LOG_TYPE_DEFAULT, "%s Mapping asset %@ to ExclaveKit", &v17, 0x16u);
  }

  if (!*(a1 + 40))
  {
    v10 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315138;
      v18 = "[CSUAFAssetManager mapAssetToExclaveKit:completion:]_block_invoke";
      _os_log_impl(&dword_1DDA4B000, v10, OS_LOG_TYPE_DEFAULT, "%s Asset is nil. Not starting Secure Mobile Asset Loader Service", &v17, 0xCu);
    }

    v7 = MEMORY[0x1E696ABC0];
    v8 = &unk_1F5916608;
    goto LABEL_22;
  }

  if ([*(a1 + 32) isExclaveHardware])
  {
    v5 = *(a1 + 32);
    if (!*(v5 + 72))
    {
      if ([@"com.apple.siri.sp.invocation" isEqualToString:@"com.apple.siri.sp.adblocker"])
      {
        v6 = CSLogCategoryAsset;
        if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 136315138;
          v18 = "[CSUAFAssetManager mapAssetToExclaveKit:completion:]_block_invoke";
          _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Asset is nil. Not starting Adblocker Secure Mobile Asset Loader Service", &v17, 0xCu);
        }

        v7 = MEMORY[0x1E696ABC0];
        v8 = &unk_1F5916658;
        v9 = 2153;
        goto LABEL_23;
      }

      v5 = *(a1 + 32);
    }

    v12 = *(v5 + 64);
    if (v12)
    {
      v13 = [v12 assetNamed:@"com.apple.siri.sp.invocation"];

      if (v13)
      {
        goto LABEL_26;
      }
    }

    v14 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315138;
      v18 = "[CSUAFAssetManager mapAssetToExclaveKit:completion:]_block_invoke";
      _os_log_impl(&dword_1DDA4B000, v14, OS_LOG_TYPE_DEFAULT, "%s Asset is nil. Not starting Secure Mobile Asset Loader Service", &v17, 0xCu);
    }

    v7 = MEMORY[0x1E696ABC0];
    v8 = &unk_1F5916680;
LABEL_22:
    v9 = 2151;
    goto LABEL_23;
  }

  v11 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = "[CSUAFAssetManager mapAssetToExclaveKit:completion:]_block_invoke";
    _os_log_impl(&dword_1DDA4B000, v11, OS_LOG_TYPE_DEFAULT, "%s The hardware does not support secure exclave. Not starting Secure Mobile Asset Loader Service", &v17, 0xCu);
  }

  v7 = MEMORY[0x1E696ABC0];
  v8 = &unk_1F5916630;
  v9 = 2155;
LABEL_23:
  v15 = [v7 errorWithDomain:@"com.apple.corespeech" code:v9 userInfo:v8];
  if (!v15)
  {
LABEL_26:
    [*(a1 + 32) mapAssetToExclaveKit:*(a1 + 40) assetName:@"com.apple.siri.sp.invocation" assetSet:v3 completion:*(a1 + 48)];
    v15 = 0;
    goto LABEL_27;
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    (*(v16 + 16))(v16, v15, 0);
  }

LABEL_27:
}

- (void)_getInstalledAssetofType:(unint64_t)type forLocale:(id)locale completion:(id)completion
{
  v77[1] = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  completionCopy = completion;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __67__CSUAFAssetManager__getInstalledAssetofType_forLocale_completion___block_invoke;
  v56[3] = &unk_1E865AEC8;
  v10 = completionCopy;
  v57 = v10;
  v11 = MEMORY[0x1E12BA300](v56);
  if (type > 6 || ((1 << type) & 0x51) == 0)
  {
    type = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported assetType: %lu", type];
    v19 = MEMORY[0x1E696ABC0];
    v76 = @"reason";
    v77[0] = type;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:&v76 count:1];
    v17 = v19;
    v18 = 2152;
    goto LABEL_8;
  }

  v12 = +[CSFPreferences sharedPreferences];
  bypassTrialAssets = [v12 bypassTrialAssets];

  if (bypassTrialAssets)
  {
    type = [MEMORY[0x1E696AEC0] stringWithFormat:@"UAF honoring Trial asset bypass is set"];
    v15 = MEMORY[0x1E696ABC0];
    v74 = @"reason";
    v75 = type;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
    v17 = v15;
    v18 = 1601;
LABEL_8:
    v20 = [v17 errorWithDomain:@"com.apple.corespeech" code:v18 userInfo:v16];

    (v11)[2](v11, 0, v20);
    goto LABEL_29;
  }

  if (type == 4)
  {
    type = @"generic";
  }

  else
  {
    type = [localeCopy stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
  }

  mEMORY[0x1E69DEEE8] = [MEMORY[0x1E69DEEE8] sharedManager];
  v72 = @"attention.language";
  v73 = type;
  v22 = 0x1E695D000uLL;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
  v20 = [mEMORY[0x1E69DEEE8] retrieveAssetSet:@"com.apple.siri.understanding" usages:v23];

  if (type == 4)
  {
    objc_storeStrong(&self->_adBlockerAssetSet, v20);
    v24 = kSiriAttAssetAdBlockerAssetName;
  }

  else
  {
    objc_storeStrong(&self->_assetSet, v20);
    v24 = kSiriAttAssetMitigationAssetName;
    if (!type)
    {
      v24 = kSiriAttAssetInvocationAssetName;
    }
  }

  v55 = localeCopy;
  v25 = *v24;
  v26 = [v20 assetNamed:v25];
  v27 = v26;
  if (v26 && ([v26 metadata], (v28 = objc_claimAutoreleasedReturnValue()) != 0) && (v29 = v28, objc_msgSend(v27, "metadata"), v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "objectForKeyedSubscript:", @"locale"), v31 = objc_claimAutoreleasedReturnValue(), v31, v30, v22 = 0x1E695D000, v29, v31))
  {
    metadata = [v27 metadata];
    v33 = [metadata objectForKeyedSubscript:@"locale"];
    v34 = [v33 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

    if (([(__CFString *)type isEqualToString:v34]& 1) != 0)
    {
      location = [v27 location];
      path = [location path];

      metadata2 = [v27 metadata];
      v52 = [metadata2 objectForKeyedSubscript:*MEMORY[0x1E69DEF50]];

      metadata3 = [v27 metadata];
      v51 = [metadata3 objectForKeyedSubscript:*MEMORY[0x1E69DEF30]];

      if (path && v52)
      {
        log = CSLogCategoryAsset;
        localeCopy = v55;
        if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v59 = "[CSUAFAssetManager _getInstalledAssetofType:forLocale:completion:]";
          v60 = 2048;
          typeCopy = type;
          v62 = 2112;
          v63 = v55;
          v64 = 2112;
          v65 = v52;
          _os_log_impl(&dword_1DDA4B000, log, OS_LOG_TYPE_DEFAULT, "%s Got UAF Asset for assetType: %lu for locale: %@ version: %@", buf, 0x2Au);
        }

        typeCopy2 = type;
        v40 = v52;
        loga = [CSAsset assetForAssetType:typeCopy2 resourcePath:path configVersion:v52 assetProvider:2 assetVariant:0 identity:0 assistantLanguageCode:0 uafAssetVersion:v51];
        (v11[2])(v11);
      }

      else
      {
        v45 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UAF asset path || version missing: %@", v25];
        v46 = MEMORY[0x1E696ABC0];
        v66 = @"reason";
        v67 = v45;
        loga = v45;
        v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
        v48 = [v46 errorWithDomain:@"com.apple.corespeech" code:2151 userInfo:v47];

        (v11)[2](v11, 0, v48);
        localeCopy = v55;
        v40 = v52;
      }
    }

    else
    {
      localeCopy = v55;
      path = [MEMORY[0x1E696AEC0] stringWithFormat:@"Mismatch between Current locale: %@ & UAFAsset locale: %@", v55, v34];
      v53 = MEMORY[0x1E696ABC0];
      v68 = @"reason";
      v69 = path;
      v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
      [v53 errorWithDomain:@"com.apple.corespeech" code:1601 userInfo:v43];
      v44 = v54 = v25;

      v40 = v44;
      v25 = v54;
      (v11)[2](v11, 0, v40);
    }
  }

  else
  {
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to get UAF asset: %@", v25];
    v41 = MEMORY[0x1E696ABC0];
    v70 = @"reason";
    v71 = v34;
    v42 = [*(v22 + 3872) dictionaryWithObjects:&v71 forKeys:&v70 count:1];
    path = [v41 errorWithDomain:@"com.apple.corespeech" code:2151 userInfo:v42];

    (v11)[2](v11, 0, path);
    localeCopy = v55;
  }

LABEL_29:
}

void __67__CSUAFAssetManager__getInstalledAssetofType_forLocale_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = CSLogCategoryAsset;
    if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_ERROR))
    {
      v9 = v7;
      v10 = [v6 localizedDescription];
      v11 = [v6 userInfo];
      v12 = 136315650;
      v13 = "[CSUAFAssetManager _getInstalledAssetofType:forLocale:completion:]_block_invoke";
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_error_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_ERROR, "%s %@ - %@", &v12, 0x20u);
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }
}

- (void)getInstalledAssetofType:(unint64_t)type forLocale:(id)locale completion:(id)completion
{
  localeCopy = locale;
  completionCopy = completion;
  queue = [(CSUAFAssetManagerBase *)self queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__CSUAFAssetManager_getInstalledAssetofType_forLocale_completion___block_invoke;
  v13[3] = &unk_1E865BFE0;
  v13[4] = self;
  v14 = localeCopy;
  v15 = completionCopy;
  typeCopy = type;
  v11 = completionCopy;
  v12 = localeCopy;
  dispatch_async(queue, v13);
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = CSLogCategoryAsset;
  if (os_log_type_enabled(CSLogCategoryAsset, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[CSUAFAssetManager dealloc]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CSUAFAssetManager;
  [(CSUAFAssetManager *)&v4 dealloc];
}

@end