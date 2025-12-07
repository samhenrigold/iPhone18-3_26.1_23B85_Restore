@interface SSRAssetManager
+ (id)sharedManager;
+ (id)sharedManagerOnDeviceCompilationDisable;
- (SSRAssetManager)initWithOnDeviceCompilationDisable:(BOOL)disable;
- (SSRAssetManagerDelegate)delegate;
- (float)_convertVersionStringToFloat:(id)float;
- (id)_allInstalledSpeakerRecognitionAssetsForLanguage:(id)language;
- (id)_compileAssets:(id)assets;
- (id)_getSSRAssetFromMAProviderWithLanguage:(id)language;
- (id)_getSpeakerRecognitionOverrideAsset;
- (id)allInstalledAssetsOfType:(unint64_t)type forLanguage:(id)language;
- (id)allInstalledSpeakerRecognitionAssetsForLanguage:(id)language;
- (id)installedAssetOfType:(unint64_t)type forLanguage:(id)language;
- (id)installedSpeakerRecognitionAssetForLanguage:(id)language;
- (void)CSLanguageCodeUpdateMonitor:(id)monitor didReceiveLanguageCodeChanged:(id)changed;
- (void)_loadUAFAssetsIfNecessary;
- (void)dealloc;
- (void)getSpeakerRecognitionAssetWithLanguage:(id)language completion:(id)completion;
- (void)releaseAssetsLocksIfNecessary;
- (void)start;
@end

@implementation SSRAssetManager

- (SSRAssetManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)CSLanguageCodeUpdateMonitor:(id)monitor didReceiveLanguageCodeChanged:(id)changed
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__SSRAssetManager_CSLanguageCodeUpdateMonitor_didReceiveLanguageCodeChanged___block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __77__SSRAssetManager_CSLanguageCodeUpdateMonitor_didReceiveLanguageCodeChanged___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D018F8] getSiriLanguageWithFallback:@"en-US"];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = *(a1 + 32);
  v6 = v5[3];

  return [v5 _compileCurrentInstalledAssets:v6];
}

- (float)_convertVersionStringToFloat:(id)float
{
  v8 = 0.0;
  v3 = MEMORY[0x277CCAC80];
  configVersion = [float configVersion];
  v5 = [v3 scannerWithString:configVersion];

  [v5 scanFloat:&v8];
  v6 = v8;

  return v6;
}

- (id)_compileAssets:(id)assets
{
  v37 = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  v5 = assetsCopy;
  if (assetsCopy && self->_onDeviceCompilationHandler)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v6 = [assetsCopy countByEnumeratingWithState:&v24 objects:v36 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = 0;
      v10 = *v25;
      v11 = MEMORY[0x277D015D8];
      *&v7 = 136315650;
      v22 = v7;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          if ((![v13 assetType] || objc_msgSend(v13, "assetType") == 3) && (-[NSMutableSet containsObject:](self->_compiledAssets, "containsObject:", v13) & 1) == 0)
          {
            onDeviceCompilationHandler = self->_onDeviceCompilationHandler;
            assetType = [v13 assetType];
            v23 = v9;
            [(CSOnDeviceCompilationHandler *)onDeviceCompilationHandler compileAndUpdateDeviceCachesWithAsset:v13 assetType:assetType endpointId:0 errOut:&v23];
            v16 = v23;

            if (v16)
            {
              v17 = *v11;
              if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
              {
                *buf = v22;
                v31 = "[SSRAssetManager _compileAssets:]";
                v32 = 2112;
                v33 = v13;
                v34 = 2112;
                v35 = v16;
                _os_log_error_impl(&dword_225E12000, v17, OS_LOG_TYPE_ERROR, "%s compile asset: %@ with error: %@", buf, 0x20u);
              }

              v9 = v16;
            }

            else
            {
              [(NSMutableSet *)self->_compiledAssets addObject:v13];
              v9 = 0;
            }
          }
        }

        v8 = [v5 countByEnumeratingWithState:&v24 objects:v36 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v18 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CCA450];
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"onDeviceCompilationHandler not set or assets are nil"];
    v29 = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v9 = [v18 errorWithDomain:@"com.apple.speakerrecognition" code:0 userInfo:v20];
  }

  return v9;
}

- (id)_allInstalledSpeakerRecognitionAssetsForLanguage:(id)language
{
  v11[1] = *MEMORY[0x277D85DE8];
  languageCopy = language;
  _getSpeakerRecognitionOverrideAsset = [(SSRAssetManager *)self _getSpeakerRecognitionOverrideAsset];
  v6 = _getSpeakerRecognitionOverrideAsset;
  if (_getSpeakerRecognitionOverrideAsset)
  {
    v11[0] = _getSpeakerRecognitionOverrideAsset;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  }

  else
  {
    v7 = [(SSRAssetProviding *)self->_mobileAssetProvider allInstalledSpeakerRecognitionAssetForLanguage:languageCopy];
  }

  v8 = v7;
  v9 = [(SSRAssetManager *)self _compileAssets:v7];

  return v8;
}

- (id)_getSpeakerRecognitionOverrideAsset
{
  v14 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  fakeSpeakerRecognitionAssetPath = [mEMORY[0x277D01788] fakeSpeakerRecognitionAssetPath];

  if (fakeSpeakerRecognitionAssetPath && ([MEMORY[0x277CCAA00] defaultManager], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "fileExistsAtPath:", fakeSpeakerRecognitionAssetPath), v4, v5))
  {
    stringByDeletingLastPathComponent = [fakeSpeakerRecognitionAssetPath stringByDeletingLastPathComponent];
    v7 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "[SSRAssetManager _getSpeakerRecognitionOverrideAsset]";
      v12 = 2112;
      v13 = stringByDeletingLastPathComponent;
      _os_log_impl(&dword_225E12000, v7, OS_LOG_TYPE_DEFAULT, "%s Returning the speakerRecognition override asset： %@", &v10, 0x16u);
    }

    v8 = [MEMORY[0x277D015F8] assetForAssetType:3 resourcePath:stringByDeletingLastPathComponent configVersion:@"override-asset" assetProvider:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_getSSRAssetFromMAProviderWithLanguage:(id)language
{
  languageCopy = language;
  _getSpeakerRecognitionOverrideAsset = [(SSRAssetManager *)self _getSpeakerRecognitionOverrideAsset];
  if (!_getSpeakerRecognitionOverrideAsset)
  {
    _getSpeakerRecognitionOverrideAsset = [(SSRAssetProviding *)self->_mobileAssetProvider installedSpeakerRecognitionAssetForLanguage:languageCopy];
  }

  return _getSpeakerRecognitionOverrideAsset;
}

- (void)releaseAssetsLocksIfNecessary
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SSRAssetManager_releaseAssetsLocksIfNecessary__block_invoke;
  block[3] = &unk_2785797A8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __48__SSRAssetManager_releaseAssetsLocksIfNecessary__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SSRAssetManager releaseAssetsLocksIfNecessary]_block_invoke";
    _os_log_impl(&dword_225E12000, v2, OS_LOG_TYPE_DEFAULT, "%s ", &v5, 0xCu);
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = 0;
}

- (void)_loadUAFAssetsIfNecessary
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[SSRAssetManager _loadUAFAssetsIfNecessary]";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v6, 0xCu);
  }

  if (!self->_uafAssetProvider)
  {
    v4 = objc_alloc_init(SSRUafAssetProvider);
    uafAssetProvider = self->_uafAssetProvider;
    self->_uafAssetProvider = v4;
  }
}

- (id)allInstalledAssetsOfType:(unint64_t)type forLanguage:(id)language
{
  languageCopy = language;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7501;
  v24 = __Block_byref_object_dispose__7502;
  array = [MEMORY[0x277CBEB18] array];
  queue = self->_queue;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __56__SSRAssetManager_allInstalledAssetsOfType_forLanguage___block_invoke;
  v15 = &unk_278579268;
  selfCopy = self;
  typeCopy = type;
  v8 = languageCopy;
  v17 = v8;
  v18 = &v20;
  dispatch_sync(queue, &v12);
  if ([v21[5] count])
  {
    v9 = v21[5];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  _Block_object_dispose(&v20, 8);

  return v10;
}

void __56__SSRAssetManager_allInstalledAssetsOfType_forLanguage___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__SSRAssetManager_allInstalledAssetsOfType_forLanguage___block_invoke_2;
  v6[3] = &unk_278579240;
  v9 = *(a1 + 56);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  [v2 enumerateObjectsUsingBlock:v6];
  v5 = [*(a1 + 32) _compileAssets:*(*(*(a1 + 48) + 8) + 40)];
}

void __56__SSRAssetManager_allInstalledAssetsOfType_forLanguage___block_invoke_2(void *a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [(__CFString *)v3 getAssetProviderType];
  v5 = @"MA";
  if (v4 == 1)
  {
    v5 = @"Trial";
  }

  v6 = v5;
  v7 = MEMORY[0x277D01970];
  v8 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315650;
    v16 = "[SSRAssetManager allInstalledAssetsOfType:forLanguage:]_block_invoke_2";
    v17 = 2112;
    v18 = v3;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s parsing provider: %@ name: %@", &v15, 0x20u);
  }

  v9 = [(__CFString *)v3 getAssetProviderType];
  v10 = a1[6];
  v11 = a1[4];
  if (v9 != 1)
  {
    v13 = [(__CFString *)v3 allInstalledAssetsOfType:v10 forLanguage:v11];
    v12 = v13;
    if (v13 && [v13 count])
    {
      [*(*(a1[5] + 8) + 40) addObjectsFromArray:v12];
      goto LABEL_14;
    }

    v14 = *v7;
    if (!os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

LABEL_15:
    v15 = 136315394;
    v16 = "[SSRAssetManager allInstalledAssetsOfType:forLanguage:]_block_invoke";
    v17 = 2112;
    v18 = v6;
    _os_log_error_impl(&dword_225E12000, v14, OS_LOG_TYPE_ERROR, "%s ERR: got nil assets from provider: %@", &v15, 0x16u);
    goto LABEL_14;
  }

  v12 = [(__CFString *)v3 installedAssetOfType:v10 forLanguageCode:v11];
  if (!v12)
  {
    v14 = *v7;
    if (!os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  [*(*(a1[5] + 8) + 40) insertObject:v12 atIndex:0];
LABEL_14:
}

- (id)allInstalledSpeakerRecognitionAssetsForLanguage:(id)language
{
  languageCopy = language;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7501;
  v16 = __Block_byref_object_dispose__7502;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__SSRAssetManager_allInstalledSpeakerRecognitionAssetsForLanguage___block_invoke;
  block[3] = &unk_278579530;
  v10 = languageCopy;
  v11 = &v12;
  block[4] = self;
  v6 = languageCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __67__SSRAssetManager_allInstalledSpeakerRecognitionAssetsForLanguage___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _allInstalledSpeakerRecognitionAssetsForLanguage:*(a1 + 40)];

  return MEMORY[0x2821F96F8]();
}

- (id)installedSpeakerRecognitionAssetForLanguage:(id)language
{
  languageCopy = language;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7501;
  v16 = __Block_byref_object_dispose__7502;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SSRAssetManager_installedSpeakerRecognitionAssetForLanguage___block_invoke;
  block[3] = &unk_278579530;
  v10 = languageCopy;
  v11 = &v12;
  block[4] = self;
  v6 = languageCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __63__SSRAssetManager_installedSpeakerRecognitionAssetForLanguage___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _getSSRAssetFromMAProviderWithLanguage:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 48) + 8) + 40);
  if (v5)
  {
    v6 = *(a1 + 32);
    v9[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    v8 = [v6 _compileAssets:v7];
  }
}

- (void)getSpeakerRecognitionAssetWithLanguage:(id)language completion:(id)completion
{
  languageCopy = language;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__SSRAssetManager_getSpeakerRecognitionAssetWithLanguage_completion___block_invoke;
  block[3] = &unk_278579218;
  block[4] = self;
  v12 = languageCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = languageCopy;
  dispatch_async(queue, block);
}

void __69__SSRAssetManager_getSpeakerRecognitionAssetWithLanguage_completion___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _getSSRAssetFromMAProviderWithLanguage:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    v10 = v2;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
    v6 = [v4 _compileAssets:v5];
  }

  else
  {
    v7 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA450];
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"speakerRecognition asset not available for mobileAsset Provider"];
    v12[0] = v5;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v6 = [v7 errorWithDomain:@"com.apple.speakerrecognition" code:802 userInfo:v8];
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, v3, v6);
  }
}

- (id)installedAssetOfType:(unint64_t)type forLanguage:(id)language
{
  languageCopy = language;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__7501;
  v19 = __Block_byref_object_dispose__7502;
  v20 = 0;
  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__SSRAssetManager_installedAssetOfType_forLanguage___block_invoke;
  v11[3] = &unk_278579268;
  v13 = &v15;
  typeCopy = type;
  v11[4] = self;
  v12 = languageCopy;
  v8 = languageCopy;
  dispatch_sync(queue, v11);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void __52__SSRAssetManager_installedAssetOfType_forLanguage___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D01788] sharedPreferences];
  v3 = [v2 isVoiceTriggerAssetOverridingEnabled];

  if (v3)
  {
    v4 = [MEMORY[0x277D01788] sharedPreferences];
    v5 = [v4 fakeVoiceTriggerAssetPath];

    v6 = [v5 stringByDeletingLastPathComponent];
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [v7 fileExistsAtPath:v5];

    if (v8)
    {
      v9 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v25 = "[SSRAssetManager installedAssetOfType:forLanguage:]_block_invoke";
        _os_log_impl(&dword_225E12000, v9, OS_LOG_TYPE_DEFAULT, "%s Retuning the VoiceTrigger override asset", buf, 0xCu);
      }

      v10 = [MEMORY[0x277D015F8] assetForAssetType:0 resourcePath:v6 configVersion:@"override-asset" assetProvider:1];
      v11 = *(*(a1 + 48) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }

    goto LABEL_11;
  }

  [*(a1 + 32) _loadUAFAssetsIfNecessary];
  v13 = [*(*(a1 + 32) + 56) installedAssetOfType:*(a1 + 56) forLanguageCode:*(a1 + 40)];
  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  v16 = *(*(*(a1 + 48) + 8) + 40);
  if (!v16)
  {
    v17 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v25 = "[SSRAssetManager installedAssetOfType:forLanguage:]_block_invoke";
      _os_log_impl(&dword_225E12000, v17, OS_LOG_TYPE_DEFAULT, "%s UAF Asset being nil, falling back to MA asset", buf, 0xCu);
    }

    v18 = [*(*(a1 + 32) + 48) installedAssetOfType:*(a1 + 56) forLanguageCode:*(a1 + 40)];
    v19 = *(*(a1 + 48) + 8);
    v5 = *(v19 + 40);
    *(v19 + 40) = v18;
LABEL_11:

    v16 = *(*(*(a1 + 48) + 8) + 40);
    if (!v16)
    {
      return;
    }
  }

  v20 = *(a1 + 32);
  v23 = v16;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  v22 = [v20 _compileAssets:v21];
}

- (SSRAssetManager)initWithOnDeviceCompilationDisable:(BOOL)disable
{
  v27 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = SSRAssetManager;
  v4 = [(SSRAssetManager *)&v24 init];
  if (!v4)
  {
LABEL_10:
    v21 = v4;
    goto LABEL_14;
  }

  v5 = dispatch_queue_create("Serial SSRAssetManager queue", 0);
  queue = v4->_queue;
  v4->_queue = v5;

  v7 = [MEMORY[0x277D018F8] getSiriLanguageWithFallback:@"en-US"];
  currentLanguageCode = v4->_currentLanguageCode;
  v4->_currentLanguageCode = v7;

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = objc_alloc_init(SSRMobileAssetProvider);
  mobileAssetProvider = v4->_mobileAssetProvider;
  v4->_mobileAssetProvider = v10;

  if (v4->_mobileAssetProvider)
  {
    [v9 addObject:?];
  }

  v12 = objc_alloc_init(SSRTrialAssetProvider);
  if (v12)
  {
    [v9 addObject:v12];
  }

  v13 = objc_alloc_init(SSRUafAssetProvider);
  uafAssetProvider = v4->_uafAssetProvider;
  v4->_uafAssetProvider = v13;

  if ([v9 count])
  {
    v15 = [v9 copy];
    assetProviders = v4->_assetProviders;
    v4->_assetProviders = v15;

    compiledAssets = v4->_compiledAssets;
    v4->_compiledAssets = 0;

    onDeviceCompilationHandler = v4->_onDeviceCompilationHandler;
    v4->_onDeviceCompilationHandler = 0;

    if (!disable)
    {
      mEMORY[0x277D01800] = [MEMORY[0x277D01800] sharedHandler];
      v20 = v4->_onDeviceCompilationHandler;
      v4->_onDeviceCompilationHandler = mEMORY[0x277D01800];
    }

    [(SSRAssetManager *)v4 start];

    goto LABEL_10;
  }

  v22 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v26 = "[SSRAssetManager initWithOnDeviceCompilationDisable:]";
    _os_log_error_impl(&dword_225E12000, v22, OS_LOG_TYPE_ERROR, "%s ERR: Failed to create asset providers - Bailing out", buf, 0xCu);
  }

  v21 = 0;
LABEL_14:

  return v21;
}

- (void)dealloc
{
  mEMORY[0x277D017D8] = [MEMORY[0x277D017D8] sharedInstance];
  [mEMORY[0x277D017D8] removeObserver:self];

  v4.receiver = self;
  v4.super_class = SSRAssetManager;
  [(SSRAssetManager *)&v4 dealloc];
}

- (void)start
{
  mEMORY[0x277D017D8] = [MEMORY[0x277D017D8] sharedInstance];
  [mEMORY[0x277D017D8] addObserver:self];
}

+ (id)sharedManagerOnDeviceCompilationDisable
{
  if (sharedManagerOnDeviceCompilationDisable_onceToken != -1)
  {
    dispatch_once(&sharedManagerOnDeviceCompilationDisable_onceToken, &__block_literal_global_2);
  }

  v3 = sharedManagerOnDeviceCompilationDisable_sharedManager;

  return v3;
}

uint64_t __58__SSRAssetManager_sharedManagerOnDeviceCompilationDisable__block_invoke(uint64_t a1, uint64_t a2)
{
  SSRLogInitIfNeeded();
  sharedManagerOnDeviceCompilationDisable_sharedManager = [[SSRAssetManager alloc] initWithOnDeviceCompilationDisable:1];

  return MEMORY[0x2821F96F8]();
}

+ (id)sharedManager
{
  if (sharedManager_onceToken_7534 != -1)
  {
    dispatch_once(&sharedManager_onceToken_7534, &__block_literal_global_7535);
  }

  v3 = sharedManager_sharedManager;

  return v3;
}

uint64_t __32__SSRAssetManager_sharedManager__block_invoke(uint64_t a1, uint64_t a2)
{
  SSRLogInitIfNeeded();
  sharedManager_sharedManager = [[SSRAssetManager alloc] initWithOnDeviceCompilationDisable:0];

  return MEMORY[0x2821F96F8]();
}

@end