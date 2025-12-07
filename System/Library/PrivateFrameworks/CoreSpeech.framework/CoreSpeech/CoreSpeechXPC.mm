@interface CoreSpeechXPC
+ (id)accessoryModelTypeToString:(int64_t)string;
+ (void)logLanguageMismatchMetricWithJarvisSelectedLocale:(id)locale jarvisTriggerMode:(int64_t)mode;
- (CoreSpeechXPC)initWithFakeMonitor:(id)monitor;
- (id)getAccessoryFallbackFamilyLocal:(id)local fromLocaleMap:(id)map;
- (id)getAccessoryFallbackLocalTable;
- (id)selectFallbackModelForLocale:(id)locale downloadedModels:(id)models preinstalledModels:(id)preinstalledModels rtLocaleMap:(id)map;
- (void)_fetchVoiceTriggerInstalledAssetWithLanguage:(id)language completion:(id)completion;
- (void)_handleFakeHearstModelRequest:(id)request majorVersion:(unint64_t)version minorVersion:(unint64_t)minorVersion downloadedModels:(id)models preinstalledModels:(id)preinstalledModels completion:(id)completion;
- (void)fetchRemoteVoiceTriggerAssetForLanguageCode:(id)code completion:(id)completion;
- (void)installedVoiceTriggerAssetForLanguageCode:(id)code completion:(id)completion;
- (void)supportsMultiPhraseVoiceTriggerForEngineVersion:(id)version engineMinorVersion:(id)minorVersion accessoryRTModelType:(id)type completion:(id)completion;
- (void)voiceTriggerJarvisLanguageList:(id)list jarvisSelectedLanguage:(id)language completion:(id)completion;
- (void)voiceTriggerRTModelWithRequestOptions:(id)options downloadedModels:(id)models preinstalledModels:(id)preinstalledModels completion:(id)completion;
@end

@implementation CoreSpeechXPC

- (void)supportsMultiPhraseVoiceTriggerForEngineVersion:(id)version engineMinorVersion:(id)minorVersion accessoryRTModelType:(id)type completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  minorVersionCopy = minorVersion;
  typeCopy = type;
  completionCopy = completion;
  v13 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[CoreSpeechXPC supportsMultiPhraseVoiceTriggerForEngineVersion:engineMinorVersion:accessoryRTModelType:completion:]";
    _os_log_impl(&dword_222E4D000, v13, OS_LOG_TYPE_DEFAULT, "%s ", &v15, 0xCu);
  }

  v14 = [MEMORY[0x277D015F8] supportsMultiPhraseVoiceTriggerForEngineVersion:versionCopy engineMinorVersion:minorVersionCopy accessoryRTModelType:typeCopy];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v14);
  }
}

- (void)_fetchVoiceTriggerInstalledAssetWithLanguage:(id)language completion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  completionCopy = completion;
  if (!CSIsInternalBuild())
  {
LABEL_9:
    mEMORY[0x277D018D0] = [MEMORY[0x277D018D0] sharedInstance];

    if (mEMORY[0x277D018D0])
    {
      mEMORY[0x277D018D0]2 = [MEMORY[0x277D018D0] sharedInstance];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __73__CoreSpeechXPC__fetchVoiceTriggerInstalledAssetWithLanguage_completion___block_invoke;
      v19[3] = &unk_2784C6B28;
      v21 = completionCopy;
      v20 = languageCopy;
      [mEMORY[0x277D018D0]2 getInstalledAssetofType:0 forLocale:v20 completion:v19];

      fakeVoiceTriggerAudioAccessoryFirstPassAssetPath = v21;
    }

    else
    {
      fakeVoiceTriggerAudioAccessoryFirstPassAssetPath = +[CSAssetController sharedController];
      [fakeVoiceTriggerAudioAccessoryFirstPassAssetPath installedAssetOfType:0 language:languageCopy completion:completionCopy];
    }

    goto LABEL_18;
  }

  mEMORY[0x277D01788] = [MEMORY[0x277D01788] sharedPreferences];
  fakeVoiceTriggerAudioAccessoryFirstPassAssetPath = [mEMORY[0x277D01788] fakeVoiceTriggerAudioAccessoryFirstPassAssetPath];

  v9 = MEMORY[0x277D015D8];
  v10 = *MEMORY[0x277D015D8];
  v11 = *MEMORY[0x277D015D8];
  if (!fakeVoiceTriggerAudioAccessoryFirstPassAssetPath)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v23 = "[CoreSpeechXPC _fetchVoiceTriggerInstalledAssetWithLanguage:completion:]";
      _os_log_debug_impl(&dword_222E4D000, v10, OS_LOG_TYPE_DEBUG, "%s Overriding audio accessory first pass asset is nil", buf, 0xCu);
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[CoreSpeechXPC _fetchVoiceTriggerInstalledAssetWithLanguage:completion:]";
    v24 = 2112;
    v25 = fakeVoiceTriggerAudioAccessoryFirstPassAssetPath;
    _os_log_impl(&dword_222E4D000, v10, OS_LOG_TYPE_DEFAULT, "%s Overridden audio accessory first pass asset path: %@", buf, 0x16u);
  }

  stringByDeletingLastPathComponent = [fakeVoiceTriggerAudioAccessoryFirstPassAssetPath stringByDeletingLastPathComponent];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [defaultManager fileExistsAtPath:fakeVoiceTriggerAudioAccessoryFirstPassAssetPath];

  if (v14)
  {
    [MEMORY[0x277D015F8] assetForAssetType:0 resourcePath:stringByDeletingLastPathComponent configVersion:@"override-asset" assetProvider:1];
  }

  else
  {
    [MEMORY[0x277D015F8] defaultFallBackAssetForVoiceTrigger];
  }
  v17 = ;
  v18 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[CoreSpeechXPC _fetchVoiceTriggerInstalledAssetWithLanguage:completion:]";
    v24 = 2112;
    v25 = v17;
    _os_log_impl(&dword_222E4D000, v18, OS_LOG_TYPE_DEFAULT, "%s Fake asset: %@", buf, 0x16u);
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, v17, 0);
  }

LABEL_18:
}

void __73__CoreSpeechXPC__fetchVoiceTriggerInstalledAssetWithLanguage_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v9 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "[CoreSpeechXPC _fetchVoiceTriggerInstalledAssetWithLanguage:completion:]_block_invoke";
      _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_INFO, "%s Trial assets not available, fallback to MA assets", &v11, 0xCu);
    }

    v10 = +[CSAssetController sharedController];
    [v10 installedAssetOfType:0 language:*(a1 + 32) completion:*(a1 + 40)];
  }

  else
  {
    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, v5, 0);
    }
  }
}

- (id)selectFallbackModelForLocale:(id)locale downloadedModels:(id)models preinstalledModels:(id)preinstalledModels rtLocaleMap:(id)map
{
  v41 = *MEMORY[0x277D85DE8];
  modelsCopy = models;
  preinstalledModelsCopy = preinstalledModels;
  mapCopy = map;
  v12 = [(CoreSpeechXPC *)self getAccessoryFallbackFamilyLocal:locale fromLocaleMap:mapCopy];
  v35 = 0u;
  v36 = 0u;
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = @"en-US";
  }

  v37 = 0uLL;
  v38 = 0uLL;
  v14 = modelsCopy;
  v15 = [v14 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v36;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v35 + 1) + 8 * i);
        modelLocale = [v19 modelLocale];
        v21 = [(CoreSpeechXPC *)self getAccessoryFallbackFamilyLocal:modelLocale fromLocaleMap:mapCopy];

        if (([(__CFString *)v13 isEqualToString:v21]& 1) != 0)
        {
          obj = v14;
          goto LABEL_22;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = preinstalledModelsCopy;
  v22 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v32;
LABEL_14:
    v25 = 0;
    while (1)
    {
      if (*v32 != v24)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v31 + 1) + 8 * v25);
      modelLocale2 = [v19 modelLocale];
      v21 = [(CoreSpeechXPC *)self getAccessoryFallbackFamilyLocal:modelLocale2 fromLocaleMap:mapCopy];

      if (([(__CFString *)v13 isEqualToString:v21]& 1) != 0)
      {
        break;
      }

      if (v23 == ++v25)
      {
        v23 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v23)
        {
          goto LABEL_14;
        }

        goto LABEL_20;
      }
    }

LABEL_22:
    v27 = v19;
  }

  else
  {
LABEL_20:
    v27 = 0;
  }

  return v27;
}

- (id)getAccessoryFallbackFamilyLocal:(id)local fromLocaleMap:(id)map
{
  v29 = *MEMORY[0x277D85DE8];
  localCopy = local;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  mapCopy = map;
  v7 = [mapCopy countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(mapCopy);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v12 = [mapCopy objectForKeyedSubscript:{v11, 0}];
        v13 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v20;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v20 != v15)
              {
                objc_enumerationMutation(v12);
              }

              if ([localCopy isEqualToString:*(*(&v19 + 1) + 8 * j)])
              {
                v17 = v11;

                goto LABEL_19;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }
      }

      v8 = [mapCopy countByEnumeratingWithState:&v23 objects:v28 count:16];
      v17 = 0;
    }

    while (v8);
  }

  else
  {
    v17 = 0;
  }

LABEL_19:

  return v17;
}

- (id)getAccessoryFallbackLocalTable
{
  if (getAccessoryFallbackLocalTable_onceToken != -1)
  {
    dispatch_once(&getAccessoryFallbackLocalTable_onceToken, &__block_literal_global_20464);
  }

  v3 = getAccessoryFallbackLocalTable_table;

  return v3;
}

void __47__CoreSpeechXPC_getAccessoryFallbackLocalTable__block_invoke()
{
  v0 = getAccessoryFallbackLocalTable_table;
  getAccessoryFallbackLocalTable_table = &unk_283667A30;
}

- (void)voiceTriggerJarvisLanguageList:(id)list jarvisSelectedLanguage:(id)language completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  listCopy = list;
  languageCopy = language;
  completionCopy = completion;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __82__CoreSpeechXPC_voiceTriggerJarvisLanguageList_jarvisSelectedLanguage_completion___block_invoke;
  v23[3] = &unk_2784C5738;
  v11 = languageCopy;
  v24 = v11;
  v12 = completionCopy;
  v25 = v12;
  v13 = MEMORY[0x223DD26C0](v23);
  if (listCopy | v11)
  {
    v16 = [MEMORY[0x277D018F8] getSiriLanguageWithFallback:@"en-US"];
    v17 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v27 = "[CoreSpeechXPC voiceTriggerJarvisLanguageList:jarvisSelectedLanguage:completion:]";
      v28 = 2114;
      v29 = v16;
      _os_log_impl(&dword_222E4D000, v17, OS_LOG_TYPE_DEFAULT, "%s current Siri language code : %{public}@", buf, 0x16u);
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __82__CoreSpeechXPC_voiceTriggerJarvisLanguageList_jarvisSelectedLanguage_completion___block_invoke_24;
    v18[3] = &unk_2784C5760;
    v18[4] = self;
    v19 = v16;
    v20 = v11;
    v22 = v13;
    v21 = listCopy;
    v15 = v16;
    [(CoreSpeechXPC *)self _fetchVoiceTriggerInstalledAssetWithLanguage:v15 completion:v18];
  }

  else
  {
    v14 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v27 = "[CoreSpeechXPC voiceTriggerJarvisLanguageList:jarvisSelectedLanguage:completion:]";
      _os_log_error_impl(&dword_222E4D000, v14, OS_LOG_TYPE_ERROR, "%s Language list and jarvis language not provided", buf, 0xCu);
    }

    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:403 userInfo:0];
    (v13)[2](v13, 0, v15);
  }
}

void __82__CoreSpeechXPC_voiceTriggerJarvisLanguageList_jarvisSelectedLanguage_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v6 description];
    v15 = 136315650;
    v16 = "[CoreSpeechXPC voiceTriggerJarvisLanguageList:jarvisSelectedLanguage:completion:]_block_invoke";
    v17 = 2114;
    v18 = v5;
    v19 = 2114;
    v20 = v9;
    _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_DEFAULT, "%s Select keyword language as %{public}@, error : %{public}@", &v15, 0x20u);
  }

  v10 = [MEMORY[0x277D017B0] sharedInstance];
  v11 = v10;
  if (v5)
  {
    [v10 setTriggerMode:1];

    if ([*(a1 + 32) isEqualToString:v5])
    {
      goto LABEL_8;
    }

    v12 = v5;
    v13 = 1;
  }

  else
  {
    [v10 setTriggerMode:2];

    v12 = *(a1 + 32);
    v13 = 2;
  }

  [CoreSpeechXPC logLanguageMismatchMetricWithJarvisSelectedLocale:v12 jarvisTriggerMode:v13];
LABEL_8:
  v14 = *(a1 + 40);
  if (v14)
  {
    (*(v14 + 16))(v14, v5, v6);
  }
}

void __82__CoreSpeechXPC_voiceTriggerJarvisLanguageList_jarvisSelectedLanguage_completion___block_invoke_24(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      v23 = v7;
      v24 = [v6 localizedDescription];
      *buf = 136315394;
      v38 = "[CoreSpeechXPC voiceTriggerJarvisLanguageList:jarvisSelectedLanguage:completion:]_block_invoke";
      v39 = 2114;
      v40 = v24;
      _os_log_error_impl(&dword_222E4D000, v23, OS_LOG_TYPE_ERROR, "%s VoiceTriggerAsset is not available : %{public}@", buf, 0x16u);
    }
  }

  v8 = [v5 jarvisRTModelLocaleMap];
  if (!v8)
  {
    v9 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v38 = "[CoreSpeechXPC voiceTriggerJarvisLanguageList:jarvisSelectedLanguage:completion:]_block_invoke";
      _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_DEFAULT, "%s Jarvis locale map is nil, fallback to embedded locale map", buf, 0xCu);
    }

    v8 = [*(a1 + 32) getAccessoryFallbackLocalTable];
  }

  if ([*(a1 + 40) isEqualToString:*(a1 + 48)])
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = *(a1 + 56);
    v11 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v32;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(v10);
          }

          if ([*(*(&v31 + 1) + 8 * v14) isEqualToString:*(a1 + 40)])
          {
            (*(*(a1 + 64) + 16))();
            goto LABEL_33;
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v10 = [*(a1 + 32) getAccessoryFallbackFamilyLocal:*(a1 + 40) fromLocaleMap:v8];
    v15 = [*(a1 + 32) getAccessoryFallbackFamilyLocal:*(a1 + 48) fromLocaleMap:v8];
    if ([v15 isEqualToString:v10])
    {
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v25 = v15;
      v26 = v6;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v16 = *(a1 + 56);
      v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v28;
        while (2)
        {
          v20 = 0;
          do
          {
            if (*v28 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = [*(a1 + 32) getAccessoryFallbackFamilyLocal:*(*(&v27 + 1) + 8 * v20) fromLocaleMap:{v8, v25, v26, v27}];
            if ([v21 isEqualToString:v10])
            {
              (*(*(a1 + 64) + 16))();

              goto LABEL_31;
            }

            ++v20;
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

      v22 = *(a1 + 64);
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:404 userInfo:0];
      (*(v22 + 16))(v22, 0, v16);
LABEL_31:

      v15 = v25;
      v6 = v26;
    }

LABEL_33:
  }
}

- (void)voiceTriggerRTModelWithRequestOptions:(id)options downloadedModels:(id)models preinstalledModels:(id)preinstalledModels completion:(id)completion
{
  v94 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  modelsCopy = models;
  preinstalledModelsCopy = preinstalledModels;
  completionCopy = completion;
  accessoryModelType = [optionsCopy accessoryModelType];
  integerValue = [accessoryModelType integerValue];

  engineMajorVersion = [optionsCopy engineMajorVersion];
  unsignedIntegerValue = [engineMajorVersion unsignedIntegerValue];

  engineMinorVersion = [optionsCopy engineMinorVersion];
  unsignedIntegerValue2 = [engineMinorVersion unsignedIntegerValue];

  v18 = MEMORY[0x277D015D8];
  v19 = *MEMORY[0x277D015D8];
  v60 = integerValue;
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    v21 = [CoreSpeechXPC accessoryModelTypeToString:integerValue];
    accessoryInfo = [optionsCopy accessoryInfo];
    *buf = 136316162;
    v85 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]";
    v86 = 2114;
    v87 = v21;
    v88 = 1026;
    v89 = unsignedIntegerValue;
    v90 = 1026;
    v91 = unsignedIntegerValue2;
    v92 = 2112;
    v93 = accessoryInfo;
    _os_log_impl(&dword_222E4D000, v20, OS_LOG_TYPE_DEFAULT, "%s Received a request for VoiceTriggerRTModel %{public}@ Firmware Version : %{public}d.%{public}d Accessory Info:%@", buf, 0x2Cu);

    integerValue = v60;
  }

  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = __102__CoreSpeechXPC_voiceTriggerRTModelWithRequestOptions_downloadedModels_preinstalledModels_completion___block_invoke;
  v79[3] = &unk_2784C56E8;
  v81 = integerValue;
  v55 = completionCopy;
  v80 = v55;
  v54 = MEMORY[0x223DD26C0](v79);
  siriLocale = [optionsCopy siriLocale];
  v53 = siriLocale;
  if (siriLocale)
  {
    v24 = siriLocale;
  }

  else
  {
    v24 = [MEMORY[0x277D018F8] getSiriLanguageWithFallback:@"en-US"];
  }

  v25 = v24;
  v26 = *v18;
  if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v85 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]";
    v86 = 2114;
    v87 = v25;
    _os_log_impl(&dword_222E4D000, v26, OS_LOG_TYPE_DEFAULT, "%s Asking mobile asset with currentLanguageCode = %{public}@", buf, 0x16u);
    v26 = *v18;
  }

  v52 = v25;
  v57 = unsignedIntegerValue;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v85 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]";
    _os_log_impl(&dword_222E4D000, v26, OS_LOG_TYPE_DEFAULT, "%s DownloadModel : ", buf, 0xCu);
  }

  v56 = unsignedIntegerValue2;
  v59 = optionsCopy;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v27 = modelsCopy;
  v28 = [v27 countByEnumeratingWithState:&v75 objects:v83 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v76;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v76 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *v18;
        if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
        {
          v33 = *(*(&v75 + 1) + 8 * i);
          *buf = 136315394;
          v85 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]";
          v86 = 2114;
          v87 = v33;
          _os_log_impl(&dword_222E4D000, v32, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v75 objects:v83 count:16];
    }

    while (v29);
  }

  v51 = v27;

  v34 = *v18;
  if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v85 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]";
    _os_log_impl(&dword_222E4D000, v34, OS_LOG_TYPE_DEFAULT, "%s preinstalledModels : ", buf, 0xCu);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v35 = preinstalledModelsCopy;
  v36 = [v35 countByEnumeratingWithState:&v71 objects:v82 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v72;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v72 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *v18;
        if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
        {
          v41 = *(*(&v71 + 1) + 8 * j);
          *buf = 136315394;
          v85 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]";
          v86 = 2114;
          v87 = v41;
          _os_log_impl(&dword_222E4D000, v40, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
        }
      }

      v37 = [v35 countByEnumeratingWithState:&v71 objects:v82 count:16];
    }

    while (v37);
  }

  v42 = v60;
  if (v60 || ([MEMORY[0x277D01788] sharedPreferences], v48 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v48, "fakeHearstModelPath"), v47 = objc_claimAutoreleasedReturnValue(), v48, v42 = 0, !v47))
  {
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __102__CoreSpeechXPC_voiceTriggerRTModelWithRequestOptions_downloadedModels_preinstalledModels_completion___block_invoke_20;
    v61[3] = &unk_2784C5710;
    v43 = v54;
    v67 = v54;
    v44 = v59;
    v62 = v59;
    v45 = v52;
    v68 = v42;
    v63 = v52;
    selfCopy = self;
    v46 = v51;
    v65 = v51;
    v66 = v35;
    v69 = v57;
    v70 = v56;
    [(CoreSpeechXPC *)self _fetchVoiceTriggerInstalledAssetWithLanguage:v63 completion:v61];

    v47 = v67;
  }

  else
  {
    v49 = *v18;
    v44 = v59;
    v46 = v51;
    if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v85 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]";
      v86 = 2114;
      v87 = v47;
      _os_log_impl(&dword_222E4D000, v49, OS_LOG_TYPE_DEFAULT, "%s Hearst Fake Model request switch turned on, executing stress test mode with fakeModelPath : %{public}@", buf, 0x16u);
    }

    v43 = v54;
    [(CoreSpeechXPC *)self _handleFakeHearstModelRequest:v47 majorVersion:v57 minorVersion:v56 downloadedModels:v51 preinstalledModels:v35 completion:v54];
    v45 = v52;
  }
}

void __102__CoreSpeechXPC_voiceTriggerRTModelWithRequestOptions_downloadedModels_preinstalledModels_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v16 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!*(a1 + 40))
  {
    if (v9)
    {
      v12 = [MEMORY[0x277D01788] sharedPreferences];
      v13 = [v9 modelHash];
      [v12 setHearstFirstPassModelVersion:v13];
    }

    if (v10)
    {
      v14 = [MEMORY[0x277D01788] sharedPreferences];
      [v14 setHearstSecondPassModelVersion:v10];
    }
  }

  v15 = *(a1 + 32);
  if (v15)
  {
    (*(v15 + 16))(v15, v16, v9, v11);
  }
}

void __102__CoreSpeechXPC_voiceTriggerRTModelWithRequestOptions_downloadedModels_preinstalledModels_completion___block_invoke_20(uint64_t a1, void *a2, void *a3)
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277D015D8];
  if (v5)
  {
    v8 = [v5 rtModelWithRequestOptions:*(a1 + 32)];
    v9 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v11 = v9;
      v12 = [v5 resourcePath];
      v13 = [v5 configVersion];
      *buf = 136316162;
      v57 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]_block_invoke";
      v58 = 2112;
      *v59 = v10;
      *&v59[8] = 2112;
      *v60 = v12;
      *&v60[8] = 2112;
      *v61 = v13;
      *&v61[8] = 2112;
      v62 = v8;
      _os_log_impl(&dword_222E4D000, v11, OS_LOG_TYPE_DEFAULT, "%s Queried model for language:%@ path:%@ configVers:%@ model:%@", buf, 0x34u);
    }

    v14 = [v5 rtModelLocaleMapWithModelType:*(a1 + 80)];
    if (v14)
    {
      if (v8)
      {
LABEL_6:
        v43 = v14;
        v44 = v6;
        v45 = v5;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v15 = *(a1 + 56);
        v16 = [v15 countByEnumeratingWithState:&v50 objects:v55 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v51;
          while (2)
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v51 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v50 + 1) + 8 * i);
              v21 = [v20 modelHash];
              v22 = [v8 modelHash];
              v23 = [v21 isEqualToString:v22];

              if (v23)
              {
                v34 = *MEMORY[0x277D015D8];
                v6 = v44;
                if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  v57 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]_block_invoke";
                  v58 = 2114;
                  *v59 = v20;
                  _os_log_impl(&dword_222E4D000, v34, OS_LOG_TYPE_DEFAULT, "%s Hash matched with downloadedModel : %{public}@, accessory will select this model", buf, 0x16u);
                }

                (*(*(a1 + 72) + 16))();
                v5 = v45;
LABEL_40:
                v14 = v43;
                goto LABEL_41;
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v50 objects:v55 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v15 = *(a1 + 64);
        v24 = [v15 countByEnumeratingWithState:&v46 objects:v54 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v47;
          while (2)
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v47 != v26)
              {
                objc_enumerationMutation(v15);
              }

              v28 = *(*(&v46 + 1) + 8 * j);
              v29 = [v28 modelHash];
              v30 = [v8 modelHash];
              v31 = [v29 isEqualToString:v30];

              if (v31)
              {
                v37 = *MEMORY[0x277D015D8];
                if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  v57 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]_block_invoke";
                  v58 = 2114;
                  *v59 = v28;
                  _os_log_impl(&dword_222E4D000, v37, OS_LOG_TYPE_DEFAULT, "%s Hash matched with preinstalledModel : %{public}@, accessory will select this model", buf, 0x16u);
                }

                (*(*(a1 + 72) + 16))();
                v6 = v44;
                v5 = v45;
                goto LABEL_40;
              }
            }

            v25 = [v15 countByEnumeratingWithState:&v46 objects:v54 count:16];
            if (v25)
            {
              continue;
            }

            break;
          }
        }

        v14 = v43;
        v15 = [*(a1 + 48) selectFallbackModelForLocale:*(a1 + 40) downloadedModels:*(a1 + 56) preinstalledModels:*(a1 + 64) rtLocaleMap:v43];
        v32 = *MEMORY[0x277D015D8];
        if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v57 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]_block_invoke";
          v58 = 2114;
          *v59 = v8;
          *&v59[8] = 2114;
          *v60 = v15;
          _os_log_impl(&dword_222E4D000, v32, OS_LOG_TYPE_DEFAULT, "%s Ask for download : %{public}@, and use %{public}@ as fallback", buf, 0x20u);
        }

        (*(*(a1 + 72) + 16))();
        v6 = v44;
        v5 = v45;
        goto LABEL_41;
      }
    }

    else
    {
      v35 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v57 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]_block_invoke";
        _os_log_error_impl(&dword_222E4D000, v35, OS_LOG_TYPE_ERROR, "%s rtLocaleMap is nil fallback to embedded locale map", buf, 0xCu);
      }

      v14 = [*(a1 + 48) getAccessoryFallbackLocalTable];
      if (v8)
      {
        goto LABEL_6;
      }
    }

    v15 = [*(a1 + 48) selectFallbackModelForLocale:*(a1 + 40) downloadedModels:*(a1 + 56) preinstalledModels:*(a1 + 64) rtLocaleMap:v14];
    v36 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      v40 = *(a1 + 88);
      v41 = *(a1 + 96);
      v42 = *(a1 + 40);
      *buf = 136316162;
      v57 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]_block_invoke";
      v58 = 1026;
      *v59 = v40;
      *&v59[4] = 1026;
      *&v59[6] = v41;
      *v60 = 2114;
      *&v60[2] = v42;
      *v61 = 2114;
      *&v61[2] = v15;
      _os_log_error_impl(&dword_222E4D000, v36, OS_LOG_TYPE_ERROR, "%s accessoryRTBlobs are not available for the version(%{public}d.%{public}d) and locale:%{public}@, returning fallback model : %{public}@", buf, 0x2Cu);
    }

    (*(*(a1 + 72) + 16))();
LABEL_41:

    goto LABEL_42;
  }

  v33 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
  {
    v38 = v33;
    v39 = [v6 localizedDescription];
    *buf = 136315394;
    v57 = "[CoreSpeechXPC voiceTriggerRTModelWithRequestOptions:downloadedModels:preinstalledModels:completion:]_block_invoke";
    v58 = 2114;
    *v59 = v39;
    _os_log_error_impl(&dword_222E4D000, v38, OS_LOG_TYPE_ERROR, "%s VoiceTriggerAsset is not available : %{public}@", buf, 0x16u);
  }

  (*(*(a1 + 72) + 16))();
LABEL_42:
}

- (void)_handleFakeHearstModelRequest:(id)request majorVersion:(unint64_t)version minorVersion:(unint64_t)minorVersion downloadedModels:(id)models preinstalledModels:(id)preinstalledModels completion:(id)completion
{
  v88 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  modelsCopy = models;
  preinstalledModelsCopy = preinstalledModels;
  completionCopy = completion;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  LOBYTE(preinstalledModels) = [defaultManager fileExistsAtPath:requestCopy];

  if (preinstalledModels)
  {
    v17 = [requestCopy stringByAppendingPathComponent:@"fakeModel.json"];
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v19 = [defaultManager2 fileExistsAtPath:v17];

    if (v19)
    {
      v20 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v17];
      if (v20)
      {
        v21 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v20 options:0 error:0];
        if (v21)
        {
          v22 = v21;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            selfCopy = self;
            v69 = v20;
            v70 = v17;
            v71 = completionCopy;
            v72 = preinstalledModelsCopy;
            v73 = modelsCopy;
            v23 = v22;
            array = [MEMORY[0x277CBEB18] array];
            v79 = 0u;
            v80 = 0u;
            v81 = 0u;
            v82 = 0u;
            v24 = v23;
            v25 = [v24 countByEnumeratingWithState:&v79 objects:v87 count:16];
            obj = v24;
            if (v25)
            {
              v26 = v25;
              v27 = *v80;
              do
              {
                for (i = 0; i != v26; ++i)
                {
                  if (*v80 != v27)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v29 = *(*(&v79 + 1) + 8 * i);
                  v30 = requestCopy;
                  v31 = [requestCopy stringByAppendingPathComponent:{v29, selfCopy}];
                  v32 = [MEMORY[0x277D015F8] assetForAssetType:0 resourcePath:v31 configVersion:v29];
                  v33 = [CSVoiceTriggerRTModelRequestOptions alloc];
                  v78[0] = MEMORY[0x277D85DD0];
                  v78[1] = 3221225472;
                  v78[2] = __120__CoreSpeechXPC__handleFakeHearstModelRequest_majorVersion_minorVersion_downloadedModels_preinstalledModels_completion___block_invoke;
                  v78[3] = &__block_descriptor_48_e56_v16__0___CSVoiceTriggerRTModelRequestOptionsMutablity__8l;
                  v78[4] = version;
                  v78[5] = minorVersion;
                  v34 = [(CSVoiceTriggerRTModelRequestOptions *)v33 initWithMutableBuilder:v78];
                  v35 = [v32 hearstRTModelWithRequestOptions:v34];
                  v36 = *MEMORY[0x277D015D8];
                  if (v35)
                  {
                    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 136315394;
                      v84 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
                      v85 = 2114;
                      v86[0] = v35;
                      _os_log_impl(&dword_222E4D000, v36, OS_LOG_TYPE_DEFAULT, "%s Loading FakeModel : %{public}@", buf, 0x16u);
                    }

                    [array addObject:v35];
                  }

                  else if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315394;
                    v84 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
                    v85 = 2114;
                    v86[0] = v31;
                    _os_log_error_impl(&dword_222E4D000, v36, OS_LOG_TYPE_ERROR, "%s Cannot create RTModel from %{public}@", buf, 0x16u);
                  }

                  requestCopy = v30;
                }

                v24 = obj;
                v26 = [obj countByEnumeratingWithState:&v79 objects:v87 count:16];
              }

              while (v26);
            }

            if ([array count] > 2)
            {
              if ([array count])
              {
                firstObject = [array firstObject];
                lastFakeModelUsedHash = [(CoreSpeechXPCFakeModelMonitor *)selfCopy->_fakeAssetMonitor lastFakeModelUsedHash];
                if (lastFakeModelUsedHash)
                {
                  shouldRollFakeModel = [(CoreSpeechXPCFakeModelMonitor *)selfCopy->_fakeAssetMonitor shouldRollFakeModel];
                  v17 = v70;
                  if ([array count])
                  {
                    v49 = 0;
                    firstObject2 = firstObject;
                    while (1)
                    {
                      v50 = [array objectAtIndexedSubscript:{v49, selfCopy}];
                      modelHash = [v50 modelHash];
                      v52 = [lastFakeModelUsedHash isEqual:modelHash];

                      if (v52)
                      {
                        if (shouldRollFakeModel)
                        {
                          if (v49 < [array count] - 1)
                          {
                            v57 = [array objectAtIndexedSubscript:v49 + 1];

                            firstObject2 = v57;
                            goto LABEL_53;
                          }
                        }

                        else
                        {
                          v53 = [array objectAtIndexedSubscript:v49];

                          firstObject2 = v53;
                        }
                      }

                      if (++v49 >= [array count])
                      {
                        goto LABEL_53;
                      }
                    }
                  }

                  firstObject2 = firstObject;
                }

                else
                {
                  firstObject2 = [array firstObject];

                  v54 = *MEMORY[0x277D015D8];
                  v17 = v70;
                  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    v84 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
                    v85 = 2114;
                    v86[0] = firstObject2;
                    _os_log_impl(&dword_222E4D000, v54, OS_LOG_TYPE_DEFAULT, "%s Using fake model for the first time : %{public}@", buf, 0x16u);
                  }
                }

LABEL_53:
                if (firstObject2)
                {
                  v58 = *MEMORY[0x277D015D8];
                  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315394;
                    v84 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
                    v85 = 2114;
                    v86[0] = firstObject2;
                    _os_log_impl(&dword_222E4D000, v58, OS_LOG_TYPE_DEFAULT, "%s Using fake model : %{public}@", buf, 0x16u);
                  }

                  v59 = selfCopy;
                  [(CoreSpeechXPCFakeModelMonitor *)selfCopy->_fakeAssetMonitor setShouldRollFakeModel:0, selfCopy];
                  fakeAssetMonitor = v59->_fakeAssetMonitor;
                  modelHash2 = [firstObject2 modelHash];
                  [(CoreSpeechXPCFakeModelMonitor *)fakeAssetMonitor setLastFakeModelUsedHash:modelHash2];
                }
              }

              else
              {
                firstObject2 = 0;
                v17 = v70;
              }

              modelsCopy = v73;
              v62 = [v73 count];
              v63 = v73;
              completionCopy = v71;
              preinstalledModelsCopy = v72;
              if (v62 || (v64 = [v72 count], v63 = v72, v64))
              {
                v65 = [v63 objectAtIndex:0];
              }

              else
              {
                v65 = 0;
              }

              v66 = MEMORY[0x277D015D8];
              v67 = *MEMORY[0x277D015D8];
              if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v84 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
                v85 = 2114;
                v86[0] = firstObject2;
                _os_log_impl(&dword_222E4D000, v67, OS_LOG_TYPE_DEFAULT, "%s %{public}@ fake model is selected for download", buf, 0x16u);
                v67 = *v66;
              }

              v20 = v69;
              if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v84 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
                v85 = 2114;
                v86[0] = v65;
                _os_log_impl(&dword_222E4D000, v67, OS_LOG_TYPE_DEFAULT, "%s %{public}@ model is selected for fallback", buf, 0x16u);
              }

              (*(v71 + 2))(v71, firstObject2, v65, @"fakeModel", 0);
            }

            else
            {
              v37 = *MEMORY[0x277D015D8];
              preinstalledModelsCopy = v72;
              modelsCopy = v73;
              if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
              {
                v55 = v37;
                v56 = [array count];
                *buf = 136315650;
                v84 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
                v85 = 1026;
                LODWORD(v86[0]) = v56;
                WORD2(v86[0]) = 1026;
                *(v86 + 6) = 3;
                _os_log_error_impl(&dword_222E4D000, v55, OS_LOG_TYPE_ERROR, "%s fake model number(%{public}d) is less than minimum fake model number((%{public}d)", buf, 0x18u);
              }

              firstObject2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:410 userInfo:{0, selfCopy}];
              completionCopy = v71;
              (*(v71 + 2))(v71, 0, 0, 0, firstObject2);
              v17 = v70;
            }

            v22 = obj;
          }

          else
          {
            v44 = *MEMORY[0x277D015D8];
            if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v84 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
              v85 = 2114;
              v86[0] = v17;
              _os_log_error_impl(&dword_222E4D000, v44, OS_LOG_TYPE_ERROR, "%s Unable to parse fake model meta json : %{public}@", buf, 0x16u);
            }

            v45 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:409 userInfo:0];
            (*(completionCopy + 2))(completionCopy, 0, 0, 0, v45);
          }
        }

        else
        {
          v42 = *MEMORY[0x277D015D8];
          if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v84 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
            v85 = 2114;
            v86[0] = v17;
            _os_log_error_impl(&dword_222E4D000, v42, OS_LOG_TYPE_ERROR, "%s Unable to parse fake model meta json : %{public}@", buf, 0x16u);
          }

          v43 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:409 userInfo:0];
          (*(completionCopy + 2))(completionCopy, 0, 0, 0, v43);

          v22 = 0;
        }
      }

      else
      {
        v41 = *MEMORY[0x277D015D8];
        if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v84 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
          v85 = 2114;
          v86[0] = v17;
          _os_log_error_impl(&dword_222E4D000, v41, OS_LOG_TYPE_ERROR, "%s Unable to read fake model meta json : %{public}@", buf, 0x16u);
        }

        v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:409 userInfo:0];
        (*(completionCopy + 2))(completionCopy, 0, 0, 0, v22);
      }
    }

    else
    {
      v40 = *MEMORY[0x277D015D8];
      if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v84 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
        v85 = 2114;
        v86[0] = v17;
        _os_log_error_impl(&dword_222E4D000, v40, OS_LOG_TYPE_ERROR, "%s fake model meta json does not exist : %{public}@", buf, 0x16u);
      }

      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:408 userInfo:0];
      (*(completionCopy + 2))(completionCopy, 0, 0, 0, v20);
    }
  }

  else
  {
    v39 = *MEMORY[0x277D015D8];
    if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v84 = "[CoreSpeechXPC _handleFakeHearstModelRequest:majorVersion:minorVersion:downloadedModels:preinstalledModels:completion:]";
      v85 = 2114;
      v86[0] = requestCopy;
      _os_log_error_impl(&dword_222E4D000, v39, OS_LOG_TYPE_ERROR, "%s Fake Model Path does not exist : %{public}@", buf, 0x16u);
    }

    v17 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01590] code:407 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, 0, 0, v17);
  }
}

void __120__CoreSpeechXPC__handleFakeHearstModelRequest_majorVersion_minorVersion_downloadedModels_preinstalledModels_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCABB0];
  v4 = *(a1 + 32);
  v7 = a2;
  v5 = [v3 numberWithUnsignedInteger:v4];
  [v7 setEngineMajorVersion:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
  [v7 setEngineMinorVersion:v6];

  [v7 setSiriLocale:@"en-US"];
}

- (void)fetchRemoteVoiceTriggerAssetForLanguageCode:(id)code completion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  completionCopy = completion;
  v7 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CoreSpeechXPC fetchRemoteVoiceTriggerAssetForLanguageCode:completion:]";
    v10 = 2114;
    v11 = codeCopy;
    _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_DEFAULT, "%s Received a request for VoiceTrigger Asset for language code : %{public}@", &v8, 0x16u);
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
  }
}

- (void)installedVoiceTriggerAssetForLanguageCode:(id)code completion:(id)completion
{
  v12 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  completionCopy = completion;
  v7 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CoreSpeechXPC installedVoiceTriggerAssetForLanguageCode:completion:]";
    v10 = 2114;
    v11 = codeCopy;
    _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_DEFAULT, "%s Received a request for VoiceTrigger Asset for language code : %{public}@", &v8, 0x16u);
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0, 0);
  }
}

- (CoreSpeechXPC)initWithFakeMonitor:(id)monitor
{
  monitorCopy = monitor;
  v8.receiver = self;
  v8.super_class = CoreSpeechXPC;
  v6 = [(CoreSpeechXPC *)&v8 init];
  if (v6)
  {
    CSLogInitIfNeeded();
    objc_storeStrong(&v6->_fakeAssetMonitor, monitor);
  }

  return v6;
}

+ (void)logLanguageMismatchMetricWithJarvisSelectedLocale:(id)locale jarvisTriggerMode:(int64_t)mode
{
  if ((mode + 1) > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = dword_222FB8340[mode + 1];
  }

  localeCopy = @"NA";
  if (locale)
  {
    localeCopy = locale;
  }

  v7 = MEMORY[0x277D587E0];
  v8 = localeCopy;
  localeCopy2 = locale;
  v9 = objc_alloc_init(v7);
  [v9 setHasCarHeadUnitSelectedLocale:1];
  [v9 setCarHeadUnitSelectedLocale:v8];

  [v9 setHasCarplayTriggerMode:1];
  [v9 setCarplayTriggerMode:v5];
  v10 = objc_alloc_init(MEMORY[0x277D587F0]);
  v11 = objc_alloc_init(MEMORY[0x277D587F8]);
  v12 = objc_alloc(MEMORY[0x277D5AC78]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  v14 = [v12 initWithNSUUID:uUID];
  [v11 setMhId:v14];

  [v10 setEventMetadata:v11];
  [v10 setCarPlayLangaugeMismatched:v9];
  mEMORY[0x277D552B8] = [MEMORY[0x277D552B8] sharedStream];
  [mEMORY[0x277D552B8] emitMessage:v10];
}

+ (id)accessoryModelTypeToString:(int64_t)string
{
  v3 = @"default";
  if (!string)
  {
    v3 = @"Hearst";
  }

  if (string == 1)
  {
    return @"Remora";
  }

  else
  {
    return v3;
  }
}

@end