@interface SFSpeechAssetManager
+ (BOOL)isLanguageDetectorInstalled;
+ (id)_serialQueueForClientIdentifier:(id)identifier;
+ (id)_timeoutError:(double)error;
+ (id)assetPathForLanguage:(id)language;
+ (id)assetPathForLanguage:(id)language clientIdentifier:(id)identifier;
+ (id)configParametersForVoicemailWithLanguage:(id)language;
+ (id)configParametersForVoicemailWithLanguage:(id)language clientIdentifier:(id)identifier;
+ (id)generalASRLanguageForLocale:(id)locale;
+ (id)installedLanguagesForTaskHint:(int64_t)hint;
+ (id)languageCode:(id)code;
+ (id)pathToAssetWithConfig:(id)config clientIdentifier:(id)identifier;
+ (id)subscriptionsForClientIdentifier:(id)identifier;
+ (id)supportedLanguagesForTaskHint:(int64_t)hint;
+ (id)versionOfAssetWithConfig:(id)config clientIdentifier:(id)identifier;
+ (void)fetchAssetWithConfig:(id)config clientIdentifier:(id)identifier detailedProgress:(id)progress completion:(id)completion;
+ (void)fetchAssetWithConfig:(id)config clientIdentifier:(id)identifier expiration:(id)expiration detailedProgress:(id)progress completion:(id)completion timeout:(double)timeout;
+ (void)fetchAssetWithConfig:(id)config clientIdentifier:(id)identifier expiration:(id)expiration progress:(id)progress completion:(id)completion;
+ (void)fetchAssetWithConfig:(id)config clientIdentifier:(id)identifier progress:(id)progress completion:(id)completion timeout:(double)timeout;
+ (void)fetchAssetsForLanguage:(id)language clientIdentifier:(id)identifier detailedProgress:(id)progress completion:(id)completion;
+ (void)fetchAssetsForLanguage:(id)language clientIdentifier:(id)identifier progress:(id)progress completion:(id)completion;
+ (void)fetchAssetsForLanguage:(id)language clientIdentifier:(id)identifier urgent:(BOOL)urgent forceUpgrade:(BOOL)upgrade detailedProgress:(id)progress completion:(id)completion;
+ (void)fetchAssetsForLanguage:(id)language clientIdentifier:(id)identifier urgent:(BOOL)urgent forceUpgrade:(BOOL)upgrade progress:(id)progress completion:(id)completion;
+ (void)fetchAssetsForLanguage:(id)language progress:(id)progress completion:(id)completion;
+ (void)fetchAssetsForLanguage:(id)language taskHint:(int64_t)hint clientIdentifier:(id)identifier progress:(id)progress completion:(id)completion;
+ (void)fetchAssetsForLanguage:(id)language urgent:(BOOL)urgent forceUpgrade:(BOOL)upgrade detailedProgress:(id)progress completion:(id)completion;
+ (void)fetchAssetsForLanguage:(id)language urgent:(BOOL)urgent forceUpgrade:(BOOL)upgrade progress:(id)progress completion:(id)completion;
+ (void)fetchAssetsForLanguage:(id)language urgent:(BOOL)urgent progress:(id)progress completion:(id)completion;
+ (void)fetchLanguageDetectorAssetsForClientIdentifier:(id)identifier progress:(id)progress completion:(id)completion;
+ (void)installationStateForAssetConfig:(id)config clientIdentifier:(id)identifier completion:(id)completion;
+ (void)installedLanguagesForTaskHint:(int64_t)hint completion:(id)completion;
+ (void)pathToAssetWithConfig:(id)config clientIdentifier:(id)identifier completion:(id)completion;
+ (void)purgeAssetsForLanguage:(id)language clientIdentifier:(id)identifier error:(id *)error;
+ (void)purgeAssetsForLanguage:(id)language error:(id *)error;
+ (void)setAssetsPurgeability:(BOOL)purgeability forLanguages:(id)languages completion:(id)completion;
+ (void)setPurgeabilityForAssetWithConfig:(id)config purgeable:(BOOL)purgeable completion:(id)completion;
+ (void)supportedLanguagesForTaskHint:(int64_t)hint completion:(id)completion;
+ (void)unsubscribeFromAssetWithConfig:(id)config clientIdentifier:(id)identifier completion:(id)completion;
+ (void)unsubscribeFromAssetWithConfig:(id)config clientIdentifier:(id)identifier error:(id *)error;
@end

@implementation SFSpeechAssetManager

+ (id)_timeoutError:(double)error
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Operation timed out after %.2f seconds.", *&error];
  v4 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A578];
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v4 errorWithDomain:@"SFSpeechErrorDomain" code:12 userInfo:v5];

  return v6;
}

+ (id)_serialQueueForClientIdentifier:(id)identifier
{
  v3 = MEMORY[0x1E696AEC0];
  identifierCopy = identifier;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v3 stringWithFormat:@"%@.%@", identifierCopy, v6];

  uTF8String = [v7 UTF8String];
  v9 = dispatch_queue_create(uTF8String, 0);

  return v9;
}

+ (id)configParametersForVoicemailWithLanguage:(id)language
{
  languageCopy = language;
  v4 = +[SFUtilities defaultClientID];
  v5 = [SFSpeechAssetManager configParametersForVoicemailWithLanguage:languageCopy clientIdentifier:v4];

  return v5;
}

+ (void)purgeAssetsForLanguage:(id)language error:(id *)error
{
  languageCopy = language;
  v9 = +[SFUtilities defaultClientID];
  v6 = [SFEntitledAssetConfig alloc];
  v7 = [SFSpeechAssetManager languageCode:languageCopy];

  v8 = [(SFEntitledAssetConfig *)v6 initWithLanguage:v7 taskHint:0];
  [SFSpeechAssetManager unsubscribeFromAssetWithConfig:v8 clientIdentifier:v9 error:error];
}

+ (void)purgeAssetsForLanguage:(id)language clientIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  languageCopy = language;
  v9 = [SFEntitledAssetConfig alloc];
  v10 = [SFSpeechAssetManager languageCode:languageCopy];

  v11 = [(SFEntitledAssetConfig *)v9 initWithLanguage:v10 taskHint:0];
  [SFSpeechAssetManager unsubscribeFromAssetWithConfig:v11 clientIdentifier:identifierCopy error:error];
}

+ (id)assetPathForLanguage:(id)language
{
  languageCopy = language;
  v4 = +[SFUtilities defaultClientID];
  v5 = [SFEntitledAssetConfig alloc];
  v6 = [SFSpeechAssetManager languageCode:languageCopy];

  v7 = [(SFEntitledAssetConfig *)v5 initWithLanguage:v6 taskHint:0];
  v8 = [SFSpeechAssetManager pathToAssetWithConfig:v7 clientIdentifier:v4];

  return v8;
}

+ (id)assetPathForLanguage:(id)language clientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  languageCopy = language;
  v7 = [SFEntitledAssetConfig alloc];
  v8 = [SFSpeechAssetManager languageCode:languageCopy];

  v9 = [(SFEntitledAssetConfig *)v7 initWithLanguage:v8 taskHint:0];
  v10 = [SFSpeechAssetManager pathToAssetWithConfig:v9 clientIdentifier:identifierCopy];

  return v10;
}

+ (void)fetchAssetsForLanguage:(id)language clientIdentifier:(id)identifier urgent:(BOOL)urgent forceUpgrade:(BOOL)upgrade detailedProgress:(id)progress completion:(id)completion
{
  completionCopy = completion;
  progressCopy = progress;
  identifierCopy = identifier;
  languageCopy = language;
  v15 = [SFEntitledAssetConfig alloc];
  v16 = [SFSpeechAssetManager languageCode:languageCopy];

  v17 = [(SFEntitledAssetConfig *)v15 initWithLanguage:v16 taskHint:0];
  [SFSpeechAssetManager fetchAssetWithConfig:v17 clientIdentifier:identifierCopy detailedProgress:progressCopy completion:completionCopy];
}

+ (void)fetchAssetsForLanguage:(id)language clientIdentifier:(id)identifier detailedProgress:(id)progress completion:(id)completion
{
  completionCopy = completion;
  progressCopy = progress;
  identifierCopy = identifier;
  languageCopy = language;
  v13 = [SFEntitledAssetConfig alloc];
  v14 = [SFSpeechAssetManager languageCode:languageCopy];

  v15 = [(SFEntitledAssetConfig *)v13 initWithLanguage:v14 taskHint:0];
  [SFSpeechAssetManager fetchAssetWithConfig:v15 clientIdentifier:identifierCopy detailedProgress:progressCopy completion:completionCopy];
}

+ (void)fetchAssetsForLanguage:(id)language urgent:(BOOL)urgent forceUpgrade:(BOOL)upgrade detailedProgress:(id)progress completion:(id)completion
{
  completionCopy = completion;
  progressCopy = progress;
  languageCopy = language;
  v15 = +[SFUtilities defaultClientID];
  v12 = [SFEntitledAssetConfig alloc];
  v13 = [SFSpeechAssetManager languageCode:languageCopy];

  v14 = [(SFEntitledAssetConfig *)v12 initWithLanguage:v13 taskHint:0];
  [SFSpeechAssetManager fetchAssetWithConfig:v14 clientIdentifier:v15 detailedProgress:progressCopy completion:completionCopy];
}

+ (void)fetchAssetsForLanguage:(id)language clientIdentifier:(id)identifier urgent:(BOOL)urgent forceUpgrade:(BOOL)upgrade progress:(id)progress completion:(id)completion
{
  completionCopy = completion;
  progressCopy = progress;
  identifierCopy = identifier;
  languageCopy = language;
  v15 = [SFEntitledAssetConfig alloc];
  v16 = [SFSpeechAssetManager languageCode:languageCopy];

  v17 = [(SFEntitledAssetConfig *)v15 initWithLanguage:v16 taskHint:0];
  [SFSpeechAssetManager fetchAssetWithConfig:v17 clientIdentifier:identifierCopy progress:progressCopy completion:completionCopy];
}

+ (void)fetchAssetsForLanguage:(id)language urgent:(BOOL)urgent progress:(id)progress completion:(id)completion
{
  completionCopy = completion;
  progressCopy = progress;
  languageCopy = language;
  v14 = +[SFUtilities defaultClientID];
  v11 = [SFEntitledAssetConfig alloc];
  v12 = [SFSpeechAssetManager languageCode:languageCopy];

  v13 = [(SFEntitledAssetConfig *)v11 initWithLanguage:v12 taskHint:0];
  [SFSpeechAssetManager fetchAssetWithConfig:v13 clientIdentifier:v14 progress:progressCopy completion:completionCopy];
}

+ (void)fetchAssetsForLanguage:(id)language urgent:(BOOL)urgent forceUpgrade:(BOOL)upgrade progress:(id)progress completion:(id)completion
{
  completionCopy = completion;
  progressCopy = progress;
  languageCopy = language;
  v15 = +[SFUtilities defaultClientID];
  v12 = [SFEntitledAssetConfig alloc];
  v13 = [SFSpeechAssetManager languageCode:languageCopy];

  v14 = [(SFEntitledAssetConfig *)v12 initWithLanguage:v13 taskHint:0];
  [SFSpeechAssetManager fetchAssetWithConfig:v14 clientIdentifier:v15 progress:progressCopy completion:completionCopy];
}

+ (void)fetchAssetsForLanguage:(id)language progress:(id)progress completion:(id)completion
{
  completionCopy = completion;
  progressCopy = progress;
  languageCopy = language;
  v13 = +[SFUtilities defaultClientID];
  v10 = [SFEntitledAssetConfig alloc];
  v11 = [SFSpeechAssetManager languageCode:languageCopy];

  v12 = [(SFEntitledAssetConfig *)v10 initWithLanguage:v11 taskHint:0];
  [SFSpeechAssetManager fetchAssetWithConfig:v12 clientIdentifier:v13 progress:progressCopy completion:completionCopy];
}

+ (void)fetchAssetsForLanguage:(id)language clientIdentifier:(id)identifier progress:(id)progress completion:(id)completion
{
  completionCopy = completion;
  progressCopy = progress;
  identifierCopy = identifier;
  languageCopy = language;
  v13 = [SFEntitledAssetConfig alloc];
  v14 = [SFSpeechAssetManager languageCode:languageCopy];

  v15 = [(SFEntitledAssetConfig *)v13 initWithLanguage:v14 taskHint:0];
  [SFSpeechAssetManager fetchAssetWithConfig:v15 clientIdentifier:identifierCopy progress:progressCopy completion:completionCopy];
}

+ (void)fetchAssetsForLanguage:(id)language taskHint:(int64_t)hint clientIdentifier:(id)identifier progress:(id)progress completion:(id)completion
{
  completionCopy = completion;
  progressCopy = progress;
  identifierCopy = identifier;
  languageCopy = language;
  v15 = [SFEntitledAssetConfig alloc];
  v16 = [SFSpeechAssetManager languageCode:languageCopy];

  v17 = [(SFEntitledAssetConfig *)v15 initWithLanguage:v16 assetType:SFEntitledAssetTypeForTaskHint(hint)];
  [SFSpeechAssetManager fetchAssetWithConfig:v17 clientIdentifier:identifierCopy progress:progressCopy completion:completionCopy];
}

+ (void)fetchLanguageDetectorAssetsForClientIdentifier:(id)identifier progress:(id)progress completion:(id)completion
{
  completionCopy = completion;
  progressCopy = progress;
  identifierCopy = identifier;
  v10 = [[SFEntitledAssetConfig alloc] initWithLanguage:@"default" assetType:6];
  [SFSpeechAssetManager fetchAssetWithConfig:v10 clientIdentifier:identifierCopy progress:progressCopy completion:completionCopy];
}

+ (void)setAssetsPurgeability:(BOOL)purgeability forLanguages:(id)languages completion:(id)completion
{
  purgeabilityCopy = purgeability;
  v40 = *MEMORY[0x1E69E9840];
  languagesCopy = languages;
  completionCopy = completion;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v38 = 1;
  v8 = @"Assistant";
  v9 = dispatch_group_create();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = languagesCopy;
  v10 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v10)
  {
    v11 = *v34;
    do
    {
      v12 = 0;
      do
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v33 + 1) + 8 * v12);
        dispatch_group_enter(v9);
        v14 = [[SFEntitledAssetConfig alloc] initWithAssetType:3 language:v13 regionId:0];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __70__SFSpeechAssetManager_setAssetsPurgeability_forLanguages_completion___block_invoke;
        v27[3] = &unk_1E797CDA8;
        v31 = v37;
        v32 = purgeabilityCopy;
        v15 = @"Assistant";
        v28 = @"Assistant";
        v16 = v14;
        v29 = v16;
        v30 = v9;
        [SFSpeechAssetManager setPurgeabilityForAssetWithConfig:v16 purgeable:purgeabilityCopy completion:v27];

        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v10);
  }

  v17 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__SFSpeechAssetManager_setAssetsPurgeability_forLanguages_completion___block_invoke_41;
  block[3] = &unk_1E797CDD0;
  v26 = purgeabilityCopy;
  v24 = completionCopy;
  v25 = v37;
  v23 = @"Assistant";
  v18 = @"Assistant";
  v19 = completionCopy;
  dispatch_group_notify(v9, v17, block);

  _Block_object_dispose(v37, 8);
}

void __70__SFSpeechAssetManager_setAssetsPurgeability_forLanguages_completion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v4 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 64))
      {
        v5 = @"enable";
      }

      else
      {
        v5 = @"disable";
      }

      v7 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = v4;
      v9 = [v6 language];
      v10 = 136316162;
      v11 = "+[SFSpeechAssetManager setAssetsPurgeability:forLanguages:completion:]_block_invoke";
      v12 = 2112;
      v13 = v5;
      v14 = 2112;
      v15 = v7;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v3;
      _os_log_error_impl(&dword_1AC5BC000, v8, OS_LOG_TYPE_ERROR, "%s Failed to %@ purgeability for %@ asset with language: %@, error: %@", &v10, 0x34u);
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

void __70__SFSpeechAssetManager_setAssetsPurgeability_forLanguages_completion___block_invoke_41(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (v2)
  {
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v3 = *(v2 + 16);

      v3();
    }

    else
    {
      v4 = *(a1 + 56);
      v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v6 = v5;
      if (v4)
      {
        v7 = @"Failed to enable purgeability for one or more %@ assets.";
      }

      else
      {
        v7 = @"Failed to disable purgeability for one or more %@ assets.";
      }

      v8 = [v5 localizedStringForKey:v7 value:&stru_1F2139F58 table:@"Localizable"];

      v9 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v8, *(a1 + 32)];
      v10 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E696A578];
      v14[0] = v9;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v12 = [v10 errorWithDomain:@"SFSpeechErrorDomain" code:1 userInfo:v11];

      (*(*(a1 + 40) + 16))();
    }
  }
}

+ (void)setPurgeabilityForAssetWithConfig:(id)config purgeable:(BOOL)purgeable completion:(id)completion
{
  purgeableCopy = purgeable;
  v33 = *MEMORY[0x1E69E9840];
  configCopy = config;
  completionCopy = completion;
  v9 = +[SFUtilities defaultClientID];
  v10 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
  {
    if (purgeableCopy)
    {
      v11 = @"enabling";
    }

    else
    {
      v11 = @"disabling";
    }

    v12 = v10;
    assetType = [configCopy assetType];
    if ((assetType - 1) > 6)
    {
      v14 = @"Unknown";
    }

    else
    {
      v14 = off_1E797BC18[assetType - 1];
    }

    v15 = v14;
    language = [configCopy language];
    *buf = 136316162;
    v24 = "+[SFSpeechAssetManager setPurgeabilityForAssetWithConfig:purgeable:completion:]";
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = v11;
    v29 = 2112;
    v30 = v15;
    v31 = 2112;
    v32 = language;
    _os_log_impl(&dword_1AC5BC000, v12, OS_LOG_TYPE_DEFAULT, "%s Client (%@) %@ purgeability for the %@ asset for: %@", buf, 0x34u);
  }

  v17 = objc_alloc_init(SFLocalSpeechRecognitionClient);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __79__SFSpeechAssetManager_setPurgeabilityForAssetWithConfig_purgeable_completion___block_invoke;
  v20[3] = &unk_1E797CD58;
  v21 = v17;
  v22 = completionCopy;
  v18 = v17;
  v19 = completionCopy;
  [(SFLocalSpeechRecognitionClient *)v18 setPurgeabilityForAssetWithConfig:configCopy purgeable:purgeableCopy clientID:v9 completion:v20];
}

uint64_t __79__SFSpeechAssetManager_setPurgeabilityForAssetWithConfig_purgeable_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

+ (id)subscriptionsForClientIdentifier:(id)identifier
{
  v13 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = SFLogFramework;
  if (identifierCopy)
  {
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "+[SFSpeechAssetManager subscriptionsForClientIdentifier:]";
      *&buf[12] = 2112;
      *&buf[14] = identifierCopy;
      _os_log_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_DEFAULT, "%s Client (%@) fetching all of their subscriptions.", buf, 0x16u);
    }

    v5 = objc_alloc_init(SFLocalSpeechRecognitionClient);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v10 = __Block_byref_object_copy__3056;
    v11 = __Block_byref_object_dispose__3057;
    v12 = MEMORY[0x1E695E0F0];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__SFSpeechAssetManager_subscriptionsForClientIdentifier___block_invoke;
    v8[3] = &unk_1E797CBC0;
    v8[4] = buf;
    [(SFLocalSpeechRecognitionClient *)v5 subscriptionsForClientId:identifierCopy completion:v8];
    [(SFLocalSpeechRecognitionClient *)v5 invalidate];
    v6 = *(*&buf[8] + 40);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "+[SFSpeechAssetManager subscriptionsForClientIdentifier:]";
      _os_log_error_impl(&dword_1AC5BC000, v4, OS_LOG_TYPE_ERROR, "%s clientIdentifier cannot be nil.", buf, 0xCu);
    }

    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

+ (void)unsubscribeFromAssetWithConfig:(id)config clientIdentifier:(id)identifier error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  configCopy = config;
  identifierCopy = identifier;
  v9 = SFLogFramework;
  if (!identifierCopy)
  {
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "+[SFSpeechAssetManager unsubscribeFromAssetWithConfig:clientIdentifier:error:]";
      _os_log_error_impl(&dword_1AC5BC000, v9, OS_LOG_TYPE_ERROR, "%s clientIdentifier cannot be nil.", buf, 0xCu);
      if (!error)
      {
        goto LABEL_13;
      }
    }

    else if (!error)
    {
      goto LABEL_13;
    }

    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"SFSpeechErrorDomain" code:13 userInfo:0];
    goto LABEL_13;
  }

  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    assetType = [configCopy assetType];
    if ((assetType - 1) > 6)
    {
      v12 = @"Unknown";
    }

    else
    {
      v12 = off_1E797BC18[assetType - 1];
    }

    v13 = v12;
    language = [configCopy language];
    *buf = 136315906;
    *&buf[4] = "+[SFSpeechAssetManager unsubscribeFromAssetWithConfig:clientIdentifier:error:]";
    *&buf[12] = 2112;
    *&buf[14] = identifierCopy;
    *&buf[22] = 2112;
    v18 = v13;
    LOWORD(v19) = 2112;
    *(&v19 + 2) = language;
    _os_log_impl(&dword_1AC5BC000, v10, OS_LOG_TYPE_DEFAULT, "%s Client (%@) unsubscribing from the %@ asset for: %@", buf, 0x2Au);
  }

  v15 = objc_alloc_init(SFLocalSpeechRecognitionClient);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v18 = __Block_byref_object_copy__3056;
  *&v19 = __Block_byref_object_dispose__3057;
  *(&v19 + 1) = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78__SFSpeechAssetManager_unsubscribeFromAssetWithConfig_clientIdentifier_error___block_invoke;
  v16[3] = &unk_1E797CD80;
  v16[4] = buf;
  [(SFLocalSpeechRecognitionClient *)v15 unsubscribeFromAssetWithConfig:configCopy clientID:identifierCopy completion:v16];
  [(SFLocalSpeechRecognitionClient *)v15 invalidate];
  if (error)
  {
    *error = *(*&buf[8] + 40);
  }

  _Block_object_dispose(buf, 8);

LABEL_13:
}

+ (void)unsubscribeFromAssetWithConfig:(id)config clientIdentifier:(id)identifier completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  configCopy = config;
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = SFLogFramework;
  if (identifierCopy)
  {
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_INFO))
    {
      v11 = v10;
      assetType = [configCopy assetType];
      if ((assetType - 1) > 6)
      {
        v13 = @"Unknown";
      }

      else
      {
        v13 = off_1E797BC18[assetType - 1];
      }

      v15 = v13;
      language = [configCopy language];
      *buf = 136315906;
      v22 = "+[SFSpeechAssetManager unsubscribeFromAssetWithConfig:clientIdentifier:completion:]";
      v23 = 2112;
      v24 = identifierCopy;
      v25 = 2112;
      v26 = v15;
      v27 = 2112;
      v28 = language;
      _os_log_impl(&dword_1AC5BC000, v11, OS_LOG_TYPE_INFO, "%s Client (%@) async unsubscribing from the %@ asset for: %@", buf, 0x2Au);
    }

    v17 = objc_alloc_init(SFLocalSpeechRecognitionClient);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __83__SFSpeechAssetManager_unsubscribeFromAssetWithConfig_clientIdentifier_completion___block_invoke;
    v18[3] = &unk_1E797CD58;
    v19 = v17;
    v20 = completionCopy;
    v14 = v17;
    [(SFLocalSpeechRecognitionClient *)v14 unsubscribeFromAssetWithConfig:configCopy clientID:identifierCopy asyncCompletion:v18];

    goto LABEL_11;
  }

  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v22 = "+[SFSpeechAssetManager unsubscribeFromAssetWithConfig:clientIdentifier:completion:]";
    _os_log_error_impl(&dword_1AC5BC000, v10, OS_LOG_TYPE_ERROR, "%s clientIdentifier cannot be nil.", buf, 0xCu);
    if (!completionCopy)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (completionCopy)
  {
LABEL_7:
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SFSpeechErrorDomain" code:13 userInfo:0];
    (*(completionCopy + 2))(completionCopy, v14);
LABEL_11:
  }

LABEL_12:
}

uint64_t __83__SFSpeechAssetManager_unsubscribeFromAssetWithConfig_clientIdentifier_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

+ (id)configParametersForVoicemailWithLanguage:(id)language clientIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  identifierCopy = identifier;
  v7 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = @"Assistant";
    *buf = 136315906;
    *&buf[4] = "+[SFSpeechAssetManager configParametersForVoicemailWithLanguage:clientIdentifier:]";
    *&buf[12] = 2112;
    *&buf[14] = identifierCopy;
    *&buf[22] = 2112;
    v16 = @"Assistant";
    LOWORD(v17) = 2112;
    *(&v17 + 2) = languageCopy;
    _os_log_impl(&dword_1AC5BC000, v8, OS_LOG_TYPE_DEFAULT, "%s Client (%@) fetching the voicemail configuration for the %@ asset for: %@", buf, 0x2Au);
  }

  v10 = objc_alloc_init(SFLocalSpeechRecognitionClient);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v16 = __Block_byref_object_copy__3056;
  *&v17 = __Block_byref_object_dispose__3057;
  *(&v17 + 1) = 0;
  v11 = [SFSpeechAssetManager languageCode:languageCopy];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__SFSpeechAssetManager_configParametersForVoicemailWithLanguage_clientIdentifier___block_invoke;
  v14[3] = &unk_1E797CD30;
  v14[4] = buf;
  [(SFLocalSpeechRecognitionClient *)v10 configParametersForVoicemailWithLanguage:v11 clientID:identifierCopy completion:v14];

  [(SFLocalSpeechRecognitionClient *)v10 invalidate];
  v12 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  return v12;
}

+ (id)versionOfAssetWithConfig:(id)config clientIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  configCopy = config;
  identifierCopy = identifier;
  v7 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    assetType = [configCopy assetType];
    if ((assetType - 1) > 6)
    {
      v10 = @"Unknown";
    }

    else
    {
      v10 = off_1E797BC18[assetType - 1];
    }

    v11 = v10;
    language = [configCopy language];
    *buf = 136315906;
    *&buf[4] = "+[SFSpeechAssetManager versionOfAssetWithConfig:clientIdentifier:]";
    *&buf[12] = 2112;
    *&buf[14] = identifierCopy;
    *&buf[22] = 2112;
    v18 = v11;
    LOWORD(v19) = 2112;
    *(&v19 + 2) = language;
    _os_log_impl(&dword_1AC5BC000, v8, OS_LOG_TYPE_DEFAULT, "%s Client (%@) fetching the version of the %@ asset for: %@", buf, 0x2Au);
  }

  v13 = objc_alloc_init(SFLocalSpeechRecognitionClient);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v18 = __Block_byref_object_copy__3056;
  *&v19 = __Block_byref_object_dispose__3057;
  *(&v19 + 1) = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66__SFSpeechAssetManager_versionOfAssetWithConfig_clientIdentifier___block_invoke;
  v16[3] = &unk_1E797CCB8;
  v16[4] = buf;
  [(SFLocalSpeechRecognitionClient *)v13 versionOfAssetWithConfig:configCopy clientID:identifierCopy completion:v16];
  [(SFLocalSpeechRecognitionClient *)v13 invalidate];
  v14 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  return v14;
}

+ (void)installationStateForAssetConfig:(id)config clientIdentifier:(id)identifier completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  configCopy = config;
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    assetType = [configCopy assetType];
    if ((assetType - 1) > 6)
    {
      v13 = @"Unknown";
    }

    else
    {
      v13 = off_1E797BC18[assetType - 1];
    }

    v14 = v13;
    language = [configCopy language];
    *buf = 136315906;
    v23 = "+[SFSpeechAssetManager installationStateForAssetConfig:clientIdentifier:completion:]";
    v24 = 2112;
    v25 = identifierCopy;
    v26 = 2112;
    v27 = v14;
    v28 = 2112;
    v29 = language;
    _os_log_impl(&dword_1AC5BC000, v11, OS_LOG_TYPE_INFO, "%s Client (%@) fetching the installation state for the %@ asset for: %@", buf, 0x2Au);
  }

  v16 = objc_alloc_init(SFLocalSpeechRecognitionClient);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __84__SFSpeechAssetManager_installationStateForAssetConfig_clientIdentifier_completion___block_invoke;
  v19[3] = &unk_1E797CD08;
  v20 = v16;
  v21 = completionCopy;
  v17 = v16;
  v18 = completionCopy;
  [(SFLocalSpeechRecognitionClient *)v17 installationStateForAssetConfig:configCopy clientID:identifierCopy completion:v19];
}

uint64_t __84__SFSpeechAssetManager_installationStateForAssetConfig_clientIdentifier_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

+ (void)pathToAssetWithConfig:(id)config clientIdentifier:(id)identifier completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  configCopy = config;
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    assetType = [configCopy assetType];
    if ((assetType - 1) > 6)
    {
      v13 = @"Unknown";
    }

    else
    {
      v13 = off_1E797BC18[assetType - 1];
    }

    v14 = v13;
    language = [configCopy language];
    *buf = 136315906;
    v23 = "+[SFSpeechAssetManager pathToAssetWithConfig:clientIdentifier:completion:]";
    v24 = 2112;
    v25 = identifierCopy;
    v26 = 2112;
    v27 = v14;
    v28 = 2112;
    v29 = language;
    _os_log_impl(&dword_1AC5BC000, v11, OS_LOG_TYPE_INFO, "%s Client (%@) async fetching the path to the %@ asset for: %@", buf, 0x2Au);
  }

  v16 = objc_alloc_init(SFLocalSpeechRecognitionClient);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __74__SFSpeechAssetManager_pathToAssetWithConfig_clientIdentifier_completion___block_invoke;
  v19[3] = &unk_1E797CCE0;
  v20 = v16;
  v21 = completionCopy;
  v17 = v16;
  v18 = completionCopy;
  [(SFLocalSpeechRecognitionClient *)v17 pathToAssetWithConfig:configCopy clientID:identifierCopy asyncCompletion:v19];
}

uint64_t __74__SFSpeechAssetManager_pathToAssetWithConfig_clientIdentifier_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

+ (id)pathToAssetWithConfig:(id)config clientIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  configCopy = config;
  identifierCopy = identifier;
  v7 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    assetType = [configCopy assetType];
    if ((assetType - 1) > 6)
    {
      v10 = @"Unknown";
    }

    else
    {
      v10 = off_1E797BC18[assetType - 1];
    }

    v11 = v10;
    language = [configCopy language];
    *buf = 136315906;
    *&buf[4] = "+[SFSpeechAssetManager pathToAssetWithConfig:clientIdentifier:]";
    *&buf[12] = 2112;
    *&buf[14] = identifierCopy;
    *&buf[22] = 2112;
    v18 = v11;
    LOWORD(v19) = 2112;
    *(&v19 + 2) = language;
    _os_log_impl(&dword_1AC5BC000, v8, OS_LOG_TYPE_DEFAULT, "%s Client (%@) fetching the path to the %@ asset for: %@", buf, 0x2Au);
  }

  v13 = objc_alloc_init(SFLocalSpeechRecognitionClient);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v18 = __Block_byref_object_copy__3056;
  *&v19 = __Block_byref_object_dispose__3057;
  *(&v19 + 1) = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __63__SFSpeechAssetManager_pathToAssetWithConfig_clientIdentifier___block_invoke;
  v16[3] = &unk_1E797CCB8;
  v16[4] = buf;
  [(SFLocalSpeechRecognitionClient *)v13 pathToAssetWithConfig:configCopy clientID:identifierCopy completion:v16];
  [(SFLocalSpeechRecognitionClient *)v13 invalidate];
  v14 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  return v14;
}

+ (void)fetchAssetWithConfig:(id)config clientIdentifier:(id)identifier detailedProgress:(id)progress completion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  configCopy = config;
  identifierCopy = identifier;
  progressCopy = progress;
  completionCopy = completion;
  v13 = SFLogFramework;
  if (identifierCopy)
  {
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      assetType = [configCopy assetType];
      if ((assetType - 1) > 6)
      {
        v16 = @"Unknown";
      }

      else
      {
        v16 = off_1E797BC18[assetType - 1];
      }

      v18 = v16;
      language = [configCopy language];
      *buf = 136315906;
      v25 = "+[SFSpeechAssetManager fetchAssetWithConfig:clientIdentifier:detailedProgress:completion:]";
      v26 = 2112;
      v27 = identifierCopy;
      v28 = 2112;
      v29 = v18;
      v30 = 2112;
      v31 = language;
      _os_log_impl(&dword_1AC5BC000, v14, OS_LOG_TYPE_DEFAULT, "%s Client (%@) fetching the %@ asset for: %@", buf, 0x2Au);
    }

    v20 = objc_alloc_init(SFLocalSpeechRecognitionClient);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __90__SFSpeechAssetManager_fetchAssetWithConfig_clientIdentifier_detailedProgress_completion___block_invoke;
    v21[3] = &unk_1E797CC90;
    v22 = v20;
    v23 = completionCopy;
    v17 = v20;
    [(SFLocalSpeechRecognitionClient *)v17 downloadAssetsForConfig:configCopy clientID:identifierCopy expiration:0 detailedProgress:progressCopy completionHandler:v21];

    goto LABEL_11;
  }

  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v25 = "+[SFSpeechAssetManager fetchAssetWithConfig:clientIdentifier:detailedProgress:completion:]";
    _os_log_error_impl(&dword_1AC5BC000, v13, OS_LOG_TYPE_ERROR, "%s clientIdentifier cannot be nil.", buf, 0xCu);
    if (!completionCopy)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (completionCopy)
  {
LABEL_7:
    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SFSpeechErrorDomain" code:13 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v17);
LABEL_11:
  }

LABEL_12:
}

uint64_t __90__SFSpeechAssetManager_fetchAssetWithConfig_clientIdentifier_detailedProgress_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

+ (void)fetchAssetWithConfig:(id)config clientIdentifier:(id)identifier expiration:(id)expiration progress:(id)progress completion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  configCopy = config;
  identifierCopy = identifier;
  expirationCopy = expiration;
  progressCopy = progress;
  completionCopy = completion;
  v16 = SFLogFramework;
  if (identifierCopy)
  {
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      assetType = [configCopy assetType];
      if ((assetType - 1) > 6)
      {
        v19 = @"Unknown";
      }

      else
      {
        v19 = off_1E797BC18[assetType - 1];
      }

      v21 = v19;
      language = [configCopy language];
      *buf = 136315906;
      v28 = "+[SFSpeechAssetManager fetchAssetWithConfig:clientIdentifier:expiration:progress:completion:]";
      v29 = 2112;
      v30 = identifierCopy;
      v31 = 2112;
      v32 = v21;
      v33 = 2112;
      v34 = language;
      _os_log_impl(&dword_1AC5BC000, v17, OS_LOG_TYPE_DEFAULT, "%s Client (%@) fetching the %@ asset for: %@", buf, 0x2Au);
    }

    v23 = objc_alloc_init(SFLocalSpeechRecognitionClient);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __93__SFSpeechAssetManager_fetchAssetWithConfig_clientIdentifier_expiration_progress_completion___block_invoke;
    v24[3] = &unk_1E797CC90;
    v25 = v23;
    v26 = completionCopy;
    v20 = v23;
    [(SFLocalSpeechRecognitionClient *)v20 downloadAssetsForConfig:configCopy clientID:identifierCopy expiration:expirationCopy progress:progressCopy completionHandler:v24];

    goto LABEL_11;
  }

  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v28 = "+[SFSpeechAssetManager fetchAssetWithConfig:clientIdentifier:expiration:progress:completion:]";
    _os_log_error_impl(&dword_1AC5BC000, v16, OS_LOG_TYPE_ERROR, "%s clientIdentifier cannot be nil.", buf, 0xCu);
    if (!completionCopy)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (completionCopy)
  {
LABEL_7:
    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SFSpeechErrorDomain" code:13 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v20);
LABEL_11:
  }

LABEL_12:
}

uint64_t __93__SFSpeechAssetManager_fetchAssetWithConfig_clientIdentifier_expiration_progress_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

+ (void)fetchAssetWithConfig:(id)config clientIdentifier:(id)identifier expiration:(id)expiration detailedProgress:(id)progress completion:(id)completion timeout:(double)timeout
{
  v51 = *MEMORY[0x1E69E9840];
  configCopy = config;
  identifierCopy = identifier;
  expirationCopy = expiration;
  progressCopy = progress;
  completionCopy = completion;
  if (identifierCopy)
  {
    if (timeout <= 0.0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SFSpeechAssetManager.m" lineNumber:169 description:{@"Invalid timeout %f; must be value > 0.", *&timeout}];
    }

    v20 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_INFO))
    {
      v21 = v20;
      assetType = [configCopy assetType];
      if ((assetType - 1) > 6)
      {
        v23 = @"Unknown";
      }

      else
      {
        v23 = off_1E797BC18[assetType - 1];
      }

      v26 = v23;
      language = [configCopy language];
      *buf = 136315906;
      *&buf[4] = "+[SFSpeechAssetManager fetchAssetWithConfig:clientIdentifier:expiration:detailedProgress:completion:timeout:]";
      *&buf[12] = 2112;
      *&buf[14] = identifierCopy;
      *&buf[22] = 2112;
      v48 = v26;
      v49 = 2112;
      v50 = language;
      _os_log_impl(&dword_1AC5BC000, v21, OS_LOG_TYPE_INFO, "%s Client (%@) fetching the %@ asset for: %@", buf, 0x2Au);
    }

    v28 = objc_alloc_init(MEMORY[0x1E69E58C0]);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v48) = 0;
    v29 = dispatch_time(0, (timeout * 1000000000.0));
    v30 = [self _serialQueueForClientIdentifier:identifierCopy];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __109__SFSpeechAssetManager_fetchAssetWithConfig_clientIdentifier_expiration_detailedProgress_completion_timeout___block_invoke;
    block[3] = &unk_1E797CC40;
    v31 = v28;
    v42 = v31;
    v44 = buf;
    v32 = completionCopy;
    v43 = v32;
    selfCopy = self;
    timeoutCopy = timeout;
    dispatch_after(v29, v30, block);

    v33 = objc_alloc_init(SFLocalSpeechRecognitionClient);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __109__SFSpeechAssetManager_fetchAssetWithConfig_clientIdentifier_expiration_detailedProgress_completion_timeout___block_invoke_2;
    v36[3] = &unk_1E797CC68;
    v25 = v31;
    v37 = v25;
    v40 = buf;
    v39 = v32;
    v34 = v33;
    v38 = v34;
    [(SFLocalSpeechRecognitionClient *)v34 downloadAssetsForConfig:configCopy clientID:identifierCopy expiration:expirationCopy detailedProgress:progressCopy completionHandler:v36];

    _Block_object_dispose(buf, 8);
    goto LABEL_13;
  }

  v24 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = "+[SFSpeechAssetManager fetchAssetWithConfig:clientIdentifier:expiration:detailedProgress:completion:timeout:]";
    _os_log_error_impl(&dword_1AC5BC000, v24, OS_LOG_TYPE_ERROR, "%s clientIdentifier cannot be nil.", buf, 0xCu);
    if (!completionCopy)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (completionCopy)
  {
LABEL_9:
    v25 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SFSpeechErrorDomain" code:13 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v25);
LABEL_13:
  }

LABEL_14:
}

void __109__SFSpeechAssetManager_fetchAssetWithConfig_clientIdentifier_expiration_detailedProgress_completion_timeout___block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v2 = *(*(a1 + 48) + 8);
  if ((*(v2 + 24) & 1) == 0 && *(a1 + 40))
  {
    *(v2 + 24) = 1;
    v3 = *(a1 + 40);
    v4 = [*(a1 + 56) _timeoutError:*(a1 + 64)];
    (*(v3 + 16))(v3, 0, v4);
  }

  objc_sync_exit(obj);
}

void __109__SFSpeechAssetManager_fetchAssetWithConfig_clientIdentifier_expiration_detailedProgress_completion_timeout___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  v7 = *(*(a1 + 56) + 8);
  if ((*(v7 + 24) & 1) == 0 && *(a1 + 48))
  {
    *(v7 + 24) = 1;
    (*(*(a1 + 48) + 16))();
  }

  objc_sync_exit(v6);

  [*(a1 + 40) invalidate];
}

+ (void)fetchAssetWithConfig:(id)config clientIdentifier:(id)identifier progress:(id)progress completion:(id)completion timeout:(double)timeout
{
  v48 = *MEMORY[0x1E69E9840];
  configCopy = config;
  identifierCopy = identifier;
  progressCopy = progress;
  completionCopy = completion;
  if (identifierCopy)
  {
    if (timeout <= 0.0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SFSpeechAssetManager.m" lineNumber:117 description:{@"Invalid timeout %f; must be value > 0.", *&timeout}];
    }

    v17 = SFLogFramework;
    if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_INFO))
    {
      v18 = v17;
      assetType = [configCopy assetType];
      if ((assetType - 1) > 6)
      {
        v20 = @"Unknown";
      }

      else
      {
        v20 = off_1E797BC18[assetType - 1];
      }

      v23 = v20;
      language = [configCopy language];
      *buf = 136315906;
      *&buf[4] = "+[SFSpeechAssetManager fetchAssetWithConfig:clientIdentifier:progress:completion:timeout:]";
      *&buf[12] = 2112;
      *&buf[14] = identifierCopy;
      *&buf[22] = 2112;
      v45 = v23;
      v46 = 2112;
      v47 = language;
      _os_log_impl(&dword_1AC5BC000, v18, OS_LOG_TYPE_INFO, "%s Client (%@) fetching the %@ asset for: %@", buf, 0x2Au);
    }

    v25 = objc_alloc_init(MEMORY[0x1E69E58C0]);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v45) = 0;
    v26 = dispatch_time(0, (timeout * 1000000000.0));
    v27 = [self _serialQueueForClientIdentifier:identifierCopy];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __90__SFSpeechAssetManager_fetchAssetWithConfig_clientIdentifier_progress_completion_timeout___block_invoke;
    block[3] = &unk_1E797CC40;
    v28 = v25;
    v39 = v28;
    v41 = buf;
    v29 = completionCopy;
    v40 = v29;
    selfCopy = self;
    timeoutCopy = timeout;
    dispatch_after(v26, v27, block);

    v30 = objc_alloc_init(SFLocalSpeechRecognitionClient);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __90__SFSpeechAssetManager_fetchAssetWithConfig_clientIdentifier_progress_completion_timeout___block_invoke_2;
    v33[3] = &unk_1E797CC68;
    v22 = v28;
    v34 = v22;
    v37 = buf;
    v36 = v29;
    v31 = v30;
    v35 = v31;
    [(SFLocalSpeechRecognitionClient *)v31 downloadAssetsForConfig:configCopy clientID:identifierCopy expiration:0 progress:progressCopy completionHandler:v33];

    _Block_object_dispose(buf, 8);
    goto LABEL_13;
  }

  v21 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = "+[SFSpeechAssetManager fetchAssetWithConfig:clientIdentifier:progress:completion:timeout:]";
    _os_log_error_impl(&dword_1AC5BC000, v21, OS_LOG_TYPE_ERROR, "%s clientIdentifier cannot be nil.", buf, 0xCu);
    if (!completionCopy)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (completionCopy)
  {
LABEL_9:
    v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SFSpeechErrorDomain" code:13 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v22);
LABEL_13:
  }

LABEL_14:
}

void __90__SFSpeechAssetManager_fetchAssetWithConfig_clientIdentifier_progress_completion_timeout___block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v2 = *(*(a1 + 48) + 8);
  if ((*(v2 + 24) & 1) == 0 && *(a1 + 40))
  {
    *(v2 + 24) = 1;
    v3 = *(a1 + 40);
    v4 = [*(a1 + 56) _timeoutError:*(a1 + 64)];
    (*(v3 + 16))(v3, 0, v4);
  }

  objc_sync_exit(obj);
}

void __90__SFSpeechAssetManager_fetchAssetWithConfig_clientIdentifier_progress_completion_timeout___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  v7 = *(*(a1 + 56) + 8);
  if ((*(v7 + 24) & 1) == 0 && *(a1 + 48))
  {
    *(v7 + 24) = 1;
    (*(*(a1 + 48) + 16))();
  }

  objc_sync_exit(v6);

  [*(a1 + 40) invalidate];
}

+ (void)installedLanguagesForTaskHint:(int64_t)hint completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v6 = SFEntitledAssetTypeForTaskHint(hint);
  v7 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    if ((v6 - 1) > 6)
    {
      v9 = @"Unknown";
    }

    else
    {
      v9 = off_1E797BC18[v6 - 1];
    }

    v10 = v9;
    *buf = 136315394;
    v18 = "+[SFSpeechAssetManager installedLanguagesForTaskHint:completion:]";
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_1AC5BC000, v8, OS_LOG_TYPE_DEFAULT, "%s Fetching languages of installed %@ assets.", buf, 0x16u);
  }

  v11 = objc_alloc_init(SFLocalSpeechRecognitionClient);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__SFSpeechAssetManager_installedLanguagesForTaskHint_completion___block_invoke;
  v14[3] = &unk_1E797CC10;
  v15 = v11;
  v16 = completionCopy;
  v12 = v11;
  v13 = completionCopy;
  [(SFLocalSpeechRecognitionClient *)v12 installedLanguagesForAssetType:v6 synchronous:0 completion:v14];
}

uint64_t __65__SFSpeechAssetManager_installedLanguagesForTaskHint_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

+ (id)installedLanguagesForTaskHint:(int64_t)hint
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = SFEntitledAssetTypeForTaskHint(hint);
  v4 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    if ((v3 - 1) > 6)
    {
      v6 = @"Unknown";
    }

    else
    {
      v6 = off_1E797BC18[v3 - 1];
    }

    v7 = v6;
    *buf = 136315394;
    *&buf[4] = "+[SFSpeechAssetManager installedLanguagesForTaskHint:]";
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&dword_1AC5BC000, v5, OS_LOG_TYPE_DEFAULT, "%s Fetching languages of installed %@ assets.", buf, 0x16u);
  }

  v8 = objc_alloc_init(SFLocalSpeechRecognitionClient);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v13 = __Block_byref_object_copy__3056;
  v14 = __Block_byref_object_dispose__3057;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__SFSpeechAssetManager_installedLanguagesForTaskHint___block_invoke;
  v11[3] = &unk_1E797CBE8;
  v11[4] = buf;
  [(SFLocalSpeechRecognitionClient *)v8 installedLanguagesForAssetType:v3 synchronous:1 completion:v11];
  [(SFLocalSpeechRecognitionClient *)v8 invalidate];
  v9 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  return v9;
}

uint64_t __54__SFSpeechAssetManager_installedLanguagesForTaskHint___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

+ (id)supportedLanguagesForTaskHint:(int64_t)hint
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = SFEntitledAssetTypeForTaskHint(hint);
  v4 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    if ((v3 - 1) > 6)
    {
      v6 = @"Unknown";
    }

    else
    {
      v6 = off_1E797BC18[v3 - 1];
    }

    v7 = v6;
    *buf = 136315394;
    *&buf[4] = "+[SFSpeechAssetManager supportedLanguagesForTaskHint:]";
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&dword_1AC5BC000, v5, OS_LOG_TYPE_DEFAULT, "%s Fetching languages of supported %@ assets.", buf, 0x16u);
  }

  v8 = objc_alloc_init(SFLocalSpeechRecognitionClient);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v13 = __Block_byref_object_copy__3056;
  v14 = __Block_byref_object_dispose__3057;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__SFSpeechAssetManager_supportedLanguagesForTaskHint___block_invoke;
  v11[3] = &unk_1E797CBC0;
  v11[4] = buf;
  [(SFLocalSpeechRecognitionClient *)v8 supportedLanguagesForAssetType:v3 synchronous:1 completion:v11];
  [(SFLocalSpeechRecognitionClient *)v8 invalidate];
  v9 = *(*&buf[8] + 40);
  _Block_object_dispose(buf, 8);

  return v9;
}

uint64_t __54__SFSpeechAssetManager_supportedLanguagesForTaskHint___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

+ (void)supportedLanguagesForTaskHint:(int64_t)hint completion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v6 = SFEntitledAssetTypeForTaskHint(hint);
  v7 = SFLogFramework;
  if (os_log_type_enabled(SFLogFramework, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    if ((v6 - 1) > 6)
    {
      v9 = @"Unknown";
    }

    else
    {
      v9 = off_1E797BC18[v6 - 1];
    }

    v10 = v9;
    *buf = 136315394;
    v18 = "+[SFSpeechAssetManager supportedLanguagesForTaskHint:completion:]";
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&dword_1AC5BC000, v8, OS_LOG_TYPE_DEFAULT, "%s Fetching languages of supported %@ assets.", buf, 0x16u);
  }

  v11 = objc_alloc_init(SFLocalSpeechRecognitionClient);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__SFSpeechAssetManager_supportedLanguagesForTaskHint_completion___block_invoke;
  v14[3] = &unk_1E797CB98;
  v15 = v11;
  v16 = completionCopy;
  v12 = v11;
  v13 = completionCopy;
  [(SFLocalSpeechRecognitionClient *)v12 supportedLanguagesForAssetType:v6 synchronous:0 completion:v14];
}

uint64_t __65__SFSpeechAssetManager_supportedLanguagesForTaskHint_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

+ (BOOL)isLanguageDetectorInstalled
{
  v2 = [[SFEntitledAssetConfig alloc] initWithLanguage:@"default" assetType:6];
  v3 = +[SFUtilities defaultClientID];
  v4 = [SFSpeechAssetManager pathToAssetWithConfig:v2 clientIdentifier:v3];
  v5 = v4 != 0;

  return v5;
}

+ (id)generalASRLanguageForLocale:(id)locale
{
  localeIdentifier = [locale localeIdentifier];
  v4 = [SFSpeechAssetManager generalASRLanguageForLocaleIdentifier:localeIdentifier];

  return v4;
}

+ (id)languageCode:(id)code
{
  if (code)
  {
    v3 = MEMORY[0x1E695DF58];
    codeCopy = code;
    v5 = [[v3 alloc] initWithLocaleIdentifier:codeCopy];

    v6 = MEMORY[0x1E696AEC0];
    v7 = [v5 objectForKey:*MEMORY[0x1E695D9B0]];
    v8 = [v5 objectForKey:*MEMORY[0x1E695D978]];
    v9 = [v6 stringWithFormat:@"%@-%@", v7, v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end